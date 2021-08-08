(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_235489 0)) ((($Memory_235489 (|domain#$Memory_235489| |T@[Int]Bool|) (|contents#$Memory_235489| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_497808 0)) ((($Memory_497808 (|domain#$Memory_497808| |T@[Int]Bool|) (|contents#$Memory_497808| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_243929 0)) ((($Memory_243929 (|domain#$Memory_243929| |T@[Int]Bool|) (|contents#$Memory_243929| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_304525 0)) ((($Memory_304525 (|domain#$Memory_304525| |T@[Int]Bool|) (|contents#$Memory_304525| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_304871 0)) ((($Memory_304871 (|domain#$Memory_304871| |T@[Int]Bool|) (|contents#$Memory_304871| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_304199 0)) ((($Memory_304199 (|domain#$Memory_304199| |T@[Int]Bool|) (|contents#$Memory_304199| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_297391 0)) ((($Memory_297391 (|domain#$Memory_297391| |T@[Int]Bool|) (|contents#$Memory_297391| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_246467 0)) ((($Memory_246467 (|domain#$Memory_246467| |T@[Int]Bool|) (|contents#$Memory_246467| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_295755 0)) ((($Memory_295755 (|domain#$Memory_295755| |T@[Int]Bool|) (|contents#$Memory_295755| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomains 0)) ((($1_DiemId_DiemIdDomains (|$domains#$1_DiemId_DiemIdDomains| (Seq T@$1_DiemId_DiemIdDomain)) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomains| 0)
(declare-datatypes ((T@$Memory_295691 0)) ((($Memory_295691 (|domain#$Memory_295691| |T@[Int]Bool|) (|contents#$Memory_295691| |T@[Int]$1_DiemId_DiemIdDomains|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_HaltAllTransactions 0)) ((($1_DiemTransactionPublishingOption_HaltAllTransactions (|$dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| 0)
(declare-datatypes ((T@$Memory_293529 0)) ((($Memory_293529 (|domain#$Memory_293529| |T@[Int]Bool|) (|contents#$Memory_293529| |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_285038 0)) ((($Memory_285038 (|domain#$Memory_285038| |T@[Int]Bool|) (|contents#$Memory_285038| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_246552 0)) ((($Memory_246552 (|domain#$Memory_246552| |T@[Int]Bool|) (|contents#$Memory_246552| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_278896 0)) ((($Memory_278896 (|domain#$Memory_278896| |T@[Int]Bool|) (|contents#$Memory_278896| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_278832 0)) ((($Memory_278832 (|domain#$Memory_278832| |T@[Int]Bool|) (|contents#$Memory_278832| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_246108 0)) ((($Memory_246108 (|domain#$Memory_246108| |T@[Int]Bool|) (|contents#$Memory_246108| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_277611 0)) ((($Memory_277611 (|domain#$Memory_277611| |T@[Int]Bool|) (|contents#$Memory_277611| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_276243 0)) ((($Memory_276243 (|domain#$Memory_276243| |T@[Int]Bool|) (|contents#$Memory_276243| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_271078 0)) ((($Memory_271078 (|domain#$Memory_271078| |T@[Int]Bool|) (|contents#$Memory_271078| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_271146 0)) ((($Memory_271146 (|domain#$Memory_271146| |T@[Int]Bool|) (|contents#$Memory_271146| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_272351 0)) ((($Memory_272351 (|domain#$Memory_272351| |T@[Int]Bool|) (|contents#$Memory_272351| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_272132 0)) ((($Memory_272132 (|domain#$Memory_272132| |T@[Int]Bool|) (|contents#$Memory_272132| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_243857 0)) ((($Memory_243857 (|domain#$Memory_243857| |T@[Int]Bool|) (|contents#$Memory_243857| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_260489 0)) ((($Memory_260489 (|domain#$Memory_260489| |T@[Int]Bool|) (|contents#$Memory_260489| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_260402 0)) ((($Memory_260402 (|domain#$Memory_260402| |T@[Int]Bool|) (|contents#$Memory_260402| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_260315 0)) ((($Memory_260315 (|domain#$Memory_260315| |T@[Int]Bool|) (|contents#$Memory_260315| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_255682 0)) ((($Memory_255682 (|domain#$Memory_255682| |T@[Int]Bool|) (|contents#$Memory_255682| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_255595 0)) ((($Memory_255595 (|domain#$Memory_255595| |T@[Int]Bool|) (|contents#$Memory_255595| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_255508 0)) ((($Memory_255508 (|domain#$Memory_255508| |T@[Int]Bool|) (|contents#$Memory_255508| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_246382 0)) ((($Memory_246382 (|domain#$Memory_246382| |T@[Int]Bool|) (|contents#$Memory_246382| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_260844 0)) ((($Memory_260844 (|domain#$Memory_260844| |T@[Int]Bool|) (|contents#$Memory_260844| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_281549 0)) ((($Memory_281549 (|domain#$Memory_281549| |T@[Int]Bool|) (|contents#$Memory_281549| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_261269 0)) ((($Memory_261269 (|domain#$Memory_261269| |T@[Int]Bool|) (|contents#$Memory_261269| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_246297 0)) ((($Memory_246297 (|domain#$Memory_246297| |T@[Int]Bool|) (|contents#$Memory_246297| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_260753 0)) ((($Memory_260753 (|domain#$Memory_260753| |T@[Int]Bool|) (|contents#$Memory_260753| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_274935 0)) ((($Memory_274935 (|domain#$Memory_274935| |T@[Int]Bool|) (|contents#$Memory_274935| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_261170 0)) ((($Memory_261170 (|domain#$Memory_261170| |T@[Int]Bool|) (|contents#$Memory_261170| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_246212 0)) ((($Memory_246212 (|domain#$Memory_246212| |T@[Int]Bool|) (|contents#$Memory_246212| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_260662 0)) ((($Memory_260662 (|domain#$Memory_260662| |T@[Int]Bool|) (|contents#$Memory_260662| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_281484 0)) ((($Memory_281484 (|domain#$Memory_281484| |T@[Int]Bool|) (|contents#$Memory_281484| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_261071 0)) ((($Memory_261071 (|domain#$Memory_261071| |T@[Int]Bool|) (|contents#$Memory_261071| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_252392 0)) ((($Memory_252392 (|domain#$Memory_252392| |T@[Int]Bool|) (|contents#$Memory_252392| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_252305 0)) ((($Memory_252305 (|domain#$Memory_252305| |T@[Int]Bool|) (|contents#$Memory_252305| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_252218 0)) ((($Memory_252218 (|domain#$Memory_252218| |T@[Int]Bool|) (|contents#$Memory_252218| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_496499 0)) ((($Memory_496499 (|domain#$Memory_496499| |T@[Int]Bool|) (|contents#$Memory_496499| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_252131 0)) ((($Memory_252131 (|domain#$Memory_252131| |T@[Int]Bool|) (|contents#$Memory_252131| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_252044 0)) ((($Memory_252044 (|domain#$Memory_252044| |T@[Int]Bool|) (|contents#$Memory_252044| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_251139 0)) ((($Memory_251139 (|domain#$Memory_251139| |T@[Int]Bool|) (|contents#$Memory_251139| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_251206 0)) ((($Memory_251206 (|domain#$Memory_251206| |T@[Int]Bool|) (|contents#$Memory_251206| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_251057 0)) ((($Memory_251057 (|domain#$Memory_251057| |T@[Int]Bool|) (|contents#$Memory_251057| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_250975 0)) ((($Memory_250975 (|domain#$Memory_250975| |T@[Int]Bool|) (|contents#$Memory_250975| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_250893 0)) ((($Memory_250893 (|domain#$Memory_250893| |T@[Int]Bool|) (|contents#$Memory_250893| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_250811 0)) ((($Memory_250811 (|domain#$Memory_250811| |T@[Int]Bool|) (|contents#$Memory_250811| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_250729 0)) ((($Memory_250729 (|domain#$Memory_250729| |T@[Int]Bool|) (|contents#$Memory_250729| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_254979 0)) ((($Memory_254979 (|domain#$Memory_254979| |T@[Int]Bool|) (|contents#$Memory_254979| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_254852 0)) ((($Memory_254852 (|domain#$Memory_254852| |T@[Int]Bool|) (|contents#$Memory_254852| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_254787 0)) ((($Memory_254787 (|domain#$Memory_254787| |T@[Int]Bool|) (|contents#$Memory_254787| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_244446 0)) ((($Memory_244446 (|domain#$Memory_244446| |T@[Int]Bool|) (|contents#$Memory_244446| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_244413 0)) ((($Memory_244413 (|domain#$Memory_244413| |T@[Int]Bool|) (|contents#$Memory_244413| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_242386 0)) ((($Memory_242386 (|domain#$Memory_242386| |T@[Int]Bool|) (|contents#$Memory_242386| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| (Seq Int)) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| (Seq Int)) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainEvent 0)) ((($1_DiemId_DiemIdDomainEvent (|$removed#$1_DiemId_DiemIdDomainEvent| Bool) (|$domain#$1_DiemId_DiemIdDomainEvent| T@$1_DiemId_DiemIdDomain) (|$address#$1_DiemId_DiemIdDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| (Seq Int)) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| (Seq Int)) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| (|e#$ToEventRep'$1_DiemId_DiemIdDomainEvent'| T@$1_DiemId_DiemIdDomainEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_207651 0)) (((Multiset_207651 (|v#Multiset_207651| |T@[$EventRep]Int|) (|l#Multiset_207651| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_207651| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_207651|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_489092 0)) ((($Mutation_489092 (|l#$Mutation_489092| T@$Location) (|p#$Mutation_489092| (Seq Int)) (|v#$Mutation_489092| T@$1_DiemAccount_DiemWriteSetManager) ) ) ))
(declare-datatypes ((T@$Mutation_420434 0)) ((($Mutation_420434 (|l#$Mutation_420434| T@$Location) (|p#$Mutation_420434| (Seq Int)) (|v#$Mutation_420434| T@$1_DiemAccount_AccountOperationsCapability) ) ) ))
(declare-datatypes ((T@$Mutation_417306 0)) ((($Mutation_417306 (|l#$Mutation_417306| T@$Location) (|p#$Mutation_417306| (Seq Int)) (|v#$Mutation_417306| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_414466 0)) ((($Mutation_414466 (|l#$Mutation_414466| T@$Location) (|p#$Mutation_414466| (Seq Int)) (|v#$Mutation_414466| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_407271 0)) ((($Mutation_407271 (|l#$Mutation_407271| T@$Location) (|p#$Mutation_407271| (Seq Int)) (|v#$Mutation_407271| |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_337517 0)) ((($Mutation_337517 (|l#$Mutation_337517| T@$Location) (|p#$Mutation_337517| (Seq Int)) (|v#$Mutation_337517| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_337472 0)) ((($Mutation_337472 (|l#$Mutation_337472| T@$Location) (|p#$Mutation_337472| (Seq Int)) (|v#$Mutation_337472| |T@$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_306421 0)) ((($Mutation_306421 (|l#$Mutation_306421| T@$Location) (|p#$Mutation_306421| (Seq Int)) (|v#$Mutation_306421| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_306379 0)) ((($Mutation_306379 (|l#$Mutation_306379| T@$Location) (|p#$Mutation_306379| (Seq Int)) (|v#$Mutation_306379| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_301595 0)) ((($Mutation_301595 (|l#$Mutation_301595| T@$Location) (|p#$Mutation_301595| (Seq Int)) (|v#$Mutation_301595| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_289860 0)) ((($Mutation_289860 (|l#$Mutation_289860| T@$Location) (|p#$Mutation_289860| (Seq Int)) (|v#$Mutation_289860| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_283873 0)) ((($Mutation_283873 (|l#$Mutation_283873| T@$Location) (|p#$Mutation_283873| (Seq Int)) (|v#$Mutation_283873| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_283828 0)) ((($Mutation_283828 (|l#$Mutation_283828| T@$Location) (|p#$Mutation_283828| (Seq Int)) (|v#$Mutation_283828| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_282936 0)) ((($Mutation_282936 (|l#$Mutation_282936| T@$Location) (|p#$Mutation_282936| (Seq Int)) (|v#$Mutation_282936| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_282891 0)) ((($Mutation_282891 (|l#$Mutation_282891| T@$Location) (|p#$Mutation_282891| (Seq Int)) (|v#$Mutation_282891| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_279516 0)) ((($Mutation_279516 (|l#$Mutation_279516| T@$Location) (|p#$Mutation_279516| (Seq Int)) (|v#$Mutation_279516| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_42678 0)) ((($Mutation_42678 (|l#$Mutation_42678| T@$Location) (|p#$Mutation_42678| (Seq Int)) (|v#$Mutation_42678| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_269924 0)) ((($Mutation_269924 (|l#$Mutation_269924| T@$Location) (|p#$Mutation_269924| (Seq Int)) (|v#$Mutation_269924| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_262650 0)) ((($Mutation_262650 (|l#$Mutation_262650| T@$Location) (|p#$Mutation_262650| (Seq Int)) (|v#$Mutation_262650| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_253530 0)) ((($Mutation_253530 (|l#$Mutation_253530| T@$Location) (|p#$Mutation_253530| (Seq Int)) (|v#$Mutation_253530| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_242885 0)) ((($Mutation_242885 (|l#$Mutation_242885| T@$Location) (|p#$Mutation_242885| (Seq Int)) (|v#$Mutation_242885| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_236117 0)) ((($Mutation_236117 (|l#$Mutation_236117| T@$Location) (|p#$Mutation_236117| (Seq Int)) (|v#$Mutation_236117| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_14539 0)) ((($Mutation_14539 (|l#$Mutation_14539| T@$Location) (|p#$Mutation_14539| (Seq Int)) (|v#$Mutation_14539| Int) ) ) ))
(declare-datatypes ((T@$Mutation_230202 0)) ((($Mutation_230202 (|l#$Mutation_230202| T@$Location) (|p#$Mutation_230202| (Seq Int)) (|v#$Mutation_230202| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_229456 0)) ((($Mutation_229456 (|l#$Mutation_229456| T@$Location) (|p#$Mutation_229456| (Seq Int)) (|v#$Mutation_229456| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_228016 0)) ((($Mutation_228016 (|l#$Mutation_228016| T@$Location) (|p#$Mutation_228016| (Seq Int)) (|v#$Mutation_228016| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_227270 0)) ((($Mutation_227270 (|l#$Mutation_227270| T@$Location) (|p#$Mutation_227270| (Seq Int)) (|v#$Mutation_227270| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_225830 0)) ((($Mutation_225830 (|l#$Mutation_225830| T@$Location) (|p#$Mutation_225830| (Seq Int)) (|v#$Mutation_225830| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_225084 0)) ((($Mutation_225084 (|l#$Mutation_225084| T@$Location) (|p#$Mutation_225084| (Seq Int)) (|v#$Mutation_225084| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_223644 0)) ((($Mutation_223644 (|l#$Mutation_223644| T@$Location) (|p#$Mutation_223644| (Seq Int)) (|v#$Mutation_223644| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_222898 0)) ((($Mutation_222898 (|l#$Mutation_222898| T@$Location) (|p#$Mutation_222898| (Seq Int)) (|v#$Mutation_222898| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_221458 0)) ((($Mutation_221458 (|l#$Mutation_221458| T@$Location) (|p#$Mutation_221458| (Seq Int)) (|v#$Mutation_221458| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_220712 0)) ((($Mutation_220712 (|l#$Mutation_220712| T@$Location) (|p#$Mutation_220712| (Seq Int)) (|v#$Mutation_220712| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_219272 0)) ((($Mutation_219272 (|l#$Mutation_219272| T@$Location) (|p#$Mutation_219272| (Seq Int)) (|v#$Mutation_219272| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_218526 0)) ((($Mutation_218526 (|l#$Mutation_218526| T@$Location) (|p#$Mutation_218526| (Seq Int)) (|v#$Mutation_218526| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_217086 0)) ((($Mutation_217086 (|l#$Mutation_217086| T@$Location) (|p#$Mutation_217086| (Seq Int)) (|v#$Mutation_217086| T@$1_DiemId_DiemIdDomain) ) ) ))
(declare-datatypes ((T@$Mutation_216340 0)) ((($Mutation_216340 (|l#$Mutation_216340| T@$Location) (|p#$Mutation_216340| (Seq Int)) (|v#$Mutation_216340| (Seq T@$1_DiemId_DiemIdDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_214900 0)) ((($Mutation_214900 (|l#$Mutation_214900| T@$Location) (|p#$Mutation_214900| (Seq Int)) (|v#$Mutation_214900| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_214154 0)) ((($Mutation_214154 (|l#$Mutation_214154| T@$Location) (|p#$Mutation_214154| (Seq Int)) (|v#$Mutation_214154| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_212714 0)) ((($Mutation_212714 (|l#$Mutation_212714| T@$Location) (|p#$Mutation_212714| (Seq Int)) (|v#$Mutation_212714| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_211968 0)) ((($Mutation_211968 (|l#$Mutation_211968| T@$Location) (|p#$Mutation_211968| (Seq Int)) (|v#$Mutation_211968| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_210490 0)) ((($Mutation_210490 (|l#$Mutation_210490| T@$Location) (|p#$Mutation_210490| (Seq Int)) (|v#$Mutation_210490| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_209744 0)) ((($Mutation_209744 (|l#$Mutation_209744| T@$Location) (|p#$Mutation_209744| (Seq Int)) (|v#$Mutation_209744| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_DiemId_DiemIdDomain''| ((Seq T@$1_DiemId_DiemIdDomain)) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomain'| (T@$1_DiemId_DiemIdDomain) Bool)
(declare-fun |$IndexOfVec'$1_DiemId_DiemIdDomain'| ((Seq T@$1_DiemId_DiemIdDomain) T@$1_DiemId_DiemIdDomain) Int)
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
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| ((Seq T@$1_ValidatorConfig_Config)) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| ((Seq T@$1_ValidatorConfig_Config) T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsValid'vec'vec'u8'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u8''| ((Seq (Seq Int)) (Seq Int)) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_207651_| (|T@[$1_Event_EventHandle]Multiset_207651| T@$1_Event_EventHandle) T@Multiset_207651)
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
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_SlidingNonce_SlidingNonce'| (T@$1_SlidingNonce_SlidingNonce) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (T@$1_RegisteredCurrencies_RegisteredCurrencies) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemSystem_DiemSystem'| (T@$1_DiemSystem_DiemSystem) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
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
(declare-fun |$IsValid'$1_AccountLimits_Window'#0''| (|T@$1_AccountLimits_Window'#0'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'#0''| (|T@$1_TransactionFee_TransactionFee'#0'|) Bool)
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int (Seq Int) Int) (Seq Int))
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| (T@$1_DiemTransactionPublishingOption_HaltAllTransactions) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainEvent'| (T@$1_DiemId_DiemIdDomainEvent) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainManager'| (T@$1_DiemId_DiemIdDomainManager) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomains'| (T@$1_DiemId_DiemIdDomains) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'#0''| (|T@$1_DesignatedDealer_TierInfo'#0'|) Bool)
(declare-fun |$IsValid'$1_ChainId_ChainId'| (T@$1_ChainId_ChainId) Bool)
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
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_14392 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_189846 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_189452 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_189255 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_189058 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_189649 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_188270 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_188467 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_188664 ((Seq T@$1_DiemId_DiemIdDomain)) (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun ReverseVec_188861 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_188073 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_207651| |T@[$1_Event_EventHandle]Multiset_207651|) |T@[$1_Event_EventHandle]Multiset_207651|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemAccountcvc5bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemAccountcvc5bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemAccountcvc5bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemAccountcvc5bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemAccountcvc5bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemAccountcvc5bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountcvc5bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountcvc5bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemAccountcvc5bpl.590:13|
 :skolemid |15|
))))
 :qid |DiemAccountcvc5bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemAccountcvc5bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemAccountcvc5bpl.603:17|
 :skolemid |18|
)))))
 :qid |DiemAccountcvc5bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemAccountcvc5bpl.770:13|
 :skolemid |20|
))))
 :qid |DiemAccountcvc5bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemAccountcvc5bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemAccountcvc5bpl.783:17|
 :skolemid |23|
)))))
 :qid |DiemAccountcvc5bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemAccountcvc5bpl.950:13|
 :skolemid |25|
))))
 :qid |DiemAccountcvc5bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemAccountcvc5bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemAccountcvc5bpl.963:17|
 :skolemid |28|
)))))
 :qid |DiemAccountcvc5bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemId_DiemIdDomain)) ) (! (= (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemId_DiemIdDomain'| (seq.nth v@@10 i@@9)))
 :qid |DiemAccountcvc5bpl.1130:13|
 :skolemid |30|
))))
 :qid |DiemAccountcvc5bpl.1128:48|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemId_DiemIdDomain)) (e@@2 T@$1_DiemId_DiemIdDomain) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemAccountcvc5bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemAccountcvc5bpl.1143:17|
 :skolemid |33|
)))))
 :qid |DiemAccountcvc5bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@12 i@@12)))
 :qid |DiemAccountcvc5bpl.1310:13|
 :skolemid |35|
))))
 :qid |DiemAccountcvc5bpl.1308:53|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@3 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@13 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemAccountcvc5bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemAccountcvc5bpl.1323:17|
 :skolemid |38|
)))))
 :qid |DiemAccountcvc5bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@14 i@@15)))
 :qid |DiemAccountcvc5bpl.1490:13|
 :skolemid |40|
))))
 :qid |DiemAccountcvc5bpl.1488:57|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemAccountcvc5bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemAccountcvc5bpl.1503:17|
 :skolemid |43|
)))))
 :qid |DiemAccountcvc5bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@16 i@@18)))
 :qid |DiemAccountcvc5bpl.1670:13|
 :skolemid |45|
))))
 :qid |DiemAccountcvc5bpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemAccountcvc5bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemAccountcvc5bpl.1683:17|
 :skolemid |48|
)))))
 :qid |DiemAccountcvc5bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@18 i@@21)))
 :qid |DiemAccountcvc5bpl.1850:13|
 :skolemid |50|
))))
 :qid |DiemAccountcvc5bpl.1848:65|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@18))
)))
(assert (forall ((v@@19 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@6 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemAccountcvc5bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemAccountcvc5bpl.1863:17|
 :skolemid |53|
)))))
 :qid |DiemAccountcvc5bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |DiemAccountcvc5bpl.2030:13|
 :skolemid |55|
))))
 :qid |DiemAccountcvc5bpl.2028:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemAccountcvc5bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemAccountcvc5bpl.2043:17|
 :skolemid |58|
)))))
 :qid |DiemAccountcvc5bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'vec'u8''| (seq.nth v@@22 i@@27)))
 :qid |DiemAccountcvc5bpl.2210:13|
 :skolemid |60|
))))
 :qid |DiemAccountcvc5bpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@22))
)))
(assert (forall ((v@@23 (Seq (Seq Int))) (e@@8 (Seq Int)) ) (! (let ((i@@28 (|$IndexOfVec'vec'u8''| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemAccountcvc5bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemAccountcvc5bpl.2223:17|
 :skolemid |63|
)))))
 :qid |DiemAccountcvc5bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'address'| (seq.nth v@@24 i@@30)))
 :qid |DiemAccountcvc5bpl.2390:13|
 :skolemid |65|
))))
 :qid |DiemAccountcvc5bpl.2388:33|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DiemAccountcvc5bpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DiemAccountcvc5bpl.2403:17|
 :skolemid |68|
)))))
 :qid |DiemAccountcvc5bpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'u64'| (seq.nth v@@26 i@@33)))
 :qid |DiemAccountcvc5bpl.2570:13|
 :skolemid |70|
))))
 :qid |DiemAccountcvc5bpl.2568:29|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'u64''| v@@26))
)))
(assert (forall ((v@@27 (Seq Int)) (e@@10 Int) ) (! (let ((i@@34 (|$IndexOfVec'u64'| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |DiemAccountcvc5bpl.2575:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |DiemAccountcvc5bpl.2583:17|
 :skolemid |73|
)))))
 :qid |DiemAccountcvc5bpl.2579:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'u64'| v@@27 e@@10))
)))
(assert (forall ((v@@28 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@28)  (and (|$IsValid'u64'| (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len v@@28))) (|$IsValid'u8'| (seq.nth v@@28 i@@36)))
 :qid |DiemAccountcvc5bpl.2750:13|
 :skolemid |75|
))))
 :qid |DiemAccountcvc5bpl.2748:28|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'u8''| v@@28))
)))
(assert (forall ((v@@29 (Seq Int)) (e@@11 Int) ) (! (let ((i@@37 (|$IndexOfVec'u8'| v@@29 e@@11)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (and (|$IsValid'u64'| i@@38) (and (>= i@@38 0) (< i@@38 (seq.len v@@29)))) (= (seq.nth v@@29 i@@38) e@@11))
 :qid |DiemAccountcvc5bpl.2755:13|
 :skolemid |77|
))) (= i@@37 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@37) (and (>= i@@37 0) (< i@@37 (seq.len v@@29)))) (= (seq.nth v@@29 i@@37) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@37)) (not (= (seq.nth v@@29 j@@11) e@@11)))
 :qid |DiemAccountcvc5bpl.2763:17|
 :skolemid |78|
)))))
 :qid |DiemAccountcvc5bpl.2759:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'u8'| v@@29 e@@11))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemAccountcvc5bpl.2936:15|
 :skolemid |80|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemAccountcvc5bpl.2952:15|
 :skolemid |81|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemAccountcvc5bpl.2999:15|
 :skolemid |82|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemAccountcvc5bpl.3002:15|
 :skolemid |83|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 Int) (v2@@1 Int) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1)))
 :qid |DiemAccountcvc5bpl.3029:15|
 :skolemid |84|
 :pattern ( (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1))
)))
(assert (forall ((v@@30 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'address'| v@@30)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |DiemAccountcvc5bpl.3034:15|
 :skolemid |85|
 :pattern ( (|$1_BCS_serialize'address'| v@@30))
)))
(assert (forall ((v@@31 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@31)))
(= (seq.len r@@1) $serialized_address_len))
 :qid |DiemAccountcvc5bpl.3048:15|
 :skolemid |86|
 :pattern ( (|$1_BCS_serialize'address'| v@@31))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_207651| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream) v@@32) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemAccountcvc5bpl.3151:80|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@2)))
 :qid |DiemAccountcvc5bpl.3157:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemAccountcvc5bpl.3207:82|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@3 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@3 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@3)))
 :qid |DiemAccountcvc5bpl.3213:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@3))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemAccountcvc5bpl.3263:80|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@4 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@4 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@4)))
 :qid |DiemAccountcvc5bpl.3269:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@4))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemAccountcvc5bpl.3319:79|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_AdminTransactionEvent) (v2@@5 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5)))
 :qid |DiemAccountcvc5bpl.3325:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemAccountcvc5bpl.3375:76|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_CreateAccountEvent) (v2@@6 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6)))
 :qid |DiemAccountcvc5bpl.3381:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemAccountcvc5bpl.3431:78|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@7 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7)))
 :qid |DiemAccountcvc5bpl.3437:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemAccountcvc5bpl.3487:74|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@8 T@$1_DiemAccount_SentPaymentEvent) (v2@@8 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8)))
 :qid |DiemAccountcvc5bpl.3493:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemAccountcvc5bpl.3543:69|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@9 T@$1_DiemBlock_NewBlockEvent) (v2@@9 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@9) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@9)))
 :qid |DiemAccountcvc5bpl.3549:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@9) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@9))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemAccountcvc5bpl.3599:70|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@10 T@$1_DiemConfig_NewEpochEvent) (v2@@10 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@10)))
 :qid |DiemAccountcvc5bpl.3605:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@10))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |DiemAccountcvc5bpl.3655:70|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@11 T@$1_DiemId_DiemIdDomainEvent) (v2@@11 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@11) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@11)))
 :qid |DiemAccountcvc5bpl.3661:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@11) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@11))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |DiemAccountcvc5bpl.3711:60|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@12 T@$1_Diem_BurnEvent) (v2@@12 T@$1_Diem_BurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@12)))
 :qid |DiemAccountcvc5bpl.3717:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@12))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |DiemAccountcvc5bpl.3767:66|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@13 T@$1_Diem_CancelBurnEvent) (v2@@13 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@13) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@13)))
 :qid |DiemAccountcvc5bpl.3773:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@13) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@13))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |DiemAccountcvc5bpl.3823:60|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@14 T@$1_Diem_MintEvent) (v2@@14 T@$1_Diem_MintEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@14) (|$ToEventRep'$1_Diem_MintEvent'| v2@@14)))
 :qid |DiemAccountcvc5bpl.3829:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@14) (|$ToEventRep'$1_Diem_MintEvent'| v2@@14))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |DiemAccountcvc5bpl.3879:63|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@15 T@$1_Diem_PreburnEvent) (v2@@15 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@15) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@15)))
 :qid |DiemAccountcvc5bpl.3885:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@15) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@15))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |DiemAccountcvc5bpl.3935:79|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@16 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@16 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@16) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@16)))
 :qid |DiemAccountcvc5bpl.3941:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@16) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@16))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |DiemAccountcvc5bpl.3991:82|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@17 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@17)))
 :qid |DiemAccountcvc5bpl.3997:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@17))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |DiemAccountcvc5bpl.4047:88|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@18 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@18 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@18) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@18)))
 :qid |DiemAccountcvc5bpl.4053:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@18) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@18))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemAccountcvc5bpl.4292:61|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |DiemAccountcvc5bpl.4825:49|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemAccountcvc5bpl.4920:36|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |DiemAccountcvc5bpl.6878:49|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |DiemAccountcvc5bpl.6996:91|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |DiemAccountcvc5bpl.7010:113|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |DiemAccountcvc5bpl.7024:71|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |DiemAccountcvc5bpl.7038:75|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |DiemAccountcvc5bpl.7052:73|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |DiemAccountcvc5bpl.7072:48|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |DiemAccountcvc5bpl.7088:57|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |DiemAccountcvc5bpl.7102:103|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |DiemAccountcvc5bpl.7116:125|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |DiemAccountcvc5bpl.7130:83|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |DiemAccountcvc5bpl.7144:87|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |DiemAccountcvc5bpl.7158:85|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |DiemAccountcvc5bpl.7172:48|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |DiemAccountcvc5bpl.7185:65|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |DiemAccountcvc5bpl.7739:45|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |DiemAccountcvc5bpl.7752:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@19) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@19)))
 :qid |DiemAccountcvc5bpl.7765:37|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@20) true)
 :qid |DiemAccountcvc5bpl.7778:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@21) true)
 :qid |DiemAccountcvc5bpl.7792:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@22) true)
 :qid |DiemAccountcvc5bpl.7806:47|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@22))
)))
(assert (forall ((s@@23 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@23)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@23)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@23))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@23))))
 :qid |DiemAccountcvc5bpl.7826:38|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@24)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@24)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@24))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@24))))
 :qid |DiemAccountcvc5bpl.7847:44|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@25)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))))
 :qid |DiemAccountcvc5bpl.7898:53|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@26)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))))
 :qid |DiemAccountcvc5bpl.7960:53|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@27)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@27)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@27))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@27))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@27))))
 :qid |DiemAccountcvc5bpl.8022:45|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@28) true)
 :qid |DiemAccountcvc5bpl.8048:55|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29) true)
 :qid |DiemAccountcvc5bpl.8062:55|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@30) true)
 :qid |DiemAccountcvc5bpl.8076:47|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@31)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@31))))
 :qid |DiemAccountcvc5bpl.8093:38|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@32) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@32)))
 :qid |DiemAccountcvc5bpl.8107:48|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@33) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@33)))
 :qid |DiemAccountcvc5bpl.8121:48|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@34) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@34)))
 :qid |DiemAccountcvc5bpl.8135:40|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@35))))
 :qid |DiemAccountcvc5bpl.8155:41|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@36) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@36)))
 :qid |DiemAccountcvc5bpl.8170:53|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@37) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@37)))
 :qid |DiemAccountcvc5bpl.8184:53|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@38) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@38)))
 :qid |DiemAccountcvc5bpl.8198:45|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@39)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@39)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@39))))
 :qid |DiemAccountcvc5bpl.8215:60|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@40)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@40)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@40))))
 :qid |DiemAccountcvc5bpl.8232:60|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@41)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@41)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@41))))
 :qid |DiemAccountcvc5bpl.8249:52|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@42)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@42)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@42))))
 :qid |DiemAccountcvc5bpl.8266:57|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@42))
)))
(assert (forall ((s@@43 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@43) true)
 :qid |DiemAccountcvc5bpl.11544:68|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@44)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@44)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@44))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@44))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@44))))
 :qid |DiemAccountcvc5bpl.11566:66|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@45)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@45)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@45))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@45))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@45))))
 :qid |DiemAccountcvc5bpl.11592:66|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@46)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@46)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@46))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@46))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@46))))
 :qid |DiemAccountcvc5bpl.11618:58|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@47)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@47)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@47))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@47))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@47))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@47))))
 :qid |DiemAccountcvc5bpl.11647:48|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@47))
)))
(assert (forall ((s@@48 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@48) true)
 :qid |DiemAccountcvc5bpl.12132:31|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@48))
)))
(assert (forall ((s@@49 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@49) true)
 :qid |DiemAccountcvc5bpl.12476:31|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@50)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@50)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@50))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@50))))
 :qid |DiemAccountcvc5bpl.12495:35|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@50))
)))
(assert (forall ((s@@51 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@51) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@51)))
 :qid |DiemAccountcvc5bpl.12921:71|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@52) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@52)))
 :qid |DiemAccountcvc5bpl.13276:46|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@53) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@53)))
 :qid |DiemAccountcvc5bpl.13289:64|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@54) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@54)))
 :qid |DiemAccountcvc5bpl.13302:75|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@55) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@55)))
 :qid |DiemAccountcvc5bpl.13315:72|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@55))
)))
(assert (forall ((s@@56 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@56)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@56)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@56))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@56))))
 :qid |DiemAccountcvc5bpl.13344:46|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@56))
)))
(assert (forall ((s@@57 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@57)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@57)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@57))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@57))))
 :qid |DiemAccountcvc5bpl.13365:55|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@58) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@58)))
 :qid |DiemAccountcvc5bpl.13686:38|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@59) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@59)))
 :qid |DiemAccountcvc5bpl.13700:39|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@59))
)))
(assert (forall ((s@@60 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60))))
 :qid |DiemAccountcvc5bpl.14532:65|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@61)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@61)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@61))))
 :qid |DiemAccountcvc5bpl.14550:57|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@61))
)))
(assert (forall ((payer Int) (metadata (Seq Int)) (deposit_value Int) ) (! (let (($$res ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res))
 :qid |DiemAccountcvc5bpl.15460:15|
 :skolemid |202|
)))
(assert (forall ((s@@62 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@62))))
 :qid |DiemAccountcvc5bpl.15488:60|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63))))
 :qid |DiemAccountcvc5bpl.15505:66|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@64)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@64))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@64))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@64))))
 :qid |DiemAccountcvc5bpl.15534:50|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@65) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@65)))
 :qid |DiemAccountcvc5bpl.15553:45|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@66)) true))
 :qid |DiemAccountcvc5bpl.17421:87|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemTransactionPublishingOption_HaltAllTransactions) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@67) true)
 :qid |DiemAccountcvc5bpl.17435:75|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@68) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@68)))
 :qid |DiemAccountcvc5bpl.18123:43|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@69)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@69))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@69))))
 :qid |DiemAccountcvc5bpl.18142:48|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@70) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@70)))
 :qid |DiemAccountcvc5bpl.18157:50|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemId_DiemIdDomains) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomains'| s@@71) (|$IsValid'vec'$1_DiemId_DiemIdDomain''| (|$domains#$1_DiemId_DiemIdDomains| s@@71)))
 :qid |DiemAccountcvc5bpl.18171:44|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomains'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@72)))
 :qid |DiemAccountcvc5bpl.18548:47|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@73)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@73))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@73))))
 :qid |DiemAccountcvc5bpl.18568:58|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73))
)))
(assert (forall ((s@@74 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@74)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@74)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@74))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@74))))
 :qid |DiemAccountcvc5bpl.18589:53|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@74))
)))
(assert (forall ((s@@75 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@75) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@75)))
 :qid |DiemAccountcvc5bpl.19754:39|
 :skolemid |289|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@76)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@76)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@76))))
 :qid |DiemAccountcvc5bpl.19875:58|
 :skolemid |290|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@77)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@77))))
 :qid |DiemAccountcvc5bpl.19892:58|
 :skolemid |291|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@78) true)
 :qid |DiemAccountcvc5bpl.19907:51|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@79)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@79))))
 :qid |DiemAccountcvc5bpl.19924:60|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@79))
)))
(assert (forall ((auth_key_prefix (Seq Int)) ) (! (let (($$res@@0 ($1_DiemAccount_spec_abstract_create_authentication_key auth_key_prefix)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |DiemAccountcvc5bpl.21495:15|
 :skolemid |310|
)))
(assert (forall ((s@@80 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@80)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@80)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@80))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@80))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@80))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@80))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@80))))
 :qid |DiemAccountcvc5bpl.21575:47|
 :skolemid |311|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@81)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@81))))
 :qid |DiemAccountcvc5bpl.21597:63|
 :skolemid |312|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@82) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@82)))
 :qid |DiemAccountcvc5bpl.21612:57|
 :skolemid |313|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@83) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@83)))
 :qid |DiemAccountcvc5bpl.21625:55|
 :skolemid |314|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@84) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@84)))
 :qid |DiemAccountcvc5bpl.21639:55|
 :skolemid |315|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@84))
)))
(assert (forall ((s@@85 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@85) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@85)))
 :qid |DiemAccountcvc5bpl.21653:47|
 :skolemid |316|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@86)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@86)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@86))))
 :qid |DiemAccountcvc5bpl.21670:54|
 :skolemid |317|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@87) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@87)))
 :qid |DiemAccountcvc5bpl.21684:55|
 :skolemid |318|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@88) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@88)))
 :qid |DiemAccountcvc5bpl.21698:57|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@89)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@89)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@89))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@89))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@89))))
 :qid |DiemAccountcvc5bpl.21720:56|
 :skolemid |320|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@90)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@90))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@90))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@90))))
 :qid |DiemAccountcvc5bpl.21745:52|
 :skolemid |321|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@91)))
 :qid |DiemAccountcvc5bpl.21761:54|
 :skolemid |322|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@92)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@92)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@92))))
 :qid |DiemAccountcvc5bpl.52460:45|
 :skolemid |1370|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@93) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@93)))
 :qid |DiemAccountcvc5bpl.52474:51|
 :skolemid |1371|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@94)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@94)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@94))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@94))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@94))))
 :qid |DiemAccountcvc5bpl.52497:48|
 :skolemid |1372|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@95)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@95))))
 :qid |DiemAccountcvc5bpl.52811:47|
 :skolemid |1373|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@96)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@96))))
 :qid |DiemAccountcvc5bpl.52835:47|
 :skolemid |1374|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@97)))
 :qid |DiemAccountcvc5bpl.53090:49|
 :skolemid |1375|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@98)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@98))))
 :qid |DiemAccountcvc5bpl.53133:49|
 :skolemid |1376|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@99)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@99))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@99))))
 :qid |DiemAccountcvc5bpl.53162:48|
 :skolemid |1377|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@100)))
 :qid |DiemAccountcvc5bpl.53457:47|
 :skolemid |1378|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100))
)))
(assert (forall ((v@@33 (Seq Int)) ) (! (let ((r@@2 (ReverseVec_14392 v@@33)))
 (and (= (seq.len r@@2) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@2))) (= (seq.nth r@@2 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |DiemAccountcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@39))
))))
 :qid |DiemAccountcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14392 v@@33))
)))
(assert (forall ((v@@34 (Seq (Seq Int))) ) (! (let ((r@@3 (ReverseVec_189846 v@@34)))
 (and (= (seq.len r@@3) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@3))) (= (seq.nth r@@3 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |DiemAccountcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@40))
))))
 :qid |DiemAccountcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_189846 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@4 (ReverseVec_189452 v@@35)))
 (and (= (seq.len r@@4) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@4))) (= (seq.nth r@@4 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |DiemAccountcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@41))
))))
 :qid |DiemAccountcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_189452 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@5 (ReverseVec_189255 v@@36)))
 (and (= (seq.len r@@5) (seq.len v@@36)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@5))) (= (seq.nth r@@5 i@@42) (seq.nth v@@36 (- (- (seq.len v@@36) i@@42) 1))))
 :qid |DiemAccountcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@42))
))))
 :qid |DiemAccountcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_189255 v@@36))
)))
(assert (forall ((v@@37 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@6 (ReverseVec_189058 v@@37)))
 (and (= (seq.len r@@6) (seq.len v@@37)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@6))) (= (seq.nth r@@6 i@@43) (seq.nth v@@37 (- (- (seq.len v@@37) i@@43) 1))))
 :qid |DiemAccountcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@43))
))))
 :qid |DiemAccountcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_189058 v@@37))
)))
(assert (forall ((v@@38 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@7 (ReverseVec_189649 v@@38)))
 (and (= (seq.len r@@7) (seq.len v@@38)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@7))) (= (seq.nth r@@7 i@@44) (seq.nth v@@38 (- (- (seq.len v@@38) i@@44) 1))))
 :qid |DiemAccountcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@44))
))))
 :qid |DiemAccountcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_189649 v@@38))
)))
(assert (forall ((v@@39 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@8 (ReverseVec_188270 v@@39)))
 (and (= (seq.len r@@8) (seq.len v@@39)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@8))) (= (seq.nth r@@8 i@@45) (seq.nth v@@39 (- (- (seq.len v@@39) i@@45) 1))))
 :qid |DiemAccountcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@45))
))))
 :qid |DiemAccountcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_188270 v@@39))
)))
(assert (forall ((v@@40 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@9 (ReverseVec_188467 v@@40)))
 (and (= (seq.len r@@9) (seq.len v@@40)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@9))) (= (seq.nth r@@9 i@@46) (seq.nth v@@40 (- (- (seq.len v@@40) i@@46) 1))))
 :qid |DiemAccountcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@46))
))))
 :qid |DiemAccountcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_188467 v@@40))
)))
(assert (forall ((v@@41 (Seq T@$1_DiemId_DiemIdDomain)) ) (! (let ((r@@10 (ReverseVec_188664 v@@41)))
 (and (= (seq.len r@@10) (seq.len v@@41)) (forall ((i@@47 Int) ) (!  (=> (and (>= i@@47 0) (< i@@47 (seq.len r@@10))) (= (seq.nth r@@10 i@@47) (seq.nth v@@41 (- (- (seq.len v@@41) i@@47) 1))))
 :qid |DiemAccountcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@47))
))))
 :qid |DiemAccountcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_188664 v@@41))
)))
(assert (forall ((v@@42 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@11 (ReverseVec_188861 v@@42)))
 (and (= (seq.len r@@11) (seq.len v@@42)) (forall ((i@@48 Int) ) (!  (=> (and (>= i@@48 0) (< i@@48 (seq.len r@@11))) (= (seq.nth r@@11 i@@48) (seq.nth v@@42 (- (- (seq.len v@@42) i@@48) 1))))
 :qid |DiemAccountcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@48))
))))
 :qid |DiemAccountcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_188861 v@@42))
)))
(assert (forall ((v@@43 (Seq |T@#0|)) ) (! (let ((r@@12 (ReverseVec_188073 v@@43)))
 (and (= (seq.len r@@12) (seq.len v@@43)) (forall ((i@@49 Int) ) (!  (=> (and (>= i@@49 0) (< i@@49 (seq.len r@@12))) (= (seq.nth r@@12 i@@49) (seq.nth v@@43 (- (- (seq.len v@@43) i@@49) 1))))
 :qid |DiemAccountcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@12 i@@49))
))))
 :qid |DiemAccountcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_188073 v@@43))
)))
(assert (forall ((|l#0| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@50) |l#0|)
 :qid |DiemAccountcvc5bpl.245:54|
 :skolemid |1443|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@50))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_207651|) (|l#1| |T@[$1_Event_EventHandle]Multiset_207651|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| |l#1| handle@@0))))
(Multiset_207651 (|lambda#3| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| |l#0@@0| handle@@0)) (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemAccountcvc5bpl.3120:13|
 :skolemid |1444|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@44) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@44) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@44)))
 :qid |DiemAccountcvc5bpl.124:29|
 :skolemid |1445|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@44))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_14539)
(declare-fun $t14@1 () T@$Mutation_242885)
(declare-fun $t24@1 () T@$Mutation_14539)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_242885)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_242386)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_243857)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_243929)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_242386)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $t25 () Int)
(declare-fun _$t0 () Int)
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
(declare-fun $abort_code@1 () Int)
(declare-fun |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| () T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $t14 () T@$Mutation_242885)
(declare-fun $t14@0 () T@$Mutation_242885)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_242885)
(declare-fun $t24 () T@$Mutation_14539)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 836890) (let ((L5_correct  (=> (and (= $t24@0 ($Mutation_14539 (|l#$Mutation_242885| $t14@1) (seq.++ (|p#$Mutation_242885| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_242885| $t14@1)))) (= $t24@1 ($Mutation_14539 (|l#$Mutation_14539| $t24@0) (|p#$Mutation_14539| $t24@0) _$t2))) (=> (and (and (= $t14@2 ($Mutation_242885 (|l#$Mutation_242885| $t14@1) (|p#$Mutation_242885| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_14539| $t24@1)))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_242386 (|Store__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_242885| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_242885| $t14@2)) (|v#$Mutation_242885| $t14@2)))))) (and (=> (= (ControlFlow 0 512633) (- 0 837608)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (and (=> (= (ControlFlow 0 512633) (- 0 837622)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 512633) (- 0 837649)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 512633) (- 0 837659)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 512633) (- 0 837673)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 512633) (- 0 837697)) (= $t25 _$t2)))))))))))))))))
(let ((anon31_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 512691) 512633)) L5_correct)))
(let ((anon32_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 512461) 512633)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 512457) (- 0 837747)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 512457) (- 0 837784)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon31_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 512687) 512457))) L8_correct)))
(let ((anon30_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 512671) 512691) anon31_Then_correct) (=> (= (ControlFlow 0 512671) 512687) anon31_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 512341) 512457))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 512325) 512461) anon32_Then_correct) (=> (= (ControlFlow 0 512325) 512341) anon32_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 512289) 512325)) anon30_Else$1_correct)))
(let ((anon30_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 512295) 512289)) inline$$Lt$0$anon0_correct)))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= $t17@0 (= _$t1 0))) (and (=> (= (ControlFlow 0 512243) 512671) anon30_Then_correct) (=> (= (ControlFlow 0 512243) 512295) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 512705) 512457))) L8_correct)))
(let ((inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 0) (= 0 0)) (and (=> (= (ControlFlow 0 512223) 512705) anon29_Then_correct) (=> (= (ControlFlow 0 512223) 512243) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_242885| $t14@1))) (=> (and (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|) (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_242885| $t14@1)))) (and (= $t15@0 $t15@0) (= (ControlFlow 0 512229) 512223))) inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 512719) 512457))) L8_correct)))
(let ((anon27_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 512771) 512719) anon28_Then_correct) (=> (= (ControlFlow 0 512771) 512229) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 512769) 512771)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_242885 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 512126) 512719) anon28_Then_correct) (=> (= (ControlFlow 0 512126) 512229) anon28_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 512104) (- 0 837235)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 512104) 512769) anon27_Then_correct) (=> (= (ControlFlow 0 512104) 512126) anon27_Else_correct)))))))
(let ((anon25_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 512815) 512457))) L8_correct))))
(let ((anon24_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 512841) 512457))) L8_correct))))
(let ((anon26_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 512084) 512785) anon26_Then_correct) (=> (= (ControlFlow 0 512084) 512104) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not $t12) (= (ControlFlow 0 512090) 512084)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct)))
(let ((anon24_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 512013) 512815) anon25_Then_correct) (=> (= (ControlFlow 0 512013) 512090) anon25_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemAccountcvc5bpl.4480:20|
 :skolemid |124|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 511991) 512841) anon24_Then_correct) (=> (= (ControlFlow 0 511991) 512013) anon24_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_207651| stream@@0) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@0) v@@45) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 511879) 511991)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_242885| $t3)) 0) (= (seq.len (|p#$Mutation_242885| $t14)) 0)) (and (= (seq.len (|p#$Mutation_14539| $t24)) 0) (= (ControlFlow 0 511889) 511879))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 836890) 511889) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_246108)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_244446)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_246212)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_246297)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory| () T@$Memory_246382)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_246467)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_246552)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_244446)
(declare-fun _$t0@@0 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_244446)
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
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 838075) (let ((anon12_Else_correct  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 513592) (- 0 838611)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr)))
 :qid |DiemAccountcvc5bpl.5517:15|
 :skolemid |134|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@0)))
 :qid |DiemAccountcvc5bpl.5517:15|
 :skolemid |134|
)) (and (=> (= (ControlFlow 0 513592) (- 0 838636)) (and (and (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246212| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@1) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@1)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@1)) 2)))))
 :qid |DiemAccountcvc5bpl.5523:17|
 :skolemid |135|
)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246297| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@2) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@2)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@2)) 2)))))
 :qid |DiemAccountcvc5bpl.5523:212|
 :skolemid |136|
))) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246382| |$1_DiemAccount_Balance'#0'_$memory|) addr@@3) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@3)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@3)) 2)))))
 :qid |DiemAccountcvc5bpl.5523:408|
 :skolemid |137|
)))) (=> (and (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246212| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@4) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@4)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@4)) 2)))))
 :qid |DiemAccountcvc5bpl.5523:17|
 :skolemid |135|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246297| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@5) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@5)) 2)))))
 :qid |DiemAccountcvc5bpl.5523:212|
 :skolemid |136|
))) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246382| |$1_DiemAccount_Balance'#0'_$memory|) addr@@6) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@6)) 2)))))
 :qid |DiemAccountcvc5bpl.5523:408|
 :skolemid |137|
))) (and (=> (= (ControlFlow 0 513592) (- 0 838709)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) addr@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@7)) 2))))
 :qid |DiemAccountcvc5bpl.5529:15|
 :skolemid |138|
))) (=> (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) addr@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@8)) 2))))
 :qid |DiemAccountcvc5bpl.5529:15|
 :skolemid |138|
)) (and (=> (= (ControlFlow 0 513592) (- 0 838734)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr@@9) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@9)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@9)) 5)))))
 :qid |DiemAccountcvc5bpl.5535:15|
 :skolemid |139|
))) (=> (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr@@10) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@10)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) addr@@10)) 5)))))
 :qid |DiemAccountcvc5bpl.5535:15|
 :skolemid |139|
)) (and (=> (= (ControlFlow 0 513592) (- 0 838769)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) _$t0@@0)) (and (=> (= (ControlFlow 0 513592) (- 0 838780)) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@1) _$t0@@0) (=> (= (ControlFlow 0 513592) (- 0 838789)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@1) _$t0@@0)) _$t1@@0)))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 513200) (- 0 838581)) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) _$t0@@0) (=> (= (ControlFlow 0 513200) (- 0 838587)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) _$t0@@0) (= 6 $t10@0)))))))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0 $abort_code@1@@0) (= (ControlFlow 0 513606) 513200))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 513656) 513606) anon12_Then_correct) (=> (= (ControlFlow 0 513656) 513592) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) _$t0@@0) (= (ControlFlow 0 513654) 513656)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) _$t0@@0)) (=> (and (and (= $1_Roles_RoleId_$memory@0 ($Memory_244446 (|Store__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) _$t0@@0 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) _$t0@@0 $t11@0@@0))) (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 513386) 513606) anon12_Then_correct) (=> (= (ControlFlow 0 513386) 513592) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0@@0 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 513368) (- 0 838319)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0) (=> (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@11)))
 :qid |DiemAccountcvc5bpl.5485:20|
 :skolemid |128|
)) (=> (and (and (and (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246212| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@12) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@12)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@12)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@12)) 2)))))
 :qid |DiemAccountcvc5bpl.5489:22|
 :skolemid |129|
)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246297| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@13) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@13)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@13)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@13)) 2)))))
 :qid |DiemAccountcvc5bpl.5489:217|
 :skolemid |130|
))) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246382| |$1_DiemAccount_Balance'#0'_$memory|) addr@@14) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@14)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@14)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@14)) 2)))))
 :qid |DiemAccountcvc5bpl.5489:413|
 :skolemid |131|
))) (and (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) addr@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@15)) 2))))
 :qid |DiemAccountcvc5bpl.5493:20|
 :skolemid |132|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr@@16) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@16)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@16)) 5)))))
 :qid |DiemAccountcvc5bpl.5497:20|
 :skolemid |133|
)))) (and (=> (= (ControlFlow 0 513368) 513654) anon11_Then_correct) (=> (= (ControlFlow 0 513368) 513386) anon11_Else_correct)))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@0 $t9@@0)) (and (= $t10@0 $t9@@0) (= (ControlFlow 0 513168) 513200))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 6)) (and (= $t9@@0 $t9@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 513152) 513368) anon10_Then_correct) (=> (= (ControlFlow 0 513152) 513168) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 513116) 513152)) anon0$2_correct)))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| _$t0@@0) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |DiemAccountcvc5bpl.5381:20|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (= $t4 _$t0@@0) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5) (= $t5 _$t0@@0)) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t5)) (= (ControlFlow 0 513122) 513116)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_207651| stream@@1) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@1) v@@46) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 512954) 513122)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 838075) 512954) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@1 () T@$Memory_246552)
(declare-fun $t5@@0 () Int)
(declare-fun $t6 () Int)
(declare-fun $t7 () Int)
(declare-fun _$t1@@1 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $t8 () Int)
(declare-fun $t9@@1 () Int)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_285038)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun |Select__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int) T@$1_DualAttestation_Credential)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_DualAttestation_Credential_$memory@0 () T@$Memory_246552)
(declare-fun |Store__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int T@$1_DualAttestation_Credential) |T@[Int]$1_DualAttestation_Credential|)
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DualAttestation_Credential_| ?x0 ?y1))) :weight 0)))
(declare-fun $t26@0 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun |inline$$1_Vector_empty'u8'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_empty'u8'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t20@@0 () Int)
(declare-fun $t17@0@@0 () Bool)
(declare-fun $t15 () Bool)
(declare-fun $t16 () Int)
(declare-fun $t14@@0 () Int)
(declare-fun $t13 () Int)
(declare-fun $t12@@0 () Bool)
(declare-fun $t10@@0 () Int)
(declare-fun $t11@@0 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_260315)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_260402)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_260489)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_255508)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_255595)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory| () T@$Memory_255682)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_261071)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_260662)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_261170)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_260753)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_261269)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_260844)
(declare-fun |$1_AccountLimits_Window'#0'_$memory| () T@$Memory_271078)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_publish_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 838810) (let ((anon30_Else_correct@@0  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 515359) (- 0 840320)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@1) addr@@17) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@17)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@17)) 5)))))
 :qid |DiemAccountcvc5bpl.16494:15|
 :skolemid |221|
))) (=> (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@1) addr@@18) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@18)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@18)) 5)))))
 :qid |DiemAccountcvc5bpl.16494:15|
 :skolemid |221|
)) (and (=> (= (ControlFlow 0 515359) (- 0 840356)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 515359) (- 0 840368)) (not (and (not (= $t6 5)) (not (= $t6 2))))) (=> (not (and (not (= $t6 5)) (not (= $t6 2)))) (and (=> (= (ControlFlow 0 515359) (- 0 840391)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 515359) (- 0 840403)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t7)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t7)) 1))) (and (=> (= (ControlFlow 0 515359) (- 0 840421)) (not (not (= _$t1@@1 186537453)))) (=> (not (not (= _$t1@@1 186537453))) (and (=> (= (ControlFlow 0 515359) (- 0 840435)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) _$t0@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) _$t0@@1)) (and (=> (= (ControlFlow 0 515359) (- 0 840446)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8))) (and (=> (= (ControlFlow 0 515359) (- 0 840458)) (not (and (not (= $t9@@1 5)) (not (= $t9@@1 2))))) (=> (not (and (not (= $t9@@1 5)) (not (= $t9@@1 2)))) (and (=> (= (ControlFlow 0 515359) (- 0 840481)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1) (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@1) addr1)))
 :qid |DiemAccountcvc5bpl.16543:15|
 :skolemid |222|
))) (=> (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@1) addr1@@0)))
 :qid |DiemAccountcvc5bpl.16543:15|
 :skolemid |222|
)) (and (=> (= (ControlFlow 0 515359) (- 0 840505)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 515359) (- 0 840522)) (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@1) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@1) addr1@@1)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@1)))))
 :qid |DiemAccountcvc5bpl.16553:15|
 :skolemid |223|
))) (=> (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@2) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@1) addr1@@2)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@2)))))
 :qid |DiemAccountcvc5bpl.16553:15|
 :skolemid |223|
)) (=> (= (ControlFlow 0 515359) (- 0 840557)) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@3) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@1) addr1@@3)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@3)))))
 :qid |DiemAccountcvc5bpl.16558:15|
 :skolemid |224|
))))))))))))))))))))))))))))))
(let ((anon28_Then_correct@@0 true))
(let ((anon27_Then_correct@@0 true))
(let ((anon26_Then_correct@@0 true))
(let ((anon25_Then_correct@@0 true))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 514758) (- 0 840055)) (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@0)) (and (not (= $t6 5)) (not (= $t6 2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= _$t1@@1 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) _$t0@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8))) (and (not (= $t9@@1 5)) (not (= $t9@@1 2))))) (=> (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@0)) (and (not (= $t6 5)) (not (= $t6 2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= _$t1@@1 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) _$t0@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8))) (and (not (= $t9@@1 5)) (not (= $t9@@1 2)))) (=> (= (ControlFlow 0 514758) (- 0 840154)) (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@0)) (= 5 $t13@0)) (and (and (not (= $t6 5)) (not (= $t6 2))) (= 3 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t7)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t7)) 1)) (= 3 $t13@0))) (and (not (= _$t1@@1 186537453)) (= 2 $t13@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) _$t0@@1) (= 6 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8)) (= 5 $t13@0))) (and (and (not (= $t9@@1 5)) (not (= $t9@@1 2))) (= 3 $t13@0))))))))
(let ((anon30_Then_correct@@0  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t13@0 $abort_code@1@@1) (= (ControlFlow 0 515373) 514758))) L3_correct@@0)))
(let ((anon29_Then$1_correct  (=> (= $1_DualAttestation_Credential_$memory@1 $1_DualAttestation_Credential_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 515423) 515373) anon30_Then_correct@@0) (=> (= (ControlFlow 0 515423) 515359) anon30_Else_correct@@0))))))
(let ((anon29_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) _$t0@@1) (= (ControlFlow 0 515421) 515423)) anon29_Then$1_correct)))
(let ((anon29_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) _$t0@@1)) (=> (and (and (= $1_DualAttestation_Credential_$memory@0 ($Memory_246552 (|Store__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) _$t0@@1 true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) _$t0@@1 $t26@0))) (= $1_DualAttestation_Credential_$memory@1 $1_DualAttestation_Credential_$memory@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 515075) 515373) anon30_Then_correct@@0) (=> (= (ControlFlow 0 515075) 515359) anon30_Else_correct@@0))))))
(let ((anon28_Else_correct@@0  (=> (not false) (=> (and (= $t26@0 ($1_DualAttestation_Credential _$t2@@0 |inline$$1_Vector_empty'u8'$0$v@1| |inline$$1_Vector_empty'u8'$1$v@1| 18446744073709551615 |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr@@19) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@19)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@19)) 5)))))
 :qid |DiemAccountcvc5bpl.16474:20|
 :skolemid |220|
))) (and (=> (= (ControlFlow 0 515057) 515421) anon29_Then_correct@@0) (=> (= (ControlFlow 0 515057) 515075) anon29_Else_correct@@0))))))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 514992) 515437) anon28_Then_correct@@0) (=> (= (ControlFlow 0 514992) 515057) anon28_Else_correct@@0)))))
(let ((anon27_Else_correct@@0  (=> (and (not false) (= (ControlFlow 0 514998) 514992)) |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 514910) 515451) anon27_Then_correct@@0) (=> (= (ControlFlow 0 514910) 514998) anon27_Else_correct@@0)))))
(let ((anon26_Else_correct@@0  (=> (not false) (=> (and (|$IsValid'u64'| 18446744073709551615) (= (ControlFlow 0 514916) 514910)) |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((|inline$$1_Vector_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 514820) 515465) anon26_Then_correct@@0) (=> (= (ControlFlow 0 514820) 514916) anon26_Else_correct@@0)))))
(let ((anon25_Else_correct@@0  (=> (and (not false) (= (ControlFlow 0 514826) 514820)) |inline$$1_Vector_empty'u8'$1$anon0_correct|)))
(let ((|inline$$1_Vector_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 514784) 515479) anon25_Then_correct@@0) (=> (= (ControlFlow 0 514784) 514826) anon25_Else_correct@@0)))))
(let ((anon24_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@0 (= (ControlFlow 0 514790) 514784)) |inline$$1_Vector_empty'u8'$0$anon0_correct|)))
(let ((anon24_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t20@@0 $t20@@0)) (and (= $t13@0 $t20@@0) (= (ControlFlow 0 514474) 514758))) L3_correct@@0)))
(let ((anon23_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t20@@0) (= $t20@@0 6)) (and (= $t20@@0 $t20@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 514458) 514790) anon24_Then_correct@@0) (=> (= (ControlFlow 0 514458) 514474) anon24_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t17@0@@0)) (= (ControlFlow 0 514418) 514458)) anon23_Else$1_correct)))
(let ((anon23_Else_correct  (=> (not $t15) (=> (and (and (|$IsValid'address'| $t16) (= $t16 _$t0@@1)) (and (= $t17@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t16)) (= (ControlFlow 0 514424) 514418))) inline$$Not$0$anon0_correct@@0))))
(let ((anon23_Then_correct  (=> $t15 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t14@@0)) (= 5 $t13)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t14@@0)) 1)) (= 3 $t13))) (and (not (= _$t1@@1 186537453)) (= 2 $t13))) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 515551) 514758))) L3_correct@@0))))
(let ((anon22_Else_correct  (=> (not $t12@@0) (=> (and (= $t14@@0 _$t1@@1) (= $t15  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t14@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t14@@0)) 1))) (not (= _$t1@@1 186537453))))) (and (=> (= (ControlFlow 0 514362) 515551) anon23_Then_correct) (=> (= (ControlFlow 0 514362) 514424) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> $t12@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t10@@0)) (= 5 $t13)) (and (and (not (= $t11@@0 5)) (not (= $t11@@0 2))) (= 3 $t13))) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 515607) 514758))) L3_correct@@0))))
(let ((anon0$1_correct@@1  (=> (and (and (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260315| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |DiemAccountcvc5bpl.16207:22|
 :skolemid |207|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260402| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |DiemAccountcvc5bpl.16207:269|
 :skolemid |208|
))) (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |DiemAccountcvc5bpl.16207:517|
 :skolemid |209|
))) (and (and (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255508| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@4)) 1))))
 :qid |DiemAccountcvc5bpl.16211:22|
 :skolemid |210|
)) (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255595| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@5)) 1))))
 :qid |DiemAccountcvc5bpl.16211:232|
 :skolemid |211|
))) (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255682| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@6)) 1))))
 :qid |DiemAccountcvc5bpl.16211:443|
 :skolemid |212|
)))) (and (and (and (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@7)) 2))))
 :qid |DiemAccountcvc5bpl.16215:22|
 :skolemid |213|
)) (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261170| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_260753| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@8)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@8)) 2))))
 :qid |DiemAccountcvc5bpl.16215:293|
 :skolemid |214|
))) (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) addr1@@9)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@9)) 2))))
 :qid |DiemAccountcvc5bpl.16215:565|
 :skolemid |215|
))) (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_271078| |$1_AccountLimits_Window'#0'_$memory|) addr@@20) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@20) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@20)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@20)) 6)))))
 :qid |DiemAccountcvc5bpl.16219:20|
 :skolemid |216|
)) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@10) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@10)) 2)))))
 :qid |DiemAccountcvc5bpl.16223:20|
 :skolemid |217|
))))) (and (and (and (and (|$IsValid'address'| _$t0@@1) (|$IsValid'address'| _$t1@@1)) (and (|$IsValid'vec'u8''| _$t2@@0) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |DiemAccountcvc5bpl.16235:20|
 :skolemid |218|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@1))
)))) (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) $a_0@@2)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@2))
 :qid |DiemAccountcvc5bpl.16239:20|
 :skolemid |219|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) $a_0@@2))
)) (= $t5@@0 _$t0@@1)) (and (= $t6 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@0))) (= $t7 _$t1@@1)))) (and (and (and (= $t8 _$t0@@1) (= $t9@@1 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t8)))) (and (= _$t0@@1 _$t0@@1) (= _$t1@@1 _$t1@@1))) (and (and (= _$t2@@0 _$t2@@0) (= $t10@@0 _$t0@@1)) (and (= $t11@@0 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t10@@0))) (= $t12@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t10@@0)) (and (not (= $t11@@0 5)) (not (= $t11@@0 2)))))))))) (and (=> (= (ControlFlow 0 514302) 515607) anon22_Then_correct) (=> (= (ControlFlow 0 514302) 514362) anon22_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_207651| stream@@2) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@2) v@@47) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 513763) 514302)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 838810) 513763) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@0@@0 () T@$Memory_246552)
(declare-fun $t16@2 () T@$Mutation_289860)
(declare-fun $t6@@0 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun _$t1@@2 () (Seq Int))
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t9@@2 () T@$1_Event_EventHandle)
(declare-fun $t10@@1 () T@$1_DualAttestation_BaseUrlRotationEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_207651_| (|T@[$1_Event_EventHandle]Multiset_207651| T@$1_Event_EventHandle T@Multiset_207651) |T@[$1_Event_EventHandle]Multiset_207651|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_207651|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_207651)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|Store__T@[$1_Event_EventHandle]Multiset_207651_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_207651|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_207651)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|Store__T@[$1_Event_EventHandle]Multiset_207651_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_207651_| ?x0 ?y1))) :weight 0)))
(declare-fun $t15@0@@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t18@0@@0 () T@$Mutation_236117)
(declare-fun $t21@0 () T@$1_DualAttestation_BaseUrlRotationEvent)
(declare-fun $t20@@1 () Bool)
(declare-fun $t19 () Int)
(declare-fun $t15@@0 () Int)
(declare-fun |$temp_0'$1_DualAttestation_Credential'@0| () T@$1_DualAttestation_Credential)
(declare-fun $t16@1 () T@$Mutation_289860)
(declare-fun $t17@0@@1 () T@$Mutation_230202)
(declare-fun $t17@1 () T@$Mutation_230202)
(declare-fun $t16@@0 () T@$Mutation_289860)
(declare-fun $t11@@1 () Int)
(declare-fun $t16@0 () T@$Mutation_289860)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t14@@1 () Int)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_251206)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_250729)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_274935)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_254852)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_272351)
(declare-fun _$t0@@2 () Int)
(declare-fun $t8@@0 () Int)
(declare-fun $t3@@0 () T@$Mutation_289860)
(declare-fun $t17 () T@$Mutation_230202)
(declare-fun $t18 () T@$Mutation_236117)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_rotate_base_url$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 840602) (let ((anon19_Else_correct  (=> (not $abort_flag@0@@2) (=> (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr@@21) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@21)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@21)) 5)))))
 :qid |DiemAccountcvc5bpl.16858:20|
 :skolemid |228|
)) (= $1_DualAttestation_Credential_$memory@0@@0 ($Memory_246552 (|Store__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_289860| $t16@2)) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_289860| $t16@2)) (|v#$Mutation_289860| $t16@2))))) (and (=> (= (ControlFlow 0 516760) (- 0 841449)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) addr@@22) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@22)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@22)) 5)))))
 :qid |DiemAccountcvc5bpl.16869:15|
 :skolemid |229|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) addr@@23) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@23)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@23)) 5)))))
 :qid |DiemAccountcvc5bpl.16869:15|
 :skolemid |229|
)) (and (=> (= (ControlFlow 0 516760) (- 0 841485)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 516760) (- 0 841497)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 516760) (- 0 841507)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) $t7@@0)) _$t1@@2)) (=> (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) $t7@@0)) _$t1@@2) (and (=> (= (ControlFlow 0 516760) (- 0 841520)) (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (not (= addr1@@11 $t7@@0)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) addr1@@11)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@11)))))
 :qid |DiemAccountcvc5bpl.16893:15|
 :skolemid |230|
))) (=> (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (not (= addr1@@12 $t7@@0)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) addr1@@12)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@12)))))
 :qid |DiemAccountcvc5bpl.16893:15|
 :skolemid |230|
)) (and (=> (= (ControlFlow 0 516760) (- 0 841558)) (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) addr1@@13)))
 :qid |DiemAccountcvc5bpl.16898:15|
 :skolemid |231|
))) (=> (forall ((addr1@@14 Int) ) (!  (=> (|$IsValid'address'| addr1@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) addr1@@14)))
 :qid |DiemAccountcvc5bpl.16898:15|
 :skolemid |231|
)) (and (=> (= (ControlFlow 0 516760) (- 0 841582)) (forall ((addr1@@15 Int) ) (!  (=> (|$IsValid'address'| addr1@@15) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@15)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) addr1@@15))))
 :qid |DiemAccountcvc5bpl.16903:15|
 :skolemid |232|
))) (=> (forall ((addr1@@16 Int) ) (!  (=> (|$IsValid'address'| addr1@@16) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@16)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) addr1@@16))))
 :qid |DiemAccountcvc5bpl.16903:15|
 :skolemid |232|
)) (and (=> (= (ControlFlow 0 516760) (- 0 841610)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 516760) (- 0 841627)) (forall ((addr1@@17 Int) ) (!  (=> (|$IsValid'address'| addr1@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@17) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) addr1@@17)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@17)))))
 :qid |DiemAccountcvc5bpl.16913:15|
 :skolemid |233|
))) (=> (forall ((addr1@@18 Int) ) (!  (=> (|$IsValid'address'| addr1@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@18) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@0) addr1@@18)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@18)))))
 :qid |DiemAccountcvc5bpl.16913:15|
 :skolemid |233|
)) (and (=> (= (ControlFlow 0 516760) (- 0 841662)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t9@@2)))
(let ((stream_new (let ((len (|l#Multiset_207651| stream@@3)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@3) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@3) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t9@@2 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected) handle@@4)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual) handle@@4))) (forall ((v@@48 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected) handle@@4)) v@@48) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual) handle@@4)) v@@48))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
)))))) (=> (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t9@@2)))
(let ((stream_new (let ((len (|l#Multiset_207651| stream@@3)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@3) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@3) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t9@@2 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@5 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected) handle@@5)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual) handle@@5))) (forall ((v@@49 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected) handle@@5)) v@@49) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual) handle@@5)) v@@49))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
))))) (=> (= (ControlFlow 0 516760) (- 0 841687)) (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t9@@2)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_207651| stream@@4)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@4) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@4) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t9@@2 stream_new@@0))))))
 (and (<= (|counter#$EventStore| actual@@0) (|counter#$EventStore| expected@@0)) (forall ((handle@@6 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@0) handle@@6)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@0) handle@@6))) (forall ((v@@50 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@0) handle@@6)) v@@50) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@0) handle@@6)) v@@50))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
))))))))))))))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 516221) (- 0 841343)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t6@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t6@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (=> (= (ControlFlow 0 516221) (- 0 841357)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t6@@0)) (= 5 $t15@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@0@@0))))))))
(let ((anon19_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t15@0@@0 $abort_code@1@@2) (= (ControlFlow 0 516774) 516221))) L3_correct@@1)))
(let ((|inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| (|v#$Mutation_236117| $t18@0@@0)) (= $es@0 (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1|)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_207651| stream@@5)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t21@0))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t21@0) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| stream_new@@1)))))) (and (=> (= (ControlFlow 0 516424) 516774) anon19_Then_correct) (=> (= (ControlFlow 0 516424) 516760) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not $t20@@1) (=> (and (and (|$IsValid'u64'| $t19) (= $t19 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t21@0 ($1_DualAttestation_BaseUrlRotationEvent _$t1@@2 $t19)) (= (ControlFlow 0 516430) 516424))) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|))))
(let ((anon18_Then_correct  (=> $t20@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@0)) (= $t15@@0 $t15@@0)) (and (= $t15@0@@0 $t15@@0) (= (ControlFlow 0 516800) 516221))) L3_correct@@1))))
(let ((anon17_Else_correct  (=> (and (and (and (not $abort_flag@0@@2) (= |$temp_0'$1_DualAttestation_Credential'@0| (|v#$Mutation_289860| $t16@1))) (and (= |$temp_0'$1_DualAttestation_Credential'@0| |$temp_0'$1_DualAttestation_Credential'@0|) (= $t17@0@@1 ($Mutation_230202 (|l#$Mutation_289860| $t16@1) (seq.++ (|p#$Mutation_289860| $t16@1) (seq.unit 1)) (|$base_url#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t16@1)))))) (and (and (= $t17@1 ($Mutation_230202 (|l#$Mutation_230202| $t17@0@@1) (|p#$Mutation_230202| $t17@0@@1) _$t1@@2)) (= $t16@2 ($Mutation_289860 (|l#$Mutation_289860| $t16@1) (|p#$Mutation_289860| $t16@1) ($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t16@1)) (|v#$Mutation_230202| $t17@1) (|$compliance_public_key#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t16@1)) (|$expiration_date#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t16@1)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t16@1)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t16@1)))))) (and (= $t18@0@@0 ($Mutation_236117 (|l#$Mutation_289860| $t16@2) (seq.++ (|p#$Mutation_289860| $t16@2) (seq.unit 5)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t16@2)))) (= $t20@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 516325) 516800) anon18_Then_correct) (=> (= (ControlFlow 0 516325) 516430) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t15@0@@0 $abort_code@1@@2) (= (ControlFlow 0 516814) 516221))) L3_correct@@1)))
(let ((anon16_Then$1_correct  (=> (= $t16@1 $t16@@0) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 516866) 516814) anon17_Then_correct) (=> (= (ControlFlow 0 516866) 516325) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t11@@1)) (= (ControlFlow 0 516864) 516866)) anon16_Then$1_correct)))
(let ((anon16_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t11@@1) (=> (and (and (= $t16@0 ($Mutation_289860 ($Global $t11@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) $t11@@1))) (= $t16@1 $t16@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 516247) 516814) anon17_Then_correct) (=> (= (ControlFlow 0 516247) 516325) anon17_Else_correct))))))
(let ((anon15_Then_correct  (=> $t12@0 (and (=> (= (ControlFlow 0 516225) 516864) anon16_Then_correct) (=> (= (ControlFlow 0 516225) 516247) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (and (not $t12@0) (= $t14@@1 $t14@@1)) (and (= $t15@0@@0 $t14@@1) (= (ControlFlow 0 516165) 516221))) L3_correct@@1)))
(let ((anon0$1_correct@@2  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_251206| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_250729| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_274935| $1_XDX_Reserve_$memory) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_254852| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_272351| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@19 Int) ) (!  (=> (|$IsValid'address'| addr1@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@19) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@19)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@19)) 2)))))
 :qid |DiemAccountcvc5bpl.16659:20|
 :skolemid |225|
)))) (and (and (|$IsValid'address'| _$t0@@2) (|$IsValid'vec'u8''| _$t1@@2)) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@3))
 :qid |DiemAccountcvc5bpl.16668:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) $a_0@@4)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@4))
 :qid |DiemAccountcvc5bpl.16672:20|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) $a_0@@4))
))))) (=> (and (and (and (and (= $t6@@0 _$t0@@2) (= $t7@@0 _$t0@@2)) (and (= $t8@@0 _$t0@@2) (= $t9@@2 (|$base_url_rotation_events#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) $t8@@0))))) (and (and (= $t10@@1 ($1_DualAttestation_BaseUrlRotationEvent _$t1@@2 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@2 _$t1@@2) (|$IsValid'address'| $t11@@1)))) (and (and (and (= $t11@@1 _$t0@@2) (= $t11@@1 $t11@@1)) (and (= $t12@0 (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t11@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@1) (= $t14@@1 5)) (and (= $t14@@1 $t14@@1) (= $t12@0 $t12@0))))) (and (=> (= (ControlFlow 0 516149) 516225) anon15_Then_correct) (=> (= (ControlFlow 0 516149) 516165) anon15_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_207651| stream@@6) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@6) v@@51) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 515844) 516149)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (seq.len (|p#$Mutation_289860| $t3@@0)) 0) (=> (and (and (= (seq.len (|p#$Mutation_289860| $t16@@0)) 0) (= (seq.len (|p#$Mutation_230202| $t17)) 0)) (and (= (seq.len (|p#$Mutation_236117| $t18)) 0) (= (ControlFlow 0 515854) 515844))) inline$$InitEventStore$0$anon0_correct@@2))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 840602) 515854) anon0_correct@@2)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@0@@1 () T@$Memory_246552)
(declare-fun $t21@2 () T@$Mutation_289860)
(declare-fun _$t1@@3 () (Seq Int))
(declare-fun $t8@@1 () Int)
(declare-fun $t9@@3 () Int)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t11@@2 () T@$1_Event_EventHandle)
(declare-fun $t12@@1 () T@$1_DualAttestation_ComplianceKeyRotationEvent)
(declare-fun $t17@0@@2 () Int)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t23@0 () T@$Mutation_236117)
(declare-fun $t26@0@@0 () T@$1_DualAttestation_ComplianceKeyRotationEvent)
(declare-fun $t25@@0 () Bool)
(declare-fun $t24@@0 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun |$temp_0'$1_DualAttestation_Credential'@0@@0| () T@$1_DualAttestation_Credential)
(declare-fun $t21@1 () T@$Mutation_289860)
(declare-fun $t22@0 () T@$Mutation_230202)
(declare-fun $t22@1 () T@$Mutation_230202)
(declare-fun $t21 () T@$Mutation_289860)
(declare-fun $t13@@0 () Int)
(declare-fun $t21@0@@0 () T@$Mutation_289860)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun $t20@@2 () Int)
(declare-fun $t14@0@@0 () Bool)
(declare-fun $t16@@1 () Int)
(declare-fun _$t0@@3 () Int)
(declare-fun $t10@@2 () Int)
(declare-fun $t3@@1 () T@$Mutation_289860)
(declare-fun $t22 () T@$Mutation_230202)
(declare-fun $t23@@0 () T@$Mutation_236117)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_rotate_compliance_public_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 841718) (let ((anon26_Else_correct@@1  (=> (not $abort_flag@0@@3) (=> (and (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr@@24) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@24)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@24)) 5)))))
 :qid |DiemAccountcvc5bpl.17291:20|
 :skolemid |237|
)) (= $1_DualAttestation_Credential_$memory@0@@1 ($Memory_246552 (|Store__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_289860| $t21@2)) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_289860| $t21@2)) (|v#$Mutation_289860| $t21@2))))) (and (=> (= (ControlFlow 0 518146) (- 0 842679)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) addr@@25) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@25)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@25)) 5)))))
 :qid |DiemAccountcvc5bpl.17302:15|
 :skolemid |238|
))) (=> (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) addr@@26) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@26)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@26)) 5)))))
 :qid |DiemAccountcvc5bpl.17302:15|
 :skolemid |238|
)) (and (=> (= (ControlFlow 0 518146) (- 0 842715)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@3)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@3))) (and (=> (= (ControlFlow 0 518146) (- 0 842725)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t8@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t8@@1))) (and (=> (= (ControlFlow 0 518146) (- 0 842737)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 518146) (- 0 842747)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) $t9@@3)) _$t1@@3)) (=> (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) $t9@@3)) _$t1@@3) (and (=> (= (ControlFlow 0 518146) (- 0 842760)) (forall ((addr1@@20 Int) ) (!  (=> (|$IsValid'address'| addr1@@20) (=> (not (= addr1@@20 $t9@@3)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) addr1@@20)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@20)))))
 :qid |DiemAccountcvc5bpl.17331:15|
 :skolemid |239|
))) (=> (forall ((addr1@@21 Int) ) (!  (=> (|$IsValid'address'| addr1@@21) (=> (not (= addr1@@21 $t9@@3)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) addr1@@21)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@21)))))
 :qid |DiemAccountcvc5bpl.17331:15|
 :skolemid |239|
)) (and (=> (= (ControlFlow 0 518146) (- 0 842798)) (forall ((addr1@@22 Int) ) (!  (=> (|$IsValid'address'| addr1@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) addr1@@22)))
 :qid |DiemAccountcvc5bpl.17336:15|
 :skolemid |240|
))) (=> (forall ((addr1@@23 Int) ) (!  (=> (|$IsValid'address'| addr1@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) addr1@@23)))
 :qid |DiemAccountcvc5bpl.17336:15|
 :skolemid |240|
)) (and (=> (= (ControlFlow 0 518146) (- 0 842822)) (forall ((addr1@@24 Int) ) (!  (=> (|$IsValid'address'| addr1@@24) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@24)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) addr1@@24))))
 :qid |DiemAccountcvc5bpl.17341:15|
 :skolemid |241|
))) (=> (forall ((addr1@@25 Int) ) (!  (=> (|$IsValid'address'| addr1@@25) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@25)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) addr1@@25))))
 :qid |DiemAccountcvc5bpl.17341:15|
 :skolemid |241|
)) (and (=> (= (ControlFlow 0 518146) (- 0 842850)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 518146) (- 0 842867)) (forall ((addr1@@26 Int) ) (!  (=> (|$IsValid'address'| addr1@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@26) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) addr1@@26)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@26)))))
 :qid |DiemAccountcvc5bpl.17351:15|
 :skolemid |242|
))) (=> (forall ((addr1@@27 Int) ) (!  (=> (|$IsValid'address'| addr1@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@27) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory@0@@1) addr1@@27)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@27)))))
 :qid |DiemAccountcvc5bpl.17351:15|
 :skolemid |242|
)) (and (=> (= (ControlFlow 0 518146) (- 0 842902)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t11@@2)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_207651| stream@@7)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@7) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@7) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t11@@2 stream_new@@2))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@8 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@1) handle@@8)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@1) handle@@8))) (forall ((v@@52 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@1) handle@@8)) v@@52) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@1) handle@@8)) v@@52))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
)))))) (=> (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t11@@2)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_207651| stream@@7)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@7) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@7) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t11@@2 stream_new@@2))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@9 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@1) handle@@9)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@1) handle@@9))) (forall ((v@@53 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@1) handle@@9)) v@@53) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@1) handle@@9)) v@@53))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
))))) (=> (= (ControlFlow 0 518146) (- 0 842927)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t11@@2)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_207651| stream@@8)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@8) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@8) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t11@@2 stream_new@@3))))))
 (and (<= (|counter#$EventStore| actual@@2) (|counter#$EventStore| expected@@2)) (forall ((handle@@10 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@2) handle@@10)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@2) handle@@10))) (forall ((v@@54 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@2) handle@@10)) v@@54) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@2) handle@@10)) v@@54))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
))))))))))))))))))))))))))))))))
(let ((anon21_Then_correct true))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 517505) (- 0 842552)) (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t8@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t8@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (=> (= (ControlFlow 0 517505) (- 0 842573)) (or (or (and (not ($1_Signature_$ed25519_validate_pubkey _$t1@@3)) (= 7 $t17@0@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t8@@1)) (= 5 $t17@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t17@0@@2))))))))
(let ((anon26_Then_correct@@1  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t17@0@@2 $abort_code@1@@3) (= (ControlFlow 0 518160) 517505))) L5_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| (|v#$Mutation_236117| $t23@0)) (= $es@0@@0 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1|)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_207651| stream@@9)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@9) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t26@0@@0))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@9) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t26@0@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| stream_new@@4)))))) (and (=> (= (ControlFlow 0 517800) 518160) anon26_Then_correct@@1) (=> (= (ControlFlow 0 517800) 518146) anon26_Else_correct@@1)))))
(let ((anon25_Else_correct@@1  (=> (not $t25@@0) (=> (and (and (|$IsValid'u64'| $t24@@0) (= $t24@@0 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t26@0@@0 ($1_DualAttestation_ComplianceKeyRotationEvent _$t1@@3 $t24@@0)) (= (ControlFlow 0 517806) 517800))) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((anon25_Then_correct@@1  (=> $t25@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t17@@0)) (= $t17@@0 $t17@@0)) (and (= $t17@0@@2 $t17@@0) (= (ControlFlow 0 518186) 517505))) L5_correct@@0))))
(let ((anon24_Else_correct@@1  (=> (and (and (and (not $abort_flag@0@@3) (= |$temp_0'$1_DualAttestation_Credential'@0@@0| (|v#$Mutation_289860| $t21@1))) (and (= |$temp_0'$1_DualAttestation_Credential'@0@@0| |$temp_0'$1_DualAttestation_Credential'@0@@0|) (= $t22@0 ($Mutation_230202 (|l#$Mutation_289860| $t21@1) (seq.++ (|p#$Mutation_289860| $t21@1) (seq.unit 2)) (|$compliance_public_key#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t21@1)))))) (and (and (= $t22@1 ($Mutation_230202 (|l#$Mutation_230202| $t22@0) (|p#$Mutation_230202| $t22@0) _$t1@@3)) (= $t21@2 ($Mutation_289860 (|l#$Mutation_289860| $t21@1) (|p#$Mutation_289860| $t21@1) ($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t21@1)) (|$base_url#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t21@1)) (|v#$Mutation_230202| $t22@1) (|$expiration_date#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t21@1)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t21@1)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t21@1)))))) (and (= $t23@0 ($Mutation_236117 (|l#$Mutation_289860| $t21@2) (seq.++ (|p#$Mutation_289860| $t21@2) (seq.unit 4)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_289860| $t21@2)))) (= $t25@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 517701) 518186) anon25_Then_correct@@1) (=> (= (ControlFlow 0 517701) 517806) anon25_Else_correct@@1)))))
(let ((anon24_Then_correct@@1  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t17@0@@2 $abort_code@1@@3) (= (ControlFlow 0 518200) 517505))) L5_correct@@0)))
(let ((anon23_Then$1_correct  (=> (= $t21@1 $t21) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 518252) 518200) anon24_Then_correct@@1) (=> (= (ControlFlow 0 518252) 517701) anon24_Else_correct@@1))))))
(let ((anon23_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t13@@0)) (= (ControlFlow 0 518250) 518252)) anon23_Then$1_correct)))
(let ((anon23_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t13@@0) (=> (and (and (= $t21@0@@0 ($Mutation_289860 ($Global $t13@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) $t13@@0))) (= $t21@1 $t21@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 517623) 518200) anon24_Then_correct@@1) (=> (= (ControlFlow 0 517623) 517701) anon24_Else_correct@@1))))))
(let ((anon22_Then_correct@@0  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (and (=> (= (ControlFlow 0 517601) 518250) anon23_Then_correct@@0) (=> (= (ControlFlow 0 517601) 517623) anon23_Else_correct@@0)))))
(let ((anon22_Else_correct@@0  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= $t20@@2 $t20@@2)) (and (= $t17@0@@2 $t20@@2) (= (ControlFlow 0 517597) 517505))) L5_correct@@0)))
(let ((anon21_Else_correct  (=> (and (not false) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20@@2) (= $t20@@2 7)) (and (= $t20@@2 $t20@@2) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 517581) 517601) anon22_Then_correct@@0) (=> (= (ControlFlow 0 517581) 517597) anon22_Else_correct@@0))))))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t1@@3)) (and (=> (= (ControlFlow 0 517539) 518266) anon21_Then_correct) (=> (= (ControlFlow 0 517539) 517581) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (and $t14@0@@0 (= (ControlFlow 0 517545) 517539)) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct)))
(let ((anon20_Else_correct  (=> (and (and (not $t14@0@@0) (= $t16@@1 $t16@@1)) (and (= $t17@0@@2 $t16@@1) (= (ControlFlow 0 517425) 517505))) L5_correct@@0)))
(let ((anon0$1_correct@@3  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_251206| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_250729| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_274935| $1_XDX_Reserve_$memory) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_254852| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_272351| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@28 Int) ) (!  (=> (|$IsValid'address'| addr1@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@28) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@28)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@28)) 2)))))
 :qid |DiemAccountcvc5bpl.17040:20|
 :skolemid |234|
)))) (and (and (|$IsValid'address'| _$t0@@3) (|$IsValid'vec'u8''| _$t1@@3)) (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@5)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@5))
 :qid |DiemAccountcvc5bpl.17049:20|
 :skolemid |235|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) $a_0@@6)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@6))
 :qid |DiemAccountcvc5bpl.17053:20|
 :skolemid |236|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) $a_0@@6))
))))) (=> (and (and (and (and (= $t8@@1 _$t0@@3) (= $t9@@3 _$t0@@3)) (and (= $t10@@2 _$t0@@3) (= $t11@@2 (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_246552| $1_DualAttestation_Credential_$memory) $t10@@2))))) (and (and (= $t12@@1 ($1_DualAttestation_ComplianceKeyRotationEvent _$t1@@3 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (= _$t0@@3 _$t0@@3)) (and (= _$t1@@3 _$t1@@3) (|$IsValid'address'| $t13@@0)))) (and (and (and (= $t13@@0 _$t0@@3) (= $t13@@0 $t13@@0)) (and (= $t14@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) $t13@@0)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t16@@1) (= $t16@@1 5)) (and (= $t16@@1 $t16@@1) (= $t14@0@@0 $t14@0@@0))))) (and (=> (= (ControlFlow 0 517409) 517545) anon20_Then_correct) (=> (= (ControlFlow 0 517409) 517425) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_207651| stream@@10) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@10) v@@55) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 517104) 517409)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (seq.len (|p#$Mutation_289860| $t3@@1)) 0) (=> (and (and (= (seq.len (|p#$Mutation_289860| $t21)) 0) (= (seq.len (|p#$Mutation_230202| $t22)) 0)) (and (= (seq.len (|p#$Mutation_236117| $t23@@0)) 0) (= (ControlFlow 0 517114) 517104))) inline$$InitEventStore$0$anon0_correct@@3))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 841718) 517114) anon0_correct@@3)))
PreconditionGeneratedEntry_correct@@1)))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t6@@1 () Int)
(declare-fun _$t1@@4 () Int)
(declare-fun $t7@@1 () Int)
(declare-fun $t5@@1 () Int)
(declare-fun _$t2@@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_254787)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_254979)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1 () T@$Memory_246467)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| () T@$Memory_261071)
(declare-fun $t20@@3 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| () T@$Memory_261071)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t23@@1 () Bool)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1| () T@$Memory_261269)
(declare-fun $t24@@1 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_261269)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t27 () Bool)
(declare-fun $t10@0@@0 () Int)
(declare-fun $t21@@0 () Int)
(declare-fun $t10@@3 () Int)
(declare-fun $t22@@0 () Int)
(declare-fun _$t0@@4 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t25@@1 () Int)
(declare-fun $t26 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0 () T@$Memory_246467)
(declare-fun |Store__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int T@$1_DesignatedDealer_Dealer) |T@[Int]$1_DesignatedDealer_Dealer|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int) T@$1_DesignatedDealer_Dealer)
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?y1))) :weight 0)))
(declare-fun $t19@0 () T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DesignatedDealer_Dealer_$modifies () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandles@0@@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t17@@1 () Int)
(declare-fun $t14@0@@1 () Bool)
(declare-fun $t12@@2 () Bool)
(declare-fun $t13@@1 () Int)
(declare-fun $t11@@3 () Int)
(declare-fun $t9@@4 () Bool)
(declare-fun $t8@@2 () Int)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| Int) |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'#0'_| (|T@[Int]$1_Diem_Preburn'#0'| Int) |T@$1_Diem_Preburn'#0'|)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_publish_designated_dealer_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 842960) (let ((L5_correct@@1  (and (=> (= (ControlFlow 0 520479) (- 0 845521)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t6@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t6@@1))) (and (=> (= (ControlFlow 0 520479) (- 0 845533)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t6@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (and (=> (= (ControlFlow 0 520479) (- 0 845551)) (not (not (= _$t1@@4 186537453)))) (=> (not (not (= _$t1@@4 186537453))) (and (=> (= (ControlFlow 0 520479) (- 0 845565)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t7@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t7@@1))) (and (=> (= (ControlFlow 0 520479) (- 0 845577)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t7@@1)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (and (=> (= (ControlFlow 0 520479) (- 0 845595)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) $t5@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) $t5@@1)) (and (=> (= (ControlFlow 0 520479) (- 0 845605)) (not (and _$t2@@1 (let ((addr@@27 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@27) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@27))))))) (=> (not (and _$t2@@1 (let ((addr@@27 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@27) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@27)))))) (and (=> (= (ControlFlow 0 520479) (- 0 845616)) (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@1)))) (=> (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@1))) (and (=> (= (ControlFlow 0 520479) (- 0 845629)) (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@1)))) (=> (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@1))) (and (=> (= (ControlFlow 0 520479) (- 0 845642)) (not (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 520479) (- 0 845655)) (not (and (not _$t2@@1) (let ((addr@@28 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@28) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@28))))))) (=> (not (and (not _$t2@@1) (let ((addr@@28 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@28) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@28)))))) (and (=> (= (ControlFlow 0 520479) (- 0 845668)) (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@1)))) (=> (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@1))) (and (=> (= (ControlFlow 0 520479) (- 0 845683)) (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) $t5@@1)))) (=> (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) $t5@@1))) (and (=> (= (ControlFlow 0 520479) (- 0 845698)) (not (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 520479) (- 0 845713)) (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory@1) $t5@@1))))))))))))))))))))))))))))))))
(let ((anon38_Else_correct  (=> (not |$temp_0'bool'@1|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| ($Memory_261071 (|Store__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 false) (|contents#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 520851) 520479)) L5_correct@@1))))
(let ((anon38_Then_correct  (=> |$temp_0'bool'@1| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| ($Memory_261071 (|Store__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0|))) (= (ControlFlow 0 520865) 520479)) L5_correct@@1))))
(let ((anon37_Else_correct  (=> (not $t23@@1) (and (=> (= (ControlFlow 0 520839) 520865) anon38_Then_correct) (=> (= (ControlFlow 0 520839) 520851) anon38_Else_correct)))))
(let ((anon28_correct  (=> (= (ControlFlow 0 520267) 520479) L5_correct@@1)))
(let ((anon40_Else_correct  (=> (not |$temp_0'bool'@0|) (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@1| ($Memory_261269 (|Store__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $t24@@1 false) (|contents#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|))) (= (ControlFlow 0 520263) 520267)) anon28_correct))))
(let ((anon40_Then_correct  (=> |$temp_0'bool'@0| (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@0| ($Memory_261269 (|Store__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $t24@@1 true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $t24@@1 |$temp_0'$1_Diem_PreburnQueue'#0''@0|))) (= (ControlFlow 0 520491) 520267)) anon28_correct))))
(let ((anon39_Else_correct  (=> (not $t27) (and (=> (= (ControlFlow 0 520251) 520491) anon40_Then_correct) (=> (= (ControlFlow 0 520251) 520263) anon40_Else_correct)))))
(let ((anon33_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 519921) (- 0 845077)) (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t6@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (not (= _$t1@@4 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t7@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) $t5@@1)) (and _$t2@@1 (let ((addr@@29 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@29) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@29)))))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@1))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@1))) (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@1) (let ((addr@@30 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@30) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@30)))))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@1))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) $t5@@1))) (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t6@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (not (= _$t1@@4 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t7@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) $t5@@1)) (and _$t2@@1 (let ((addr@@29 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@29) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@29)))))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@1))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@1))) (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@1) (let ((addr@@30 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@30) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@30)))))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@1))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) $t5@@1))) (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 519921) (- 0 845225)) (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t6@@1)) (= 5 $t10@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t6@@1)) 1)) (= 3 $t10@0@@0))) (and (not (= _$t1@@4 186537453)) (= 2 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t7@@1)) (= 5 $t10@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t7@@1)) 2)) (= 3 $t10@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) $t5@@1) (= 6 $t10@0@@0))) (and (and _$t2@@1 (let ((addr@@31 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@31) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@31))))) (= 7 $t10@0@@0))) (and (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@1)) (= 6 $t10@0@@0))) (and (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@1)) (= 1 $t10@0@@0))) (and (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@0))) (and (and (not _$t2@@1) (let ((addr@@32 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@32))))) (= 7 $t10@0@@0))) (and (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@1)) (= 6 $t10@0@@0))) (and (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) $t5@@1)) (= 1 $t10@0@@0))) (and (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t10@0@@0))))))))
(let ((anon37_Then_correct  (=> $t23@@1 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t21@@0)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t21@@0)) 1)) (= 3 $t10@@3))) (and (not (= _$t1@@4 186537453)) (= 2 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t22@@0)) (= 5 $t10@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t22@@0)) 2)) (= 3 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory@1) $t20@@3)) (= 5 $t10@@3))) (and (let ((addr@@33 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@33) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@33)))) (= 7 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3) (= 6 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@3) (= 1 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@0 $t10@@3) (= (ControlFlow 0 521059) 519921))) L7_correct))))
(let ((anon36_Then_correct  (=> (and (and _$t2@@1 (= $t20@@3 _$t0@@4)) (and (= $t21@@0 _$t1@@4) (= $t22@@0 _$t0@@4))) (and (=> (= (ControlFlow 0 520833) (- 0 844364)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t20@@3)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t20@@3) (=> (= $t23@@1  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t21@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t21@@0)) 1))) (not (= _$t1@@4 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t22@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t22@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory@1) $t20@@3))) (let ((addr@@34 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@34) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@34))))) (|Select__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3)) (|Select__T@[Int]Bool_| (|domain#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 520833) 521059) anon37_Then_correct) (=> (= (ControlFlow 0 520833) 520839) anon37_Else_correct))))))))
(let ((anon39_Then_correct  (=> $t27 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t25@@1)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t25@@1)) 1)) (= 3 $t10@@3))) (and (not (= _$t1@@4 186537453)) (= 2 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t26)) (= 5 $t10@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t26)) 2)) (= 3 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory@1) $t24@@1)) (= 5 $t10@@3))) (and (let ((addr@@35 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@35) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@35)))) (= 7 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $t24@@1) (= 6 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) $t24@@1) (= 1 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@0 $t10@@3) (= (ControlFlow 0 520685) 519921))) L7_correct))))
(let ((anon36_Else_correct  (=> (and (and (not _$t2@@1) (= $t24@@1 _$t0@@4)) (and (= $t25@@1 _$t1@@4) (= $t26 _$t0@@4))) (and (=> (= (ControlFlow 0 520245) (- 0 844510)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t24@@1)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t24@@1) (=> (= $t27  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t25@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t25@@1)) 1))) (not (= _$t1@@4 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t26))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t26)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory@1) $t24@@1))) (let ((addr@@36 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@36) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@36))))) (|Select__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $t24@@1)) (|Select__T@[Int]Bool_| (|domain#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) $t24@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 520245) 520685) anon39_Then_correct) (=> (= (ControlFlow 0 520245) 520251) anon39_Else_correct))))))))
(let ((anon35_Else_correct  (=> (not $abort_flag@0@@4) (and (=> (= (ControlFlow 0 520095) (- 0 844305)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory@1) addr@@37) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@37)) 2))))
 :qid |DiemAccountcvc5bpl.18958:15|
 :skolemid |273|
))) (=> (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory@1) addr@@38) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@38)) 2))))
 :qid |DiemAccountcvc5bpl.18958:15|
 :skolemid |273|
)) (and (=> (= (ControlFlow 0 520095) 520833) anon36_Then_correct) (=> (= (ControlFlow 0 520095) 520245) anon36_Else_correct)))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t10@0@@0 $abort_code@1@@4) (= (ControlFlow 0 521073) 519921))) L7_correct)))
(let ((anon34_Then$1_correct  (=> (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 521123) 521073) anon35_Then_correct) (=> (= (ControlFlow 0 521123) 520095) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t0@@4) (= (ControlFlow 0 521121) 521123)) anon34_Then$1_correct)))
(let ((anon34_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t0@@4)) (=> (and (and (= $1_DesignatedDealer_Dealer_$memory@0 ($Memory_246467 (|Store__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t0@@4 true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t0@@4 $t19@0))) (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory@0)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 520060) 521073) anon35_Then_correct) (=> (= (ControlFlow 0 520060) 520095) anon35_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not false) (= $t19@0 ($1_DesignatedDealer_Dealer |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 520042) (- 0 844192)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies _$t0@@4)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies _$t0@@4) (=> (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) addr@@39) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@39)) 2))))
 :qid |DiemAccountcvc5bpl.18938:20|
 :skolemid |272|
)) (and (=> (= (ControlFlow 0 520042) 521121) anon34_Then_correct) (=> (= (ControlFlow 0 520042) 520060) anon34_Else_correct))))))))
(let ((|inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|) false) (= $1_Event_EventHandles@0@@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 519991) 521137) anon33_Then_correct) (=> (= (ControlFlow 0 519991) 520042) anon33_Else_correct)))))
(let ((anon32_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@1 (= (ControlFlow 0 519997) 519991)) |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|)))
(let ((anon32_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t17@@1 $t17@@1)) (and (= $t10@0@@0 $t17@@1) (= (ControlFlow 0 519461) 519921))) L7_correct)))
(let ((anon31_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t17@@1) (= $t17@@1 6)) (and (= $t17@@1 $t17@@1) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 519445) 519997) anon32_Then_correct@@0) (=> (= (ControlFlow 0 519445) 519461) anon32_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t14@0@@1)) (= (ControlFlow 0 519409) 519445)) anon31_Else$1_correct)))
(let ((anon31_Else_correct@@0  (=> (not $t12@@2) (=> (and (and (|$IsValid'address'| $t13@@1) (= $t13@@1 _$t0@@4)) (and (= $t14@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) $t13@@1)) (= (ControlFlow 0 519415) 519409))) inline$$Not$0$anon0_correct@@1))))
(let ((anon31_Then_correct@@0  (=> $t12@@2 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t11@@3)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t11@@3)) 2)) (= 3 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@0 $t10@@3) (= (ControlFlow 0 521189) 519921))) L7_correct))))
(let ((anon30_Else_correct@@1  (=> (not $t9@@4) (=> (and (= $t11@@3 _$t0@@4) (= $t12@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t11@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t11@@3)) 2))))) (and (=> (= (ControlFlow 0 519353) 521189) anon31_Then_correct@@0) (=> (= (ControlFlow 0 519353) 519415) anon31_Else_correct@@0))))))
(let ((anon30_Then_correct@@1  (=> $t9@@4 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@2)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@2)) 1)) (= 3 $t10@@3))) (and (not (= _$t1@@4 186537453)) (= 2 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@0 $t10@@3) (= (ControlFlow 0 521261) 519921))) L7_correct))))
(let ((anon0$1_correct@@4  (=> (and (and (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260315| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |DiemAccountcvc5bpl.18659:22|
 :skolemid |252|
)) (forall ((mint_cap_owner@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260402| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@3)) 1))))
 :qid |DiemAccountcvc5bpl.18659:269|
 :skolemid |253|
))) (forall ((mint_cap_owner@@4 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@4)) 1))))
 :qid |DiemAccountcvc5bpl.18659:517|
 :skolemid |254|
))) (=> (and (and (and (and (and (forall ((addr1@@29 Int) ) (!  (=> (|$IsValid'address'| addr1@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255508| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@29) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@29)) 1))))
 :qid |DiemAccountcvc5bpl.18663:22|
 :skolemid |255|
)) (forall ((addr1@@30 Int) ) (!  (=> (|$IsValid'address'| addr1@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255595| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@30) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@30)) 1))))
 :qid |DiemAccountcvc5bpl.18663:232|
 :skolemid |256|
))) (forall ((addr1@@31 Int) ) (!  (=> (|$IsValid'address'| addr1@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255682| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@31) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@31)) 1))))
 :qid |DiemAccountcvc5bpl.18663:443|
 :skolemid |257|
))) (and (and (forall ((addr1@@32 Int) ) (!  (=> (|$IsValid'address'| addr1@@32) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@32)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@32)) 2))))
 :qid |DiemAccountcvc5bpl.18667:22|
 :skolemid |258|
)) (forall ((addr1@@33 Int) ) (!  (=> (|$IsValid'address'| addr1@@33) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261170| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_260753| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@33)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@33)) 2))))
 :qid |DiemAccountcvc5bpl.18667:293|
 :skolemid |259|
))) (forall ((addr1@@34 Int) ) (!  (=> (|$IsValid'address'| addr1@@34) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@34) (|Select__T@[Int]Bool_| (|domain#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) addr1@@34)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@34)) 2))))
 :qid |DiemAccountcvc5bpl.18667:565|
 :skolemid |260|
)))) (and (and (and (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_271078| |$1_AccountLimits_Window'#0'_$memory|) addr@@40) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@40) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@40)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@40)) 6)))))
 :qid |DiemAccountcvc5bpl.18671:20|
 :skolemid |261|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (|$IsValid'address'| _$t0@@4) (|$IsValid'address'| _$t1@@4))) (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |DiemAccountcvc5bpl.18687:20|
 :skolemid |262|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@8)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@8) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@8)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@8) 10000000000))))
 :qid |DiemAccountcvc5bpl.18691:20|
 :skolemid |263|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@8))
))) (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@9)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@9))
 :qid |DiemAccountcvc5bpl.18695:20|
 :skolemid |264|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@10)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@10) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@10)) 256) (let (($range_1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@10)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@51 $i_2))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@10) i@@51)))) 0)))
 :qid |DiemAccountcvc5bpl.18700:223|
 :skolemid |265|
))))))
 :qid |DiemAccountcvc5bpl.18699:20|
 :skolemid |266|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@10))
)))))) (and (and (and (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@11)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@11) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@11)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@11) 10000000000))))
 :qid |DiemAccountcvc5bpl.18704:20|
 :skolemid |267|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@11))
)) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) $a_0@@12)))
(|$IsValid'$1_Diem_Preburn'#0''| $rsc@@12))
 :qid |DiemAccountcvc5bpl.18708:20|
 :skolemid |268|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) $a_0@@12))
))) (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@13)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@13) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@13)) 256) (let (($range_1@@0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@13)))))
(forall (($i_2@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_2@@0) (let ((i@@52 $i_2@@0))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@13) i@@52)))) 0)))
 :qid |DiemAccountcvc5bpl.18713:199|
 :skolemid |269|
))))))
 :qid |DiemAccountcvc5bpl.18712:20|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) $a_0@@14)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@14))
 :qid |DiemAccountcvc5bpl.18717:20|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) $a_0@@14))
)))) (and (and (= $t5@@1 _$t0@@4) (= $t6@@1 _$t1@@4)) (and (= $t7@@1 _$t0@@4) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies $t5@@1)))) (and (and (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t5@@1) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t5@@1)) (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t5@@1) (= _$t0@@4 _$t0@@4))) (and (and (= _$t1@@4 _$t1@@4) (= _$t2@@1 _$t2@@1)) (and (= $t8@@2 _$t1@@4) (= $t9@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@2)) 1))) (not (= _$t1@@4 186537453))))))))) (and (=> (= (ControlFlow 0 519305) 521261) anon30_Then_correct@@1) (=> (= (ControlFlow 0 519305) 519353) anon30_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_207651| stream@@11) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@11) v@@56) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 518489) 519305)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 842960) 518489) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@4 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t32 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@3| () T@$Memory_254979)
(declare-fun _$t1@@5 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun $t9@@5 () Int)
(declare-fun _$t2@@2 () Int)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@2| () T@$Memory_297391)
(declare-fun $t8@@3 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t12@0@@0 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t16@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2| () T@$Memory_254979)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1| () T@$Memory_254979)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_254979)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int |T@$1_Diem_CurrencyInfo'#0'|) |T@[Int]$1_Diem_CurrencyInfo'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t10@1| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t11@1| () |T@$1_Diem_MintCapability'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'#0'_| (|T@[Int]$1_Diem_MintCapability'#0'| Int) |T@$1_Diem_MintCapability'#0'|)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t7@1| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t5@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t30 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t26@0@@1 () T@$Mutation_236117)
(declare-fun $t29@0 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t28 () Bool)
(declare-fun $t27@@0 () (Seq Int))
(declare-fun $t12@@3 () Int)
(declare-fun $t25@@2 () T@$Mutation_301595)
(declare-fun $t25@0 () T@$Mutation_301595)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t22@0@@0 () Int)
(declare-fun $t21@@1 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun $t23@0@@0 () Int)
(declare-fun $t24@0@@0 () (Seq Int))
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@1| () T@$Memory_297391)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory| () T@$Memory_297391)
(declare-fun $t21@0@@1 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|T@[Int]$1_DesignatedDealer_TierInfo'#0'| Int) |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@0| () T@$Memory_297391)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t20@0 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t17@@2 () Bool)
(declare-fun $t19@@0 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t16@@2 () Int)
(declare-fun $t11@@4 () Bool)
(declare-fun $t10@@4 () Int)
(declare-fun _$t3 () Int)
(declare-fun $t26@@0 () T@$Mutation_236117)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 845731) (let ((anon40_Else_correct@@0  (=> (not $abort_flag@4) (=> (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@1|) (= $t32 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 524177) (- 0 848017)) (not (= _$t1@@5 0))) (=> (not (= _$t1@@5 0)) (and (=> (= (ControlFlow 0 524177) (- 0 848027)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@5))) (and (=> (= (ControlFlow 0 524177) (- 0 848040)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@5))) (and (=> (= (ControlFlow 0 524177) (- 0 848052)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@5)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (and (=> (= (ControlFlow 0 524177) (- 0 848070)) (not (not (= _$t0@@5 186537453)))) (=> (not (not (= _$t0@@5 186537453))) (and (=> (= (ControlFlow 0 524177) (- 0 848084)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (and (=> (= (ControlFlow 0 524177) (- 0 848095)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 524177) (- 0 848107)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (and (=> (= (ControlFlow 0 524177) (- 0 848124)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 524177) (- 0 848134)) (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 524177) (- 0 848142)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_297391| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_297391| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@2)) (and (=> (= (ControlFlow 0 524177) (- 0 848151)) (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@5)) (=> (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@5) (=> (= (ControlFlow 0 524177) (- 0 848160)) (= $t32 (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@3) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@3))))))))))))))))))))))))))))))))
(let ((L8_correct@@0  (and (=> (= (ControlFlow 0 522547) (- 0 847747)) (or (or (or (or (or (or (or (or (= _$t1@@5 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (not (= _$t0@@5 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1@@5 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (not (= _$t0@@5 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 522547) (- 0 847835)) (or (or (or (or (or (or (or (or (and (= _$t1@@5 0) (= 7 $t12@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@5)) (= 4 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@5)) (= 5 $t12@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@5)) 1)) (= 3 $t12@0@@0))) (and (not (= _$t0@@5 186537453)) (= 2 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (= 5 $t12@0@@0))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 $t12@0@@0))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128) (= 8 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t12@0@@0))))))))
(let ((anon35_Then_correct@@0  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t12@0@@0 $abort_code@1@@5) (= (ControlFlow 0 524363) 522547))) L8_correct@@0)))
(let ((anon40_Then_correct@@0  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t12@0@@0 $abort_code@5) (= (ControlFlow 0 524191) 522547))) L8_correct@@0)))
(let ((|inline$$1_Diem_mint'#0'$0$anon13_correct|  (=> (|$IsValid'$1_Diem_Diem'#0''| |inline$$1_Diem_mint'#0'$0$$t16@0|) (=> (and (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816) (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|)))) (and (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$t16@0|) _$t1@@5) (= |inline$$1_Diem_mint'#0'$0$$t19@0| |inline$$1_Diem_mint'#0'$0$$t15@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t20@0| |inline$$1_Diem_mint'#0'$0$$t14@0|) (= |inline$$1_Diem_mint'#0'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|)))) (and (= $es@1 (ite |inline$$1_Diem_mint'#0'$0$$t21@0| (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es@0@@1) |inline$$1_Diem_mint'#0'$0$$t20@0|)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_207651| stream@@12)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@12) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@12) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $es@0@@1) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es@0@@1) |inline$$1_Diem_mint'#0'$0$$t20@0| stream_new@@5)))) $es@0@@1)) (= |inline$$1_Diem_mint'#0'$0$$t16@0| |inline$$1_Diem_mint'#0'$0$$t16@0|))) (and (and (= $abort_flag@4 $abort_flag@3) (= $abort_code@5 $abort_code@4)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory@2|)))) (and (=> (= (ControlFlow 0 523829) 524191) anon40_Then_correct@@0) (=> (= (ControlFlow 0 523829) 524177) anon40_Else_correct@@0))))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'#0'_$memory@1| ($Memory_254979 (|Store__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 false) (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@1|) (= (ControlFlow 0 523727) 523829))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'#0'_$memory@0| ($Memory_254979 (|Store__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@0|) (= (ControlFlow 0 523841) 523829))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'#0'$0$$t17@0|) (and (=> (= (ControlFlow 0 523715) 523841) |inline$$1_Diem_mint'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 523715) 523727) |inline$$1_Diem_mint'#0'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$L3_correct|  (=> (and (and (= $abort_flag@4 true) (= $abort_code@5 |inline$$1_Diem_mint'#0'$0$$t10@1|)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory|))) (and (=> (= (ControlFlow 0 523593) 524191) anon40_Then_correct@@0) (=> (= (ControlFlow 0 523593) 524177) anon40_Else_correct@@0)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128) (= 8 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (= |inline$$1_Diem_mint'#0'$0$$t10@0| |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t10@0|) (= (ControlFlow 0 523909) 523593))) |inline$$1_Diem_mint'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_Diem_mint'#0'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_mint'#0'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'#0'$0$$t15@0| ($1_Diem_MintEvent _$t1@@5 (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (= |inline$$1_Diem_mint'#0'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 523709) 523909) |inline$$1_Diem_mint'#0'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 523709) 523715) |inline$$1_Diem_mint'#0'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| $abort_code@4) (= (ControlFlow 0 523923) 523593))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|  (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 523975) 523923) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 523975) 523709) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (= (ControlFlow 0 523973) 523975)) |inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|) (= |inline$$1_Diem_mint'#0'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|))) (and (= $abort_code@4 $abort_code@3) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 523613) 523923) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 523613) 523709) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t7@1| (and (=> (= (ControlFlow 0 523599) 523973) |inline$$1_Diem_mint'#0'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 523599) 523613) |inline$$1_Diem_mint'#0'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$t7@1|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= (ControlFlow 0 523587) 523593))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= _$t0@@5 _$t0@@5)) (and (= _$t1@@5 _$t1@@5) (|$IsValid'address'| |inline$$1_Diem_mint'#0'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t6@0| _$t0@@5) (= |inline$$1_Diem_mint'#0'$0$$t6@0| |inline$$1_Diem_mint'#0'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t7@1| |inline$$1_Diem_mint'#0'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 523571) 523599) |inline$$1_Diem_mint'#0'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 523571) 523587) |inline$$1_Diem_mint'#0'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct@@0  (=> (and (not $abort_flag@2) (= $t30 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 523981) (- 0 847115)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (=> (= (ControlFlow 0 523981) 523571) |inline$$1_Diem_mint'#0'$0$anon0_correct|))))))
(let ((anon39_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t12@0@@0 $abort_code@3) (= (ControlFlow 0 524205) 522547))) L8_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| (|v#$Mutation_236117| $t26@0@@1)) (= $es@0@@1 (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1|)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_207651| stream@@13)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t29@0))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t29@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| stream_new@@6)))))) (and (=> (= (ControlFlow 0 522786) 524205) anon39_Then_correct@@0) (=> (= (ControlFlow 0 522786) 523981) anon39_Else_correct@@0)))))
(let ((anon38_Else_correct@@0  (=> (not $t28) (=> (and (and (|$IsValid'vec'u8''| $t27@@0) (= $t27@@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= $t29@0 ($1_DesignatedDealer_ReceivedMintEvent $t27@@0 _$t2@@2 _$t1@@5)) (= (ControlFlow 0 522792) 522786))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|))))
(let ((anon38_Then_correct@@0  (=> $t28 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t12@@3)) (= $t12@@3 $t12@@3)) (and (= $t12@0@@0 $t12@@3) (= (ControlFlow 0 524231) 522547))) L8_correct@@0))))
(let ((anon37_Else_correct@@0  (=> (not $abort_flag@2) (=> (and (= $t26@0@@1 ($Mutation_236117 (|l#$Mutation_301595| $t25@@2) (seq.++ (|p#$Mutation_301595| $t25@@2) (seq.unit 0)) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_301595| $t25@@2)))) (= $t28  (not (|Select__T@[Int]Bool_| (|domain#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 522687) 524231) anon38_Then_correct@@0) (=> (= (ControlFlow 0 522687) 522792) anon38_Else_correct@@0))))))
(let ((anon37_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t12@0@@0 $abort_code@3) (= (ControlFlow 0 524245) 522547))) L8_correct@@0)))
(let ((anon36_Then$1_correct  (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 524297) 524245) anon37_Then_correct@@0) (=> (= (ControlFlow 0 524297) 522687) anon37_Else_correct@@0)))))
(let ((anon36_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (= (ControlFlow 0 524295) 524297)) anon36_Then$1_correct)))
(let ((anon36_Else_correct@@0  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t2@@2) (= $t25@0 ($Mutation_301595 ($Global _$t2@@2) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)))) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 522655) 524245) anon37_Then_correct@@0) (=> (= (ControlFlow 0 522655) 522687) anon37_Else_correct@@0)))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 522633) (- 0 846879)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@2)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@2) (and (=> (= (ControlFlow 0 522633) 524295) anon36_Then_correct@@0) (=> (= (ControlFlow 0 522633) 522655) anon36_Else_correct@@0))))))
(let ((anon35_Else_correct@@0  (=> (and (and (and (not $abort_flag@0@@5) (= $t22@0@@0 (|$window_start#$1_DesignatedDealer_TierInfo'#0'| $t21@@1))) (and (= $t23@0@@0 (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| $t21@@1)) (= $t24@0@@0 (|$tiers#$1_DesignatedDealer_TierInfo'#0'| $t21@@1)))) (and (and (= $abort_flag@1 $abort_flag@0@@5) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory@1|)) (and (= $abort_code@2 $abort_code@1@@5) (= (ControlFlow 0 524349) 522633)))) L6_correct)))
(let ((anon34_Then$1_correct@@0  (=> (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory|) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 524415) 524363) anon35_Then_correct@@0) (=> (= (ControlFlow 0 524415) 524349) anon35_Else_correct@@0))))))
(let ((anon34_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_297391| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2)) (= (ControlFlow 0 524413) 524415)) anon34_Then$1_correct@@0)))
(let ((anon34_Else_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_297391| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2) (= $t21@0@@1 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_297391| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'#0'_$memory@0| ($Memory_297391 (|Store__T@[Int]Bool_| (|domain#$Memory_297391| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2 false) (|contents#$Memory_297391| |$1_DesignatedDealer_TierInfo'#0'_$memory|))) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory@0|)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 524327) 524363) anon35_Then_correct@@0) (=> (= (ControlFlow 0 524327) 524349) anon35_Else_correct@@0))))))
(let ((anon33_Then_correct@@0  (=> $t20@0 (and (=> (= (ControlFlow 0 524307) (- 0 846724)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2) (and (=> (= (ControlFlow 0 524307) 524413) anon34_Then_correct@@0) (=> (= (ControlFlow 0 524307) 524327) anon34_Else_correct@@0)))))))
(let ((anon33_Else_correct@@0  (=> (not $t20@0) (=> (and (and (= $abort_flag@1 false) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory|)) (and (= $abort_code@2 $abort_code@0@@5) (= (ControlFlow 0 522625) 522633))) L6_correct))))
(let ((anon32_Then_correct@@1  (=> (and $t17@@2 (= $t20@0 (|Select__T@[Int]Bool_| (|domain#$Memory_297391| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2))) (and (=> (= (ControlFlow 0 522619) 524307) anon33_Then_correct@@0) (=> (= (ControlFlow 0 522619) 522625) anon33_Else_correct@@0)))))
(let ((anon32_Else_correct@@1  (=> (and (and (not $t17@@2) (= $t19@@0 $t19@@0)) (and (= $t12@0@@0 $t19@@0) (= (ControlFlow 0 522609) 522547))) L8_correct@@0)))
(let ((anon31_Then_correct@@1  (=> inline$$Gt$0$dst@1 (=> (and (= $t17@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t19@@0) (= $t19@@0 5)) (and (= $t19@@0 $t19@@0) (= $t17@@2 $t17@@2))) (and (=> (= (ControlFlow 0 522593) 522619) anon32_Then_correct@@1) (=> (= (ControlFlow 0 522593) 522609) anon32_Else_correct@@1)))))))
(let ((anon31_Else_correct@@1  (=> (and (and (not inline$$Gt$0$dst@1) (= $t16@@2 $t16@@2)) (and (= $t12@0@@0 $t16@@2) (= (ControlFlow 0 522267) 522547))) L8_correct@@0)))
(let ((anon30_Else$1_correct@@0  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t16@@2) (= $t16@@2 7)) (and (= $t16@@2 $t16@@2) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 522251) 522593) anon31_Then_correct@@1) (=> (= (ControlFlow 0 522251) 522267) anon31_Else_correct@@1))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t1@@5 0)) (= (ControlFlow 0 522215) 522251)) anon30_Else$1_correct@@0)))
(let ((anon30_Else_correct@@2  (=> (not $t11@@4) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 522221) 522215)) inline$$Gt$0$anon0_correct))))
(let ((anon30_Then_correct@@2  (=> $t11@@4 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t10@@4)) (= 5 $t12@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t10@@4)) 1)) (= 3 $t12@@3))) (and (not (= _$t0@@5 186537453)) (= 2 $t12@@3))) (= $t12@@3 $t12@@3)) (and (= $t12@0@@0 $t12@@3) (= (ControlFlow 0 524487) 522547))) L8_correct@@0))))
(let ((anon0$1_correct@@5  (=> (and (and (and (forall ((mint_cap_owner@@5 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260315| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@5)) 1))))
 :qid |DiemAccountcvc5bpl.19259:22|
 :skolemid |274|
)) (forall ((mint_cap_owner@@6 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260402| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@6)) 1))))
 :qid |DiemAccountcvc5bpl.19259:269|
 :skolemid |275|
))) (forall ((mint_cap_owner@@7 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@7)) 1))))
 :qid |DiemAccountcvc5bpl.19259:517|
 :skolemid |276|
))) (and (and (forall ((addr1@@35 Int) ) (!  (=> (|$IsValid'address'| addr1@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255508| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@35) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@35)) 1))))
 :qid |DiemAccountcvc5bpl.19263:22|
 :skolemid |277|
)) (forall ((addr1@@36 Int) ) (!  (=> (|$IsValid'address'| addr1@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255595| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@36) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@36)) 1))))
 :qid |DiemAccountcvc5bpl.19263:232|
 :skolemid |278|
))) (forall ((addr1@@37 Int) ) (!  (=> (|$IsValid'address'| addr1@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255682| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@37) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@37)) 1))))
 :qid |DiemAccountcvc5bpl.19263:443|
 :skolemid |279|
)))) (=> (and (and (and (and (and (forall ((addr1@@38 Int) ) (!  (=> (|$IsValid'address'| addr1@@38) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@38) (|Select__T@[Int]Bool_| (|domain#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@38)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@38)) 2))))
 :qid |DiemAccountcvc5bpl.19267:22|
 :skolemid |280|
)) (forall ((addr1@@39 Int) ) (!  (=> (|$IsValid'address'| addr1@@39) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261170| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@39) (|Select__T@[Int]Bool_| (|domain#$Memory_260753| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@39)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@39)) 2))))
 :qid |DiemAccountcvc5bpl.19267:293|
 :skolemid |281|
))) (forall ((addr1@@40 Int) ) (!  (=> (|$IsValid'address'| addr1@@40) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@40) (|Select__T@[Int]Bool_| (|domain#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) addr1@@40)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@40)) 2))))
 :qid |DiemAccountcvc5bpl.19267:565|
 :skolemid |282|
))) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_271078| |$1_AccountLimits_Window'#0'_$memory|) addr@@41) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@41) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@41)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@41)) 6)))))
 :qid |DiemAccountcvc5bpl.19271:20|
 :skolemid |283|
))) (and (and (|$IsValid'address'| _$t0@@5) (|$IsValid'u64'| _$t1@@5)) (and (|$IsValid'address'| _$t2@@2) (|$IsValid'u64'| _$t3)))) (and (and (and (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@15)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@15))
 :qid |DiemAccountcvc5bpl.19287:20|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@15))
)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@16)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@16) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@16)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@16) 10000000000))))
 :qid |DiemAccountcvc5bpl.19291:20|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@16))
))) (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@17)))
(|$IsValid'$1_Diem_MintCapability'#0''| $rsc@@17))
 :qid |DiemAccountcvc5bpl.19295:20|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@17))
)) (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) $a_0@@18)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@18))
 :qid |DiemAccountcvc5bpl.19299:20|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) $a_0@@18))
)))) (and (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_297391| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@19)))
(|$IsValid'$1_DesignatedDealer_TierInfo'#0''| $rsc@@19))
 :qid |DiemAccountcvc5bpl.19303:20|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_297391| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@19))
)) (= $t8@@3 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_254979| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (= $t9@@5 _$t0@@5) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@2)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2)) (and (= _$t0@@5 _$t0@@5) (= _$t1@@5 _$t1@@5))) (and (and (= _$t2@@2 _$t2@@2) (= _$t3 _$t3)) (and (= $t10@@4 _$t0@@5) (= $t11@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t10@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t10@@4)) 1))) (not (= _$t0@@5 186537453))))))))) (and (=> (= (ControlFlow 0 522161) 524487) anon30_Then_correct@@2) (=> (= (ControlFlow 0 522161) 522221) anon30_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_207651| stream@@14) 0) (forall ((v@@57 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@14) v@@57) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 521571) 522161)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (seq.len (|p#$Mutation_301595| $t25@@2)) 0) (=> (and (= (seq.len (|p#$Mutation_236117| $t26@@0)) 0) (= (ControlFlow 0 521581) 521571)) inline$$InitEventStore$0$anon0_correct@@5))))
(let ((PreconditionGeneratedEntry_correct@@2  (=> (= (ControlFlow 0 845731) 521581) anon0_correct@@5)))
PreconditionGeneratedEntry_correct@@2))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_304525)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_304525)
(declare-fun $t4@@0 () Int)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $t10@0@@1 () Int)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun _$t0@@6 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_304525)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun $t12@0@@1 () T@$1_AccountFreezing_FreezingBit)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$modifies () |T@[Int]Bool|)
(declare-fun $t9@@6 () Int)
(declare-fun $t6@0@@0 () Bool)
(declare-fun $t5@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountFreezing_create$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 848185) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0@@6) (and (=> (= (ControlFlow 0 525180) (- 0 848588)) (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@42) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@1) addr@@42)))
 :qid |DiemAccountcvc5bpl.20446:15|
 :skolemid |296|
))) (=> (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@43) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@1) addr@@43)))
 :qid |DiemAccountcvc5bpl.20446:15|
 :skolemid |296|
)) (and (=> (= (ControlFlow 0 525180) (- 0 848616)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $t4@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $t4@@0)) (and (=> (= (ControlFlow 0 525180) (- 0 848626)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0))))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0)))) (=> (= (ControlFlow 0 525180) (- 0 848634)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) addr@@44) (= (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@1) addr@@44)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) addr@@44)))))
 :qid |DiemAccountcvc5bpl.20465:15|
 :skolemid |297|
))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 525025) (- 0 848560)) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $t4@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $t4@@0) (=> (= (ControlFlow 0 525025) (- 0 848565)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $t4@@0) (= 6 $t10@0@@1)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t10@0@@1 $abort_code@1@@6) (= (ControlFlow 0 525194) 525025))) L3_correct@@2)))
(let ((anon11_Then$1_correct@@0  (=> (= $1_AccountFreezing_FreezingBit_$memory@1 $1_AccountFreezing_FreezingBit_$memory) (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 525244) 525194) anon12_Then_correct@@0) (=> (= (ControlFlow 0 525244) 525180) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t0@@6) (= (ControlFlow 0 525242) 525244)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t0@@6)) (=> (and (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_304525 (|Store__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t0@@6 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t0@@6 $t12@0@@1))) (= $1_AccountFreezing_FreezingBit_$memory@1 $1_AccountFreezing_FreezingBit_$memory@0)) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 525090) 525194) anon12_Then_correct@@0) (=> (= (ControlFlow 0 525090) 525180) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@2 (= $t12@0@@1 ($1_AccountFreezing_FreezingBit false))) (and (=> (= (ControlFlow 0 525072) (- 0 848425)) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies _$t0@@6)) (=> (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies _$t0@@6) (=> (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@45) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) addr@@45)))
 :qid |DiemAccountcvc5bpl.20426:20|
 :skolemid |295|
)) (and (=> (= (ControlFlow 0 525072) 525242) anon11_Then_correct@@0) (=> (= (ControlFlow 0 525072) 525090) anon11_Else_correct@@0))))))))
(let ((anon10_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@2) (= $t9@@6 $t9@@6)) (and (= $t10@0@@1 $t9@@6) (= (ControlFlow 0 524997) 525025))) L3_correct@@2)))
(let ((anon0$2_correct@@0  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t9@@6) (= $t9@@6 6)) (and (= $t9@@6 $t9@@6) (= inline$$Not$0$dst@1@@2 inline$$Not$0$dst@1@@2))) (and (=> (= (ControlFlow 0 524981) 525072) anon10_Then_correct@@0) (=> (= (ControlFlow 0 524981) 524997) anon10_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (and (= inline$$Not$0$dst@1@@2  (not $t6@0@@0)) (= (ControlFlow 0 524945) 524981)) anon0$2_correct@@0)))
(let ((anon0$1_correct@@6  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))) (and (|$IsValid'address'| _$t0@@6) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $a_0@@20)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@20))
 :qid |DiemAccountcvc5bpl.20325:20|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $a_0@@20))
)))) (=> (and (and (and (= $t4@@0 _$t0@@6) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies $t4@@0)) (and (= _$t0@@6 _$t0@@6) (|$IsValid'address'| $t5@@2))) (and (and (= $t5@@2 _$t0@@6) (= $t5@@2 $t5@@2)) (and (= $t6@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $t5@@2)) (= (ControlFlow 0 524951) 524945)))) inline$$Not$0$anon0_correct@@2))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_207651| stream@@15) 0) (forall ((v@@58 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@15) v@@58) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 524795) 524951)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 848185) 524795) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $t9@@7 () Int)
(declare-fun _$t0@@7 () Int)
(declare-fun _$t1@@6 () Int)
(declare-fun $t12@@4 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0@@0 () T@$Memory_304525)
(declare-fun $es@0@@2 () T@$EventStore)
(declare-fun $t10@@5 () T@$1_Event_EventHandle)
(declare-fun $t11@@5 () T@$1_AccountFreezing_FreezeAccountEvent)
(declare-fun $t14@0@@2 () Int)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_236117)
(declare-fun $t35@0 () T@$1_AccountFreezing_FreezeAccountEvent)
(declare-fun $t33@1 () T@$Mutation_306421)
(declare-fun $t31 () Int)
(declare-fun $t33 () T@$Mutation_306421)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_304871)
(declare-fun $t33@0 () T@$Mutation_306421)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|T@[Int]$1_AccountFreezing_FreezeEventsHolder| Int) T@$1_AccountFreezing_FreezeEventsHolder)
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t30@0 () T@$Mutation_42678)
(declare-fun $t29@1 () T@$Mutation_306379)
(declare-fun $t30@1 () T@$Mutation_42678)
(declare-fun $t29@2 () T@$Mutation_306379)
(declare-fun $t29 () T@$Mutation_306379)
(declare-fun $t29@0@@0 () T@$Mutation_306379)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun $t25@0@@0 () Bool)
(declare-fun $t27@@1 () Int)
(declare-fun $t22@0@@1 () Bool)
(declare-fun $t24@@2 () Int)
(declare-fun $t18@0@@1 () Bool)
(declare-fun $t20@@4 () Int)
(declare-fun $t16@@3 () Bool)
(declare-fun $t15@@1 () Int)
(declare-fun $t14@@2 () Int)
(declare-fun $t13@@2 () Bool)
(declare-fun $t30@@0 () T@$Mutation_42678)
(declare-fun $t34 () T@$Mutation_236117)
(push 1)
(set-info :boogie-vc-id $1_AccountFreezing_freeze_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 848675) (let ((anon45_Else_correct  (=> (not $abort_flag@1@@0) (and (=> (= (ControlFlow 0 526849) (- 0 850230)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 526849) (- 0 850240)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@7))) (and (=> (= (ControlFlow 0 526849) (- 0 850252)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@7)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (and (=> (= (ControlFlow 0 526849) (- 0 850270)) (not (not (= _$t0@@7 186537453)))) (=> (not (not (= _$t0@@7 186537453))) (and (=> (= (ControlFlow 0 526849) (- 0 850284)) (not (= _$t1@@6 173345816))) (=> (not (= _$t1@@6 173345816)) (and (=> (= (ControlFlow 0 526849) (- 0 850294)) (not (= _$t1@@6 186537453))) (=> (not (= _$t1@@6 186537453)) (and (=> (= (ControlFlow 0 526849) (- 0 850304)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6))) (and (=> (= (ControlFlow 0 526849) (- 0 850315)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t12@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t12@@4))) (and (=> (= (ControlFlow 0 526849) (- 0 850327)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t12@@4)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t12@@4)) 1))) (and (=> (= (ControlFlow 0 526849) (- 0 850345)) (not (not (= _$t0@@7 186537453)))) (=> (not (not (= _$t0@@7 186537453))) (and (=> (= (ControlFlow 0 526849) (- 0 850359)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@6) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@6)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@6) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@6))) (and (=> (= (ControlFlow 0 526849) (- 0 850366)) (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@2) (|streams#$EventStore| $es)))))
(let ((expected@@3 (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_207651| stream@@16)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@7))))))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@15 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@3) handle@@15)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@3) handle@@15))) (forall ((v@@59 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@3) handle@@15)) v@@59) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@3) handle@@15)) v@@59))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@2) (|streams#$EventStore| $es)))))
(let ((expected@@3 (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_207651| stream@@16)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@7))))))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@16 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@3) handle@@16)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@3) handle@@16))) (forall ((v@@60 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@3) handle@@16)) v@@60) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@3) handle@@16)) v@@60))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
))))) (=> (= (ControlFlow 0 526849) (- 0 850391)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@2) (|streams#$EventStore| $es)))))
(let ((expected@@4 (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_207651| stream@@17)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@17) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@17) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@8))))))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@17 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@4) handle@@17)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@4) handle@@17))) (forall ((v@@61 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@4) handle@@17)) v@@61) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@4) handle@@17)) v@@61))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
)))))))))))))))))))))))))))))))))
(let ((anon37_Then_correct@@1 true))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 526096) (- 0 849952)) (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (not (= _$t0@@7 186537453))) (= _$t1@@6 173345816)) (= _$t1@@6 186537453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t12@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t12@@4)) 1))) (not (= _$t0@@7 186537453)))) (=> (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (not (= _$t0@@7 186537453))) (= _$t1@@6 173345816)) (= _$t1@@6 186537453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t12@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t12@@4)) 1))) (not (= _$t0@@7 186537453))) (=> (= (ControlFlow 0 526096) (- 0 850049)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t14@0@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@7)) (= 5 $t14@0@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@7)) 1)) (= 3 $t14@0@@2))) (and (not (= _$t0@@7 186537453)) (= 2 $t14@0@@2))) (and (= _$t1@@6 173345816) (= 7 $t14@0@@2))) (and (= _$t1@@6 186537453) (= 7 $t14@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6)) (= 5 $t14@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t12@@4)) (= 5 $t14@0@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t12@@4)) 1)) (= 3 $t14@0@@2))) (and (not (= _$t0@@7 186537453)) (= 2 $t14@0@@2))))))))
(let ((anon45_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= $t14@0@@2 $abort_code@2@@0) (= (ControlFlow 0 526863) 526096))) L7_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1| (|v#$Mutation_236117| $t34@0)) (= $es@0@@2 (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1|)))
(let ((stream_new@@9 (let ((len@@9 (|l#Multiset_207651| stream@@18)))
(let ((cnt@@9 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@18) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t35@0))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@18) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t35@0) (+ cnt@@9 1)) (+ len@@9 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1| stream_new@@9)))))) (and (=> (= (ControlFlow 0 526639) 526863) anon45_Then_correct) (=> (= (ControlFlow 0 526639) 526849) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (and (not $abort_flag@1@@0) (= $t34@0 ($Mutation_236117 (|l#$Mutation_306421| $t33@1) (seq.++ (|p#$Mutation_306421| $t33@1) (seq.unit 0)) (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| (|v#$Mutation_306421| $t33@1))))) (and (= $t35@0 ($1_AccountFreezing_FreezeAccountEvent $t31 _$t1@@6)) (= (ControlFlow 0 526645) 526639))) |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$anon0_correct|)))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= $t14@0@@2 $abort_code@2@@0) (= (ControlFlow 0 526877) 526096))) L7_correct@@0)))
(let ((anon43_Then$1_correct  (=> (= $t33@1 $t33) (=> (and (= $abort_flag@1@@0 true) (= $abort_code@2@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 526929) 526877) anon44_Then_correct) (=> (= (ControlFlow 0 526929) 526645) anon44_Else_correct))))))
(let ((anon43_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (= (ControlFlow 0 526927) 526929)) anon43_Then$1_correct)))
(let ((anon43_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816) (=> (and (and (= $t33@0 ($Mutation_306421 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (= $t33@1 $t33@0)) (and (= $abort_flag@1@@0 $abort_flag@0@@7) (= $abort_code@2@@0 $abort_code@1@@7))) (and (=> (= (ControlFlow 0 526540) 526877) anon44_Then_correct) (=> (= (ControlFlow 0 526540) 526645) anon44_Else_correct))))))
(let ((anon42_Else_correct  (=> (not $abort_flag@0@@7) (and (=> (= (ControlFlow 0 526518) 526927) anon43_Then_correct) (=> (= (ControlFlow 0 526518) 526540) anon43_Else_correct)))))
(let ((anon42_Then_correct  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t14@0@@2 $abort_code@1@@7) (= (ControlFlow 0 526943) 526096))) L7_correct@@0)))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 526504) 526943) anon42_Then_correct) (=> (= (ControlFlow 0 526504) 526518) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (and (not $abort_flag@0@@7) (= $t30@0 ($Mutation_42678 (|l#$Mutation_306379| $t29@1) (seq.++ (|p#$Mutation_306379| $t29@1) (seq.unit 0)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|v#$Mutation_306379| $t29@1))))) (=> (and (and (= $t30@1 ($Mutation_42678 (|l#$Mutation_42678| $t30@0) (|p#$Mutation_42678| $t30@0) true)) (= $t29@2 ($Mutation_306379 (|l#$Mutation_306379| $t29@1) (|p#$Mutation_306379| $t29@1) ($1_AccountFreezing_FreezingBit (|v#$Mutation_42678| $t30@1))))) (and (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@46) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) addr@@46)))
 :qid |DiemAccountcvc5bpl.20875:20|
 :skolemid |302|
)) (= $1_AccountFreezing_FreezingBit_$memory@0@@0 ($Memory_304525 (|Store__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) (|a#$Global| (|l#$Mutation_306379| $t29@2)) true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) (|a#$Global| (|l#$Mutation_306379| $t29@2)) (|v#$Mutation_306379| $t29@2)))))) (and (=> (= (ControlFlow 0 526510) (- 0 849660)) (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@47) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@0) addr@@47)))
 :qid |DiemAccountcvc5bpl.20886:15|
 :skolemid |303|
))) (=> (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@48) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@0) addr@@48)))
 :qid |DiemAccountcvc5bpl.20886:15|
 :skolemid |303|
)) (=> (and (and (|$IsValid'address'| $t31) (= $t31 _$t0@@7)) (and (= $t31 $t31) (= (ControlFlow 0 526510) 526504))) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct)))))))
(let ((anon41_Then_correct  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t14@0@@2 $abort_code@1@@7) (= (ControlFlow 0 526957) 526096))) L7_correct@@0)))
(let ((anon40_Then$1_correct  (=> (= $t29@1 $t29) (=> (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 527009) 526957) anon41_Then_correct) (=> (= (ControlFlow 0 527009) 526510) anon41_Else_correct))))))
(let ((anon40_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6)) (= (ControlFlow 0 527007) 527009)) anon40_Then$1_correct)))
(let ((anon40_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6) (=> (and (and (= $t29@0@@0 ($Mutation_306379 ($Global _$t1@@6) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6))) (= $t29@1 $t29@0@@0)) (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7))) (and (=> (= (ControlFlow 0 526315) 526957) anon41_Then_correct) (=> (= (ControlFlow 0 526315) 526510) anon41_Else_correct))))))
(let ((anon39_Then_correct@@1  (=> $t25@0@@0 (and (=> (= (ControlFlow 0 526293) 527007) anon40_Then_correct@@1) (=> (= (ControlFlow 0 526293) 526315) anon40_Else_correct@@1)))))
(let ((anon39_Else_correct@@1  (=> (and (and (not $t25@0@@0) (= $t27@@1 $t27@@1)) (and (= $t14@0@@2 $t27@@1) (= (ControlFlow 0 526283) 526096))) L7_correct@@0)))
(let ((anon38_Then_correct@@1  (=> $t22@0@@1 (=> (and (= $t25@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t27@@1) (= $t27@@1 5)) (and (= $t27@@1 $t27@@1) (= $t25@0@@0 $t25@0@@0))) (and (=> (= (ControlFlow 0 526267) 526293) anon39_Then_correct@@1) (=> (= (ControlFlow 0 526267) 526283) anon39_Else_correct@@1)))))))
(let ((anon38_Else_correct@@1  (=> (and (and (not $t22@0@@1) (= $t24@@2 $t24@@2)) (and (= $t14@0@@2 $t24@@2) (= (ControlFlow 0 526229) 526096))) L7_correct@@0)))
(let ((anon37_Else_correct@@1  (=> (not false) (=> (and (= $t22@0@@1  (not (= _$t1@@6 186537453))) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t24@@2) (= $t24@@2 7)) (and (= $t24@@2 $t24@@2) (= $t22@0@@1 $t22@0@@1))) (and (=> (= (ControlFlow 0 526213) 526267) anon38_Then_correct@@1) (=> (= (ControlFlow 0 526213) 526229) anon38_Else_correct@@1)))))))
(let ((inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 186537453) (= 186537453 186537453)) (and (=> (= (ControlFlow 0 526163) 527023) anon37_Then_correct@@1) (=> (= (ControlFlow 0 526163) 526213) anon37_Else_correct@@1)))))
(let ((anon36_Then_correct@@1  (=> (and $t18@0@@1 (= (ControlFlow 0 526169) 526163)) inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct)))
(let ((anon36_Else_correct@@1  (=> (and (and (not $t18@0@@1) (= $t20@@4 $t20@@4)) (and (= $t14@0@@2 $t20@@4) (= (ControlFlow 0 525792) 526096))) L7_correct@@0)))
(let ((anon35_Else_correct@@1  (=> (not false) (=> (and (= $t18@0@@1  (not (= _$t1@@6 173345816))) (|$IsValid'u64'| 3)) (=> (and (and (|$IsValid'u64'| $t20@@4) (= $t20@@4 7)) (and (= $t20@@4 $t20@@4) (= $t18@0@@1 $t18@0@@1))) (and (=> (= (ControlFlow 0 525776) 526169) anon36_Then_correct@@1) (=> (= (ControlFlow 0 525776) 525792) anon36_Else_correct@@1)))))))
(let ((anon34_Then_correct@@1  (=> $t16@@3 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t15@@1)) (= 5 $t14@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t15@@1)) 1)) (= 3 $t14@@2))) (and (not (= _$t0@@7 186537453)) (= 2 $t14@@2))) (= $t14@@2 $t14@@2)) (and (= $t14@0@@2 $t14@@2) (= (ControlFlow 0 527109) 526096))) L7_correct@@0))))
(let ((anon33_Then_correct@@1  (=> $t13@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t14@@2)) (= $t14@@2 $t14@@2)) (and (= $t14@0@@2 $t14@@2) (= (ControlFlow 0 527135) 526096))) L7_correct@@0))))
(let ((anon35_Then_correct@@1 true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@0  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 525726) 527037) anon35_Then_correct@@1) (=> (= (ControlFlow 0 525726) 525776) anon35_Else_correct@@1)))))
(let ((anon34_Else_correct@@1  (=> (and (not $t16@@3) (= (ControlFlow 0 525732) 525726)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@0)))
(let ((anon33_Else_correct@@1  (=> (not $t13@@2) (=> (and (= $t15@@1 _$t0@@7) (= $t16@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t15@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t15@@1)) 1))) (not (= _$t0@@7 186537453))))) (and (=> (= (ControlFlow 0 525655) 527109) anon34_Then_correct@@1) (=> (= (ControlFlow 0 525655) 525732) anon34_Else_correct@@1))))))
(let ((anon0$1_correct@@7  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (|$IsValid'address'| _$t0@@7))) (and (and (|$IsValid'address'| _$t1@@6) (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@21)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@21))
 :qid |DiemAccountcvc5bpl.20571:20|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@21))
))) (and (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@22)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@22))
 :qid |DiemAccountcvc5bpl.20575:20|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@22))
)) (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@23)))
(|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| $rsc@@23))
 :qid |DiemAccountcvc5bpl.20579:20|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@23))
))))) (and (and (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $a_0@@24)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@24))
 :qid |DiemAccountcvc5bpl.20583:20|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $a_0@@24))
)) (= $t9@@7 _$t0@@7)) (and (= $t10@@5 (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (= $t11@@5 ($1_AccountFreezing_FreezeAccountEvent _$t0@@7 _$t1@@6)))) (and (and (= $t12@@4 _$t0@@7) (= _$t0@@7 _$t0@@7)) (and (= _$t1@@6 _$t1@@6) (= $t13@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 525595) 527135) anon33_Then_correct@@1) (=> (= (ControlFlow 0 525595) 525655) anon33_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_207651| stream@@19) 0) (forall ((v@@62 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@19) v@@62) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 525357) 525595)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (seq.len (|p#$Mutation_306379| $t29)) 0) (=> (and (and (= (seq.len (|p#$Mutation_42678| $t30@@0)) 0) (= (seq.len (|p#$Mutation_306421| $t33)) 0)) (and (= (seq.len (|p#$Mutation_236117| $t34)) 0) (= (ControlFlow 0 525367) 525357))) inline$$InitEventStore$0$anon0_correct@@7))))
(let ((PreconditionGeneratedEntry_correct@@3  (=> (= (ControlFlow 0 848675) 525367) anon0_correct@@7)))
PreconditionGeneratedEntry_correct@@3))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun $t5@@3 () Int)
(declare-fun _$t0@@8 () Int)
(declare-fun _$t1@@7 () Int)
(declare-fun $t8@@4 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0@@1 () T@$Memory_304525)
(declare-fun $es@0@@3 () T@$EventStore)
(declare-fun $t6@@2 () T@$1_Event_EventHandle)
(declare-fun $t7@@2 () T@$1_AccountFreezing_UnfreezeAccountEvent)
(declare-fun $t10@0@@2 () Int)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t22@0@@2 () T@$Mutation_236117)
(declare-fun $t23@0@@1 () T@$1_AccountFreezing_UnfreezeAccountEvent)
(declare-fun $t21@1@@0 () T@$Mutation_306421)
(declare-fun $t19@@1 () Int)
(declare-fun $t21@@2 () T@$Mutation_306421)
(declare-fun $t21@0@@2 () T@$Mutation_306421)
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun $t18@0@@2 () T@$Mutation_42678)
(declare-fun $t17@1@@0 () T@$Mutation_306379)
(declare-fun $t18@1 () T@$Mutation_42678)
(declare-fun $t17@2 () T@$Mutation_306379)
(declare-fun $t17@@3 () T@$Mutation_306379)
(declare-fun $t17@0@@3 () T@$Mutation_306379)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun $t13@0@@0 () Bool)
(declare-fun $t15@@2 () Int)
(declare-fun $t12@@5 () Bool)
(declare-fun $t11@@6 () Int)
(declare-fun $t10@@6 () Int)
(declare-fun $t9@@8 () Bool)
(declare-fun $t18@@0 () T@$Mutation_42678)
(declare-fun $t22@@1 () T@$Mutation_236117)
(push 1)
(set-info :boogie-vc-id $1_AccountFreezing_unfreeze_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 850424) (let ((anon31_Else_correct@@2  (=> (not $abort_flag@1@@1) (and (=> (= (ControlFlow 0 528518) (- 0 851701)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 528518) (- 0 851711)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@3))) (and (=> (= (ControlFlow 0 528518) (- 0 851723)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@3)) 1))) (and (=> (= (ControlFlow 0 528518) (- 0 851741)) (not (not (= _$t0@@8 186537453)))) (=> (not (not (= _$t0@@8 186537453))) (and (=> (= (ControlFlow 0 528518) (- 0 851755)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@7))) (and (=> (= (ControlFlow 0 528518) (- 0 851766)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@4))) (and (=> (= (ControlFlow 0 528518) (- 0 851778)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@4)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@4)) 1))) (and (=> (= (ControlFlow 0 528518) (- 0 851796)) (not (not (= _$t0@@8 186537453)))) (=> (not (not (= _$t0@@8 186537453))) (and (=> (= (ControlFlow 0 528518) (- 0 851810)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@1) _$t1@@7) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@1) _$t1@@7))))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@1) _$t1@@7) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@1) _$t1@@7)))) (and (=> (= (ControlFlow 0 528518) (- 0 851819)) (let ((actual@@5 ($EventStore (- (|counter#$EventStore| $es@0@@3) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@3) (|streams#$EventStore| $es)))))
(let ((expected@@5 (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t6@@2)))
(let ((stream_new@@10 (let ((len@@10 (|l#Multiset_207651| stream@@20)))
(let ((cnt@@10 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@20) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@2))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@20) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@2) (+ cnt@@10 1)) (+ len@@10 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t6@@2 stream_new@@10))))))
 (and (<= (|counter#$EventStore| expected@@5) (|counter#$EventStore| actual@@5)) (forall ((handle@@19 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@5) handle@@19)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@5) handle@@19))) (forall ((v@@63 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@5) handle@@19)) v@@63) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@5) handle@@19)) v@@63))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
)))))) (=> (let ((actual@@5 ($EventStore (- (|counter#$EventStore| $es@0@@3) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@3) (|streams#$EventStore| $es)))))
(let ((expected@@5 (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t6@@2)))
(let ((stream_new@@10 (let ((len@@10 (|l#Multiset_207651| stream@@20)))
(let ((cnt@@10 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@20) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@2))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@20) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@2) (+ cnt@@10 1)) (+ len@@10 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t6@@2 stream_new@@10))))))
 (and (<= (|counter#$EventStore| expected@@5) (|counter#$EventStore| actual@@5)) (forall ((handle@@20 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@5) handle@@20)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@5) handle@@20))) (forall ((v@@64 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@5) handle@@20)) v@@64) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@5) handle@@20)) v@@64))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
))))) (=> (= (ControlFlow 0 528518) (- 0 851844)) (let ((actual@@6 ($EventStore (- (|counter#$EventStore| $es@0@@3) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@3) (|streams#$EventStore| $es)))))
(let ((expected@@6 (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t6@@2)))
(let ((stream_new@@11 (let ((len@@11 (|l#Multiset_207651| stream@@21)))
(let ((cnt@@11 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@21) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@2))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@21) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@2) (+ cnt@@11 1)) (+ len@@11 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $EmptyEventStore) $t6@@2 stream_new@@11))))))
 (and (<= (|counter#$EventStore| actual@@6) (|counter#$EventStore| expected@@6)) (forall ((handle@@21 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@6) handle@@21)) (|l#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@6) handle@@21))) (forall ((v@@65 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| actual@@6) handle@@21)) v@@65) (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| expected@@6) handle@@21)) v@@65))
 :qid |DiemAccountcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountcvc5bpl.3126:13|
 :skolemid |88|
)))))))))))))))))))))))))))))
(let ((L3_correct@@3  (and (=> (= (ControlFlow 0 527970) (- 0 851465)) (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@3)) 1))) (not (= _$t0@@8 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@7))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@4)) 1))) (not (= _$t0@@8 186537453)))) (=> (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@3)) 1))) (not (= _$t0@@8 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@7))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@4)) 1))) (not (= _$t0@@8 186537453))) (=> (= (ControlFlow 0 527970) (- 0 851548)) (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t10@0@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@3)) (= 5 $t10@0@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t5@@3)) 1)) (= 3 $t10@0@@2))) (and (not (= _$t0@@8 186537453)) (= 2 $t10@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@7)) (= 5 $t10@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@4)) (= 5 $t10@0@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t8@@4)) 1)) (= 3 $t10@0@@2))) (and (not (= _$t0@@8 186537453)) (= 2 $t10@0@@2))))))))
(let ((anon31_Then_correct@@2  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= $t10@0@@2 $abort_code@2@@1) (= (ControlFlow 0 528532) 527970))) L3_correct@@3)))
(let ((|inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$handle@1| (|v#$Mutation_236117| $t22@0@@2)) (= $es@0@@3 (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$handle@1|)))
(let ((stream_new@@12 (let ((len@@12 (|l#Multiset_207651| stream@@22)))
(let ((cnt@@12 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@22) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t23@0@@1))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@22) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t23@0@@1) (+ cnt@@12 1)) (+ len@@12 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$handle@1| stream_new@@12)))))) (and (=> (= (ControlFlow 0 528326) 528532) anon31_Then_correct@@2) (=> (= (ControlFlow 0 528326) 528518) anon31_Else_correct@@2)))))
(let ((anon30_Else_correct@@3  (=> (and (and (not $abort_flag@1@@1) (= $t22@0@@2 ($Mutation_236117 (|l#$Mutation_306421| $t21@1@@0) (seq.++ (|p#$Mutation_306421| $t21@1@@0) (seq.unit 1)) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| (|v#$Mutation_306421| $t21@1@@0))))) (and (= $t23@0@@1 ($1_AccountFreezing_UnfreezeAccountEvent $t19@@1 _$t1@@7)) (= (ControlFlow 0 528332) 528326))) |inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$anon0_correct|)))
(let ((anon30_Then_correct@@3  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= $t10@0@@2 $abort_code@2@@1) (= (ControlFlow 0 528546) 527970))) L3_correct@@3)))
(let ((anon29_Then$1_correct@@0  (=> (= $t21@1@@0 $t21@@2) (=> (and (= $abort_flag@1@@1 true) (= $abort_code@2@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 528598) 528546) anon30_Then_correct@@3) (=> (= (ControlFlow 0 528598) 528332) anon30_Else_correct@@3))))))
(let ((anon29_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (= (ControlFlow 0 528596) 528598)) anon29_Then$1_correct@@0)))
(let ((anon29_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816) (=> (and (and (= $t21@0@@2 ($Mutation_306421 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (= $t21@1@@0 $t21@0@@2)) (and (= $abort_flag@1@@1 $abort_flag@0@@8) (= $abort_code@2@@1 $abort_code@1@@8))) (and (=> (= (ControlFlow 0 528227) 528546) anon30_Then_correct@@3) (=> (= (ControlFlow 0 528227) 528332) anon30_Else_correct@@3))))))
(let ((anon28_Else_correct@@1  (=> (not $abort_flag@0@@8) (and (=> (= (ControlFlow 0 528205) 528596) anon29_Then_correct@@1) (=> (= (ControlFlow 0 528205) 528227) anon29_Else_correct@@1)))))
(let ((anon28_Then_correct@@1  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t10@0@@2 $abort_code@1@@8) (= (ControlFlow 0 528612) 527970))) L3_correct@@3)))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@1  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 528191) 528612) anon28_Then_correct@@1) (=> (= (ControlFlow 0 528191) 528205) anon28_Else_correct@@1)))))
(let ((anon27_Else_correct@@1  (=> (and (not $abort_flag@0@@8) (= $t18@0@@2 ($Mutation_42678 (|l#$Mutation_306379| $t17@1@@0) (seq.++ (|p#$Mutation_306379| $t17@1@@0) (seq.unit 0)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|v#$Mutation_306379| $t17@1@@0))))) (=> (and (and (= $t18@1 ($Mutation_42678 (|l#$Mutation_42678| $t18@0@@2) (|p#$Mutation_42678| $t18@0@@2) false)) (= $t17@2 ($Mutation_306379 (|l#$Mutation_306379| $t17@1@@0) (|p#$Mutation_306379| $t17@1@@0) ($1_AccountFreezing_FreezingBit (|v#$Mutation_42678| $t18@1))))) (and (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@49) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) addr@@49)))
 :qid |DiemAccountcvc5bpl.21296:20|
 :skolemid |308|
)) (= $1_AccountFreezing_FreezingBit_$memory@0@@1 ($Memory_304525 (|Store__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) (|a#$Global| (|l#$Mutation_306379| $t17@2)) true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) (|a#$Global| (|l#$Mutation_306379| $t17@2)) (|v#$Mutation_306379| $t17@2)))))) (and (=> (= (ControlFlow 0 528197) (- 0 851185)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@50) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@1) addr@@50)))
 :qid |DiemAccountcvc5bpl.21307:15|
 :skolemid |309|
))) (=> (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@51) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@0@@1) addr@@51)))
 :qid |DiemAccountcvc5bpl.21307:15|
 :skolemid |309|
)) (=> (and (and (|$IsValid'address'| $t19@@1) (= $t19@@1 _$t0@@8)) (and (= $t19@@1 $t19@@1) (= (ControlFlow 0 528197) 528191))) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@1)))))))
(let ((anon27_Then_correct@@1  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t10@0@@2 $abort_code@1@@8) (= (ControlFlow 0 528626) 527970))) L3_correct@@3)))
(let ((anon26_Then$1_correct  (=> (= $t17@1@@0 $t17@@3) (=> (and (= $abort_flag@0@@8 true) (= $abort_code@1@@8 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 528678) 528626) anon27_Then_correct@@1) (=> (= (ControlFlow 0 528678) 528197) anon27_Else_correct@@1))))))
(let ((anon26_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@7)) (= (ControlFlow 0 528676) 528678)) anon26_Then$1_correct)))
(let ((anon26_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@7) (=> (and (and (= $t17@0@@3 ($Mutation_306379 ($Global _$t1@@7) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@7))) (= $t17@1@@0 $t17@0@@3)) (and (= $abort_flag@0@@8 false) (= $abort_code@1@@8 $abort_code@0@@8))) (and (=> (= (ControlFlow 0 528002) 528626) anon27_Then_correct@@1) (=> (= (ControlFlow 0 528002) 528197) anon27_Else_correct@@1))))))
(let ((anon25_Then_correct@@2  (=> $t13@0@@0 (and (=> (= (ControlFlow 0 527980) 528676) anon26_Then_correct@@2) (=> (= (ControlFlow 0 527980) 528002) anon26_Else_correct@@2)))))
(let ((anon25_Else_correct@@2  (=> (and (and (not $t13@0@@0) (= $t15@@2 $t15@@2)) (and (= $t10@0@@2 $t15@@2) (= (ControlFlow 0 527714) 527970))) L3_correct@@3)))
(let ((anon24_Else_correct@@2  (=> (not $t12@@5) (=> (and (= $t13@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) _$t1@@7)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t15@@2) (= $t15@@2 5)) (and (= $t15@@2 $t15@@2) (= $t13@0@@0 $t13@0@@0))) (and (=> (= (ControlFlow 0 527698) 527980) anon25_Then_correct@@2) (=> (= (ControlFlow 0 527698) 527714) anon25_Else_correct@@2)))))))
(let ((anon24_Then_correct@@2  (=> $t12@@5 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t11@@6)) (= 5 $t10@@6)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t11@@6)) 1)) (= 3 $t10@@6))) (and (not (= _$t0@@8 186537453)) (= 2 $t10@@6))) (= $t10@@6 $t10@@6)) (and (= $t10@0@@2 $t10@@6) (= (ControlFlow 0 528750) 527970))) L3_correct@@3))))
(let ((anon23_Else_correct@@1  (=> (not $t9@@8) (=> (and (= $t11@@6 _$t0@@8) (= $t12@@5  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t11@@6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t11@@6)) 1))) (not (= _$t0@@8 186537453))))) (and (=> (= (ControlFlow 0 527656) 528750) anon24_Then_correct@@2) (=> (= (ControlFlow 0 527656) 527698) anon24_Else_correct@@2))))))
(let ((anon23_Then_correct@@1  (=> $t9@@8 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t10@@6)) (= $t10@@6 $t10@@6)) (and (= $t10@0@@2 $t10@@6) (= (ControlFlow 0 528776) 527970))) L3_correct@@3))))
(let ((anon0$1_correct@@8  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (|$IsValid'address'| _$t0@@8))) (and (and (|$IsValid'address'| _$t1@@7) (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@25)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@25))
 :qid |DiemAccountcvc5bpl.21106:20|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@25))
))) (and (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@26)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@26))
 :qid |DiemAccountcvc5bpl.21110:20|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@26))
)) (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@27)))
(|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| $rsc@@27))
 :qid |DiemAccountcvc5bpl.21114:20|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@27))
))))) (and (and (and (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $a_0@@28)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@28))
 :qid |DiemAccountcvc5bpl.21118:20|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $a_0@@28))
)) (= $t5@@3 _$t0@@8)) (and (= $t6@@2 (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (= $t7@@2 ($1_AccountFreezing_UnfreezeAccountEvent _$t0@@8 _$t1@@7)))) (and (and (= $t8@@4 _$t0@@8) (= _$t0@@8 _$t0@@8)) (and (= _$t1@@7 _$t1@@7) (= $t9@@8  (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 527596) 528776) anon23_Then_correct@@1) (=> (= (ControlFlow 0 527596) 527656) anon23_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@22 T@$1_Event_EventHandle) ) (! (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) handle@@22)))
 (and (= (|l#Multiset_207651| stream@@23) 0) (forall ((v@@66 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@23) v@@66) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 527358) 527596)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (seq.len (|p#$Mutation_306379| $t17@@3)) 0) (=> (and (and (= (seq.len (|p#$Mutation_42678| $t18@@0)) 0) (= (seq.len (|p#$Mutation_306421| $t21@@2)) 0)) (and (= (seq.len (|p#$Mutation_236117| $t22@@1)) 0) (= (ControlFlow 0 527368) 527358))) inline$$InitEventStore$0$anon0_correct@@8))))
(let ((PreconditionGeneratedEntry_correct@@4  (=> (= (ControlFlow 0 850424) 527368) anon0_correct@@8)))
PreconditionGeneratedEntry_correct@@4))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@9 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_244413)
(declare-fun _$t1@@8 () (Seq Int))
(declare-fun $1_DiemId_DiemIdDomainManager_$memory () T@$Memory_295755)
(declare-fun $t7@@3 () Int)
(declare-fun $t21@@3 () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2 () T@$Memory_244413)
(declare-fun $1_Roles_RoleId_$memory@5 () T@$Memory_244446)
(declare-fun $t19@@2 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2 () T@$Memory_304525)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2 () T@$Memory_243857)
(declare-fun $t11@@7 () Bool)
(declare-fun $t8@@5 () Bool)
(declare-fun $t6@@3 () Bool)
(declare-fun $t22@@2 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@5 () T@$Memory_243857)
(declare-fun $t23@@2 () T@$1_Event_EventHandle)
(declare-fun $t24@@3 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_Roles_RoleId_$memory@11 () T@$Memory_244446)
(declare-fun $t20@@5 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@5 () T@$Memory_246108)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@5 () T@$Memory_244413)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@5 () T@$Memory_304525)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory@2 () T@$Memory_295755)
(declare-fun $t17@@4 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t25@@3 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t26@@1 () T@$1_Event_EventHandle)
(declare-fun $es@1@@0 () T@$EventStore)
(declare-fun $es@0@@4 () T@$EventStore)
(declare-fun $t3@@2 () Int)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory@2 () T@$Memory_243929)
(declare-fun $t5@@4 () Int)
(declare-fun |$temp_0'bool'@15| () Bool)
(declare-fun $1_Roles_RoleId_$memory@10 () T@$Memory_244446)
(declare-fun $1_Roles_RoleId_$memory@8 () T@$Memory_244446)
(declare-fun $1_Roles_RoleId_$memory@9 () T@$Memory_244446)
(declare-fun |$temp_0'$1_Roles_RoleId'@3| () T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@14| () Bool)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory@1 () T@$Memory_295755)
(declare-fun $t18@@1 () Int)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory@0 () T@$Memory_295755)
(declare-fun |Store__T@[Int]$1_DiemId_DiemIdDomainManager_| (|T@[Int]$1_DiemId_DiemIdDomainManager| Int T@$1_DiemId_DiemIdDomainManager) |T@[Int]$1_DiemId_DiemIdDomainManager|)
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|T@[Int]$1_DiemId_DiemIdDomainManager| Int) T@$1_DiemId_DiemIdDomainManager)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomainManager|) ( ?x1 Int) ( ?x2 T@$1_DiemId_DiemIdDomainManager)) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|Store__T@[Int]$1_DiemId_DiemIdDomainManager_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomainManager|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemId_DiemIdDomainManager)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|Store__T@[Int]$1_DiemId_DiemIdDomainManager_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemId_DiemIdDomainManager'@0| () T@$1_DiemId_DiemIdDomainManager)
(declare-fun |$temp_0'bool'@13| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@3 () T@$Memory_235489)
(declare-fun $1_Event_EventHandleGenerator_$memory () T@$Memory_235489)
(declare-fun $1_Event_EventHandleGenerator_$memory@2 () T@$Memory_235489)
(declare-fun |Store__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int T@$1_Event_EventHandleGenerator) |T@[Int]$1_Event_EventHandleGenerator|)
(declare-fun |Select__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int) T@$1_Event_EventHandleGenerator)
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Event_EventHandleGenerator'@1| () T@$1_Event_EventHandleGenerator)
(declare-fun |$temp_0'bool'@12| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@4 () T@$Memory_243857)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@3 () T@$Memory_243857)
(declare-fun |Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int T@$1_DiemAccount_AccountOperationsCapability) |T@[Int]$1_DiemAccount_AccountOperationsCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_AccountOperationsCapability'@1| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@11| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@4 () T@$Memory_304525)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@3 () T@$Memory_304525)
(declare-fun |$temp_0'$1_AccountFreezing_FreezingBit'@1| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |$temp_0'bool'@10| () Bool)
(declare-fun $1_Roles_RoleId_$memory@7 () T@$Memory_244446)
(declare-fun $1_Roles_RoleId_$memory@6 () T@$Memory_244446)
(declare-fun |$temp_0'$1_Roles_RoleId'@2| () T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@9| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@4 () T@$Memory_244413)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@3 () T@$Memory_244413)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_SlidingNonce_SlidingNonce'@1| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun |$temp_0'bool'@8| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@4 () T@$Memory_246108)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_246108)
(declare-fun $1_DiemAccount_DiemAccount_$memory@3 () T@$Memory_246108)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t12@@6 () T@$1_Event_EventHandle)
(declare-fun $t13@@3 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t10@@7 () Int)
(declare-fun $t14@@3 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t15@@3 () T@$1_Event_EventHandle)
(declare-fun $t16@@4 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$modifies () |T@[Int]Bool|)
(declare-fun $1_SlidingNonce_SlidingNonce_$modifies () |T@[Int]Bool|)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $1_AccountFreezing_FreezingBit_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$modifies () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandleGenerator_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $1_DiemId_DiemIdDomainManager_$modifies () |T@[Int]Bool|)
(declare-fun |$temp_0'bool'@7| () Bool)
(declare-fun $1_Roles_RoleId_$memory@4 () T@$Memory_244446)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_244446)
(declare-fun $1_Roles_RoleId_$memory@3 () T@$Memory_244446)
(declare-fun |$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@6| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1@@0 () T@$Memory_304525)
(declare-fun $t9@@9 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0@@2 () T@$Memory_304525)
(declare-fun |$temp_0'$1_AccountFreezing_FreezingBit'@0| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |$temp_0'bool'@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_244446)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_244446)
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@4| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_244413)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_244413)
(declare-fun |$temp_0'$1_SlidingNonce_SlidingNonce'@0| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun |$temp_0'bool'@3| () Bool)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory@1 () T@$Memory_243929)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory@0 () T@$Memory_243929)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|T@[Int]$1_DiemAccount_DiemWriteSetManager| Int T@$1_DiemAccount_DiemWriteSetManager) |T@[Int]$1_DiemAccount_DiemWriteSetManager|)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|T@[Int]$1_DiemAccount_DiemWriteSetManager| Int) T@$1_DiemAccount_DiemWriteSetManager)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemWriteSetManager)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemWriteSetManager)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_DiemWriteSetManager'@0| () T@$1_DiemAccount_DiemWriteSetManager)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1 () T@$Memory_243857)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0 () T@$Memory_243857)
(declare-fun |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@1@@0| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_246108)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_246108)
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1 () T@$Memory_235489)
(declare-fun $1_Event_EventHandleGenerator_$memory@0 () T@$Memory_235489)
(declare-fun |$temp_0'$1_Event_EventHandleGenerator'@0| () T@$1_Event_EventHandleGenerator)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$modifies () |T@[Int]Bool|)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_272132)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_276243)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_277611)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_281484)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_250811)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_304199)
(declare-fun $t2 () Int)
(declare-fun $t4@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 851875) (let ((L2_correct  (and (=> (= (ControlFlow 0 532257) (- 0 855473)) (or (or (or (or (or (or (or (or (or (or (or (or (not (= _$t0@@9 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 173345816)) (not (= (+ 16 (seq.len _$t1@@8)) 32))) (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 186537453)) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (not (= _$t0@@9 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 173345816)) (not (= (+ 16 (seq.len _$t1@@8)) 32))) (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 186537453)) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453)) (=> (= (ControlFlow 0 532257) (- 0 855572)) (or (or (or (or (or (or (or (or (or (or (or (or (and (not (= _$t0@@9 173345816)) (= 2 $t7@@3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 173345816) (= 6 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (= 6 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816) (= 6 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816) (= 6 $t7@@3))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 173345816) (= 6 $t7@@3))) (and (not (= (+ 16 (seq.len _$t1@@8)) 32)) (= 7 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 186537453) (= 6 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) 186537453) (= 6 $t7@@3))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 186537453) (= 6 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453) (= 6 $t7@@3))))))))
(let ((anon69_Then_correct  (=> (and (and $t21@@3 (or (or (or (or (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@2) 186537453) (= 6 $t7@@3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) 186537453) (= 6 $t7@@3))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@5) 186537453) (= 6 $t7@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@5) $t19@@2)) (= 5 $t7@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@5) $t19@@2)) 0)) (= 3 $t7@@3))) (and (not (= _$t0@@9 173345816)) (= 2 $t7@@3))) (and (= 186537453 0) (= 7 $t7@@3))) (and (= 186537453 1) (= 7 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@2) 186537453) (= 6 $t7@@3))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= 5 $t7@@3))) (and (not (= (+ 16 (seq.len _$t1@@8)) 32)) (= 7 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) 186537453) (= 6 $t7@@3)))) (and (= $t7@@3 $t7@@3) (= (ControlFlow 0 531921) 532257))) L2_correct)))
(let ((anon60_Then_correct  (=> (and (and $t11@@7 (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 173345816) (= 6 $t7@@3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (= 6 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816) (= 6 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816) (= 6 $t7@@3))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t7@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 173345816) (= 6 $t7@@3))) (and (not (= (+ 16 (seq.len _$t1@@8)) 32)) (= 7 $t7@@3)))) (and (= $t7@@3 $t7@@3) (= (ControlFlow 0 532483) 532257))) L2_correct)))
(let ((anon59_Then_correct  (=> $t8@@5 (=> (and (and (not (= _$t0@@9 173345816)) (= 2 $t7@@3)) (and (= $t7@@3 $t7@@3) (= (ControlFlow 0 532513) 532257))) L2_correct))))
(let ((anon58_Then_correct  (=> $t6@@3 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t7@@3)) (and (= $t7@@3 $t7@@3) (= (ControlFlow 0 532539) 532257))) L2_correct))))
(let ((anon56_correct  (=> (and (= $t22@@2 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@5) 173345816)) (= $t23@@2 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@5) 173345816)))) (=> (and (and (= $t24@@3 ($1_DiemAccount_CreateAccountEvent 186537453 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@11) 186537453)))) (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@5) 173345816)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@11) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@11) 186537453)) 1))) (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@11) $t20@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@11) $t20@@5)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t20@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@5) $t20@@5))) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@5) $t20@@5) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@5) $t20@@5)))) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t20@@5)))) 0)) (= $t20@@5 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t20@@5))) 0)))))) (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t20@@5)))) 0)) (= $t20@@5 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t20@@5))) 0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory@2) $t20@@5)) (and (and (= $t22@@2 ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t17@@4) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t17@@4))) (= $t25@@3 $t24@@3)) (and (= $t26@@1 $t23@@2) (= $es@1@@0 (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es@0@@4) $t26@@1)))
(let ((stream_new@@13 (let ((len@@13 (|l#Multiset_207651| stream@@24)))
(let ((cnt@@13 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@24) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t25@@3))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@24) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t25@@3) (+ cnt@@13 1)) (+ len@@13 1))))))
($EventStore (+ (|counter#$EventStore| $es@0@@4) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es@0@@4) $t26@@1 stream_new@@13))))))))) (and (=> (= (ControlFlow 0 531581) (- 0 855126)) (not (not (= _$t0@@9 173345816)))) (=> (not (not (= _$t0@@9 173345816))) (and (=> (= (ControlFlow 0 531581) (- 0 855140)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (and (=> (= (ControlFlow 0 531581) (- 0 855150)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (and (=> (= (ControlFlow 0 531581) (- 0 855160)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (and (=> (= (ControlFlow 0 531581) (- 0 855170)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816)) (and (=> (= (ControlFlow 0 531581) (- 0 855180)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 531581) (- 0 855190)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 173345816)) (and (=> (= (ControlFlow 0 531581) (- 0 855200)) (not (not (= (+ 16 (seq.len _$t1@@8)) 32)))) (=> (not (not (= (+ 16 (seq.len _$t1@@8)) 32))) (and (=> (= (ControlFlow 0 531581) (- 0 855218)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (and (=> (= (ControlFlow 0 531581) (- 0 855228)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (and (=> (= (ControlFlow 0 531581) (- 0 855236)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 531581) (- 0 855246)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 186537453))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 186537453)) (and (=> (= (ControlFlow 0 531581) (- 0 855256)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453)) (and (=> (= (ControlFlow 0 531581) (- 0 855266)) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@11) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@11) 173345816) (and (=> (= (ControlFlow 0 531581) (- 0 855274)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@11) 173345816)) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@11) 173345816)) 0) (and (=> (= (ControlFlow 0 531581) (- 0 855288)) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@11) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@11) 186537453) (and (=> (= (ControlFlow 0 531581) (- 0 855296)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@11) 186537453)) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@11) 186537453)) 1) (and (=> (= (ControlFlow 0 531581) (- 0 855310)) (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@5) $t3@@2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@5) $t3@@2) (and (=> (= (ControlFlow 0 531581) (- 0 855318)) (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory@2) $t3@@2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory@2) $t3@@2) (and (=> (= (ControlFlow 0 531581) (- 0 855326)) (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@5) $t3@@2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@5) $t3@@2) (and (=> (= (ControlFlow 0 531581) (- 0 855334)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@11) $t3@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@11) $t3@@2)) 0))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@11) $t3@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@11) $t3@@2)) 0)) (and (=> (= (ControlFlow 0 531581) (- 0 855342)) (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t3@@2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t3@@2) (and (=> (= (ControlFlow 0 531581) (- 0 855350)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@5) $t3@@2) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@5) $t3@@2))))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@5) $t3@@2) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@5) $t3@@2)))) (and (=> (= (ControlFlow 0 531581) (- 0 855358)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t3@@2)))) 0)) (= $t3@@2 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t3@@2))) 0))))) (=> (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t3@@2)))) 0)) (= $t3@@2 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t3@@2))) 0)))) (and (=> (= (ControlFlow 0 531581) (- 0 855366)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t3@@2)))) 0)) (= $t3@@2 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t3@@2))) 0))))) (=> (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t3@@2)))) 0)) (= $t3@@2 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t3@@2))) 0)))) (and (=> (= (ControlFlow 0 531581) (- 0 855374)) (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@5) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@5) 173345816) (and (=> (= (ControlFlow 0 531581) (- 0 855382)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@11) $t5@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@11) $t5@@4)) 1))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@11) $t5@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@11) $t5@@4)) 1)) (and (=> (= (ControlFlow 0 531581) (- 0 855390)) (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t5@@4)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t5@@4) (and (=> (= (ControlFlow 0 531581) (- 0 855398)) (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@5) $t5@@4)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@5) $t5@@4) (and (=> (= (ControlFlow 0 531581) (- 0 855406)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@5) $t5@@4) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@5) $t5@@4))))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@5) $t5@@4) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@5) $t5@@4)))) (and (=> (= (ControlFlow 0 531581) (- 0 855414)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t5@@4)))) 0)) (= $t5@@4 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t5@@4))) 0))))) (=> (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t5@@4)))) 0)) (= $t5@@4 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t5@@4))) 0)))) (and (=> (= (ControlFlow 0 531581) (- 0 855422)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t5@@4)))) 0)) (= $t5@@4 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t5@@4))) 0))))) (=> (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t5@@4)))) 0)) (= $t5@@4 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) $t5@@4))) 0)))) (and (=> (= (ControlFlow 0 531581) (- 0 855430)) (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory@2) $t5@@4)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory@2) $t5@@4) (=> (= (ControlFlow 0 531581) (- 0 855438)) (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@52) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@5) addr@@52)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@52)))))
 :qid |DiemAccountcvc5bpl.22761:15|
 :skolemid |358|
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon77_Else_correct  (=> (and (and (not |$temp_0'bool'@15|) (= $1_Roles_RoleId_$memory@10 ($Memory_244446 (|Store__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@8) 186537453 false) (|contents#$Memory_244446| $1_Roles_RoleId_$memory@8)))) (and (= $1_Roles_RoleId_$memory@11 $1_Roles_RoleId_$memory@10) (= (ControlFlow 0 531084) 531581))) anon56_correct)))
(let ((anon77_Then_correct  (=> (and (and |$temp_0'bool'@15| (= $1_Roles_RoleId_$memory@9 ($Memory_244446 (|Store__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@8) 186537453 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@8) 186537453 |$temp_0'$1_Roles_RoleId'@3|)))) (and (= $1_Roles_RoleId_$memory@11 $1_Roles_RoleId_$memory@9) (= (ControlFlow 0 531593) 531581))) anon56_correct)))
(let ((anon76_Else_correct  (=> (not |$temp_0'bool'@14|) (=> (and (= $1_DiemId_DiemIdDomainManager_$memory@1 ($Memory_295755 (|Store__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) $t18@@1 false) (|contents#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory))) (= $1_DiemId_DiemIdDomainManager_$memory@2 $1_DiemId_DiemIdDomainManager_$memory@1)) (and (=> (= (ControlFlow 0 531070) 531593) anon77_Then_correct) (=> (= (ControlFlow 0 531070) 531084) anon77_Else_correct))))))
(let ((anon76_Then_correct  (=> |$temp_0'bool'@14| (=> (and (= $1_DiemId_DiemIdDomainManager_$memory@0 ($Memory_295755 (|Store__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) $t18@@1 true) (|Store__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) $t18@@1 |$temp_0'$1_DiemId_DiemIdDomainManager'@0|))) (= $1_DiemId_DiemIdDomainManager_$memory@2 $1_DiemId_DiemIdDomainManager_$memory@0)) (and (=> (= (ControlFlow 0 531605) 531593) anon77_Then_correct) (=> (= (ControlFlow 0 531605) 531084) anon77_Else_correct))))))
(let ((anon75_Else_correct  (=> (and (not |$temp_0'bool'@13|) (= $1_Event_EventHandleGenerator_$memory@3 ($Memory_235489 (|Store__T@[Int]Bool_| (|domain#$Memory_235489| $1_Event_EventHandleGenerator_$memory) 186537453 false) (|contents#$Memory_235489| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 531056) 531605) anon76_Then_correct) (=> (= (ControlFlow 0 531056) 531070) anon76_Else_correct)))))
(let ((anon75_Then_correct  (=> (and |$temp_0'bool'@13| (= $1_Event_EventHandleGenerator_$memory@2 ($Memory_235489 (|Store__T@[Int]Bool_| (|domain#$Memory_235489| $1_Event_EventHandleGenerator_$memory) 186537453 true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_235489| $1_Event_EventHandleGenerator_$memory) 186537453 |$temp_0'$1_Event_EventHandleGenerator'@1|)))) (and (=> (= (ControlFlow 0 531617) 531605) anon76_Then_correct) (=> (= (ControlFlow 0 531617) 531070) anon76_Else_correct)))))
(let ((anon74_Else_correct  (=> (not |$temp_0'bool'@12|) (=> (and (= $1_DiemAccount_AccountOperationsCapability_$memory@4 ($Memory_243857 (|Store__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816 false) (|contents#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@2))) (= $1_DiemAccount_AccountOperationsCapability_$memory@5 $1_DiemAccount_AccountOperationsCapability_$memory@4)) (and (=> (= (ControlFlow 0 531042) 531617) anon75_Then_correct) (=> (= (ControlFlow 0 531042) 531056) anon75_Else_correct))))))
(let ((anon74_Then_correct  (=> |$temp_0'bool'@12| (=> (and (= $1_DiemAccount_AccountOperationsCapability_$memory@3 ($Memory_243857 (|Store__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816 |$temp_0'$1_DiemAccount_AccountOperationsCapability'@1|))) (= $1_DiemAccount_AccountOperationsCapability_$memory@5 $1_DiemAccount_AccountOperationsCapability_$memory@3)) (and (=> (= (ControlFlow 0 531629) 531617) anon75_Then_correct) (=> (= (ControlFlow 0 531629) 531056) anon75_Else_correct))))))
(let ((anon73_Else_correct  (=> (not |$temp_0'bool'@11|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@4 ($Memory_304525 (|Store__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@2) $t18@@1 false) (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@2))) (= $1_AccountFreezing_FreezingBit_$memory@5 $1_AccountFreezing_FreezingBit_$memory@4)) (and (=> (= (ControlFlow 0 531028) 531629) anon74_Then_correct) (=> (= (ControlFlow 0 531028) 531042) anon74_Else_correct))))))
(let ((anon73_Then_correct  (=> |$temp_0'bool'@11| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@3 ($Memory_304525 (|Store__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@2) $t18@@1 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@2) $t18@@1 |$temp_0'$1_AccountFreezing_FreezingBit'@1|))) (= $1_AccountFreezing_FreezingBit_$memory@5 $1_AccountFreezing_FreezingBit_$memory@3)) (and (=> (= (ControlFlow 0 531641) 531629) anon74_Then_correct) (=> (= (ControlFlow 0 531641) 531042) anon74_Else_correct))))))
(let ((anon72_Else_correct  (=> (not |$temp_0'bool'@10|) (=> (and (= $1_Roles_RoleId_$memory@7 ($Memory_244446 (|Store__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@5) $t18@@1 false) (|contents#$Memory_244446| $1_Roles_RoleId_$memory@5))) (= $1_Roles_RoleId_$memory@8 $1_Roles_RoleId_$memory@7)) (and (=> (= (ControlFlow 0 531014) 531641) anon73_Then_correct) (=> (= (ControlFlow 0 531014) 531028) anon73_Else_correct))))))
(let ((anon72_Then_correct  (=> |$temp_0'bool'@10| (=> (and (= $1_Roles_RoleId_$memory@6 ($Memory_244446 (|Store__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@5) $t18@@1 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@5) $t18@@1 |$temp_0'$1_Roles_RoleId'@2|))) (= $1_Roles_RoleId_$memory@8 $1_Roles_RoleId_$memory@6)) (and (=> (= (ControlFlow 0 531653) 531641) anon73_Then_correct) (=> (= (ControlFlow 0 531653) 531028) anon73_Else_correct))))))
(let ((anon71_Else_correct  (=> (not |$temp_0'bool'@9|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@4 ($Memory_244413 (|Store__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@2) $t18@@1 false) (|contents#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@2))) (= $1_SlidingNonce_SlidingNonce_$memory@5 $1_SlidingNonce_SlidingNonce_$memory@4)) (and (=> (= (ControlFlow 0 531000) 531653) anon72_Then_correct) (=> (= (ControlFlow 0 531000) 531014) anon72_Else_correct))))))
(let ((anon71_Then_correct  (=> |$temp_0'bool'@9| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@3 ($Memory_244413 (|Store__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@2) $t18@@1 true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@2) $t18@@1 |$temp_0'$1_SlidingNonce_SlidingNonce'@1|))) (= $1_SlidingNonce_SlidingNonce_$memory@5 $1_SlidingNonce_SlidingNonce_$memory@3)) (and (=> (= (ControlFlow 0 531665) 531653) anon72_Then_correct) (=> (= (ControlFlow 0 531665) 531014) anon72_Else_correct))))))
(let ((anon70_Else_correct  (=> (not |$temp_0'bool'@8|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@4 ($Memory_246108 (|Store__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@2) $t18@@1 false) (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@2))) (= $1_DiemAccount_DiemAccount_$memory@5 $1_DiemAccount_DiemAccount_$memory@4)) (and (=> (= (ControlFlow 0 530986) 531665) anon71_Then_correct) (=> (= (ControlFlow 0 530986) 531000) anon71_Else_correct))))))
(let ((anon70_Then_correct  (=> |$temp_0'bool'@8| (=> (and (= $1_DiemAccount_DiemAccount_$memory@3 ($Memory_246108 (|Store__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@2) $t18@@1 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@2) $t18@@1 |$temp_0'$1_DiemAccount_DiemAccount'@1|))) (= $1_DiemAccount_DiemAccount_$memory@5 $1_DiemAccount_DiemAccount_$memory@3)) (and (=> (= (ControlFlow 0 531677) 531665) anon71_Then_correct) (=> (= (ControlFlow 0 531677) 531000) anon71_Else_correct))))))
(let ((anon69_Else_correct  (=> (not $t21@@3) (and (=> (= (ControlFlow 0 530974) 531677) anon70_Then_correct) (=> (= (ControlFlow 0 530974) 530986) anon70_Else_correct)))))
(let ((anon30_correct  (=> (= $t12@@6 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (=> (and (= $t13@@3 ($1_DiemAccount_CreateAccountEvent 173345816 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@5) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@5) 173345816)) (=> (and (and (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@5) 173345816)) 0) (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@2) $t10@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory@2) $t10@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@2) $t10@@7))) (=> (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@5) $t10@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@5) $t10@@7)) 0)) (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@2) $t10@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@2) $t10@@7) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@2) $t10@@7))))) (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@2) $t10@@7)))) 0)) (= $t10@@7 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@2) $t10@@7))) 0)))) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@2) $t10@@7)))) 0)) (= $t10@@7 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory@2) $t10@@7))) 0)))))) (and (and (and (= $t14@@3 $t13@@3) (= $t15@@3 $t12@@6)) (and (= $es@0@@4 (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) $t15@@3)))
(let ((stream_new@@14 (let ((len@@14 (|l#Multiset_207651| stream@@25)))
(let ((cnt@@14 (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@25) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t14@@3))))
(Multiset_207651 (|Store__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@25) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t14@@3) (+ cnt@@14 1)) (+ len@@14 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) $t15@@3 stream_new@@14))))) (= $t16@@4 186537453))) (and (and (= $t17@@4 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816)) (= $t18@@1 186537453)) (and (= $t19@@2 _$t0@@9) (= $t20@@5 186537453))))) (and (=> (= (ControlFlow 0 530968) (- 0 854236)) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t18@@1)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t18@@1) (and (=> (= (ControlFlow 0 530968) (- 0 854242)) (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies $t18@@1)) (=> (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies $t18@@1) (and (=> (= (ControlFlow 0 530968) (- 0 854248)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 $t18@@1)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 $t18@@1) (and (=> (= (ControlFlow 0 530968) (- 0 854254)) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies@@0 $t18@@1)) (=> (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies@@0 $t18@@1) (and (=> (= (ControlFlow 0 530968) (- 0 854260)) (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies 173345816) (and (=> (= (ControlFlow 0 530968) (- 0 854266)) (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@0 186537453)) (=> (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@0 186537453) (and (=> (= (ControlFlow 0 530968) (- 0 854272)) (|Select__T@[Int]Bool_| $1_DiemId_DiemIdDomainManager_$modifies $t18@@1)) (=> (|Select__T@[Int]Bool_| $1_DiemId_DiemIdDomainManager_$modifies $t18@@1) (and (=> (= (ControlFlow 0 530968) (- 0 854278)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 186537453)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 186537453) (=> (= $t21@@3  (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory@2) 186537453) (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@5) 186537453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@5) $t19@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@5) $t19@@2)) 0))) (not (= _$t0@@9 173345816))) (= 186537453 0)) (= 186537453 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory@2) 186537453)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816)))) (not (= (+ 16 (seq.len _$t1@@8)) 32))) (|Select__T@[Int]Bool_| (|domain#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (and (=> (= (ControlFlow 0 530968) 531921) anon69_Then_correct) (=> (= (ControlFlow 0 530968) 530974) anon69_Else_correct)))))))))))))))))))))))))
(let ((anon68_Else_correct  (=> (and (and (not |$temp_0'bool'@7|) (= $1_Roles_RoleId_$memory@4 ($Memory_244446 (|Store__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@2) 173345816 false) (|contents#$Memory_244446| $1_Roles_RoleId_$memory@2)))) (and (= $1_Roles_RoleId_$memory@5 $1_Roles_RoleId_$memory@4) (= (ControlFlow 0 530616) 530968))) anon30_correct)))
(let ((anon68_Then_correct  (=> (and (and |$temp_0'bool'@7| (= $1_Roles_RoleId_$memory@3 ($Memory_244446 (|Store__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory@2) 173345816 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory@2) 173345816 |$temp_0'$1_Roles_RoleId'@1|)))) (and (= $1_Roles_RoleId_$memory@5 $1_Roles_RoleId_$memory@3) (= (ControlFlow 0 532269) 530968))) anon30_correct)))
(let ((anon67_Else_correct  (=> (not |$temp_0'bool'@6|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@1@@0 ($Memory_304525 (|Store__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $t9@@9 false) (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@1@@0)) (and (=> (= (ControlFlow 0 530602) 532269) anon68_Then_correct) (=> (= (ControlFlow 0 530602) 530616) anon68_Else_correct))))))
(let ((anon67_Then_correct  (=> |$temp_0'bool'@6| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@0@@2 ($Memory_304525 (|Store__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $t9@@9 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $t9@@9 |$temp_0'$1_AccountFreezing_FreezingBit'@0|))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@0@@2)) (and (=> (= (ControlFlow 0 532281) 532269) anon68_Then_correct) (=> (= (ControlFlow 0 532281) 530616) anon68_Else_correct))))))
(let ((anon66_Else_correct  (=> (not |$temp_0'bool'@5|) (=> (and (= $1_Roles_RoleId_$memory@1@@0 ($Memory_244446 (|Store__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@9 false) (|contents#$Memory_244446| $1_Roles_RoleId_$memory))) (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1@@0)) (and (=> (= (ControlFlow 0 530588) 532281) anon67_Then_correct) (=> (= (ControlFlow 0 530588) 530602) anon67_Else_correct))))))
(let ((anon66_Then_correct  (=> |$temp_0'bool'@5| (=> (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_244446 (|Store__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@9 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $t9@@9 |$temp_0'$1_Roles_RoleId'@0|))) (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0@@0)) (and (=> (= (ControlFlow 0 532293) 532281) anon67_Then_correct) (=> (= (ControlFlow 0 532293) 530602) anon67_Else_correct))))))
(let ((anon65_Else_correct  (=> (not |$temp_0'bool'@4|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1 ($Memory_244413 (|Store__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) $t9@@9 false) (|contents#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory))) (= $1_SlidingNonce_SlidingNonce_$memory@2 $1_SlidingNonce_SlidingNonce_$memory@1)) (and (=> (= (ControlFlow 0 530574) 532293) anon66_Then_correct) (=> (= (ControlFlow 0 530574) 530588) anon66_Else_correct))))))
(let ((anon65_Then_correct  (=> |$temp_0'bool'@4| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0 ($Memory_244413 (|Store__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) $t9@@9 true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) $t9@@9 |$temp_0'$1_SlidingNonce_SlidingNonce'@0|))) (= $1_SlidingNonce_SlidingNonce_$memory@2 $1_SlidingNonce_SlidingNonce_$memory@0)) (and (=> (= (ControlFlow 0 532305) 532293) anon66_Then_correct) (=> (= (ControlFlow 0 532305) 530588) anon66_Else_correct))))))
(let ((anon64_Else_correct  (=> (not |$temp_0'bool'@3|) (=> (and (= $1_DiemAccount_DiemWriteSetManager_$memory@1 ($Memory_243929 (|Store__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) $t9@@9 false) (|contents#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory))) (= $1_DiemAccount_DiemWriteSetManager_$memory@2 $1_DiemAccount_DiemWriteSetManager_$memory@1)) (and (=> (= (ControlFlow 0 530560) 532305) anon65_Then_correct) (=> (= (ControlFlow 0 530560) 530574) anon65_Else_correct))))))
(let ((anon64_Then_correct  (=> |$temp_0'bool'@3| (=> (and (= $1_DiemAccount_DiemWriteSetManager_$memory@0 ($Memory_243929 (|Store__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) $t9@@9 true) (|Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) $t9@@9 |$temp_0'$1_DiemAccount_DiemWriteSetManager'@0|))) (= $1_DiemAccount_DiemWriteSetManager_$memory@2 $1_DiemAccount_DiemWriteSetManager_$memory@0)) (and (=> (= (ControlFlow 0 532317) 532305) anon65_Then_correct) (=> (= (ControlFlow 0 532317) 530574) anon65_Else_correct))))))
(let ((anon63_Else_correct  (=> (not |$temp_0'bool'@2|) (=> (and (= $1_DiemAccount_AccountOperationsCapability_$memory@1 ($Memory_243857 (|Store__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) $t9@@9 false) (|contents#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory))) (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@1)) (and (=> (= (ControlFlow 0 530546) 532317) anon64_Then_correct) (=> (= (ControlFlow 0 530546) 530560) anon64_Else_correct))))))
(let ((anon63_Then_correct  (=> |$temp_0'bool'@2| (=> (and (= $1_DiemAccount_AccountOperationsCapability_$memory@0 ($Memory_243857 (|Store__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) $t9@@9 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) $t9@@9 |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0|))) (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@0)) (and (=> (= (ControlFlow 0 532329) 532317) anon64_Then_correct) (=> (= (ControlFlow 0 532329) 530560) anon64_Else_correct))))))
(let ((anon62_Else_correct  (=> (not |$temp_0'bool'@1@@0|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@1 ($Memory_246108 (|Store__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) $t9@@9 false) (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1)) (and (=> (= (ControlFlow 0 530532) 532329) anon63_Then_correct) (=> (= (ControlFlow 0 530532) 530546) anon63_Else_correct))))))
(let ((anon62_Then_correct  (=> |$temp_0'bool'@1@@0| (=> (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_246108 (|Store__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) $t9@@9 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) $t9@@9 |$temp_0'$1_DiemAccount_DiemAccount'@0|))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0)) (and (=> (= (ControlFlow 0 532341) 532329) anon63_Then_correct) (=> (= (ControlFlow 0 532341) 530546) anon63_Else_correct))))))
(let ((anon61_Else_correct  (=> (and (not |$temp_0'bool'@0@@0|) (= $1_Event_EventHandleGenerator_$memory@1 ($Memory_235489 (|Store__T@[Int]Bool_| (|domain#$Memory_235489| $1_Event_EventHandleGenerator_$memory) $t9@@9 false) (|contents#$Memory_235489| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 530518) 532341) anon62_Then_correct) (=> (= (ControlFlow 0 530518) 530532) anon62_Else_correct)))))
(let ((anon61_Then_correct  (=> (and |$temp_0'bool'@0@@0| (= $1_Event_EventHandleGenerator_$memory@0 ($Memory_235489 (|Store__T@[Int]Bool_| (|domain#$Memory_235489| $1_Event_EventHandleGenerator_$memory) $t9@@9 true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_235489| $1_Event_EventHandleGenerator_$memory) $t9@@9 |$temp_0'$1_Event_EventHandleGenerator'@0|)))) (and (=> (= (ControlFlow 0 532353) 532341) anon62_Then_correct) (=> (= (ControlFlow 0 532353) 530532) anon62_Else_correct)))))
(let ((anon60_Else_correct  (=> (not $t11@@7) (and (=> (= (ControlFlow 0 530506) 532353) anon61_Then_correct) (=> (= (ControlFlow 0 530506) 530518) anon61_Else_correct)))))
(let ((anon59_Else_correct  (=> (not $t8@@5) (=> (and (= $t9@@9 173345816) (= $t10@@7 173345816)) (and (=> (= (ControlFlow 0 530500) (- 0 853476)) (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@0 $t9@@9)) (=> (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@0 $t9@@9) (and (=> (= (ControlFlow 0 530500) (- 0 853482)) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t9@@9)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t9@@9) (and (=> (= (ControlFlow 0 530500) (- 0 853488)) (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies $t9@@9)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies $t9@@9) (and (=> (= (ControlFlow 0 530500) (- 0 853494)) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemWriteSetManager_$modifies $t9@@9)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_DiemWriteSetManager_$modifies $t9@@9) (and (=> (= (ControlFlow 0 530500) (- 0 853500)) (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies $t9@@9)) (=> (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies $t9@@9) (and (=> (= (ControlFlow 0 530500) (- 0 853506)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 $t9@@9)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 $t9@@9) (and (=> (= (ControlFlow 0 530500) (- 0 853512)) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies@@0 $t9@@9)) (=> (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies@@0 $t9@@9) (and (=> (= (ControlFlow 0 530500) (- 0 853518)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 173345816)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 173345816) (=> (= $t11@@7  (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) 173345816)) (not (= (+ 16 (seq.len _$t1@@8)) 32)))) (and (=> (= (ControlFlow 0 530500) 532483) anon60_Then_correct) (=> (= (ControlFlow 0 530500) 530506) anon60_Else_correct)))))))))))))))))))))))
(let ((anon58_Else_correct  (=> (and (not $t6@@3) (= $t8@@5  (not (= _$t0@@9 173345816)))) (and (=> (= (ControlFlow 0 530360) 532513) anon59_Then_correct) (=> (= (ControlFlow 0 530360) 530500) anon59_Else_correct)))))
(let ((anon0$1_correct@@9  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_251206| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_250729| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))) (=> (and (and (and (forall ((mint_cap_owner@@8 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260315| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@8)) 1))))
 :qid |DiemAccountcvc5bpl.21856:22|
 :skolemid |323|
)) (forall ((mint_cap_owner@@9 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260402| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@9)) 1))))
 :qid |DiemAccountcvc5bpl.21856:269|
 :skolemid |324|
))) (forall ((mint_cap_owner@@10 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260489| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) mint_cap_owner@@10)) 1))))
 :qid |DiemAccountcvc5bpl.21856:517|
 :skolemid |325|
))) (and (and (forall ((addr1@@41 Int) ) (!  (=> (|$IsValid'address'| addr1@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255508| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@41) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@41)) 1))))
 :qid |DiemAccountcvc5bpl.21860:22|
 :skolemid |326|
)) (forall ((addr1@@42 Int) ) (!  (=> (|$IsValid'address'| addr1@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255595| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@42) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@42)) 1))))
 :qid |DiemAccountcvc5bpl.21860:232|
 :skolemid |327|
))) (forall ((addr1@@43 Int) ) (!  (=> (|$IsValid'address'| addr1@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_255682| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@43) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@43)) 1))))
 :qid |DiemAccountcvc5bpl.21860:443|
 :skolemid |328|
)))) (=> (and (and (and (and (and (and (and (forall ((addr1@@44 Int) ) (!  (=> (|$IsValid'address'| addr1@@44) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261071| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@44) (|Select__T@[Int]Bool_| (|domain#$Memory_260662| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@44)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@44)) 2))))
 :qid |DiemAccountcvc5bpl.21864:22|
 :skolemid |329|
)) (forall ((addr1@@45 Int) ) (!  (=> (|$IsValid'address'| addr1@@45) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261170| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@45) (|Select__T@[Int]Bool_| (|domain#$Memory_260753| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@45)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@45)) 2))))
 :qid |DiemAccountcvc5bpl.21864:293|
 :skolemid |330|
))) (forall ((addr1@@46 Int) ) (!  (=> (|$IsValid'address'| addr1@@46) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_261269| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@46) (|Select__T@[Int]Bool_| (|domain#$Memory_260844| |$1_Diem_Preburn'#0'_$memory|) addr1@@46)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@46)) 2))))
 :qid |DiemAccountcvc5bpl.21864:565|
 :skolemid |331|
))) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_271078| |$1_AccountLimits_Window'#0'_$memory|) addr@@53) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@53) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@53)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@53)) 6)))))
 :qid |DiemAccountcvc5bpl.21868:20|
 :skolemid |332|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_254787| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_272132| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_274935| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_254852| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_272351| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_276243| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@54) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@54)) 4))))
 :qid |DiemAccountcvc5bpl.21892:20|
 :skolemid |333|
))))) (and (and (and (and (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_277611| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@55) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@55)) 3))))
 :qid |DiemAccountcvc5bpl.21896:20|
 :skolemid |334|
)) (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_277611| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@56) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@56)) 3))))
 :qid |DiemAccountcvc5bpl.21900:20|
 :skolemid |335|
))) (and (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_277611| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@57) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_277611| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@57)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@57)) 3))))
 :qid |DiemAccountcvc5bpl.21904:20|
 :skolemid |336|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_281484| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_285038| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@47 Int) ) (!  (=> (|$IsValid'address'| addr1@@47) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr1@@47) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@47)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr1@@47)) 2)))))
 :qid |DiemAccountcvc5bpl.21916:20|
 :skolemid |337|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_250811| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_304199| $1_ChainId_ChainId_$memory) 173345816))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_304871| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@58) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@58)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@58)))) 0)) (= addr@@58 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@58))) 0)))))))
 :qid |DiemAccountcvc5bpl.21940:20|
 :skolemid |338|
)))) (and (and (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@59) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@59) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@59)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@59)))) 0)) (= addr@@59 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@59))) 0)))))))
 :qid |DiemAccountcvc5bpl.21944:20|
 :skolemid |339|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@60) (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@60)))
 :qid |DiemAccountcvc5bpl.21956:20|
 :skolemid |340|
))))))) (and (and (and (and (and (and (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246212| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@61) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@61)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@61)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@61)) 2)))))
 :qid |DiemAccountcvc5bpl.21960:22|
 :skolemid |341|
)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246297| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@62) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@62)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@62)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@62)) 2)))))
 :qid |DiemAccountcvc5bpl.21960:217|
 :skolemid |342|
))) (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246382| |$1_DiemAccount_Balance'#0'_$memory|) addr@@63) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@63)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@63)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@63)) 2)))))
 :qid |DiemAccountcvc5bpl.21960:413|
 :skolemid |343|
))) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246467| $1_DesignatedDealer_Dealer_$memory) addr@@64) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@64)) 2))))
 :qid |DiemAccountcvc5bpl.21964:20|
 :skolemid |344|
))) (and (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246552| $1_DualAttestation_Credential_$memory) addr@@65) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@65)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244446| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) addr@@65)) 5)))))
 :qid |DiemAccountcvc5bpl.21968:20|
 :skolemid |345|
)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@66) (|Select__T@[Int]Bool_| (|domain#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) addr@@66)))
 :qid |DiemAccountcvc5bpl.21972:20|
 :skolemid |346|
)))) (and (and (and (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246212| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@67) (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@67)))
 :qid |DiemAccountcvc5bpl.21976:22|
 :skolemid |347|
)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246297| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@68) (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@68)))
 :qid |DiemAccountcvc5bpl.21976:218|
 :skolemid |348|
))) (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_246382| |$1_DiemAccount_Balance'#0'_$memory|) addr@@69) (|Select__T@[Int]Bool_| (|domain#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) addr@@69)))
 :qid |DiemAccountcvc5bpl.21976:415|
 :skolemid |349|
))) (|$IsValid'address'| _$t0@@9))) (and (and (and (and (and (|$IsValid'vec'u8''| _$t1@@8) (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@29)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@29))
 :qid |DiemAccountcvc5bpl.21985:20|
 :skolemid |350|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@29))
))) (and (forall (($a_0@@30 Int) ) (! (let (($rsc@@30 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@30)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@30))
 :qid |DiemAccountcvc5bpl.21989:20|
 :skolemid |351|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_244413| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@30))
)) (forall (($a_0@@31 Int) ) (! (let (($rsc@@31 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@31)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@31))
 :qid |DiemAccountcvc5bpl.21993:20|
 :skolemid |352|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_244446| $1_Roles_RoleId_$memory) $a_0@@31))
)))) (and (and (forall (($a_0@@32 Int) ) (! (let (($rsc@@32 (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@32)))
(|$IsValid'$1_DiemId_DiemIdDomainManager'| $rsc@@32))
 :qid |DiemAccountcvc5bpl.21997:20|
 :skolemid |353|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_295755| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@32))
)) (forall (($a_0@@33 Int) ) (! (let (($rsc@@33 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $a_0@@33)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@33))
 :qid |DiemAccountcvc5bpl.22001:20|
 :skolemid |354|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_304525| $1_AccountFreezing_FreezingBit_$memory) $a_0@@33))
))) (and (forall (($a_0@@34 Int) ) (! (let (($rsc@@34 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) $a_0@@34)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@34) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@34))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@34))) 1))))
 :qid |DiemAccountcvc5bpl.22005:20|
 :skolemid |355|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_246108| $1_DiemAccount_DiemAccount_$memory) $a_0@@34))
)) (forall (($a_0@@35 Int) ) (! (let (($rsc@@35 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@35)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@35))
 :qid |DiemAccountcvc5bpl.22009:20|
 :skolemid |356|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_243857| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@35))
))))) (and (and (and (forall (($a_0@@36 Int) ) (! (let (($rsc@@36 (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) $a_0@@36)))
(|$IsValid'$1_DiemAccount_DiemWriteSetManager'| $rsc@@36))
 :qid |DiemAccountcvc5bpl.22013:20|
 :skolemid |357|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_243929| $1_DiemAccount_DiemWriteSetManager_$memory) $a_0@@36))
)) (= $t2 173345816)) (and (= $t3@@2 173345816) (= $t4@@1 186537453))) (and (and (= $t5@@4 186537453) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 173345816)) (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 186537453) (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@0 $t2))))) (and (and (and (and (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t2) (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies $t2)) (and (|Select__T@[Int]Bool_| $1_DiemAccount_DiemWriteSetManager_$modifies $t2) (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies $t2))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 $t2) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies@@0 $t2)) (and (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t4@@1) (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies $t4@@1)))) (and (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 $t4@@1) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies@@0 $t4@@1)) (and (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies 173345816) (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@0 186537453))) (and (and (|Select__T@[Int]Bool_| $1_DiemId_DiemIdDomainManager_$modifies $t4@@1) (= _$t0@@9 _$t0@@9)) (and (= _$t1@@8 _$t1@@8) (= $t6@@3  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242386| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))))))) (and (=> (= (ControlFlow 0 530338) 532539) anon58_Then_correct) (=> (= (ControlFlow 0 530338) 530360) anon58_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@23 T@$1_Event_EventHandle) ) (! (let ((stream@@26 (|Select__T@[$1_Event_EventHandle]Multiset_207651_| (|streams#$EventStore| $es) handle@@23)))
 (and (= (|l#Multiset_207651| stream@@26) 0) (forall ((v@@67 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_207651| stream@@26) v@@67) 0)
 :qid |DiemAccountcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountcvc5bpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 528975) 530338)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 851875) 528975) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9)))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
