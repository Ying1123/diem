(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_88552 0)) ((($Memory_88552 (|domain#$Memory_88552| |T@[Int]Bool|) (|contents#$Memory_88552| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_137230 0)) ((($Memory_137230 (|domain#$Memory_137230| |T@[Int]Bool|) (|contents#$Memory_137230| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_132635 0)) ((($Memory_132635 (|domain#$Memory_132635| |T@[Int]Bool|) (|contents#$Memory_132635| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_130638 0)) ((($Memory_130638 (|domain#$Memory_130638| |T@[Int]Bool|) (|contents#$Memory_130638| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_130918 0)) ((($Memory_130918 (|domain#$Memory_130918| |T@[Int]Bool|) (|contents#$Memory_130918| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_130605 0)) ((($Memory_130605 (|domain#$Memory_130605| |T@[Int]Bool|) (|contents#$Memory_130605| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_130390 0)) ((($Memory_130390 (|domain#$Memory_130390| |T@[Int]Bool|) (|contents#$Memory_130390| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_130019 0)) ((($Memory_130019 (|domain#$Memory_130019| |T@[Int]Bool|) (|contents#$Memory_130019| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_HaltAllTransactions 0)) ((($1_DiemTransactionPublishingOption_HaltAllTransactions (|$dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| 0)
(declare-datatypes ((T@$Memory_119761 0)) ((($Memory_119761 (|domain#$Memory_119761| |T@[Int]Bool|) (|contents#$Memory_119761| |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_118426 0)) ((($Memory_118426 (|domain#$Memory_118426| |T@[Int]Bool|) (|contents#$Memory_118426| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_118362 0)) ((($Memory_118362 (|domain#$Memory_118362| |T@[Int]Bool|) (|contents#$Memory_118362| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_131561 0)) ((($Memory_131561 (|domain#$Memory_131561| |T@[Int]Bool|) (|contents#$Memory_131561| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_116843 0)) ((($Memory_116843 (|domain#$Memory_116843| |T@[Int]Bool|) (|contents#$Memory_116843| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_116333 0)) ((($Memory_116333 (|domain#$Memory_116333| |T@[Int]Bool|) (|contents#$Memory_116333| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113184 0)) ((($Memory_113184 (|domain#$Memory_113184| |T@[Int]Bool|) (|contents#$Memory_113184| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112965 0)) ((($Memory_112965 (|domain#$Memory_112965| |T@[Int]Bool|) (|contents#$Memory_112965| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_132424 0)) ((($Memory_132424 (|domain#$Memory_132424| |T@[Int]Bool|) (|contents#$Memory_132424| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105856 0)) ((($Memory_105856 (|domain#$Memory_105856| |T@[Int]Bool|) (|contents#$Memory_105856| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_105769 0)) ((($Memory_105769 (|domain#$Memory_105769| |T@[Int]Bool|) (|contents#$Memory_105769| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_102566 0)) ((($Memory_102566 (|domain#$Memory_102566| |T@[Int]Bool|) (|contents#$Memory_102566| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_102479 0)) ((($Memory_102479 (|domain#$Memory_102479| |T@[Int]Bool|) (|contents#$Memory_102479| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_106120 0)) ((($Memory_106120 (|domain#$Memory_106120| |T@[Int]Bool|) (|contents#$Memory_106120| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_115025 0)) ((($Memory_115025 (|domain#$Memory_115025| |T@[Int]Bool|) (|contents#$Memory_115025| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_106446 0)) ((($Memory_106446 (|domain#$Memory_106446| |T@[Int]Bool|) (|contents#$Memory_106446| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106029 0)) ((($Memory_106029 (|domain#$Memory_106029| |T@[Int]Bool|) (|contents#$Memory_106029| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_117268 0)) ((($Memory_117268 (|domain#$Memory_117268| |T@[Int]Bool|) (|contents#$Memory_117268| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106347 0)) ((($Memory_106347 (|domain#$Memory_106347| |T@[Int]Bool|) (|contents#$Memory_106347| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_99717 0)) ((($Memory_99717 (|domain#$Memory_99717| |T@[Int]Bool|) (|contents#$Memory_99717| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_99630 0)) ((($Memory_99630 (|domain#$Memory_99630| |T@[Int]Bool|) (|contents#$Memory_99630| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_99543 0)) ((($Memory_99543 (|domain#$Memory_99543| |T@[Int]Bool|) (|contents#$Memory_99543| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_135921 0)) ((($Memory_135921 (|domain#$Memory_135921| |T@[Int]Bool|) (|contents#$Memory_135921| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_99456 0)) ((($Memory_99456 (|domain#$Memory_99456| |T@[Int]Bool|) (|contents#$Memory_99456| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_99369 0)) ((($Memory_99369 (|domain#$Memory_99369| |T@[Int]Bool|) (|contents#$Memory_99369| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_98524 0)) ((($Memory_98524 (|domain#$Memory_98524| |T@[Int]Bool|) (|contents#$Memory_98524| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_98591 0)) ((($Memory_98591 (|domain#$Memory_98591| |T@[Int]Bool|) (|contents#$Memory_98591| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_98442 0)) ((($Memory_98442 (|domain#$Memory_98442| |T@[Int]Bool|) (|contents#$Memory_98442| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_98360 0)) ((($Memory_98360 (|domain#$Memory_98360| |T@[Int]Bool|) (|contents#$Memory_98360| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_98278 0)) ((($Memory_98278 (|domain#$Memory_98278| |T@[Int]Bool|) (|contents#$Memory_98278| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96866 0)) ((($Memory_96866 (|domain#$Memory_96866| |T@[Int]Bool|) (|contents#$Memory_96866| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_98143 0)) ((($Memory_98143 (|domain#$Memory_98143| |T@[Int]Bool|) (|contents#$Memory_98143| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_102177 0)) ((($Memory_102177 (|domain#$Memory_102177| |T@[Int]Bool|) (|contents#$Memory_102177| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_102112 0)) ((($Memory_102112 (|domain#$Memory_102112| |T@[Int]Bool|) (|contents#$Memory_102112| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_97368 0)) ((($Memory_97368 (|domain#$Memory_97368| |T@[Int]Bool|) (|contents#$Memory_97368| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_97335 0)) ((($Memory_97335 (|domain#$Memory_97335| |T@[Int]Bool|) (|contents#$Memory_97335| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_95420 0)) ((($Memory_95420 (|domain#$Memory_95420| |T@[Int]Bool|) (|contents#$Memory_95420| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_66487 0)) (((Multiset_66487 (|v#Multiset_66487| |T@[$EventRep]Int|) (|l#Multiset_66487| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_66487| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_66487|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_133462 0)) ((($Mutation_133462 (|l#$Mutation_133462| T@$Location) (|p#$Mutation_133462| (Seq Int)) (|v#$Mutation_133462| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_133418 0)) ((($Mutation_133418 (|l#$Mutation_133418| T@$Location) (|p#$Mutation_133418| (Seq Int)) (|v#$Mutation_133418| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_125489 0)) ((($Mutation_125489 (|l#$Mutation_125489| T@$Location) (|p#$Mutation_125489| (Seq Int)) (|v#$Mutation_125489| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-datatypes ((T@$Mutation_31098 0)) ((($Mutation_31098 (|l#$Mutation_31098| T@$Location) (|p#$Mutation_31098| (Seq Int)) (|v#$Mutation_31098| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_111682 0)) ((($Mutation_111682 (|l#$Mutation_111682| T@$Location) (|p#$Mutation_111682| (Seq Int)) (|v#$Mutation_111682| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_100855 0)) ((($Mutation_100855 (|l#$Mutation_100855| T@$Location) (|p#$Mutation_100855| (Seq Int)) (|v#$Mutation_100855| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_95894 0)) ((($Mutation_95894 (|l#$Mutation_95894| T@$Location) (|p#$Mutation_95894| (Seq Int)) (|v#$Mutation_95894| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_89180 0)) ((($Mutation_89180 (|l#$Mutation_89180| T@$Location) (|p#$Mutation_89180| (Seq Int)) (|v#$Mutation_89180| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_84548 0)) ((($Mutation_84548 (|l#$Mutation_84548| T@$Location) (|p#$Mutation_84548| (Seq Int)) (|v#$Mutation_84548| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_83802 0)) ((($Mutation_83802 (|l#$Mutation_83802| T@$Location) (|p#$Mutation_83802| (Seq Int)) (|v#$Mutation_83802| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_82362 0)) ((($Mutation_82362 (|l#$Mutation_82362| T@$Location) (|p#$Mutation_82362| (Seq Int)) (|v#$Mutation_82362| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_81616 0)) ((($Mutation_81616 (|l#$Mutation_81616| T@$Location) (|p#$Mutation_81616| (Seq Int)) (|v#$Mutation_81616| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_80176 0)) ((($Mutation_80176 (|l#$Mutation_80176| T@$Location) (|p#$Mutation_80176| (Seq Int)) (|v#$Mutation_80176| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_79430 0)) ((($Mutation_79430 (|l#$Mutation_79430| T@$Location) (|p#$Mutation_79430| (Seq Int)) (|v#$Mutation_79430| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_77990 0)) ((($Mutation_77990 (|l#$Mutation_77990| T@$Location) (|p#$Mutation_77990| (Seq Int)) (|v#$Mutation_77990| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_77244 0)) ((($Mutation_77244 (|l#$Mutation_77244| T@$Location) (|p#$Mutation_77244| (Seq Int)) (|v#$Mutation_77244| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_75804 0)) ((($Mutation_75804 (|l#$Mutation_75804| T@$Location) (|p#$Mutation_75804| (Seq Int)) (|v#$Mutation_75804| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_75058 0)) ((($Mutation_75058 (|l#$Mutation_75058| T@$Location) (|p#$Mutation_75058| (Seq Int)) (|v#$Mutation_75058| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_73618 0)) ((($Mutation_73618 (|l#$Mutation_73618| T@$Location) (|p#$Mutation_73618| (Seq Int)) (|v#$Mutation_73618| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_72872 0)) ((($Mutation_72872 (|l#$Mutation_72872| T@$Location) (|p#$Mutation_72872| (Seq Int)) (|v#$Mutation_72872| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_71432 0)) ((($Mutation_71432 (|l#$Mutation_71432| T@$Location) (|p#$Mutation_71432| (Seq Int)) (|v#$Mutation_71432| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_70686 0)) ((($Mutation_70686 (|l#$Mutation_70686| T@$Location) (|p#$Mutation_70686| (Seq Int)) (|v#$Mutation_70686| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_69208 0)) ((($Mutation_69208 (|l#$Mutation_69208| T@$Location) (|p#$Mutation_69208| (Seq Int)) (|v#$Mutation_69208| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_68462 0)) ((($Mutation_68462 (|l#$Mutation_68462| T@$Location) (|p#$Mutation_68462| (Seq Int)) (|v#$Mutation_68462| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| ((Seq T@$1_DiemSystem_ValidatorInfo)) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| ((Seq T@$1_DiemSystem_ValidatorInfo) T@$1_DiemSystem_ValidatorInfo) Int)
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
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_66487_| (|T@[$1_Event_EventHandle]Multiset_66487| T@$1_Event_EventHandle) T@Multiset_66487)
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
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| (|T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| (|T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| (T@$1_DiemTransactionPublishingOption_HaltAllTransactions) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomain'| (T@$1_DiemId_DiemIdDomain) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainEvent'| (T@$1_DiemId_DiemIdDomainEvent) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainManager'| (T@$1_DiemId_DiemIdDomainManager) Bool)
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
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_12182 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_60515 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_60121 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_59924 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_60318 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_59333 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_59530 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_59727 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_59136 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_66487| |T@[$1_Event_EventHandle]Multiset_66487|) |T@[$1_Event_EventHandle]Multiset_66487|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemTransactionPublishingOptionandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemTransactionPublishingOptionandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemTransactionPublishingOptionandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemTransactionPublishingOptionandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemTransactionPublishingOptionandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemTransactionPublishingOptionandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemTransactionPublishingOptionandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemTransactionPublishingOptionandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemTransactionPublishingOptionandybpl.590:13|
 :skolemid |15|
))))
 :qid |DiemTransactionPublishingOptionandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemTransactionPublishingOptionandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemTransactionPublishingOptionandybpl.603:17|
 :skolemid |18|
)))))
 :qid |DiemTransactionPublishingOptionandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemTransactionPublishingOptionandybpl.770:13|
 :skolemid |20|
))))
 :qid |DiemTransactionPublishingOptionandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemTransactionPublishingOptionandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemTransactionPublishingOptionandybpl.783:17|
 :skolemid |23|
)))))
 :qid |DiemTransactionPublishingOptionandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemTransactionPublishingOptionandybpl.950:13|
 :skolemid |25|
))))
 :qid |DiemTransactionPublishingOptionandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemTransactionPublishingOptionandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemTransactionPublishingOptionandybpl.963:17|
 :skolemid |28|
)))))
 :qid |DiemTransactionPublishingOptionandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemTransactionPublishingOptionandybpl.1130:13|
 :skolemid |30|
))))
 :qid |DiemTransactionPublishingOptionandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemTransactionPublishingOptionandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemTransactionPublishingOptionandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |DiemTransactionPublishingOptionandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |DiemTransactionPublishingOptionandybpl.1310:13|
 :skolemid |35|
))))
 :qid |DiemTransactionPublishingOptionandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemTransactionPublishingOptionandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemTransactionPublishingOptionandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DiemTransactionPublishingOptionandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |DiemTransactionPublishingOptionandybpl.1490:13|
 :skolemid |40|
))))
 :qid |DiemTransactionPublishingOptionandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemTransactionPublishingOptionandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemTransactionPublishingOptionandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DiemTransactionPublishingOptionandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |DiemTransactionPublishingOptionandybpl.1670:13|
 :skolemid |45|
))))
 :qid |DiemTransactionPublishingOptionandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemTransactionPublishingOptionandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemTransactionPublishingOptionandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DiemTransactionPublishingOptionandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |DiemTransactionPublishingOptionandybpl.1850:13|
 :skolemid |50|
))))
 :qid |DiemTransactionPublishingOptionandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemTransactionPublishingOptionandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemTransactionPublishingOptionandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DiemTransactionPublishingOptionandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |DiemTransactionPublishingOptionandybpl.2030:13|
 :skolemid |55|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemTransactionPublishingOptionandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemTransactionPublishingOptionandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DiemTransactionPublishingOptionandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |DiemTransactionPublishingOptionandybpl.2210:13|
 :skolemid |60|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemTransactionPublishingOptionandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemTransactionPublishingOptionandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DiemTransactionPublishingOptionandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemTransactionPublishingOptionandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemTransactionPublishingOptionandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemTransactionPublishingOptionandybpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemTransactionPublishingOptionandybpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_66487| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66487| stream) v@@24) 0)
 :qid |DiemTransactionPublishingOptionandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemTransactionPublishingOptionandybpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemTransactionPublishingOptionandybpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemTransactionPublishingOptionandybpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemTransactionPublishingOptionandybpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemTransactionPublishingOptionandybpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemTransactionPublishingOptionandybpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemTransactionPublishingOptionandybpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemTransactionPublishingOptionandybpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemTransactionPublishingOptionandybpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemTransactionPublishingOptionandybpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemTransactionPublishingOptionandybpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemTransactionPublishingOptionandybpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemTransactionPublishingOptionandybpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemTransactionPublishingOptionandybpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemTransactionPublishingOptionandybpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemTransactionPublishingOptionandybpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemTransactionPublishingOptionandybpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemTransactionPublishingOptionandybpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |DiemTransactionPublishingOptionandybpl.3083:70|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |DiemTransactionPublishingOptionandybpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |DiemTransactionPublishingOptionandybpl.3139:60|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |DiemTransactionPublishingOptionandybpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |DiemTransactionPublishingOptionandybpl.3195:66|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |DiemTransactionPublishingOptionandybpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |DiemTransactionPublishingOptionandybpl.3251:60|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |DiemTransactionPublishingOptionandybpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |DiemTransactionPublishingOptionandybpl.3307:63|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |DiemTransactionPublishingOptionandybpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |DiemTransactionPublishingOptionandybpl.3363:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |DiemTransactionPublishingOptionandybpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |DiemTransactionPublishingOptionandybpl.3419:82|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |DiemTransactionPublishingOptionandybpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |DiemTransactionPublishingOptionandybpl.3475:88|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |DiemTransactionPublishingOptionandybpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemTransactionPublishingOptionandybpl.3684:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |DiemTransactionPublishingOptionandybpl.4207:49|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemTransactionPublishingOptionandybpl.4267:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |DiemTransactionPublishingOptionandybpl.4467:49|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |DiemTransactionPublishingOptionandybpl.4560:91|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |DiemTransactionPublishingOptionandybpl.4574:113|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |DiemTransactionPublishingOptionandybpl.4588:71|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |DiemTransactionPublishingOptionandybpl.4602:75|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |DiemTransactionPublishingOptionandybpl.4616:73|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |DiemTransactionPublishingOptionandybpl.4636:48|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |DiemTransactionPublishingOptionandybpl.4652:57|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |DiemTransactionPublishingOptionandybpl.4666:103|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |DiemTransactionPublishingOptionandybpl.4680:125|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |DiemTransactionPublishingOptionandybpl.4694:83|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |DiemTransactionPublishingOptionandybpl.4708:87|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |DiemTransactionPublishingOptionandybpl.4722:85|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |DiemTransactionPublishingOptionandybpl.4736:48|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |DiemTransactionPublishingOptionandybpl.4749:65|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |DiemTransactionPublishingOptionandybpl.5253:45|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |DiemTransactionPublishingOptionandybpl.5266:45|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |DiemTransactionPublishingOptionandybpl.5279:55|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |DiemTransactionPublishingOptionandybpl.5293:55|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |DiemTransactionPublishingOptionandybpl.5313:38|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |DiemTransactionPublishingOptionandybpl.5334:44|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |DiemTransactionPublishingOptionandybpl.5385:53|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |DiemTransactionPublishingOptionandybpl.5447:53|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25) true)
 :qid |DiemTransactionPublishingOptionandybpl.5473:55|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26) true)
 :qid |DiemTransactionPublishingOptionandybpl.5487:55|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@27)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@27))))
 :qid |DiemTransactionPublishingOptionandybpl.5504:38|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@28)))
 :qid |DiemTransactionPublishingOptionandybpl.5518:48|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@29)))
 :qid |DiemTransactionPublishingOptionandybpl.5532:48|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@30))))
 :qid |DiemTransactionPublishingOptionandybpl.5552:41|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@31)))
 :qid |DiemTransactionPublishingOptionandybpl.5567:53|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@32)))
 :qid |DiemTransactionPublishingOptionandybpl.5581:53|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33))))
 :qid |DiemTransactionPublishingOptionandybpl.5598:60|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34))))
 :qid |DiemTransactionPublishingOptionandybpl.5615:60|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |DiemTransactionPublishingOptionandybpl.5632:57|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36) true)
 :qid |DiemTransactionPublishingOptionandybpl.7843:68|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))))
 :qid |DiemTransactionPublishingOptionandybpl.7865:66|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))))
 :qid |DiemTransactionPublishingOptionandybpl.7891:66|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@39) true)
 :qid |DiemTransactionPublishingOptionandybpl.8224:31|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@39))
)))
(assert (forall ((s@@40 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@40) true)
 :qid |DiemTransactionPublishingOptionandybpl.8568:31|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@41)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@41)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@41))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@41))))
 :qid |DiemTransactionPublishingOptionandybpl.8587:35|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@41))
)))
(assert (forall ((s@@42 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@42)))
 :qid |DiemTransactionPublishingOptionandybpl.9013:71|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@43) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@43)))
 :qid |DiemTransactionPublishingOptionandybpl.9062:46|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@44)))
 :qid |DiemTransactionPublishingOptionandybpl.9075:64|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@45)))
 :qid |DiemTransactionPublishingOptionandybpl.9088:75|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@46)))
 :qid |DiemTransactionPublishingOptionandybpl.9101:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46))
)))
(assert (forall ((s@@47 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@47)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@47)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@47))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@47))))
 :qid |DiemTransactionPublishingOptionandybpl.9130:46|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@48)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@48))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@48))))
 :qid |DiemTransactionPublishingOptionandybpl.9151:55|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |DiemTransactionPublishingOptionandybpl.9180:65|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |DiemTransactionPublishingOptionandybpl.9579:60|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |DiemTransactionPublishingOptionandybpl.9596:66|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |DiemTransactionPublishingOptionandybpl.9625:50|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |DiemTransactionPublishingOptionandybpl.9644:45|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |DiemTransactionPublishingOptionandybpl.9973:87|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemTransactionPublishingOption_HaltAllTransactions) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@55) true)
 :qid |DiemTransactionPublishingOptionandybpl.9987:75|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@56) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@56)))
 :qid |DiemTransactionPublishingOptionandybpl.12232:43|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@57)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@57))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@57))))
 :qid |DiemTransactionPublishingOptionandybpl.12251:48|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@58)))
 :qid |DiemTransactionPublishingOptionandybpl.12266:50|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@59) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@59)))
 :qid |DiemTransactionPublishingOptionandybpl.12280:47|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@60)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@60)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@60))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@60))))
 :qid |DiemTransactionPublishingOptionandybpl.12300:58|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@61) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@61)))
 :qid |DiemTransactionPublishingOptionandybpl.12315:39|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@62)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@62)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@62))))
 :qid |DiemTransactionPublishingOptionandybpl.12337:58|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@63)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@63)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@63))))
 :qid |DiemTransactionPublishingOptionandybpl.12354:58|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@64) true)
 :qid |DiemTransactionPublishingOptionandybpl.12369:51|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@65)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@65)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@65))))
 :qid |DiemTransactionPublishingOptionandybpl.12386:60|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@66)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@66)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@66))))
 :qid |DiemTransactionPublishingOptionandybpl.12684:47|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@67)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@67)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@67))))
 :qid |DiemTransactionPublishingOptionandybpl.12706:63|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@68) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@68)))
 :qid |DiemTransactionPublishingOptionandybpl.12721:57|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@69)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@69))))
 :qid |DiemTransactionPublishingOptionandybpl.12737:54|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@70)))
 :qid |DiemTransactionPublishingOptionandybpl.12751:55|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@71)))
 :qid |DiemTransactionPublishingOptionandybpl.12765:57|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@72))))
 :qid |DiemTransactionPublishingOptionandybpl.12787:56|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@73)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@73))))
 :qid |DiemTransactionPublishingOptionandybpl.12812:52|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@74)))
 :qid |DiemTransactionPublishingOptionandybpl.12828:54|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@75)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@75)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@75))))
 :qid |DiemTransactionPublishingOptionandybpl.13699:45|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@76) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@76)))
 :qid |DiemTransactionPublishingOptionandybpl.13713:51|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@77)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@77)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@77))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@77))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@77))))
 :qid |DiemTransactionPublishingOptionandybpl.13736:48|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@78))))
 :qid |DiemTransactionPublishingOptionandybpl.14050:47|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@79)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@79))))
 :qid |DiemTransactionPublishingOptionandybpl.14074:47|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@80)))
 :qid |DiemTransactionPublishingOptionandybpl.14329:49|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@81)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@81))))
 :qid |DiemTransactionPublishingOptionandybpl.14372:49|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@82)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@82))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@82))))
 :qid |DiemTransactionPublishingOptionandybpl.14401:48|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@83)))
 :qid |DiemTransactionPublishingOptionandybpl.14696:47|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |DiemTransactionPublishingOptionandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |DiemTransactionPublishingOptionandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_60515 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |DiemTransactionPublishingOptionandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |DiemTransactionPublishingOptionandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60515 v@@26))
)))
(assert (forall ((v@@27 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_60121 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |DiemTransactionPublishingOptionandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |DiemTransactionPublishingOptionandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60121 v@@27))
)))
(assert (forall ((v@@28 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_59924 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |DiemTransactionPublishingOptionandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |DiemTransactionPublishingOptionandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59924 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@4 (ReverseVec_60318 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |DiemTransactionPublishingOptionandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |DiemTransactionPublishingOptionandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60318 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@5 (ReverseVec_59333 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |DiemTransactionPublishingOptionandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |DiemTransactionPublishingOptionandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59333 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@6 (ReverseVec_59530 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |DiemTransactionPublishingOptionandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |DiemTransactionPublishingOptionandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59530 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@7 (ReverseVec_59727 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |DiemTransactionPublishingOptionandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |DiemTransactionPublishingOptionandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59727 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_59136 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |DiemTransactionPublishingOptionandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |DiemTransactionPublishingOptionandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59136 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |DiemTransactionPublishingOptionandybpl.245:54|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_66487|) (|l#1| |T@[$1_Event_EventHandle]Multiset_66487|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_66487| (|Select__T@[$1_Event_EventHandle]Multiset_66487_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_66487| (|Select__T@[$1_Event_EventHandle]Multiset_66487_| |l#1| handle@@0))))
(Multiset_66487 (|lambda#3| (|v#Multiset_66487| (|Select__T@[$1_Event_EventHandle]Multiset_66487_| |l#0@@0| handle@@0)) (|v#Multiset_66487| (|Select__T@[$1_Event_EventHandle]Multiset_66487_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemTransactionPublishingOptionandybpl.2548:13|
 :skolemid |272|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |DiemTransactionPublishingOptionandybpl.124:29|
 :skolemid |273|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_95894)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_95894)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_95420)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_96866)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_95420)
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
(declare-fun $t14 () T@$Mutation_95894)
(declare-fun $t14@0 () T@$Mutation_95894)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_95894)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 207786) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12329 (|l#$Mutation_95894| $t14@1) (seq.++ (|p#$Mutation_95894| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_95894| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2)) (= $t14@2 ($Mutation_95894 (|l#$Mutation_95894| $t14@1) (|p#$Mutation_95894| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_95420 (|Store__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_95894| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_95894| $t14@2)) (|v#$Mutation_95894| $t14@2)))))) (and (=> (= (ControlFlow 0 152008) (- 0 208490)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 152008) (- 0 208515)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 152008) (- 0 208525)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 152008) (- 0 208539)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 152008) (- 0 208563)) (= $t25 _$t2)))))))))))))))
(let ((anon31_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 152066) 152008)) L5_correct)))
(let ((anon32_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 151866) 152008)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 151862) (- 0 208613)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 151862) (- 0 208650)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon31_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 152062) 151862))) L8_correct)))
(let ((anon30_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 152046) 152066) anon31_Then_correct) (=> (= (ControlFlow 0 152046) 152062) anon31_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 151746) 151862))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 151730) 151866) anon32_Then_correct) (=> (= (ControlFlow 0 151730) 151746) anon32_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 151694) 151730)) anon30_Else$1_correct)))
(let ((anon30_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 151700) 151694)) inline$$Lt$0$anon0_correct)))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= $t17@0 (= _$t1 0))) (and (=> (= (ControlFlow 0 151648) 152046) anon30_Then_correct) (=> (= (ControlFlow 0 151648) 151700) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 152080) 151862))) L8_correct)))
(let ((inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 0) (= 0 0)) (and (=> (= (ControlFlow 0 151628) 152080) anon29_Then_correct) (=> (= (ControlFlow 0 151628) 151648) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_95894| $t14@1))) (=> (and (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|) (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_95894| $t14@1)))) (and (= $t15@0 $t15@0) (= (ControlFlow 0 151634) 151628))) inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 152094) 151862))) L8_correct)))
(let ((anon27_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 152146) 152094) anon28_Then_correct) (=> (= (ControlFlow 0 152146) 151634) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 152144) 152146)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_95894 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 151531) 152094) anon28_Then_correct) (=> (= (ControlFlow 0 151531) 151634) anon28_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 151509) (- 0 208131)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 151509) 152144) anon27_Then_correct) (=> (= (ControlFlow 0 151509) 151531) anon27_Else_correct)))))))
(let ((anon25_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 152190) 151862))) L8_correct))))
(let ((anon24_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 152216) 151862))) L8_correct))))
(let ((anon26_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 151489) 152160) anon26_Then_correct) (=> (= (ControlFlow 0 151489) 151509) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not $t12) (= (ControlFlow 0 151495) 151489)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct)))
(let ((anon24_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 151418) 152190) anon25_Then_correct) (=> (= (ControlFlow 0 151418) 151495) anon25_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemTransactionPublishingOptionandybpl.3872:20|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 151396) 152216) anon24_Then_correct) (=> (= (ControlFlow 0 151396) 151418) anon24_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_66487| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66487| stream@@0) v@@35) 0)
 :qid |DiemTransactionPublishingOptionandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 151284) 151396)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_95894| $t3)) 0) (= (seq.len (|p#$Mutation_95894| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 151294) 151284))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 207786) 151294) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_97368)
(declare-fun $t3@@0 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0@@0 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_99456)
(declare-fun $t4 () Int)
(declare-fun $t6 () Int)
(declare-fun $t11@@0 () Bool)
(declare-fun $t10@@0 () Int)
(declare-fun $t8 () Bool)
(declare-fun $t7 () Int)
(declare-fun $t5 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2| () T@$Memory_99456)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2| () T@$Memory_96866)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun $t9@0 () T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_98591)
(declare-fun _$t1@@0 () (Seq (Seq Int)))
(declare-fun _$t2@@0 () Bool)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1| () T@$Memory_99456)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0| () T@$Memory_99456)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''@0| () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1| () T@$Memory_96866)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0| () T@$Memory_96866)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(push 1)
(set-info :boogie-vc-id $1_DiemTransactionPublishingOption_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 208892) (let ((L2_correct  (and (=> (= (ControlFlow 0 153311) (- 0 209811)) (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@0)) 0))) (not (= _$t0@@0 173345816))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t4)) 0))) (not (= _$t0@@0 173345816)))) (=> (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@0)) 0))) (not (= _$t0@@0 173345816))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t4)) 0))) (not (= _$t0@@0 173345816))) (=> (= (ControlFlow 0 153311) (- 0 209899)) (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@0)) (= 5 $t6)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@0)) 0)) (= 3 $t6))) (and (not (= _$t0@@0 173345816)) (= 2 $t6))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t6))) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t4)) (= 5 $t6))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t4)) 0)) (= 3 $t6))) (and (not (= _$t0@@0 173345816)) (= 2 $t6))))))))
(let ((anon16_Then_correct  (=> (and (and $t11@@0 (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t10@@0)) (= 5 $t6))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t10@@0)) 0)) (= 3 $t6))) (and (not (= _$t0@@0 173345816)) (= 2 $t6)))) (and (= $t6 $t6) (= (ControlFlow 0 153051) 153311))) L2_correct)))
(let ((anon15_Then_correct  (=> (and (and $t8 (or (or (or (and (not (= _$t0@@0 173345816)) (= 2 $t6)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t7)) (= 5 $t6))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t7)) 0)) (= 3 $t6))) (and (not (= _$t0@@0 173345816)) (= 2 $t6)))) (and (= $t6 $t6) (= (ControlFlow 0 153403) 153311))) L2_correct)))
(let ((anon14_Then_correct  (=> $t5 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t6)) (and (= $t6 $t6) (= (ControlFlow 0 153429) 153311))) L2_correct))))
(let ((anon12_correct  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) _$t0@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) 173345816)) (and (= (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) addr))) $t9@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (=> (= (ControlFlow 0 152939) (- 0 209635)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@0))) (and (=> (= (ControlFlow 0 152939) (- 0 209647)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@0)) 0))) (and (=> (= (ControlFlow 0 152939) (- 0 209665)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 152939) (- 0 209679)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 152939) (- 0 209689)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 152939) (- 0 209697)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@0)) (and (=> (= (ControlFlow 0 152939) (- 0 209708)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t4))) (and (=> (= (ControlFlow 0 152939) (- 0 209720)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t4)) 0))) (and (=> (= (ControlFlow 0 152939) (- 0 209738)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 152939) (- 0 209752)) (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) _$t0@@0) (and (=> (= (ControlFlow 0 152939) (- 0 209761)) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 152939) (- 0 209767)) (= (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) addr@@0))) ($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption _$t1@@0 _$t2@@0))) (=> (= (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) addr@@0))) ($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption _$t1@@0 _$t2@@0)) (and (=> (= (ControlFlow 0 152939) (- 0 209779)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (= (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (= (ControlFlow 0 152939) (- 0 209791)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) 173345816) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))))))))))))))))))))))))))))))))
(let ((anon18_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1| ($Memory_99456 (|Store__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 false) (|contents#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|)))) (and (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1|) (= (ControlFlow 0 152723) 152939))) anon12_correct)))
(let ((anon18_Then_correct  (=> (and (and |$temp_0'bool'@1| (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0| ($Memory_99456 (|Store__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 |$temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''@0|)))) (and (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0|) (= (ControlFlow 0 152951) 152939))) anon12_correct)))
(let ((anon17_Else_correct  (=> (not |$temp_0'bool'@0|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1| ($Memory_96866 (|Store__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 false) (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1|)) (and (=> (= (ControlFlow 0 152709) 152951) anon18_Then_correct) (=> (= (ControlFlow 0 152709) 152723) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> |$temp_0'bool'@0| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0| ($Memory_96866 (|Store__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''@0|))) (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0|)) (and (=> (= (ControlFlow 0 152963) 152951) anon18_Then_correct) (=> (= (ControlFlow 0 152963) 152723) anon18_Else_correct))))))
(let ((anon16_Else_correct  (=> (not $t11@@0) (and (=> (= (ControlFlow 0 152697) 152963) anon17_Then_correct) (=> (= (ControlFlow 0 152697) 152709) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (and (not $t8) (= $t9@0 ($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption _$t1@@0 _$t2@@0))) (and (= $t10@@0 _$t0@@0) (= $t11@@0  (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t10@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t10@@0)) 0))) (not (= _$t0@@0 173345816)))))) (and (=> (= (ControlFlow 0 152689) 153051) anon16_Then_correct) (=> (= (ControlFlow 0 152689) 152697) anon16_Else_correct)))))
(let ((anon14_Else_correct  (=> (not $t5) (=> (and (= $t7 _$t0@@0) (= $t8  (or (or (or (not (= _$t0@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t7)) 0))) (not (= _$t0@@0 173345816))))) (and (=> (= (ControlFlow 0 152605) 153403) anon15_Then_correct) (=> (= (ControlFlow 0 152605) 152689) anon15_Else_correct))))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (and (and (|$IsValid'address'| _$t0@@0) (|$IsValid'vec'vec'u8'''| _$t1@@0)) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |DiemTransactionPublishingOptionandybpl.10251:20|
 :skolemid |163|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |DiemTransactionPublishingOptionandybpl.10255:20|
 :skolemid |164|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@1))
)))) (=> (and (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@2)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $rsc@@2))
 :qid |DiemTransactionPublishingOptionandybpl.10259:20|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $rsc@@3))
 :qid |DiemTransactionPublishingOptionandybpl.10263:20|
 :skolemid |166|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@3))
))) (and (= $t3@@0 _$t0@@0) (= $t4 _$t0@@0))) (and (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0)) (and (= _$t2@@0 _$t2@@0) (= $t5  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 152533) 153429) anon14_Then_correct) (=> (= (ControlFlow 0 152533) 152605) anon14_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_66487| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66487| stream@@1) v@@36) 0)
 :qid |DiemTransactionPublishingOptionandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 152327) 152533)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 208892) 152327) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory () T@$Memory_119761)
(declare-fun _$t0@@1 () Int)
(declare-fun $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory@0 () T@$Memory_119761)
(declare-fun |Store__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| Int T@$1_DiemTransactionPublishingOption_HaltAllTransactions) |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|)
(declare-fun |Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| Int) T@$1_DiemTransactionPublishingOption_HaltAllTransactions)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ( ?x1 Int) ( ?x2 T@$1_DiemTransactionPublishingOption_HaltAllTransactions)) (! (= (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|Store__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTransactionPublishingOption_HaltAllTransactions)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|Store__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| ?x0 ?y1))) :weight 0)))
(declare-fun $t12@0 () T@$1_DiemTransactionPublishingOption_HaltAllTransactions)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t10@@1 () Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t4@@0 () Bool)
(declare-fun $t6@@0 () Int)
(declare-fun $t3@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemTransactionPublishingOption_halt_all_transactions$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 210057) (let ((anon15_Else_correct@@0  (=> (and (and (not $abort_flag@0@@0) (= (ControlFlow 0 153926) (- 0 210523))) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))))
(let ((anon15_Then_correct@@0 true))
(let ((anon14_Then$1_correct  (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 153990) 153940) anon15_Then_correct@@0) (=> (= (ControlFlow 0 153990) 153926) anon15_Else_correct@@0)))))
(let ((anon14_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) _$t0@@1) (= (ControlFlow 0 153988) 153990)) anon14_Then$1_correct)))
(let ((anon14_Else_correct@@0  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) _$t0@@1)) (= $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory@0 ($Memory_119761 (|Store__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) _$t0@@1 true) (|Store__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|contents#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) _$t0@@1 $t12@0)))) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 153894) 153940) anon15_Then_correct@@0) (=> (= (ControlFlow 0 153894) 153926) anon15_Else_correct@@0)))))
(let ((anon13_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t12@0 ($1_DiemTransactionPublishingOption_HaltAllTransactions false))) (and (=> (= (ControlFlow 0 153876) 153988) anon14_Then_correct@@0) (=> (= (ControlFlow 0 153876) 153894) anon14_Else_correct@@0)))))
(let ((anon13_Else_correct true))
(let ((anon12_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t10@@1) (= $t10@@1 6)) (and (= $t10@@1 $t10@@1) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 153840) 153876) anon13_Then_correct) (=> (= (ControlFlow 0 153840) 153856) anon13_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t7@0)) (= (ControlFlow 0 153800) 153840)) anon12_Else$1_correct)))
(let ((anon12_Else_correct  (=> (not $t4@@0) (=> (and (and (|$IsValid'address'| $t6@@0) (= $t6@@0 _$t0@@1)) (and (= $t7@0 (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $t6@@0)) (= (ControlFlow 0 153806) 153800))) inline$$Not$0$anon0_correct))))
(let ((anon12_Then_correct true))
(let ((anon0$1_correct@@1  (=> (and (|$IsValid'address'| _$t0@@1) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |DiemTransactionPublishingOptionandybpl.10564:20|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@4))
))) (=> (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|contents#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $a_0@@5)))
(|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| $rsc@@5))
 :qid |DiemTransactionPublishingOptionandybpl.10568:20|
 :skolemid |168|
 :pattern ( (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|contents#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $a_0@@5))
)) (= _$t0@@1 _$t0@@1)) (and (= $t3@@1 _$t0@@1) (= $t4@@0  (or (or (or (not (= _$t0@@1 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@1)) 0))) (not (= _$t0@@1 173345816)))))) (and (=> (= (ControlFlow 0 153744) 154082) anon12_Then_correct) (=> (= (ControlFlow 0 153744) 153806) anon12_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_66487| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66487| stream@@2) v@@37) 0)
 :qid |DiemTransactionPublishingOptionandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 153608) 153744)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 210057) 153608) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t5@0 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $t4@@1 () Bool)
(declare-fun $t5@@0 () Int)
(declare-fun $t2@0 () Bool)
(declare-fun inline$$1_Roles_has_diem_root_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_diem_root_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1 () Bool)
(declare-fun _$t0@@2 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t3@@2 () T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption)
(push 1)
(set-info :boogie-vc-id $1_DiemTransactionPublishingOption_is_module_allowed$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 210550) (let ((L5_correct@@0  (and (=> (= (ControlFlow 0 155074) (- 0 211279)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (= (ControlFlow 0 155074) (- 0 211286)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t5@0)))))))
(let ((anon10_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@3 $abort_code@3)) (and (= $t5@0 $abort_code@3) (= (ControlFlow 0 155042) 155074))) L5_correct@@0)))
(let ((anon8_Then_correct  (=> $t4@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t5@@0)) (= $t5@@0 $t5@@0)) (and (= $t5@0 $t5@@0) (= (ControlFlow 0 155120) 155074))) L5_correct@@0))))
(let ((L3_correct  (=> (= $t2@0 $t2@0) (and (=> (= (ControlFlow 0 155028) (- 0 211234)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (= (ControlFlow 0 155028) (- 0 211246)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))))))))
(let ((anon10_Else_correct  (=> (and (and (not $abort_flag@3) (= inline$$1_Roles_has_diem_root_role$0$$ret0@1 inline$$1_Roles_has_diem_root_role$0$$ret0@1)) (and (= $t2@0 inline$$1_Roles_has_diem_root_role$0$$ret0@1) (= (ControlFlow 0 154982) 155028))) L3_correct)))
(let ((inline$$1_Roles_has_diem_root_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@2) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_diem_root_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 154942) 155042) anon10_Then_correct) (=> (= (ControlFlow 0 154942) 154982) anon10_Else_correct)))))
(let ((inline$$1_Roles_has_diem_root_role$0$anon3_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_Roles_has_diem_root_role$0$$ret0@1 inline$$1_Roles_has_diem_root_role$0$$ret0@0) (= $abort_flag@3 true))) (and (=> (= (ControlFlow 0 154960) 155042) anon10_Then_correct) (=> (= (ControlFlow 0 154960) 154982) anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@0@@1 (=> (and (and (= $abort_code@1@@1 $abort_code@1@@1) (= $abort_code@3 $abort_code@1@@1)) (and (= $abort_flag@2 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 154866) 154960) inline$$1_Roles_has_diem_root_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 154866) 154942) inline$$1_Roles_has_diem_root_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1 inline$$1_Roles_has_role$0$$t3@1) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t3@1))) (and (=> (= (ControlFlow 0 154802) 154960) inline$$1_Roles_has_diem_root_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 154802) 154942) inline$$1_Roles_has_diem_root_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@0@@1) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 0)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@2 $abort_code@1@@1) (= inline$$1_Roles_has_role$0$$t3@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@1 $abort_flag@0@@1) (= (ControlFlow 0 154848) 154802)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 154918) 154866) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 154918) 154848) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 154916) 154918)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 154820) 154866) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 154820) 154848) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 154806) 154916) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 154806) 154820) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@2 $abort_code@0@@1) (= inline$$1_Roles_has_role$0$$t3@1 false)) (and (= $abort_flag@1 false) (= (ControlFlow 0 154790) 154802))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= _$t0@@2 _$t0@@2) (= 0 0)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 _$t0@@2)) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 154770) 154806) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 154770) 154790) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_diem_root_role$0$anon0_correct  (=> (= _$t0@@2 _$t0@@2) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 154924) 154770)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((anon9_Else_correct  (=> (and (not $t6@0) (= (ControlFlow 0 154966) 154924)) inline$$1_Roles_has_diem_root_role$0$anon0_correct)))
(let ((anon9_Then_correct  (=> (and (and $t6@0 (= true true)) (and (= $t2@0 true) (= (ControlFlow 0 155092) 155028))) L3_correct)))
(let ((anon8_Else_correct  (=> (not $t4@@1) (=> (and (and (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| $t3@@2) (= $t3@@2 (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) addr@@1))))) (and (= $t3@@2 $t3@@2) (= $t6@0 (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| $t3@@2)))) (and (=> (= (ControlFlow 0 154286) 155092) anon9_Then_correct) (=> (= (ControlFlow 0 154286) 154966) anon9_Else_correct))))))
(let ((anon0$1_correct@@2  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (|$IsValid'address'| _$t0@@2)) (=> (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |DiemTransactionPublishingOptionandybpl.10754:20|
 :skolemid |169|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@7)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $rsc@@7))
 :qid |DiemTransactionPublishingOptionandybpl.10758:20|
 :skolemid |170|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@7))
))) (and (= _$t0@@2 _$t0@@2) (= $t4@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 154256) 155120) anon8_Then_correct) (=> (= (ControlFlow 0 154256) 154286) anon8_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_66487| stream@@3) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66487| stream@@3) v@@38) 0)
 :qid |DiemTransactionPublishingOptionandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 154162) 154256)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 210550) 154162) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@3 () Int)
(declare-fun _$t1@@1 () (Seq Int))
(declare-fun $t5@0@@0 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $t13 () Bool)
(declare-fun $t5@@1 () Int)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun $t3@0 () Bool)
(declare-fun |inline$$1_Vector_contains'vec'u8''$0$res@1| () Bool)
(declare-fun $t17@0@@0 () (Seq (Seq Int)))
(declare-fun |inline$$1_Vector_is_empty'vec'u8''$0$b@1| () Bool)
(declare-fun $t12@@0 () T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption)
(declare-fun $t14@0@@0 () (Seq (Seq Int)))
(declare-fun |inline$$1_Vector_is_empty'u8'$0$b@1| () Bool)
(declare-fun inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$ret0@1 () Bool)
(declare-fun inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$t2@1 () Bool)
(declare-fun inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_diem_root_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_diem_root_role$0$$ret0@0@@0 () Bool)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@0 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemTransactionPublishingOption_is_script_allowed$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 211315) (let ((L14_correct  (and (=> (= (ControlFlow 0 156642) (- 0 212469)) (and (and (and (not (let ((addr@@2 _$t0@@3))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) addr@@2)) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) 173345816))) (not (= (seq.len _$t1@@1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (=> (and (and (and (not (let ((addr@@2 _$t0@@3))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) addr@@2)) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) 173345816))) (not (= (seq.len _$t1@@1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (= (ControlFlow 0 156642) (- 0 212498)) (and (and (and (and (not (let ((addr@@3 _$t0@@3))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) addr@@3)) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) 173345816))) (not (= (seq.len _$t1@@1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (= 5 $t5@0@@0)))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t5@0@@0 $abort_code@3@@0) (= (ControlFlow 0 156558) 156642))) L14_correct)))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t5@0@@0 $abort_code@3@@0) (= (ControlFlow 0 156674) 156642))) L14_correct)))
(let ((anon32_Then_correct@@0  (=> $t13 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t5@@1)) (= $t5@@1 $t5@@1)) (and (= $t5@0@@0 $t5@@1) (= (ControlFlow 0 156702) 156642))) L14_correct))))
(let ((anon30_Then_correct@@0  (=> (and (and $abort_flag@4 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t5@0@@0 $abort_code@3@@0) (= (ControlFlow 0 156734) 156642))) L14_correct)))
(let ((anon28_Then_correct@@0  (=> (and (and $abort_flag@4 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t5@0@@0 $abort_code@3@@0) (= (ControlFlow 0 156766) 156642))) L14_correct)))
(let ((anon26_Then_correct@@0  (=> (and (and $abort_flag@3@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t5@0@@0 $abort_code@3@@0) (= (ControlFlow 0 156798) 156642))) L14_correct)))
(let ((L13_correct  (and (=> (= (ControlFlow 0 156544) (- 0 212389)) (not (and (and (and (not (let ((addr@@4 _$t0@@3))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) addr@@4)) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) 173345816))) (not (= (seq.len _$t1@@1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))))) (=> (not (and (and (and (not (let ((addr@@4 _$t0@@3))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) addr@@4)) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) 173345816))) (not (= (seq.len _$t1@@1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (=> (= (ControlFlow 0 156544) (- 0 212423)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))))))))
(let ((L12_correct  (=> (and (= $t3@0 $t3@0) (= (ControlFlow 0 156480) 156544)) L13_correct)))
(let ((anon35_Else_correct  (=> (and (and (not $abort_flag@4) (= |inline$$1_Vector_contains'vec'u8''$0$res@1| |inline$$1_Vector_contains'vec'u8''$0$res@1|)) (and (= $t3@0 |inline$$1_Vector_contains'vec'u8''$0$res@1|) (= (ControlFlow 0 156468) 156480))) L12_correct)))
(let ((|inline$$1_Vector_contains'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'vec'u8''$0$res@1| (exists ((i@@40 Int) ) (!  (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len $t17@0@@0)))) (= (seq.nth $t17@0@@0 i@@40) _$t1@@1))
 :qid |DiemTransactionPublishingOptionandybpl.1855:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 156444) 156558) anon35_Then_correct) (=> (= (ControlFlow 0 156444) 156468) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (not |inline$$1_Vector_is_empty'vec'u8''$0$b@1|) (=> (and (= $t17@0@@0 (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| $t12@@0)) (= (ControlFlow 0 156450) 156444)) |inline$$1_Vector_contains'vec'u8''$0$anon0_correct|))))
(let ((anon34_Then_correct  (=> (and (and |inline$$1_Vector_is_empty'vec'u8''$0$b@1| (= true true)) (and (= $t3@0 true) (= (ControlFlow 0 156660) 156480))) L12_correct)))
(let ((anon33_Else_correct  (=> (not $abort_flag@4) (and (=> (= (ControlFlow 0 156394) 156660) anon34_Then_correct) (=> (= (ControlFlow 0 156394) 156450) anon34_Else_correct)))))
(let ((|inline$$1_Vector_is_empty'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'vec'u8''$0$b@1| (= (seq.len $t14@0@@0) 0)) (and (=> (= (ControlFlow 0 156380) 156674) anon33_Then_correct) (=> (= (ControlFlow 0 156380) 156394) anon33_Else_correct)))))
(let ((anon32_Else_correct@@0  (=> (and (not $t13) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| $t12@@0)) (=> (and (and (= $t12@@0 (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) addr@@5)))) (= $t12@@0 $t12@@0)) (and (= $t14@0@@0 (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| $t12@@0)) (= (ControlFlow 0 156386) 156380))) |inline$$1_Vector_is_empty'vec'u8''$0$anon0_correct|))))
(let ((anon31_Else_correct@@0  (=> (and (not |inline$$1_Vector_is_empty'u8'$0$b@1|) (= $t13  (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 156320) 156702) anon32_Then_correct@@0) (=> (= (ControlFlow 0 156320) 156386) anon32_Else_correct@@0)))))
(let ((anon31_Then_correct@@0  (=> |inline$$1_Vector_is_empty'u8'$0$b@1| (=> (and (= true true) (= (ControlFlow 0 156720) 156544)) L13_correct))))
(let ((anon30_Else_correct@@0  (=> (not $abort_flag@4) (and (=> (= (ControlFlow 0 156302) 156720) anon31_Then_correct@@0) (=> (= (ControlFlow 0 156302) 156320) anon31_Else_correct@@0)))))
(let ((|inline$$1_Vector_is_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u8'$0$b@1| (= (seq.len _$t1@@1) 0)) (and (=> (= (ControlFlow 0 156288) 156734) anon30_Then_correct@@0) (=> (= (ControlFlow 0 156288) 156302) anon30_Else_correct@@0)))))
(let ((anon29_Else_correct@@0  (=> (and (not inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$ret0@1) (= (ControlFlow 0 156294) 156288)) |inline$$1_Vector_is_empty'u8'$0$anon0_correct|)))
(let ((anon29_Then_correct@@0  (=> inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$ret0@1 (=> (and (= false false) (= (ControlFlow 0 156752) 156544)) L13_correct))))
(let ((anon28_Else_correct@@0  (=> (not $abort_flag@4) (and (=> (= (ControlFlow 0 156252) 156752) anon29_Then_correct@@0) (=> (= (ControlFlow 0 156252) 156294) anon29_Else_correct@@0)))))
(let ((inline$$1_DiemTransactionPublishingOption_transactions_halted$0$anon3_Else_correct  (=> (not $abort_flag@3@@0) (=> (and (and (= inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$t2@1 (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) 173345816)) (= inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$t2@1 inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$t2@1)) (and (= $abort_flag@4 $abort_flag@3@@0) (= inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$ret0@1 inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$t2@1))) (and (=> (= (ControlFlow 0 156220) 156766) anon28_Then_correct@@0) (=> (= (ControlFlow 0 156220) 156252) anon28_Else_correct@@0))))))
(let ((inline$$1_DiemTransactionPublishingOption_transactions_halted$0$anon3_Then_correct  (=> (and (and $abort_flag@3@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $abort_flag@4 true) (= inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$ret0@1 inline$$1_DiemTransactionPublishingOption_transactions_halted$0$$ret0@0))) (and (=> (= (ControlFlow 0 156238) 156766) anon28_Then_correct@@0) (=> (= (ControlFlow 0 156238) 156252) anon28_Else_correct@@0)))))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@0  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 156190) 156238) inline$$1_DiemTransactionPublishingOption_transactions_halted$0$anon3_Then_correct) (=> (= (ControlFlow 0 156190) 156220) inline$$1_DiemTransactionPublishingOption_transactions_halted$0$anon3_Else_correct)))))
(let ((inline$$1_DiemTransactionPublishingOption_transactions_halted$0$anon0_correct  (=> (= (ControlFlow 0 156196) 156190) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@0)))
(let ((anon27_Else_correct@@0  (=> (and (not inline$$1_Roles_has_diem_root_role$0$$ret0@1@@0) (= (ControlFlow 0 156244) 156196)) inline$$1_DiemTransactionPublishingOption_transactions_halted$0$anon0_correct)))
(let ((anon27_Then_correct@@0  (=> inline$$1_Roles_has_diem_root_role$0$$ret0@1@@0 (=> (and (= true true) (= (ControlFlow 0 156784) 156544)) L13_correct))))
(let ((anon26_Else_correct@@0  (=> (not $abort_flag@3@@0) (and (=> (= (ControlFlow 0 156013) 156784) anon27_Then_correct@@0) (=> (= (ControlFlow 0 156013) 156244) anon27_Else_correct@@0)))))
(let ((inline$$1_Roles_has_diem_root_role$0$anon3_Else_correct@@0  (=> (and (and (not $abort_flag@2@@0) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@1@@0)) (and (= inline$$1_Roles_has_diem_root_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@1@@0) (= $abort_flag@3@@0 $abort_flag@2@@0))) (and (=> (= (ControlFlow 0 155981) 156798) anon26_Then_correct@@0) (=> (= (ControlFlow 0 155981) 156013) anon26_Else_correct@@0)))))
(let ((inline$$1_Roles_has_diem_root_role$0$anon3_Then_correct@@0  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= inline$$1_Roles_has_diem_root_role$0$$ret0@1@@0 inline$$1_Roles_has_diem_root_role$0$$ret0@0@@0) (= $abort_flag@3@@0 true))) (and (=> (= (ControlFlow 0 155999) 156798) anon26_Then_correct@@0) (=> (= (ControlFlow 0 155999) 156013) anon26_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@0  (=> $abort_flag@0@@2 (=> (and (and (= $abort_code@1@@2 $abort_code@1@@2) (= $abort_code@3@@0 $abort_code@1@@2)) (and (= $abort_flag@2@@0 true) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@0@@0))) (and (=> (= (ControlFlow 0 155905) 155999) inline$$1_Roles_has_diem_root_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 155905) 155981) inline$$1_Roles_has_diem_root_role$0$anon3_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@0 inline$$1_Roles_has_role$0$$t3@1@@0) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$t3@1@@0))) (and (=> (= (ControlFlow 0 155841) 155999) inline$$1_Roles_has_diem_root_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 155841) 155981) inline$$1_Roles_has_diem_root_role$0$anon3_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@0@@2) (= inline$$1_Roles_has_role$0$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@0))) (and (= inline$$1_Roles_has_role$0$$t9@1@@0 (= inline$$1_Roles_has_role$0$$t8@1@@0 0)) (= inline$$1_Roles_has_role$0$$t9@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0))) (and (and (= $abort_code@2@@0 $abort_code@1@@2) (= inline$$1_Roles_has_role$0$$t3@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0)) (and (= $abort_flag@1@@0 $abort_flag@0@@2) (= (ControlFlow 0 155887) 155841)))) inline$$1_Roles_has_role$0$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0  (=> (= $abort_flag@0@@2 true) (=> (and (= $abort_code@1@@2 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@0@@0)) (and (=> (= (ControlFlow 0 155957) 155905) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 155957) 155887) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= (ControlFlow 0 155955) 155957)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= $abort_flag@0@@2 false)) (and (= $abort_code@1@@2 $abort_code@0@@2) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@1@@0))) (and (=> (= (ControlFlow 0 155859) 155905) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 155859) 155887) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$0$$t5@1@@0 (and (=> (= (ControlFlow 0 155845) 155955) inline$$1_Roles_has_role$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 155845) 155859) inline$$1_Roles_has_role$0$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@0) (= false false)) (=> (and (and (= $abort_code@2@@0 $abort_code@0@@2) (= inline$$1_Roles_has_role$0$$t3@1@@0 false)) (and (= $abort_flag@1@@0 false) (= (ControlFlow 0 155829) 155841))) inline$$1_Roles_has_role$0$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@0  (=> (and (= _$t0@@3 _$t0@@3) (= 0 0)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t4@0@@0 _$t0@@3)) (and (= inline$$1_Roles_has_role$0$$t4@0@@0 inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)))) (and (=> (= (ControlFlow 0 155809) 155845) inline$$1_Roles_has_role$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 155809) 155829) inline$$1_Roles_has_role$0$anon9_Else_correct@@0))))))
(let ((inline$$1_Roles_has_diem_root_role$0$anon0_correct@@0  (=> (= _$t0@@3 _$t0@@3) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 155963) 155809)) inline$$1_Roles_has_role$0$anon0_correct@@0))))
(let ((anon0$1_correct@@3  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (and (and (and (|$IsValid'address'| _$t0@@3) (|$IsValid'vec'u8''| _$t1@@1)) (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |DiemTransactionPublishingOptionandybpl.10948:20|
 :skolemid |171|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@9)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $rsc@@9))
 :qid |DiemTransactionPublishingOptionandybpl.10952:20|
 :skolemid |172|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@9))
)))) (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|contents#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $a_0@@10)))
(|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| $rsc@@10))
 :qid |DiemTransactionPublishingOptionandybpl.10956:20|
 :skolemid |173|
 :pattern ( (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|contents#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $a_0@@10))
)) (= _$t0@@3 _$t0@@3)) (and (= _$t1@@1 _$t1@@1) (= (ControlFlow 0 156005) 155963)))) inline$$1_Roles_has_diem_root_role$0$anon0_correct@@0))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_66487| stream@@4) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66487| stream@@4) v@@39) 0)
 :qid |DiemTransactionPublishingOptionandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 155213) 156005)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 211315) 155213) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $t12@0@@0 () Bool)
(declare-fun $t11@@1 () T@$1_DiemTransactionPublishingOption_HaltAllTransactions)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun $t11@0@@0 () T@$1_DiemTransactionPublishingOption_HaltAllTransactions)
(declare-fun $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory@0@@0 () T@$Memory_119761)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t8@0 () Bool)
(declare-fun $t5@@2 () Bool)
(declare-fun _$t0@@4 () Int)
(declare-fun $t10@@2 () Int)
(declare-fun $t4@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemTransactionPublishingOption_resume_transactions$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 212547) (let ((anon15_Else_correct@@1  (=> (not $abort_flag@0@@3) (=> (and (and (= $t12@0@@0 (|$dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions| $t11@@1)) (= (ControlFlow 0 157234) (- 0 213010))) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))))))
(let ((anon15_Then_correct@@1 true))
(let ((anon14_Then$1_correct@@0  (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 157300) 157248) anon15_Then_correct@@1) (=> (= (ControlFlow 0 157300) 157234) anon15_Else_correct@@1)))))
(let ((anon14_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $t7@@0)) (= (ControlFlow 0 157298) 157300)) anon14_Then$1_correct@@0)))
(let ((anon14_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $t7@@0) (=> (and (and (= $t11@0@@0 (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|contents#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $t7@@0)) (= $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory@0@@0 ($Memory_119761 (|Store__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $t7@@0 false) (|contents#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory)))) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 157198) 157248) anon15_Then_correct@@1) (=> (= (ControlFlow 0 157198) 157234) anon15_Else_correct@@1))))))
(let ((anon13_Then_correct@@0  (=> $t8@0 (and (=> (= (ControlFlow 0 157178) 157298) anon14_Then_correct@@1) (=> (= (ControlFlow 0 157178) 157198) anon14_Else_correct@@1)))))
(let ((anon13_Else_correct@@0 true))
(let ((anon12_Else_correct@@0  (=> (and (not $t5@@2) (|$IsValid'address'| $t7@@0)) (=> (and (and (and (= $t7@@0 _$t0@@4) (= $t7@@0 $t7@@0)) (and (= $t8@0 (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $t7@@0)) (|$IsValid'u64'| 2))) (and (and (|$IsValid'u64'| $t10@@2) (= $t10@@2 6)) (and (= $t10@@2 $t10@@2) (= $t8@0 $t8@0)))) (and (=> (= (ControlFlow 0 157152) 157178) anon13_Then_correct@@0) (=> (= (ControlFlow 0 157152) 157168) anon13_Else_correct@@0))))))
(let ((anon12_Then_correct@@0 true))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| _$t0@@4) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@11)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@11))
 :qid |DiemTransactionPublishingOptionandybpl.11275:20|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@11))
))) (=> (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|contents#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $a_0@@12)))
(|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| $rsc@@12))
 :qid |DiemTransactionPublishingOptionandybpl.11279:20|
 :skolemid |175|
 :pattern ( (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|contents#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $a_0@@12))
)) (= _$t0@@4 _$t0@@4)) (and (= $t4@@2 _$t0@@4) (= $t5@@2  (or (or (or (not (= _$t0@@4 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t4@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t4@@2)) 0))) (not (= _$t0@@4 173345816)))))) (and (=> (= (ControlFlow 0 157086) 157392) anon12_Then_correct@@0) (=> (= (ControlFlow 0 157086) 157152) anon12_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_66487| stream@@5) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66487| stream@@5) v@@40) 0)
 :qid |DiemTransactionPublishingOptionandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 156950) 157086)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 212547) 156950) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t3@@3 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_98524)
(declare-fun $t4@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t5@@3 () Int)
(declare-fun $t8@@0 () Int)
(declare-fun $t15 () Bool)
(declare-fun $t13@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t14@@0 () Int)
(declare-fun $t9@@0 () Bool)
(declare-fun $t7@@1 () Bool)
(declare-fun $t6@@1 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2@@0| () T@$Memory_96866)
(declare-fun $t2@0@@0 () T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_98591)
(declare-fun |$temp_0'bool'@1@@0| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1@@0| () T@$Memory_96866)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0@@0| () T@$Memory_96866)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_98591)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_98591)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t2 () T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption)
(declare-fun $t10@0 () T@$Mutation_125489)
(declare-fun $t11@0@@1 () T@$Mutation_31098)
(declare-fun $t11@1 () T@$Mutation_31098)
(declare-fun _$t1@@2 () Bool)
(declare-fun $t10@1 () T@$Mutation_125489)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun $t10@@3 () T@$Mutation_125489)
(declare-fun $t11@@2 () T@$Mutation_31098)
(push 1)
(set-info :boogie-vc-id $1_DiemTransactionPublishingOption_set_open_module$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 213037) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 158573) (- 0 214085)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@3)) 0))) (not (= _$t0@@5 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4@@3) 18446744073709551615)) (< $t5@@3 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4@@3))))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@3)) 0))) (not (= _$t0@@5 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4@@3) 18446744073709551615)) (< $t5@@3 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4@@3)))) (=> (= (ControlFlow 0 158573) (- 0 214185)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t8@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@3)) 0)) (= 3 $t8@@0))) (and (not (= _$t0@@5 173345816)) (= 2 $t8@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t8@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@5)) (= 4 $t8@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t8@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4@@3) 18446744073709551615)) (< $t5@@3 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4@@3))) (= 1 $t8@@0))))))))
(let ((anon16_Then_correct@@0  (=> (and (and $t15 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@5)) (= 4 $t8@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t8@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t13@@0) 18446744073709551615)) (< $t14@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t13@@0))) (= 1 $t8@@0)))) (and (= $t8@@0 $t8@@0) (= (ControlFlow 0 158289) 158573))) L2_correct@@0)))
(let ((anon15_Then_correct@@2  (=> $t9@@0 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t8@@0)) (and (= $t8@@0 $t8@@0) (= (ControlFlow 0 158601) 158573))) L2_correct@@0))))
(let ((anon14_Then_correct@@2  (=> (and (and $t7@@1 (or (or (or (and (not (= _$t0@@5 173345816)) (= 2 $t8@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t6@@1)) (= 5 $t8@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t6@@1)) 0)) (= 3 $t8@@0))) (and (not (= _$t0@@5 173345816)) (= 2 $t8@@0)))) (and (= $t8@@0 $t8@@0) (= (ControlFlow 0 158693) 158573))) L2_correct@@0)))
(let ((anon12_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2@@0|) 173345816) (=> (and (= (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2@@0|) addr@@6))) $t2@0@@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (=> (= (ControlFlow 0 158167) (- 0 213962)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 158167) (- 0 213974)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@3)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t3@@3)) 0))) (and (=> (= (ControlFlow 0 158167) (- 0 213992)) (not (not (= _$t0@@5 173345816)))) (=> (not (not (= _$t0@@5 173345816))) (and (=> (= (ControlFlow 0 158167) (- 0 214006)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 158167) (- 0 214018)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@5))) (and (=> (= (ControlFlow 0 158167) (- 0 214031)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (= (ControlFlow 0 158167) (- 0 214043)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4@@3) 18446744073709551615)) (< $t5@@3 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4@@3)))))))))))))))))))))
(let ((anon18_Else_correct@@0  (=> (and (and (not |$temp_0'bool'@1@@0|) (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1@@0| ($Memory_96866 (|Store__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 false) (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1@@0|) (= (ControlFlow 0 158015) 158167))) anon12_correct@@0)))
(let ((anon18_Then_correct@@0  (=> (and (and |$temp_0'bool'@1@@0| (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0@@0| ($Memory_96866 (|Store__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''@0@@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0@@0|) (= (ControlFlow 0 158179) 158167))) anon12_correct@@0)))
(let ((anon17_Else_correct@@0  (=> (not |$temp_0'bool'@0@@0|) (=> (and (= $1_DiemConfig_Configuration_$memory@1 ($Memory_98591 (|Store__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1)) (and (=> (= (ControlFlow 0 158001) 158179) anon18_Then_correct@@0) (=> (= (ControlFlow 0 158001) 158015) anon18_Else_correct@@0))))))
(let ((anon17_Then_correct@@0  (=> |$temp_0'bool'@0@@0| (=> (and (= $1_DiemConfig_Configuration_$memory@0 ($Memory_98591 (|Store__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0|))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0)) (and (=> (= (ControlFlow 0 158191) 158179) anon18_Then_correct@@0) (=> (= (ControlFlow 0 158191) 158015) anon18_Else_correct@@0))))))
(let ((anon16_Else_correct@@0  (=> (not $t15) (and (=> (= (ControlFlow 0 157989) 158191) anon17_Then_correct@@0) (=> (= (ControlFlow 0 157989) 158001) anon17_Else_correct@@0)))))
(let ((anon15_Else_correct@@2  (=> (and (and (not $t9@@0) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| $t2)) (and (= $t2 (let ((addr@@7 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) addr@@7)))) (= $t2 $t2))) (=> (and (and (and (= $t10@0 ($Mutation_125489 ($Local 2) (as seq.empty (Seq Int)) $t2)) (= $t11@0@@1 ($Mutation_31098 (|l#$Mutation_125489| $t10@0) (seq.++ (|p#$Mutation_125489| $t10@0) (seq.unit 1)) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (|v#$Mutation_125489| $t10@0))))) (and (= $t11@1 ($Mutation_31098 (|l#$Mutation_31098| $t11@0@@1) (|p#$Mutation_31098| $t11@0@@1) _$t1@@2)) (= $t10@1 ($Mutation_125489 (|l#$Mutation_125489| $t10@0) (|p#$Mutation_125489| $t10@0) ($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (|v#$Mutation_125489| $t10@0)) (|v#$Mutation_31098| $t11@1)))))) (and (and (= $t2@0@@0 (|v#$Mutation_125489| $t10@1)) (= $t13@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t14@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t15  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t13@@0) 18446744073709551615)) (< $t14@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t13@@0)))))))) (and (=> (= (ControlFlow 0 157981) 158289) anon16_Then_correct@@0) (=> (= (ControlFlow 0 157981) 157989) anon16_Else_correct@@0))))))
(let ((anon14_Else_correct@@2  (=> (and (not $t7@@1) (= $t9@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 157815) 158601) anon15_Then_correct@@2) (=> (= (ControlFlow 0 157815) 157981) anon15_Else_correct@@2)))))
(let ((anon0$1_correct@@5  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (|$IsValid'address'| _$t0@@5) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@13)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@13))
 :qid |DiemTransactionPublishingOptionandybpl.11491:20|
 :skolemid |176|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@13))
)))) (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@14)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@14))
 :qid |DiemTransactionPublishingOptionandybpl.11495:20|
 :skolemid |177|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@14))
)) (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory) $a_0@@15)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@15))
 :qid |DiemTransactionPublishingOptionandybpl.11499:20|
 :skolemid |178|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory) $a_0@@15))
))) (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@16)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@16))
 :qid |DiemTransactionPublishingOptionandybpl.11503:20|
 :skolemid |179|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@16))
)) (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@17)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $rsc@@17))
 :qid |DiemTransactionPublishingOptionandybpl.11507:20|
 :skolemid |180|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@17))
))))) (and (and (and (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@18)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $rsc@@18))
 :qid |DiemTransactionPublishingOptionandybpl.11511:20|
 :skolemid |181|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@18))
)) (= $t3@@3 _$t0@@5)) (and (= $t4@@3 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t5@@3 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (and (= _$t0@@5 _$t0@@5) (= _$t1@@2 _$t1@@2)) (and (= $t6@@1 _$t0@@5) (= $t7@@1  (or (or (or (not (= _$t0@@5 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t6@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t6@@1)) 0))) (not (= _$t0@@5 173345816)))))))) (and (=> (= (ControlFlow 0 157795) 158693) anon14_Then_correct@@2) (=> (= (ControlFlow 0 157795) 157815) anon14_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_66487| stream@@6) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66487| stream@@6) v@@41) 0)
 :qid |DiemTransactionPublishingOptionandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 157487) 157795)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (seq.len (|p#$Mutation_125489| $t10@@3)) 0) (=> (and (= (seq.len (|p#$Mutation_31098| $t11@@2)) 0) (= (ControlFlow 0 157497) 157487)) inline$$InitEventStore$0$anon0_correct@@5))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 213037) 157497) anon0_correct@@5)))
PreconditionGeneratedEntry_correct@@0)))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@0 () Int)
(declare-fun _$t0@@6 () Int)
(declare-fun $t3@@4 () T@$1_DiemConfig_Configuration)
(declare-fun $t4@@4 () Int)
(declare-fun $t7@0@@0 () Int)
(declare-fun $t15@@0 () Bool)
(declare-fun $t7@@2 () Int)
(declare-fun $t13@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t14@@1 () Int)
(declare-fun $t8@@1 () Bool)
(declare-fun $t6@@2 () Bool)
(declare-fun $t5@@4 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2@@1| () T@$Memory_96866)
(declare-fun $t1@0 () T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@0 () T@$Memory_98591)
(declare-fun |$temp_0'bool'@1@@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1@@1| () T@$Memory_96866)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0@@1| () T@$Memory_96866)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''@0@@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@0 () T@$Memory_98591)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@0 () T@$Memory_98591)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t10@0@@0 () T@$Mutation_125489)
(declare-fun $t1 () T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption)
(declare-fun $t11@0@@2 () T@$Mutation_83802)
(declare-fun $t11@1@@0 () T@$Mutation_83802)
(declare-fun |inline$$1_Vector_empty'vec'u8''$0$v@1| () (Seq (Seq Int)))
(declare-fun $t10@1@@0 () T@$Mutation_125489)
(declare-fun $t10@@4 () T@$Mutation_125489)
(declare-fun $t11@@3 () T@$Mutation_83802)
(push 1)
(set-info :boogie-vc-id $1_DiemTransactionPublishingOption_set_open_script$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 214355) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 160021) (- 0 215441)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t2@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= _$t0@@6 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@4) 18446744073709551615)) (< $t4@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@4))))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t2@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= _$t0@@6 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@4) 18446744073709551615)) (< $t4@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@4)))) (=> (= (ControlFlow 0 160021) (- 0 215541)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t7@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t7@0@@0))) (and (not (= _$t0@@6 173345816)) (= 2 $t7@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t7@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@6)) (= 4 $t7@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t7@0@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@4) 18446744073709551615)) (< $t4@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@4))) (= 1 $t7@0@@0))))))))
(let ((anon19_Then_correct  (=> $t15@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@6)) (= 4 $t7@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t7@@2))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t13@@1) 18446744073709551615)) (< $t14@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t13@@1))) (= 1 $t7@@2))) (= $t7@@2 $t7@@2)) (and (= $t7@0@@0 $t7@@2) (= (ControlFlow 0 159737) 160021))) L2_correct@@1))))
(let ((anon17_Then_correct@@1  (=> $t8@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t7@@2)) (= $t7@@2 $t7@@2)) (and (= $t7@0@@0 $t7@@2) (= (ControlFlow 0 160063) 160021))) L2_correct@@1))))
(let ((anon16_Then_correct@@1  (=> $t6@@2 (=> (and (and (or (or (or (and (not (= _$t0@@6 173345816)) (= 2 $t7@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t5@@4)) (= 5 $t7@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t5@@4)) 0)) (= 3 $t7@@2))) (and (not (= _$t0@@6 173345816)) (= 2 $t7@@2))) (= $t7@@2 $t7@@2)) (and (= $t7@0@@0 $t7@@2) (= (ControlFlow 0 160155) 160021))) L2_correct@@1))))
(let ((anon14_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2@@1|) 173345816) (=> (and (= (let ((addr@@8 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2@@1|) addr@@8))) $t1@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory@2@@0) 173345816))) (and (=> (= (ControlFlow 0 159615) (- 0 215300)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 159615) (- 0 215312)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 159615) (- 0 215330)) (not (not (= _$t0@@6 173345816)))) (=> (not (not (= _$t0@@6 173345816))) (and (=> (= (ControlFlow 0 159615) (- 0 215344)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 159615) (- 0 215356)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@6))) (and (=> (= (ControlFlow 0 159615) (- 0 215369)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (= (ControlFlow 0 159615) (- 0 215381)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@4) 18446744073709551615)) (< $t4@@4 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@4)))))))))))))))))))))
(let ((anon21_Else_correct  (=> (and (and (not |$temp_0'bool'@1@@1|) (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1@@1| ($Memory_96866 (|Store__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 false) (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2@@1| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1@@1|) (= (ControlFlow 0 159463) 159615))) anon14_correct)))
(let ((anon21_Then_correct  (=> (and (and |$temp_0'bool'@1@@1| (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0@@1| ($Memory_96866 (|Store__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''@0@@1|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2@@1| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0@@1|) (= (ControlFlow 0 159627) 159615))) anon14_correct)))
(let ((anon20_Else_correct  (=> (not |$temp_0'bool'@0@@1|) (=> (and (= $1_DiemConfig_Configuration_$memory@1@@0 ($Memory_98591 (|Store__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@1@@0)) (and (=> (= (ControlFlow 0 159449) 159627) anon21_Then_correct) (=> (= (ControlFlow 0 159449) 159463) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> |$temp_0'bool'@0@@1| (=> (and (= $1_DiemConfig_Configuration_$memory@0@@0 ($Memory_98591 (|Store__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0@@0|))) (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@0@@0)) (and (=> (= (ControlFlow 0 159639) 159627) anon21_Then_correct) (=> (= (ControlFlow 0 159639) 159463) anon21_Else_correct))))))
(let ((anon19_Else_correct  (=> (not $t15@@0) (and (=> (= (ControlFlow 0 159437) 159639) anon20_Then_correct) (=> (= (ControlFlow 0 159437) 159449) anon20_Else_correct)))))
(let ((anon18_Else_correct@@1  (=> (not false) (=> (and (and (and (= $t10@0@@0 ($Mutation_125489 ($Local 1) (as seq.empty (Seq Int)) $t1)) (= $t11@0@@2 ($Mutation_83802 (|l#$Mutation_125489| $t10@0@@0) (seq.++ (|p#$Mutation_125489| $t10@0@@0) (seq.unit 0)) (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (|v#$Mutation_125489| $t10@0@@0))))) (and (= $t11@1@@0 ($Mutation_83802 (|l#$Mutation_83802| $t11@0@@2) (|p#$Mutation_83802| $t11@0@@2) |inline$$1_Vector_empty'vec'u8''$0$v@1|)) (= $t10@1@@0 ($Mutation_125489 (|l#$Mutation_125489| $t10@0@@0) (|p#$Mutation_125489| $t10@0@@0) ($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|v#$Mutation_83802| $t11@1@@0) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (|v#$Mutation_125489| $t10@0@@0))))))) (and (and (= $t1@0 (|v#$Mutation_125489| $t10@1@@0)) (= $t13@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t14@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t15@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) _$t0@@6)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t13@@1) 18446744073709551615)) (< $t14@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t13@@1)))))))) (and (=> (= (ControlFlow 0 159429) 159737) anon19_Then_correct) (=> (= (ControlFlow 0 159429) 159437) anon19_Else_correct))))))
(let ((anon18_Then_correct@@1 true))
(let ((|inline$$1_Vector_empty'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'vec'u8''$0$v@1| (as seq.empty (Seq (Seq Int)))) (and (=> (= (ControlFlow 0 159275) 160035) anon18_Then_correct@@1) (=> (= (ControlFlow 0 159275) 159429) anon18_Else_correct@@1)))))
(let ((anon17_Else_correct@@1  (=> (not $t8@@1) (=> (and (and (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| $t1) (= $t1 (let ((addr@@9 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) addr@@9))))) (and (= $t1 $t1) (= (ControlFlow 0 159281) 159275))) |inline$$1_Vector_empty'vec'u8''$0$anon0_correct|))))
(let ((anon16_Else_correct@@1  (=> (and (not $t6@@2) (= $t8@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 159229) 160063) anon17_Then_correct@@1) (=> (= (ControlFlow 0 159229) 159281) anon17_Else_correct@@1)))))
(let ((anon0$1_correct@@6  (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (|$IsValid'address'| _$t0@@6))) (and (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@19)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@19))
 :qid |DiemTransactionPublishingOptionandybpl.11828:20|
 :skolemid |182|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@19))
)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@20)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@20))
 :qid |DiemTransactionPublishingOptionandybpl.11832:20|
 :skolemid |183|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $a_0@@20))
))) (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory) $a_0@@21)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@21))
 :qid |DiemTransactionPublishingOptionandybpl.11836:20|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory) $a_0@@21))
)) (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@22)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@22))
 :qid |DiemTransactionPublishingOptionandybpl.11840:20|
 :skolemid |185|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_98524| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@22))
))))) (and (and (and (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@23)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $rsc@@23))
 :qid |DiemTransactionPublishingOptionandybpl.11844:20|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@23))
)) (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@24)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $rsc@@24))
 :qid |DiemTransactionPublishingOptionandybpl.11848:20|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_99456| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@24))
))) (and (= $t2@@0 _$t0@@6) (= $t3@@4 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_98591| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (= $t4@@4 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_95420| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= _$t0@@6 _$t0@@6)) (and (= $t5@@4 _$t0@@6) (= $t6@@2  (or (or (or (not (= _$t0@@6 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97368| $1_Roles_RoleId_$memory) $t5@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_97368| $1_Roles_RoleId_$memory) $t5@@4)) 0))) (not (= _$t0@@6 173345816)))))))) (and (=> (= (ControlFlow 0 159209) 160155) anon16_Then_correct@@1) (=> (= (ControlFlow 0 159209) 159229) anon16_Else_correct@@1)))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_66487| stream@@7) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66487| stream@@7) v@@42) 0)
 :qid |DiemTransactionPublishingOptionandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 158911) 159209)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (seq.len (|p#$Mutation_125489| $t10@@4)) 0) (=> (and (= (seq.len (|p#$Mutation_83802| $t11@@3)) 0) (= (ControlFlow 0 158921) 158911)) inline$$InitEventStore$0$anon0_correct@@6))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 214355) 158921) anon0_correct@@6)))
PreconditionGeneratedEntry_correct@@1))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@0@@1 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemTransactionPublishingOption_transactions_halted$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 215704) (let ((anon4_Else_correct  (=> (and (not false) (= $t2@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) 173345816))) (=> (and (and (= $t2@0@@1 $t2@0@@1) (= (ControlFlow 0 160528) (- 0 215844))) (|Select__T@[Int]Bool_| (|domain#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_96866| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))))))
(let ((anon4_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@1  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 160476) 160546) anon4_Then_correct) (=> (= (ControlFlow 0 160476) 160528) anon4_Else_correct)))))
(let ((anon0$1_correct@@7  (=> (and (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|contents#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $a_0@@25)))
(|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| $rsc@@25))
 :qid |DiemTransactionPublishingOptionandybpl.12175:20|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions_| (|contents#$Memory_119761| $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory) $a_0@@25))
)) (= (ControlFlow 0 160482) 160476)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@1)))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_66487_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_66487| stream@@8) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_66487| stream@@8) v@@43) 0)
 :qid |DiemTransactionPublishingOptionandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 160373) 160482)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 215704) 160373) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7)))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 215882) true)
))
(check-sat)
(pop 1)
; Valid
