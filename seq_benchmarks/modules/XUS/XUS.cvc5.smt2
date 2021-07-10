(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_84376 0)) ((($Memory_84376 (|domain#$Memory_84376| |T@[Int]Bool|) (|contents#$Memory_84376| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_127770 0)) ((($Memory_127770 (|domain#$Memory_127770| |T@[Int]Bool|) (|contents#$Memory_127770| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_123175 0)) ((($Memory_123175 (|domain#$Memory_123175| |T@[Int]Bool|) (|contents#$Memory_123175| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_121178 0)) ((($Memory_121178 (|domain#$Memory_121178| |T@[Int]Bool|) (|contents#$Memory_121178| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_121458 0)) ((($Memory_121458 (|domain#$Memory_121458| |T@[Int]Bool|) (|contents#$Memory_121458| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_121145 0)) ((($Memory_121145 (|domain#$Memory_121145| |T@[Int]Bool|) (|contents#$Memory_121145| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_120930 0)) ((($Memory_120930 (|domain#$Memory_120930| |T@[Int]Bool|) (|contents#$Memory_120930| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_120559 0)) ((($Memory_120559 (|domain#$Memory_120559| |T@[Int]Bool|) (|contents#$Memory_120559| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_118099 0)) ((($Memory_118099 (|domain#$Memory_118099| |T@[Int]Bool|) (|contents#$Memory_118099| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_118035 0)) ((($Memory_118035 (|domain#$Memory_118035| |T@[Int]Bool|) (|contents#$Memory_118035| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_122101 0)) ((($Memory_122101 (|domain#$Memory_122101| |T@[Int]Bool|) (|contents#$Memory_122101| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_116516 0)) ((($Memory_116516 (|domain#$Memory_116516| |T@[Int]Bool|) (|contents#$Memory_116516| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_116006 0)) ((($Memory_116006 (|domain#$Memory_116006| |T@[Int]Bool|) (|contents#$Memory_116006| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_108713 0)) ((($Memory_108713 (|domain#$Memory_108713| |T@[Int]Bool|) (|contents#$Memory_108713| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_92775 0)) ((($Memory_92775 (|domain#$Memory_92775| |T@[Int]Bool|) (|contents#$Memory_92775| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_122964 0)) ((($Memory_122964 (|domain#$Memory_122964| |T@[Int]Bool|) (|contents#$Memory_122964| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101434 0)) ((($Memory_101434 (|domain#$Memory_101434| |T@[Int]Bool|) (|contents#$Memory_101434| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_97860 0)) ((($Memory_97860 (|domain#$Memory_97860| |T@[Int]Bool|) (|contents#$Memory_97860| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_98173 0)) ((($Memory_98173 (|domain#$Memory_98173| |T@[Int]Bool|) (|contents#$Memory_98173| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_98086 0)) ((($Memory_98086 (|domain#$Memory_98086| |T@[Int]Bool|) (|contents#$Memory_98086| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101698 0)) ((($Memory_101698 (|domain#$Memory_101698| |T@[Int]Bool|) (|contents#$Memory_101698| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_114698 0)) ((($Memory_114698 (|domain#$Memory_114698| |T@[Int]Bool|) (|contents#$Memory_114698| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_102024 0)) ((($Memory_102024 (|domain#$Memory_102024| |T@[Int]Bool|) (|contents#$Memory_102024| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101607 0)) ((($Memory_101607 (|domain#$Memory_101607| |T@[Int]Bool|) (|contents#$Memory_101607| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_116941 0)) ((($Memory_116941 (|domain#$Memory_116941| |T@[Int]Bool|) (|contents#$Memory_116941| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101925 0)) ((($Memory_101925 (|domain#$Memory_101925| |T@[Int]Bool|) (|contents#$Memory_101925| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_95325 0)) ((($Memory_95325 (|domain#$Memory_95325| |T@[Int]Bool|) (|contents#$Memory_95325| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_95238 0)) ((($Memory_95238 (|domain#$Memory_95238| |T@[Int]Bool|) (|contents#$Memory_95238| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_95151 0)) ((($Memory_95151 (|domain#$Memory_95151| |T@[Int]Bool|) (|contents#$Memory_95151| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_126461 0)) ((($Memory_126461 (|domain#$Memory_126461| |T@[Int]Bool|) (|contents#$Memory_126461| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_95064 0)) ((($Memory_95064 (|domain#$Memory_95064| |T@[Int]Bool|) (|contents#$Memory_95064| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_94977 0)) ((($Memory_94977 (|domain#$Memory_94977| |T@[Int]Bool|) (|contents#$Memory_94977| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_94096 0)) ((($Memory_94096 (|domain#$Memory_94096| |T@[Int]Bool|) (|contents#$Memory_94096| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_94163 0)) ((($Memory_94163 (|domain#$Memory_94163| |T@[Int]Bool|) (|contents#$Memory_94163| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_94014 0)) ((($Memory_94014 (|domain#$Memory_94014| |T@[Int]Bool|) (|contents#$Memory_94014| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_93932 0)) ((($Memory_93932 (|domain#$Memory_93932| |T@[Int]Bool|) (|contents#$Memory_93932| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_93850 0)) ((($Memory_93850 (|domain#$Memory_93850| |T@[Int]Bool|) (|contents#$Memory_93850| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_93768 0)) ((($Memory_93768 (|domain#$Memory_93768| |T@[Int]Bool|) (|contents#$Memory_93768| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_93686 0)) ((($Memory_93686 (|domain#$Memory_93686| |T@[Int]Bool|) (|contents#$Memory_93686| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_97720 0)) ((($Memory_97720 (|domain#$Memory_97720| |T@[Int]Bool|) (|contents#$Memory_97720| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_92690 0)) ((($Memory_92690 (|domain#$Memory_92690| |T@[Int]Bool|) (|contents#$Memory_92690| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_93289 0)) ((($Memory_93289 (|domain#$Memory_93289| |T@[Int]Bool|) (|contents#$Memory_93289| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_93256 0)) ((($Memory_93256 (|domain#$Memory_93256| |T@[Int]Bool|) (|contents#$Memory_93256| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_91244 0)) ((($Memory_91244 (|domain#$Memory_91244| |T@[Int]Bool|) (|contents#$Memory_91244| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_62314 0)) (((Multiset_62314 (|v#Multiset_62314| |T@[$EventRep]Int|) (|l#Multiset_62314| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_62314| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_62314|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_124002 0)) ((($Mutation_124002 (|l#$Mutation_124002| T@$Location) (|p#$Mutation_124002| (Seq Int)) (|v#$Mutation_124002| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_123958 0)) ((($Mutation_123958 (|l#$Mutation_123958| T@$Location) (|p#$Mutation_123958| (Seq Int)) (|v#$Mutation_123958| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_30697 0)) ((($Mutation_30697 (|l#$Mutation_30697| T@$Location) (|p#$Mutation_30697| (Seq Int)) (|v#$Mutation_30697| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_107240 0)) ((($Mutation_107240 (|l#$Mutation_107240| T@$Location) (|p#$Mutation_107240| (Seq Int)) (|v#$Mutation_107240| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_96463 0)) ((($Mutation_96463 (|l#$Mutation_96463| T@$Location) (|p#$Mutation_96463| (Seq Int)) (|v#$Mutation_96463| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_91718 0)) ((($Mutation_91718 (|l#$Mutation_91718| T@$Location) (|p#$Mutation_91718| (Seq Int)) (|v#$Mutation_91718| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_85004 0)) ((($Mutation_85004 (|l#$Mutation_85004| T@$Location) (|p#$Mutation_85004| (Seq Int)) (|v#$Mutation_85004| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_80372 0)) ((($Mutation_80372 (|l#$Mutation_80372| T@$Location) (|p#$Mutation_80372| (Seq Int)) (|v#$Mutation_80372| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_79626 0)) ((($Mutation_79626 (|l#$Mutation_79626| T@$Location) (|p#$Mutation_79626| (Seq Int)) (|v#$Mutation_79626| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_78186 0)) ((($Mutation_78186 (|l#$Mutation_78186| T@$Location) (|p#$Mutation_78186| (Seq Int)) (|v#$Mutation_78186| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_77440 0)) ((($Mutation_77440 (|l#$Mutation_77440| T@$Location) (|p#$Mutation_77440| (Seq Int)) (|v#$Mutation_77440| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_76000 0)) ((($Mutation_76000 (|l#$Mutation_76000| T@$Location) (|p#$Mutation_76000| (Seq Int)) (|v#$Mutation_76000| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_75254 0)) ((($Mutation_75254 (|l#$Mutation_75254| T@$Location) (|p#$Mutation_75254| (Seq Int)) (|v#$Mutation_75254| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_73814 0)) ((($Mutation_73814 (|l#$Mutation_73814| T@$Location) (|p#$Mutation_73814| (Seq Int)) (|v#$Mutation_73814| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_73068 0)) ((($Mutation_73068 (|l#$Mutation_73068| T@$Location) (|p#$Mutation_73068| (Seq Int)) (|v#$Mutation_73068| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_71628 0)) ((($Mutation_71628 (|l#$Mutation_71628| T@$Location) (|p#$Mutation_71628| (Seq Int)) (|v#$Mutation_71628| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_70882 0)) ((($Mutation_70882 (|l#$Mutation_70882| T@$Location) (|p#$Mutation_70882| (Seq Int)) (|v#$Mutation_70882| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_69442 0)) ((($Mutation_69442 (|l#$Mutation_69442| T@$Location) (|p#$Mutation_69442| (Seq Int)) (|v#$Mutation_69442| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68696 0)) ((($Mutation_68696 (|l#$Mutation_68696| T@$Location) (|p#$Mutation_68696| (Seq Int)) (|v#$Mutation_68696| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_67256 0)) ((($Mutation_67256 (|l#$Mutation_67256| T@$Location) (|p#$Mutation_67256| (Seq Int)) (|v#$Mutation_67256| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_66510 0)) ((($Mutation_66510 (|l#$Mutation_66510| T@$Location) (|p#$Mutation_66510| (Seq Int)) (|v#$Mutation_66510| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_65032 0)) ((($Mutation_65032 (|l#$Mutation_65032| T@$Location) (|p#$Mutation_65032| (Seq Int)) (|v#$Mutation_65032| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_64286 0)) ((($Mutation_64286 (|l#$Mutation_64286| T@$Location) (|p#$Mutation_64286| (Seq Int)) (|v#$Mutation_64286| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_62314_| (|T@[$1_Event_EventHandle]Multiset_62314| T@$1_Event_EventHandle) T@Multiset_62314)
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
(declare-fun ReverseVec_56709 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_56315 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_56118 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_56512 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_55527 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_55724 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_55921 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_55330 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_62314| |T@[$1_Event_EventHandle]Multiset_62314|) |T@[$1_Event_EventHandle]Multiset_62314|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XUScvc5bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XUScvc5bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XUScvc5bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XUScvc5bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XUScvc5bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XUScvc5bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XUScvc5bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XUScvc5bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |XUScvc5bpl.590:13|
 :skolemid |15|
))))
 :qid |XUScvc5bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |XUScvc5bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |XUScvc5bpl.603:17|
 :skolemid |18|
)))))
 :qid |XUScvc5bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |XUScvc5bpl.770:13|
 :skolemid |20|
))))
 :qid |XUScvc5bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |XUScvc5bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |XUScvc5bpl.783:17|
 :skolemid |23|
)))))
 :qid |XUScvc5bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |XUScvc5bpl.950:13|
 :skolemid |25|
))))
 :qid |XUScvc5bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |XUScvc5bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |XUScvc5bpl.963:17|
 :skolemid |28|
)))))
 :qid |XUScvc5bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |XUScvc5bpl.1130:13|
 :skolemid |30|
))))
 :qid |XUScvc5bpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |XUScvc5bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |XUScvc5bpl.1143:17|
 :skolemid |33|
)))))
 :qid |XUScvc5bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |XUScvc5bpl.1310:13|
 :skolemid |35|
))))
 :qid |XUScvc5bpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |XUScvc5bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |XUScvc5bpl.1323:17|
 :skolemid |38|
)))))
 :qid |XUScvc5bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |XUScvc5bpl.1490:13|
 :skolemid |40|
))))
 :qid |XUScvc5bpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |XUScvc5bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |XUScvc5bpl.1503:17|
 :skolemid |43|
)))))
 :qid |XUScvc5bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |XUScvc5bpl.1670:13|
 :skolemid |45|
))))
 :qid |XUScvc5bpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |XUScvc5bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |XUScvc5bpl.1683:17|
 :skolemid |48|
)))))
 :qid |XUScvc5bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |XUScvc5bpl.1850:13|
 :skolemid |50|
))))
 :qid |XUScvc5bpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |XUScvc5bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |XUScvc5bpl.1863:17|
 :skolemid |53|
)))))
 :qid |XUScvc5bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |XUScvc5bpl.2030:13|
 :skolemid |55|
))))
 :qid |XUScvc5bpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |XUScvc5bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |XUScvc5bpl.2043:17|
 :skolemid |58|
)))))
 :qid |XUScvc5bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |XUScvc5bpl.2210:13|
 :skolemid |60|
))))
 :qid |XUScvc5bpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |XUScvc5bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |XUScvc5bpl.2223:17|
 :skolemid |63|
)))))
 :qid |XUScvc5bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |XUScvc5bpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |XUScvc5bpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XUScvc5bpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XUScvc5bpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_62314_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_62314| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_62314| stream) v@@24) 0)
 :qid |XUScvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |XUScvc5bpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XUScvc5bpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |XUScvc5bpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XUScvc5bpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |XUScvc5bpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XUScvc5bpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |XUScvc5bpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XUScvc5bpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |XUScvc5bpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XUScvc5bpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |XUScvc5bpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XUScvc5bpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |XUScvc5bpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XUScvc5bpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |XUScvc5bpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XUScvc5bpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |XUScvc5bpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XUScvc5bpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |XUScvc5bpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |XUScvc5bpl.3083:70|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |XUScvc5bpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |XUScvc5bpl.3139:60|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |XUScvc5bpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |XUScvc5bpl.3195:66|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |XUScvc5bpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |XUScvc5bpl.3251:60|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |XUScvc5bpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |XUScvc5bpl.3307:63|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |XUScvc5bpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |XUScvc5bpl.3363:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |XUScvc5bpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |XUScvc5bpl.3419:82|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |XUScvc5bpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |XUScvc5bpl.3475:88|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |XUScvc5bpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XUScvc5bpl.3684:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |XUScvc5bpl.4217:49|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |XUScvc5bpl.4267:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |XUScvc5bpl.4286:49|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |XUScvc5bpl.4374:91|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |XUScvc5bpl.4388:113|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |XUScvc5bpl.4402:71|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |XUScvc5bpl.4416:75|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |XUScvc5bpl.4430:73|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |XUScvc5bpl.4450:48|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |XUScvc5bpl.4466:57|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |XUScvc5bpl.4480:103|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |XUScvc5bpl.4494:125|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |XUScvc5bpl.4508:83|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |XUScvc5bpl.4522:87|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |XUScvc5bpl.4536:85|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |XUScvc5bpl.4550:48|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |XUScvc5bpl.4563:65|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |XUScvc5bpl.5072:45|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |XUScvc5bpl.5085:45|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |XUScvc5bpl.5098:55|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |XUScvc5bpl.5112:55|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |XUScvc5bpl.5132:38|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |XUScvc5bpl.5153:44|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |XUScvc5bpl.5204:53|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |XUScvc5bpl.5266:53|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25) true)
 :qid |XUScvc5bpl.5292:55|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26) true)
 :qid |XUScvc5bpl.5306:55|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@27)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@27))))
 :qid |XUScvc5bpl.5323:38|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@28)))
 :qid |XUScvc5bpl.5337:48|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@29)))
 :qid |XUScvc5bpl.5351:48|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@30))))
 :qid |XUScvc5bpl.5371:41|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@31)))
 :qid |XUScvc5bpl.5386:53|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@32)))
 :qid |XUScvc5bpl.5400:53|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33))))
 :qid |XUScvc5bpl.5417:60|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34))))
 :qid |XUScvc5bpl.5434:60|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |XUScvc5bpl.5451:57|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36) true)
 :qid |XUScvc5bpl.7662:68|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))))
 :qid |XUScvc5bpl.7684:66|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))))
 :qid |XUScvc5bpl.7710:66|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@39) true)
 :qid |XUScvc5bpl.8043:31|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@39))
)))
(assert (forall ((s@@40 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@40) true)
 :qid |XUScvc5bpl.8989:31|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@41)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@41)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@41))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@41))))
 :qid |XUScvc5bpl.9008:35|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@41))
)))
(assert (forall ((s@@42 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@42)))
 :qid |XUScvc5bpl.9434:71|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@43) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@43)))
 :qid |XUScvc5bpl.9483:46|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@44)))
 :qid |XUScvc5bpl.9496:64|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@45)))
 :qid |XUScvc5bpl.9509:75|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@46)))
 :qid |XUScvc5bpl.9522:72|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46))
)))
(assert (forall ((s@@47 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@47)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@47)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@47))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@47))))
 :qid |XUScvc5bpl.9551:46|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@48)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@48))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@48))))
 :qid |XUScvc5bpl.9572:55|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |XUScvc5bpl.9601:65|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |XUScvc5bpl.10000:60|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |XUScvc5bpl.10017:66|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |XUScvc5bpl.10046:50|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |XUScvc5bpl.10065:45|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |XUScvc5bpl.10389:87|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@55)))
 :qid |XUScvc5bpl.10606:43|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@56))))
 :qid |XUScvc5bpl.10625:48|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@57)))
 :qid |XUScvc5bpl.10640:50|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@58)))
 :qid |XUScvc5bpl.10654:47|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@59)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@59))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@59))))
 :qid |XUScvc5bpl.10674:58|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@60) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@60)))
 :qid |XUScvc5bpl.10689:39|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@61))))
 :qid |XUScvc5bpl.10711:58|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62))))
 :qid |XUScvc5bpl.10728:58|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63) true)
 :qid |XUScvc5bpl.10743:51|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64))))
 :qid |XUScvc5bpl.10760:60|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@65)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@65))))
 :qid |XUScvc5bpl.11058:47|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@66))))
 :qid |XUScvc5bpl.11080:63|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@67)))
 :qid |XUScvc5bpl.11095:57|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@68)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@68))))
 :qid |XUScvc5bpl.11111:54|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@69)))
 :qid |XUScvc5bpl.11125:55|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@70)))
 :qid |XUScvc5bpl.11139:57|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@71)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@71))))
 :qid |XUScvc5bpl.11161:56|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@72))))
 :qid |XUScvc5bpl.11186:52|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@73)))
 :qid |XUScvc5bpl.11202:54|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@74)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@74))))
 :qid |XUScvc5bpl.12073:45|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@75)))
 :qid |XUScvc5bpl.12087:51|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@76)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@76))))
 :qid |XUScvc5bpl.12110:48|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |XUScvc5bpl.12424:47|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |XUScvc5bpl.12448:47|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |XUScvc5bpl.12703:49|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |XUScvc5bpl.12746:49|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |XUScvc5bpl.12775:48|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |XUScvc5bpl.13070:47|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |XUScvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |XUScvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_56709 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |XUScvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |XUScvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56709 v@@26))
)))
(assert (forall ((v@@27 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_56315 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |XUScvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |XUScvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56315 v@@27))
)))
(assert (forall ((v@@28 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_56118 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |XUScvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |XUScvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56118 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@4 (ReverseVec_56512 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |XUScvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |XUScvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56512 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@5 (ReverseVec_55527 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |XUScvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |XUScvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_55527 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@6 (ReverseVec_55724 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |XUScvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |XUScvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_55724 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@7 (ReverseVec_55921 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |XUScvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |XUScvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_55921 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_55330 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |XUScvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |XUScvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_55330 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |XUScvc5bpl.245:54|
 :skolemid |261|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_62314|) (|l#1| |T@[$1_Event_EventHandle]Multiset_62314|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_62314_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_62314| (|Select__T@[$1_Event_EventHandle]Multiset_62314_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_62314| (|Select__T@[$1_Event_EventHandle]Multiset_62314_| |l#1| handle@@0))))
(Multiset_62314 (|lambda#3| (|v#Multiset_62314| (|Select__T@[$1_Event_EventHandle]Multiset_62314_| |l#0@@0| handle@@0)) (|v#Multiset_62314| (|Select__T@[$1_Event_EventHandle]Multiset_62314_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XUScvc5bpl.2548:13|
 :skolemid |262|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_62314_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |XUScvc5bpl.124:29|
 :skolemid |263|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_91718)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_91718)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_91244)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_92690)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_92775)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_91244)
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
(declare-fun $t14 () T@$Mutation_91718)
(declare-fun $t14@0 () T@$Mutation_91718)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_91718)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 200489) (let ((L5_correct  (=> (and (= $t24@0 ($Mutation_12329 (|l#$Mutation_91718| $t14@1) (seq.++ (|p#$Mutation_91718| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_91718| $t14@1)))) (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2))) (=> (and (and (= $t14@2 ($Mutation_91718 (|l#$Mutation_91718| $t14@1) (|p#$Mutation_91718| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1)))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_91244 (|Store__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_91718| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_91718| $t14@2)) (|v#$Mutation_91718| $t14@2)))))) (and (=> (= (ControlFlow 0 142345) (- 0 201205)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 142345) (- 0 201217)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 142345) (- 0 201244)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 142345) (- 0 201254)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 142345) (- 0 201268)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 142345) (- 0 201292)) (= $t25 _$t2)))))))))))))))))
(let ((anon31_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 142403) 142345)) L5_correct)))
(let ((anon32_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 142177) 142345)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 142173) (- 0 201342)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 142173) (- 0 201379)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon31_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 142399) 142173))) L8_correct)))
(let ((anon30_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 142383) 142403) anon31_Then_correct) (=> (= (ControlFlow 0 142383) 142399) anon31_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 142057) 142173))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 142041) 142177) anon32_Then_correct) (=> (= (ControlFlow 0 142041) 142057) anon32_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 142005) 142041)) anon30_Else$1_correct)))
(let ((anon30_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 142011) 142005)) inline$$Lt$0$anon0_correct)))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= $t17@0 (= _$t1 0))) (and (=> (= (ControlFlow 0 141959) 142383) anon30_Then_correct) (=> (= (ControlFlow 0 141959) 142011) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 142417) 142173))) L8_correct)))
(let ((inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 0) (= 0 0)) (and (=> (= (ControlFlow 0 141939) 142417) anon29_Then_correct) (=> (= (ControlFlow 0 141939) 141959) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_91718| $t14@1))) (=> (and (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|) (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_91718| $t14@1)))) (and (= $t15@0 $t15@0) (= (ControlFlow 0 141945) 141939))) inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 142431) 142173))) L8_correct)))
(let ((anon27_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 142483) 142431) anon28_Then_correct) (=> (= (ControlFlow 0 142483) 141945) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 142481) 142483)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_91718 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 141842) 142431) anon28_Then_correct) (=> (= (ControlFlow 0 141842) 141945) anon28_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 141820) (- 0 200834)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 141820) 142481) anon27_Then_correct) (=> (= (ControlFlow 0 141820) 141842) anon27_Else_correct)))))))
(let ((anon25_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 142527) 142173))) L8_correct))))
(let ((anon24_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 142553) 142173))) L8_correct))))
(let ((anon26_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 141800) 142497) anon26_Then_correct) (=> (= (ControlFlow 0 141800) 141820) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not $t12) (= (ControlFlow 0 141806) 141800)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct)))
(let ((anon24_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 141729) 142527) anon25_Then_correct) (=> (= (ControlFlow 0 141729) 141806) anon25_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |XUScvc5bpl.3872:20|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 141707) 142553) anon24_Then_correct) (=> (= (ControlFlow 0 141707) 141729) anon24_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_62314_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_62314| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_62314| stream@@0) v@@35) 0)
 :qid |XUScvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |XUScvc5bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 141595) 141707)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_91718| $t3)) 0) (= (seq.len (|p#$Mutation_91718| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 141605) 141595))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 200489) 141605) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_97860)
(declare-fun _$t1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_93289)
(declare-fun $t2 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0@@0 () Int)
(declare-fun $t3@@0 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_93686)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_94977)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_94096)
(declare-fun $t4 () T@$1_DiemConfig_Configuration)
(declare-fun $t5 () Int)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_98086)
(declare-fun $t6 () Int)
(declare-fun $t7 () Int)
(declare-fun $t8 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun $t24@@0 () Bool)
(declare-fun $t21 () Int)
(declare-fun $t10@@0 () Int)
(declare-fun $t22 () Int)
(declare-fun $t20@@0 () Int)
(declare-fun $t14@@0 () Bool)
(declare-fun $t13 () Int)
(declare-fun $t12@@0 () Bool)
(declare-fun $t11@@0 () Int)
(declare-fun $t9@@0 () Bool)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@3| () T@$Memory_97860)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@3| () T@$Memory_92775)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@1| () T@$Memory_92775)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t13@1| () Int)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@2| () T@$Memory_92775)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@0| () T@$Memory_92775)
(declare-fun |Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t18@1| () |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(declare-fun inline$$Not$4$dst@1 () Bool)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0| () Int)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t9@1| () Bool)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t8@0| () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1| () T@$Memory_97860)
(declare-fun $abort_code@6 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| () T@$Memory_97860)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1| () Int)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory@0| () T@$Memory_98086)
(declare-fun |Store__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| Int |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| Int) |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1| () |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$Not$3$dst@1 () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t10@1| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t8@0| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| () T@$Memory_92690)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t6@0| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t4@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t33@0| () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@0| () T@$Memory_97860)
(declare-fun |Store__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| Int |T@$1_Diem_MintCapability'$1_XUS_XUS'|) |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| Int) |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_MintCapability'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_MintCapability'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t29@1| () Bool)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t28@0| () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t42@1| () |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t44@1| () |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| () T@$Memory_92690)
(declare-fun $abort_code@2 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| () T@$Memory_92690)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@0| () |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_93686)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_94163)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_94163)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_93686)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_93686)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1| () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_94163)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_94163)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_Configuration'@1| () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 () Int)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2 () T@$Mutation_96463)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1 () T@$Mutation_96463)
(declare-fun |inline$$1_Vector_push_back'vec'u8''$0$m'@1| () T@$Mutation_79626)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1 () T@$Mutation_79626)
(declare-fun $t27@0 () (Seq Int))
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 () Int)
(declare-fun |inline$$1_Vector_contains'vec'u8''$0$res@1| () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 () (Seq (Seq Int)))
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@0 () T@$Mutation_96463)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@0 () T@$Mutation_79626)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t5@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t6@0 () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t39@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t40@0| () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| () T@$Memory_92690)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t38@1| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t23@@0 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles@3 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@4 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Event_EventHandles@2 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0| () Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t19@1| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t18@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t15@0| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t11@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t12@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t13@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t23@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t24@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t25@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t18@0| () Bool)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t11@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t12@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t13@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t14@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t15@0| () Int)
(declare-fun |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t16@0| () Int)
(declare-fun $t28 () Int)
(declare-fun $t29 () Int)
(declare-fun $t30 () T@$1_DiemConfig_Configuration)
(declare-fun $t31 () Int)
(declare-fun $t32 () Int)
(declare-fun $t33 () Int)
(declare-fun $t34 () Int)
(declare-fun $t17 () Int)
(declare-fun $t18 () Int)
(declare-fun $t19 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_101434)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_98173)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_101925)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_101607)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_102024)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_101698)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(push 1)
(set-info :boogie-vc-id $1_XUS_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 201617) (let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon39_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon38_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon37_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon36_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon35_Then_correct| true))
(let ((L2_correct  (and (=> (= (ControlFlow 0 152361) (- 0 207370)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t2)) 1))) (not (= _$t1@@0 186537453))) (or (= 1000000 0) (> 1000000 10000000000))) (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t3@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t3@@0)) 0))) (not (= _$t0@@0 173345816))) (not (= _$t0@@0 173345816))) (exists ((i@@40 Int) ) (!  (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr)))) i@@40) (seq.++ (seq.++ (seq.unit 88) (seq.unit 85)) (seq.unit 83))))
 :qid |XUScvc5bpl.1855:13|
 :skolemid |52|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94977| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94096| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4) 18446744073709551615)) (< $t5 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4)))) (|Select__T@[Int]Bool_| (|domain#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t1@@0 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0@@0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t7)) 0))) (not (= _$t0@@0 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t8)) 1))) (not (= _$t1@@0 186537453)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t2)) 1))) (not (= _$t1@@0 186537453))) (or (= 1000000 0) (> 1000000 10000000000))) (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t3@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t3@@0)) 0))) (not (= _$t0@@0 173345816))) (not (= _$t0@@0 173345816))) (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (>= i@@41 0) (< i@@41 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr)))) i@@41) (seq.++ (seq.++ (seq.unit 88) (seq.unit 85)) (seq.unit 83))))
 :qid |XUScvc5bpl.1855:13|
 :skolemid |52|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94977| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94096| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4) 18446744073709551615)) (< $t5 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4)))) (|Select__T@[Int]Bool_| (|domain#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t1@@0 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0@@0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t7)) 0))) (not (= _$t0@@0 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t8)) 1))) (not (= _$t1@@0 186537453))) (=> (= (ControlFlow 0 152361) (- 0 207684)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1@@0) (= 6 $t10@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t2)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t2)) 1)) (= 3 $t10@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@0))) (and (or (= 1000000 0) (> 1000000 10000000000)) (= 7 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0@@0) (= 6 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t3@@0)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t3@@0)) 0)) (= 3 $t10@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t10@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t10@0))) (and (exists ((i@@42 Int) ) (!  (and (and (|$IsValid'u64'| i@@42) (and (>= i@@42 0) (< i@@42 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))) i@@42) (seq.++ (seq.++ (seq.unit 88) (seq.unit 85)) (seq.unit 83))))
 :qid |XUScvc5bpl.1855:13|
 :skolemid |52|
)) (= 7 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94977| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (= 4 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 $t10@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94096| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4) 18446744073709551615)) (< $t5 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4))) (= 1 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1@@0) (= 6 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t6)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t10@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0@@0) (= 6 $t10@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t7)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t7)) 0)) (= 3 $t10@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t8)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t8)) 1)) (= 3 $t10@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@0))))))))
(let ((anon19_Then_correct  (=> (and (and $abort_flag@8 (= $abort_code@9 $abort_code@9)) (and (= $t10@0 $abort_code@9) (= (ControlFlow 0 151453) 152361))) L2_correct)))
(let ((anon18_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t10@0 $abort_code@7) (= (ControlFlow 0 152375) 152361))) L2_correct)))
(let ((anon17_Then_correct  (=> $t24@@0 (=> (and (and (or (or (and (= $t21 0) (= 7 $t10@@0)) (and (and (= $t22 0) (not (= $t20@@0 0))) (= 7 $t10@@0))) (and (> $t22 18446744073709551615) (= 8 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0 $t10@@0) (= (ControlFlow 0 152443) 152361))) L2_correct))))
(let ((anon16_Then_correct  (=> $t14@@0 (=> (and (and (or (or (or (and (not (= _$t0@@0 173345816)) (= 2 $t10@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t13)) (= 5 $t10@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t13)) 0)) (= 3 $t10@@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0 $t10@@0) (= (ControlFlow 0 152535) 152361))) L2_correct))))
(let ((anon15_Then_correct  (=> $t12@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t11@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t11@@0)) 1)) (= 3 $t10@@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0 $t10@@0) (= (ControlFlow 0 152607) 152361))) L2_correct))))
(let ((anon14_Then_correct  (=> $t9@@0 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t10@@0)) (= $t10@@0 $t10@@0)) (and (= $t10@0 $t10@@0) (= (ControlFlow 0 152633) 152361))) L2_correct))))
(let ((anon19_Else_correct  (=> (not $abort_flag@8) (and (=> (= (ControlFlow 0 151439) (- 0 206933)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1@@0)) (and (=> (= (ControlFlow 0 151439) (- 0 206944)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t2))) (and (=> (= (ControlFlow 0 151439) (- 0 206956)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t2)) 1))) (and (=> (= (ControlFlow 0 151439) (- 0 206974)) (not (not (= _$t1@@0 186537453)))) (=> (not (not (= _$t1@@0 186537453))) (and (=> (= (ControlFlow 0 151439) (- 0 206988)) (not (or (= 1000000 0) (> 1000000 10000000000)))) (=> (not (or (= 1000000 0) (> 1000000 10000000000))) (and (=> (= (ControlFlow 0 151439) (- 0 207007)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0@@0)) (and (=> (= (ControlFlow 0 151439) (- 0 207018)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t3@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t3@@0))) (and (=> (= (ControlFlow 0 151439) (- 0 207030)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t3@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t3@@0)) 0))) (and (=> (= (ControlFlow 0 151439) (- 0 207048)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 151439) (- 0 207062)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 151439) (- 0 207076)) (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (and (>= i@@43 0) (< i@@43 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1)))) i@@43) (seq.++ (seq.++ (seq.unit 88) (seq.unit 85)) (seq.unit 83))))
 :qid |XUScvc5bpl.1855:13|
 :skolemid |52|
)))) (=> (not (exists ((i@@44 Int) ) (!  (and (and (|$IsValid'u64'| i@@44) (and (>= i@@44 0) (< i@@44 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1)))) i@@44) (seq.++ (seq.++ (seq.unit 88) (seq.unit 85)) (seq.unit 83))))
 :qid |XUScvc5bpl.1855:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 151439) (- 0 207096)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94977| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94977| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0))) (and (=> (= (ControlFlow 0 151439) (- 0 207109)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 151439) (- 0 207121)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94096| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4) 18446744073709551615)) (< $t5 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94096| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t4) 18446744073709551615)) (< $t5 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4)))) (and (=> (= (ControlFlow 0 151439) (- 0 207163)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1@@0)) (and (=> (= (ControlFlow 0 151439) (- 0 207174)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 151439) (- 0 207186)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 151439) (- 0 207204)) (not (not (= _$t1@@0 186537453)))) (=> (not (not (= _$t1@@0 186537453))) (and (=> (= (ControlFlow 0 151439) (- 0 207218)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0@@0)) (and (=> (= (ControlFlow 0 151439) (- 0 207229)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 151439) (- 0 207239)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 151439) (- 0 207251)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t7)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t7)) 0))) (and (=> (= (ControlFlow 0 151439) (- 0 207269)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 151439) (- 0 207283)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t8))) (and (=> (= (ControlFlow 0 151439) (- 0 207295)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t8)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t8)) 1))) (and (=> (= (ControlFlow 0 151439) (- 0 207313)) (not (not (= _$t1@@0 186537453)))) (=> (not (not (= _$t1@@0 186537453))) (and (=> (= (ControlFlow 0 151439) (- 0 207327)) (|Select__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@3|) _$t1@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@3|) _$t1@@0) (=> (= (ControlFlow 0 151439) (- 0 207336)) (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@3|) _$t0@@0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Else_correct|  (=> (and (and (not $abort_flag@7) (= $abort_code@9 $abort_code@8)) (and (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@3| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@1|) (= $abort_flag@8 $abort_flag@7))) (and (=> (= (ControlFlow 0 150941) 151453) anon19_Then_correct) (=> (= (ControlFlow 0 150941) 151439) anon19_Else_correct)))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$L3_correct|  (=> (= $abort_code@9 |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t13@1|) (=> (and (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@3| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@2|) (= $abort_flag@8 true)) (and (=> (= (ControlFlow 0 150857) 151453) anon19_Then_correct) (=> (= (ControlFlow 0 150857) 151439) anon19_Else_correct))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Then_correct|  (=> $abort_flag@7 (=> (and (and (= $abort_code@8 $abort_code@8) (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@2| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@1|)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t13@1| $abort_code@8) (= (ControlFlow 0 150955) 150857))) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Then$1_correct|  (=> (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@1| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) (=> (and (= $abort_code@8 $EXEC_FAILURE_CODE) (= $abort_flag@7 true)) (and (=> (= (ControlFlow 0 151005) 150955) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 151005) 150941) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Else_correct|))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0@@0) (= (ControlFlow 0 151003) 151005)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Then$1_correct|)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0@@0)) (=> (and (and (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@0| ($Memory_92775 (|Store__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0@@0 true) (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|contents#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) _$t0@@0 |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t18@1|))) (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@1| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@0|)) (and (= $abort_code@8 $abort_code@7) (= $abort_flag@7 $abort_flag@6))) (and (=> (= (ControlFlow 0 150931) 150955) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 150931) 150941) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon11_Else_correct|))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon9_Then_correct|  (=> inline$$Not$4$dst@1 (=> (and (= _$t0@@0 _$t0@@0) (|$IsValid'u64'| 18446744073709551615)) (=> (and (and (|$IsValid'u64'| 18446744073709551615) (|$IsValid'u64'| 86400000000)) (and (|$IsValid'u64'| 18446744073709551615) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t18@1| (|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 18446744073709551615 18446744073709551615 86400000000 18446744073709551615)))) (and (=> (= (ControlFlow 0 150913) 151003) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 150913) 150931) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon10_Else_correct|)))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon9_Else_correct|  (=> (not inline$$Not$4$dst@1) (=> (and (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0|) (= |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory@2| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t13@1| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0|) (= (ControlFlow 0 150851) 150857))) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon0$1_correct|  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0|) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0| 6)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t12@0|) (= inline$$Not$4$dst@1 inline$$Not$4$dst@1))) (and (=> (= (ControlFlow 0 150835) 150913) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 150835) 150851) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon9_Else_correct|))))))
(let ((inline$$Not$4$anon0_correct  (=> (and (= inline$$Not$4$dst@1  (not |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t9@1|)) (= (ControlFlow 0 150795) 150835)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon0$1_correct|)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon0_correct|  (=> (= _$t0@@0 _$t0@@0) (=> (and (and (|$IsValid'address'| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t8@0|) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t8@0| _$t0@@0)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t9@1| (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$$t8@0|)) (= (ControlFlow 0 150801) 150795))) inline$$Not$4$anon0_correct))))
(let ((anon18_Else_correct  (=> (and (not $abort_flag@6) (= (ControlFlow 0 151009) 150801)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (and (and (not $abort_flag@5) (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@3| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1|)) (and (= $abort_flag@6 $abort_flag@5) (= $abort_code@7 $abort_code@6))) (and (=> (= (ControlFlow 0 150122) 152375) anon18_Then_correct) (=> (= (ControlFlow 0 150122) 151009) anon18_Else_correct)))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|  (=> (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@3| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2|) (=> (and (= $abort_flag@6 true) (= $abort_code@7 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1|)) (and (=> (= (ControlFlow 0 149164) 152375) anon18_Then_correct) (=> (= (ControlFlow 0 149164) 151009) anon18_Else_correct))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> $abort_flag@5 (=> (and (and (= $abort_code@6 $abort_code@6) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| $abort_code@6)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 150136) 149164))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Else_correct|  (=> (not $abort_flag@4) (=> (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4)) (and (=> (= (ControlFlow 0 149946) 150136) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 149946) 150122) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$L3_correct|  (=> (and (= $abort_code@6 |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1|) (= $abort_flag@5 true)) (and (=> (= (ControlFlow 0 149914) 150136) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 149914) 150122) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon23_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Then_correct|  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1| $abort_code@5) (= (ControlFlow 0 149960) 149914))) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Then$1_correct|  (=> (and (= $abort_flag@4 true) (= $abort_code@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 150010) 149960) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 150010) 149946) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1@@0) (= (ControlFlow 0 150008) 150010)) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Then$1_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Else_correct|  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1@@0)) (= |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory@0| ($Memory_98086 (|Store__T@[Int]Bool_| (|domain#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1@@0 true) (|Store__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|contents#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) _$t1@@0 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1|)))) (and (= $abort_flag@4 $abort_flag@3) (= $abort_code@5 $abort_code@4))) (and (=> (= (ControlFlow 0 149936) 149960) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 149936) 149946) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon17_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon15_Then_correct|  (=> inline$$Not$3$dst@1 (and (=> (= (ControlFlow 0 149918) 150008) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 149918) 149936) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon15_Else_correct|  (=> (and (and (not inline$$Not$3$dst@1) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0|) (= (ControlFlow 0 149908) 149914))) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Else$1_correct|  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0|) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0| 6)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t13@0|) (= inline$$Not$3$dst@1 inline$$Not$3$dst@1))) (and (=> (= (ControlFlow 0 149892) 149918) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 149892) 149908) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon15_Else_correct|))))))
(let ((inline$$Not$3$anon0_correct  (=> (and (= inline$$Not$3$dst@1  (not |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t10@1|)) (= (ControlFlow 0 149852) 149892)) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Else$1_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Else_correct|  (=> (not |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t8@0|) (=> (and (and (|$IsValid'address'| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t9@0| _$t1@@0)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t10@1| (|Select__T@[Int]Bool_| (|domain#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t9@0|)) (= (ControlFlow 0 149858) 149852))) inline$$Not$3$anon0_correct))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Then_correct|  (=> |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t8@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (= 5 |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|)) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|) (= (ControlFlow 0 150036) 149914))) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon13_Else_correct|  (=> (and (not |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t6@0|) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t8@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)))) (and (=> (= (ControlFlow 0 149796) 150036) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 149796) 149858) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon14_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon13_Then_correct|  (=> |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t6@0| (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0|)) (= 5 |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0|)) 1)) (= 3 |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|))) (and (not (= _$t1@@0 186537453)) (= 2 |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|))) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t7@0|) (= (ControlFlow 0 150108) 149914))) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t4@0| _$t1@@0) (=> (and (and (= _$t1@@0 _$t1@@0) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0| _$t1@@0) (= |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t6@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$$t5@0|)) 1))) (not (= _$t1@@0 186537453)))))) (and (=> (= (ControlFlow 0 149778) 150108) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon13_Then_correct|) (=> (= (ControlFlow 0 149778) 149796) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon13_Else_correct|))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Else_correct|  (=> (not $abort_flag@3) (=> (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t33@0| _$t1@@0) (= (ControlFlow 0 150112) 149778)) |inline$$1_Diem_publish_burn_capability'$1_XUS_XUS'$0$anon0_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Then_correct|  (=> $abort_flag@3 (=> (and (and (= $abort_code@4 $abort_code@4) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| $abort_code@4)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 150150) 149164))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Then$1_correct|  (=> (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 150200) 150150) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 150200) 150112) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Else_correct|))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1@@0) (= (ControlFlow 0 150198) 150200)) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Then$1_correct|)))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1@@0)) (=> (and (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@0| ($Memory_97860 (|Store__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1@@0 true) (|Store__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) _$t1@@0 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1|))) (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@1| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@0|)) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 149186) 150150) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 149186) 150112) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon22_Else_correct|))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon20_Then_correct|  (=> inline$$Not$2$dst@1 (and (=> (= (ControlFlow 0 149168) 150198) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 149168) 149186) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon21_Else_correct|)))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon20_Else_correct|  (=> (not inline$$Not$2$dst@1) (=> (and (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0|) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0|)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 149158) 149164))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Else$1_correct|  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0|) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0| 6)) (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t32@0|) (= inline$$Not$2$dst@1 inline$$Not$2$dst@1))) (and (=> (= (ControlFlow 0 149142) 149168) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 149142) 149158) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon20_Else_correct|))))))
(let ((inline$$Not$2$anon0_correct  (=> (and (= inline$$Not$2$dst@1  (not |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t29@1|)) (= (ControlFlow 0 149102) 149142)) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Else$1_correct|)))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Else_correct|  (=> (not $abort_flag@2) (=> (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1|)) (=> (and (and (|$IsValid'address'| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t28@0|) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t28@0| _$t1@@0)) (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t29@1| (|Select__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t28@0|)) (= (ControlFlow 0 149108) 149102))) inline$$Not$2$anon0_correct)))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Then_correct|  (=> $abort_flag@2 (=> (and (and (= $abort_code@3 $abort_code@3) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| $abort_code@3)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 150214) 149164))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Else_correct|  (=> (and (not $abort_flag@1) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t42@1| (|$1_Diem_MintCapability'$1_XUS_XUS'| false))) (=> (and (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t44@1| (|$1_Diem_BurnCapability'$1_XUS_XUS'| false)) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t42@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t42@1|)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t44@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t44@1|) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|))) (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t42@1|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t44@1|)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1)))) (and (=> (= (ControlFlow 0 148686) 150214) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 148686) 149108) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret0@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$ret1@0|)) (and (= $abort_code@3 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1|) (= $abort_flag@2 true))) (and (=> (= (ControlFlow 0 146521) 150214) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 146521) 149108) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon19_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Then_correct|  (=> $abort_flag@1 (=> (and (and (= $abort_code@2 $abort_code@2) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| $abort_code@2)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 148700) 146521))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816) (=> (and (and (= (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@2))) inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94163| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (= $abort_flag@1 $abort_flag@0@@0) (= $abort_code@2 $abort_code@1@@0))) (and (=> (= (ControlFlow 0 148456) 148700) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 148456) 148686) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Else_correct|))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct  (=> (and (and (not |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2|) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_93686 (|Store__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (= (ControlFlow 0 148430) 148456))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct  (=> (and (and |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2| (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_93686 (|Store__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|) (= (ControlFlow 0 148468) 148456))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Else_correct  (=> (not |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1|) (=> (and (= $1_DiemConfig_Configuration_$memory@1 ($Memory_94163 (|Store__T@[Int]Bool_| (|domain#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1)) (and (=> (= (ControlFlow 0 148416) 148468) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct) (=> (= (ControlFlow 0 148416) 148430) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Then_correct  (=> |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1| (=> (and (= $1_DiemConfig_Configuration_$memory@0 ($Memory_94163 (|Store__T@[Int]Bool_| (|domain#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816 |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_Configuration'@1|))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0)) (and (=> (= (ControlFlow 0 148480) 148468) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct) (=> (= (ControlFlow 0 148480) 148430) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Else_correct  (=> (not inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0) (and (=> (= (ControlFlow 0 148404) 148480) inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Then_correct) (=> (= (ControlFlow 0 148404) 148416) inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct  (=> (and (= $abort_flag@1 true) (= $abort_code@2 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1)) (and (=> (= (ControlFlow 0 148193) 148700) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 148193) 148686) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon42_Else_correct|)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Then_correct  (=> inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94977| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (= 4 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94096| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0) 18446744073709551615)) (< inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0))) (= 1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0) (= (ControlFlow 0 148578) 148193))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Else_correct  (=> (and (not $abort_flag@0@@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2 ($Mutation_96463 (|l#$Mutation_96463| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (|p#$Mutation_96463| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) ($1_RegisteredCurrencies_RegisteredCurrencies (|v#$Mutation_79626| |inline$$1_Vector_push_back'vec'u8''$0$m'@1|))))) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1 (|v#$Mutation_96463| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2)) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94977| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94096| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0) 18446744073709551615)) (< inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0))))))) (and (=> (= (ControlFlow 0 148396) 148578) inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Then_correct) (=> (= (ControlFlow 0 148396) 148404) inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 $abort_code@1@@0) (= (ControlFlow 0 148592) 148193))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((|inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'vec'u8''$0$m'@1| ($Mutation_79626 (|l#$Mutation_79626| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (|p#$Mutation_79626| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (seq.++ (|v#$Mutation_79626| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (seq.unit $t27@0)))) (and (=> (= (ControlFlow 0 148270) 148592) inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Then_correct) (=> (= (ControlFlow 0 148270) 148396) inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Then_correct  (=> (and (and inline$$Not$1$dst@1 (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1 ($Mutation_96463 ($Local 2) (as seq.empty (Seq Int)) inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0))) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1 ($Mutation_79626 (|l#$Mutation_96463| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (seq.++ (|p#$Mutation_96463| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (seq.unit 0)) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (|v#$Mutation_96463| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1)))) (= (ControlFlow 0 148276) 148270))) |inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Else_correct  (=> (and (and (not inline$$Not$1$dst@1) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= (ControlFlow 0 148187) 148193))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 7)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 148171) 148276) inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Then_correct) (=> (= (ControlFlow 0 148171) 148187) inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_Vector_contains'vec'u8''$0$res@1|)) (= (ControlFlow 0 148131) 148171)) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else$1_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else_correct  (=> (and (not $abort_flag@0@@0) (= (ControlFlow 0 148137) 148131)) inline$$Not$1$anon0_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 $abort_code@1@@0) (= (ControlFlow 0 148606) 148193))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((|inline$$1_Vector_contains'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'vec'u8''$0$res@1| (exists ((i@@45 Int) ) (!  (and (and (|$IsValid'u64'| i@@45) (and (>= i@@45 0) (< i@@45 (seq.len inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1)))) (= (seq.nth inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 i@@45) $t27@0))
 :qid |XUScvc5bpl.1855:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 148087) 148606) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Then_correct) (=> (= (ControlFlow 0 148087) 148137) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Else_correct  (=> (and (not inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0 (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@3)))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (= (ControlFlow 0 148093) 148087))) |inline$$1_Vector_contains'vec'u8''$0$anon0_correct|))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Then_correct  (=> inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0) (= (ControlFlow 0 148634) 148193))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_96463| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@0)) 0) (=> (and (= (seq.len (|p#$Mutation_79626| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@0)) 0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t5@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t6@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= _$t0@@0 _$t0@@0)) (and (= $t27@0 $t27@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 148015) 148634) inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Then_correct) (=> (= (ControlFlow 0 148015) 148093) inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Else_correct)))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Else_correct|  (=> (and (and (not $abort_flag@0@@0) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t39@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t40@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= (ControlFlow 0 148638) 148015))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon0_correct)))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Then_correct|  (=> $abort_flag@0@@0 (=> (and (and (= $abort_code@1@@0 $abort_code@1@@0) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| $abort_code@1@@0)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 148714) 146521))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Then$1_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 148764) 148714) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 148764) 148638) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0@@0) (= (ControlFlow 0 148762) 148764)) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Then$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0@@0)) (=> (and (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| ($Memory_92690 (|Store__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0@@0 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) _$t0@@0 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t38@1|))) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 147131) 148714) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 147131) 148638) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon41_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon39_Else_correct|  (=> (and (not false) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t38@1| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0 0 $t23@@0 false 1000000 100 $t27@0 true |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 147113) 148762) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Then_correct|) (=> (= (ControlFlow 0 147113) 147131) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon40_Else_correct|)))))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@3 |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0|) false) (= $1_Event_EventHandles@4 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@3 |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 147069) 148778) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon39_Then_correct|) (=> (= (ControlFlow 0 147069) 147113) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon39_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon38_Else_correct|  (=> (and (not false) (= (ControlFlow 0 147075) 147069)) |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@2 |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0|) false) (= $1_Event_EventHandles@3 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@2 |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 146987) 148792) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon38_Then_correct|) (=> (= (ControlFlow 0 146987) 147075) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon38_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon37_Else_correct|  (=> (and (not false) (= (ControlFlow 0 146993) 146987)) |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@1 |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0|) false) (= $1_Event_EventHandles@2 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@1 |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 146905) 148806) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon37_Then_correct|) (=> (= (ControlFlow 0 146905) 146993) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon37_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon36_Else_correct|  (=> (and (not false) (= (ControlFlow 0 146911) 146905)) |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 146823) 148820) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon36_Then_correct|) (=> (= (ControlFlow 0 146823) 146911) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon36_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon35_Else_correct|  (=> (and (not false) (= (ControlFlow 0 146829) 146823)) |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 146741) 148834) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon35_Then_correct|) (=> (= (ControlFlow 0 146741) 146829) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon35_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon34_Then_correct|  (=> (and (and |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1| (|$IsValid'u128'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 146747) 146741))) |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$anon0_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon34_Else_correct|  (=> (not |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1|) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 146645) 146521))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L5_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0| 7)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1|))) (and (=> (= (ControlFlow 0 146629) 146747) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon34_Then_correct|) (=> (= (ControlFlow 0 146629) 146645) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon34_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Then$1_correct|  (=> (= inline$$Le$0$dst@1 inline$$Le$0$dst@1) (=> (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1| inline$$Le$0$dst@1) (= (ControlFlow 0 148900) 146629)) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L5_correct|))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= 1000000 10000000000)) (= (ControlFlow 0 148884) 148900)) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Then$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Then_correct|  (=> inline$$Lt$0$dst@1@@0 (=> (and (|$IsValid'u64'| 10000000000) (= (ControlFlow 0 148890) 148884)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Else_correct|  (=> (and (and (not inline$$Lt$0$dst@1@@0) (= false false)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t10@1| false) (= (ControlFlow 0 146599) 146629))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L5_correct|)))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (= inline$$Lt$0$dst@1@@0 (< 0 1000000)) (and (=> (= (ControlFlow 0 146571) 148890) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Then_correct|) (=> (= (ControlFlow 0 146571) 146599) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon33_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon32_Then_correct|  (=> inline$$Not$0$dst@1 (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 146577) 146571)) inline$$Lt$0$anon0_correct@@0))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon32_Else_correct|  (=> (not inline$$Not$0$dst@1) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 146515) 146521))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Else$1_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0| 6)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t22@0|) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 146499) 146577) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon32_Then_correct|) (=> (= (ControlFlow 0 146499) 146515) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon32_Else_correct|))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t19@1|)) (= (ControlFlow 0 146459) 146499)) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Else$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Else_correct|  (=> (not |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t17@0|) (=> (and (and (|$IsValid'address'| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t18@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t18@0| _$t0@@0)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t19@1| (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t18@0|)) (= (ControlFlow 0 146465) 146459))) inline$$Not$0$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Then_correct|  (=> |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t17@0| (=> (and (not (= _$t0@@0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|)) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 148930) 146521))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon30_Else_correct|  (=> (and (not |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t15@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t17@0|  (not (= _$t0@@0 173345816)))) (and (=> (= (ControlFlow 0 146403) 148930) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 146403) 146465) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon31_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon30_Then_correct|  (=> (and |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t15@0| (or (or (or (and (not (= _$t0@@0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0|)) (= 5 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0|)) 0)) (= 3 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|))) (and (not (= _$t0@@0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|)))) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t16@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 149022) 146521))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t11@0| _$t0@@0) (=> (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t12@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816)) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t13@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (and (= _$t0@@0 _$t0@@0) (= $t23@@0 $t23@@0)) (and (= false false) (= 1000000 1000000))) (and (and (= 100 100) (= $t27@0 $t27@0)) (and (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0| _$t0@@0) (= |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t15@0|  (or (or (or (not (= _$t0@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0|))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$$t14@0|)) 0))) (not (= _$t0@@0 173345816))))))) (and (=> (= (ControlFlow 0 146381) 149022) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 146381) 146403) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon30_Else_correct|)))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon18_Else_correct|  (=> (not |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t21@0|) (=> (and (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t23@0| _$t0@@0) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t24@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t25@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= (ControlFlow 0 149030) 146381))) |inline$$1_Diem_register_currency'$1_XUS_XUS'$0$anon0_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon18_Then_correct|  (=> (and |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t21@0| (or (or (or (and (not (= _$t0@@0 173345816)) (= 2 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0|)) (= 5 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0|)) 0)) (= 3 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|))) (and (not (= _$t0@@0 173345816)) (= 2 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)))) (=> (and (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 150306) 149164))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t18@0|) (=> (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0| _$t0@@0) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t21@0|  (or (or (or (not (= _$t0@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0|))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t20@0|)) 0))) (not (= _$t0@@0 173345816))))) (and (=> (= (ControlFlow 0 144944) 150306) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 144944) 149030) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon18_Else_correct|))))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon17_Then_correct|  (=> (and |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t18@0| (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0|)) (= 5 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0|)) 1)) (= 3 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|))) (and (not (= _$t1@@0 186537453)) (= 2 |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)))) (=> (and (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@1| |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t19@0|)) (and (= |$1_Diem_MintCapability'$1_XUS_XUS'_$memory@2| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 150378) 149164))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t10@0| _$t1@@0) (=> (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t11@0| _$t0@@0) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t12@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t13@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t14@0| _$t1@@0)) (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t15@0| _$t1@@0) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t16@0| _$t1@@0))) (=> (and (and (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0)) (and (= $t23@@0 $t23@@0) (= 1000000 1000000))) (and (and (= 100 100) (= $t27@0 $t27@0)) (and (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0| _$t1@@0) (= |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t18@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$$t17@0|)) 1))) (not (= _$t1@@0 186537453))))))) (and (=> (= (ControlFlow 0 144872) 150378) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 144872) 144944) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon17_Else_correct|))))))))
(let ((anon17_Else_correct  (=> (not $t24@@0) (=> (and (|$IsValid'$1_FixedPoint32_FixedPoint32'| $t23@@0) (= $t23@@0 (ite (= 1 1) ($1_FixedPoint32_FixedPoint32 1) ($1_FixedPoint32_FixedPoint32 2)))) (=> (and (and (|$IsValid'u64'| 1000000) (|$IsValid'u64'| 100)) (and (= $t27@0 (seq.++ (seq.++ (seq.unit 88) (seq.unit 85)) (seq.unit 83))) (|$IsValid'vec'u8''| $t27@0))) (=> (and (and (and (= $t28 _$t1@@0) (= $t29 _$t0@@0)) (and (= $t30 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t31 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (and (= $t32 _$t1@@0) (= $t33 _$t1@@0)) (and (= $t34 _$t1@@0) (= (ControlFlow 0 150382) 144872)))) |inline$$1_Diem_register_SCS_currency'$1_XUS_XUS'$0$anon0_correct|))))))
(let ((anon16_Else_correct  (=> (and (not $t14@@0) (|$IsValid'u64'| 1)) (=> (and (and (and (|$IsValid'u64'| 1) (= $t17 ($shl 1 64))) (and (= $t18 ($shl 1 32)) (= $t19 (div $t17 $t18)))) (and (and (= $t20@@0 ($shl 1 64)) (= $t21 ($shl 1 32))) (and (= $t22 (div $t20@@0 $t21)) (= $t24@@0  (or (or (= $t21 0) (and (= $t22 0) (not (= $t20@@0 0)))) (> $t22 18446744073709551615)))))) (and (=> (= (ControlFlow 0 143585) 152443) anon17_Then_correct) (=> (= (ControlFlow 0 143585) 150382) anon17_Else_correct))))))
(let ((anon15_Else_correct  (=> (not $t12@@0) (=> (and (= $t13 _$t0@@0) (= $t14@@0  (or (or (or (not (= _$t0@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t13)) 0))) (not (= _$t0@@0 173345816))))) (and (=> (= (ControlFlow 0 143455) 152535) anon16_Then_correct) (=> (= (ControlFlow 0 143455) 143585) anon16_Else_correct))))))
(let ((anon14_Else_correct  (=> (not $t9@@0) (=> (and (= $t11@@0 _$t1@@0) (= $t12@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) $t11@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $t11@@0)) 1))) (not (= _$t1@@0 186537453))))) (and (=> (= (ControlFlow 0 143383) 152607) anon15_Then_correct) (=> (= (ControlFlow 0 143383) 143455) anon15_Else_correct))))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (and (and (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |XUScvc5bpl.8447:21|
 :skolemid |147|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101434| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |XUScvc5bpl.8447:268|
 :skolemid |148|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |XUScvc5bpl.8451:21|
 :skolemid |149|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98173| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |XUScvc5bpl.8451:231|
 :skolemid |150|
)))) (and (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_101925| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_101607| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |XUScvc5bpl.8455:21|
 :skolemid |151|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_102024| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_101698| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93289| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |XUScvc5bpl.8455:292|
 :skolemid |152|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) addr@@4) (= addr@@4 173345816)))
 :qid |XUScvc5bpl.8471:20|
 :skolemid |153|
))) (and (|$IsValid'address'| _$t0@@0) (|$IsValid'address'| _$t1@@0))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |XUScvc5bpl.8480:20|
 :skolemid |154|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |XUScvc5bpl.8484:20|
 :skolemid |155|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93289| $1_Roles_RoleId_$memory) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory) $a_0@@2)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@2))
 :qid |XUScvc5bpl.8488:20|
 :skolemid |156|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_94096| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@3)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@3))
 :qid |XUScvc5bpl.8492:20|
 :skolemid |157|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_94096| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@3))
)))))) (and (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@4)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@4))
 :qid |XUScvc5bpl.8496:20|
 :skolemid |158|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_93686| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_94977| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@5)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@5))
 :qid |XUScvc5bpl.8500:20|
 :skolemid |159|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_94977| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@5))
))) (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|contents#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) $a_0@@6)))
(|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| $rsc@@6))
 :qid |XUScvc5bpl.8504:20|
 :skolemid |160|
 :pattern ( (|Select__T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'_| (|contents#$Memory_98086| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@7)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@7) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@7)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@7) 10000000000))))
 :qid |XUScvc5bpl.8508:20|
 :skolemid |161|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_92690| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@7))
)))) (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) $a_0@@8)))
(|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| $rsc@@8))
 :qid |XUScvc5bpl.8512:20|
 :skolemid |162|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_97860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|contents#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) $a_0@@9)))
 (and (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| $rsc@@9) (and (and (and (> (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| $rsc@@9) 0) (> (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| $rsc@@9) 0)) (> (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| $rsc@@9) 0)) (> (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| $rsc@@9) 0))))
 :qid |XUScvc5bpl.8516:20|
 :skolemid |163|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|contents#$Memory_92775| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) $a_0@@9))
))) (and (= $t2 _$t1@@0) (= $t3@@0 _$t0@@0)))) (and (and (and (= $t4 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_94163| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t5 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t6 _$t1@@0) (= $t7 _$t0@@0))) (and (and (= $t8 _$t1@@0) (= _$t0@@0 _$t0@@0)) (and (= _$t1@@0 _$t1@@0) (= $t9@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_91244| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))))) (and (=> (= (ControlFlow 0 143323) 152633) anon14_Then_correct) (=> (= (ControlFlow 0 143323) 143383) anon14_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_62314_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_62314| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_62314| stream@@1) v@@36) 0)
 :qid |XUScvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |XUScvc5bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 142666) 143323)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 201617) 142666) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
