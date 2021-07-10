(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_86813 0)) ((($Memory_86813 (|domain#$Memory_86813| |T@[Int]Bool|) (|contents#$Memory_86813| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_132931 0)) ((($Memory_132931 (|domain#$Memory_132931| |T@[Int]Bool|) (|contents#$Memory_132931| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_128336 0)) ((($Memory_128336 (|domain#$Memory_128336| |T@[Int]Bool|) (|contents#$Memory_128336| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_95199 0)) ((($Memory_95199 (|domain#$Memory_95199| |T@[Int]Bool|) (|contents#$Memory_95199| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_95127 0)) ((($Memory_95127 (|domain#$Memory_95127| |T@[Int]Bool|) (|contents#$Memory_95127| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_119637 0)) ((($Memory_119637 (|domain#$Memory_119637| |T@[Int]Bool|) (|contents#$Memory_119637| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_119422 0)) ((($Memory_119422 (|domain#$Memory_119422| |T@[Int]Bool|) (|contents#$Memory_119422| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_119051 0)) ((($Memory_119051 (|domain#$Memory_119051| |T@[Int]Bool|) (|contents#$Memory_119051| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_116591 0)) ((($Memory_116591 (|domain#$Memory_116591| |T@[Int]Bool|) (|contents#$Memory_116591| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_116527 0)) ((($Memory_116527 (|domain#$Memory_116527| |T@[Int]Bool|) (|contents#$Memory_116527| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_127262 0)) ((($Memory_127262 (|domain#$Memory_127262| |T@[Int]Bool|) (|contents#$Memory_127262| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_115008 0)) ((($Memory_115008 (|domain#$Memory_115008| |T@[Int]Bool|) (|contents#$Memory_115008| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_114498 0)) ((($Memory_114498 (|domain#$Memory_114498| |T@[Int]Bool|) (|contents#$Memory_114498| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111349 0)) ((($Memory_111349 (|domain#$Memory_111349| |T@[Int]Bool|) (|contents#$Memory_111349| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111130 0)) ((($Memory_111130 (|domain#$Memory_111130| |T@[Int]Bool|) (|contents#$Memory_111130| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_128125 0)) ((($Memory_128125 (|domain#$Memory_128125| |T@[Int]Bool|) (|contents#$Memory_128125| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104021 0)) ((($Memory_104021 (|domain#$Memory_104021| |T@[Int]Bool|) (|contents#$Memory_104021| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_103934 0)) ((($Memory_103934 (|domain#$Memory_103934| |T@[Int]Bool|) (|contents#$Memory_103934| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100731 0)) ((($Memory_100731 (|domain#$Memory_100731| |T@[Int]Bool|) (|contents#$Memory_100731| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100644 0)) ((($Memory_100644 (|domain#$Memory_100644| |T@[Int]Bool|) (|contents#$Memory_100644| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104285 0)) ((($Memory_104285 (|domain#$Memory_104285| |T@[Int]Bool|) (|contents#$Memory_104285| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_113190 0)) ((($Memory_113190 (|domain#$Memory_113190| |T@[Int]Bool|) (|contents#$Memory_113190| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104611 0)) ((($Memory_104611 (|domain#$Memory_104611| |T@[Int]Bool|) (|contents#$Memory_104611| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104194 0)) ((($Memory_104194 (|domain#$Memory_104194| |T@[Int]Bool|) (|contents#$Memory_104194| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_115433 0)) ((($Memory_115433 (|domain#$Memory_115433| |T@[Int]Bool|) (|contents#$Memory_115433| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104512 0)) ((($Memory_104512 (|domain#$Memory_104512| |T@[Int]Bool|) (|contents#$Memory_104512| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_97882 0)) ((($Memory_97882 (|domain#$Memory_97882| |T@[Int]Bool|) (|contents#$Memory_97882| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_97795 0)) ((($Memory_97795 (|domain#$Memory_97795| |T@[Int]Bool|) (|contents#$Memory_97795| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_97708 0)) ((($Memory_97708 (|domain#$Memory_97708| |T@[Int]Bool|) (|contents#$Memory_97708| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_131622 0)) ((($Memory_131622 (|domain#$Memory_131622| |T@[Int]Bool|) (|contents#$Memory_131622| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_97621 0)) ((($Memory_97621 (|domain#$Memory_97621| |T@[Int]Bool|) (|contents#$Memory_97621| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_97534 0)) ((($Memory_97534 (|domain#$Memory_97534| |T@[Int]Bool|) (|contents#$Memory_97534| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_96653 0)) ((($Memory_96653 (|domain#$Memory_96653| |T@[Int]Bool|) (|contents#$Memory_96653| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_96720 0)) ((($Memory_96720 (|domain#$Memory_96720| |T@[Int]Bool|) (|contents#$Memory_96720| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_96571 0)) ((($Memory_96571 (|domain#$Memory_96571| |T@[Int]Bool|) (|contents#$Memory_96571| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_96489 0)) ((($Memory_96489 (|domain#$Memory_96489| |T@[Int]Bool|) (|contents#$Memory_96489| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_96407 0)) ((($Memory_96407 (|domain#$Memory_96407| |T@[Int]Bool|) (|contents#$Memory_96407| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96325 0)) ((($Memory_96325 (|domain#$Memory_96325| |T@[Int]Bool|) (|contents#$Memory_96325| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_96243 0)) ((($Memory_96243 (|domain#$Memory_96243| |T@[Int]Bool|) (|contents#$Memory_96243| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100342 0)) ((($Memory_100342 (|domain#$Memory_100342| |T@[Int]Bool|) (|contents#$Memory_100342| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100277 0)) ((($Memory_100277 (|domain#$Memory_100277| |T@[Int]Bool|) (|contents#$Memory_100277| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_95846 0)) ((($Memory_95846 (|domain#$Memory_95846| |T@[Int]Bool|) (|contents#$Memory_95846| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_95813 0)) ((($Memory_95813 (|domain#$Memory_95813| |T@[Int]Bool|) (|contents#$Memory_95813| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_93681 0)) ((($Memory_93681 (|domain#$Memory_93681| |T@[Int]Bool|) (|contents#$Memory_93681| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_64751 0)) (((Multiset_64751 (|v#Multiset_64751| |T@[$EventRep]Int|) (|l#Multiset_64751| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_64751| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_64751|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_129163 0)) ((($Mutation_129163 (|l#$Mutation_129163| T@$Location) (|p#$Mutation_129163| (Seq Int)) (|v#$Mutation_129163| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_129119 0)) ((($Mutation_129119 (|l#$Mutation_129119| T@$Location) (|p#$Mutation_129119| (Seq Int)) (|v#$Mutation_129119| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_122816 0)) ((($Mutation_122816 (|l#$Mutation_122816| T@$Location) (|p#$Mutation_122816| (Seq Int)) (|v#$Mutation_122816| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_122774 0)) ((($Mutation_122774 (|l#$Mutation_122774| T@$Location) (|p#$Mutation_122774| (Seq Int)) (|v#$Mutation_122774| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_30721 0)) ((($Mutation_30721 (|l#$Mutation_30721| T@$Location) (|p#$Mutation_30721| (Seq Int)) (|v#$Mutation_30721| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_109847 0)) ((($Mutation_109847 (|l#$Mutation_109847| T@$Location) (|p#$Mutation_109847| (Seq Int)) (|v#$Mutation_109847| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_99020 0)) ((($Mutation_99020 (|l#$Mutation_99020| T@$Location) (|p#$Mutation_99020| (Seq Int)) (|v#$Mutation_99020| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_94155 0)) ((($Mutation_94155 (|l#$Mutation_94155| T@$Location) (|p#$Mutation_94155| (Seq Int)) (|v#$Mutation_94155| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_87441 0)) ((($Mutation_87441 (|l#$Mutation_87441| T@$Location) (|p#$Mutation_87441| (Seq Int)) (|v#$Mutation_87441| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_82809 0)) ((($Mutation_82809 (|l#$Mutation_82809| T@$Location) (|p#$Mutation_82809| (Seq Int)) (|v#$Mutation_82809| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_82063 0)) ((($Mutation_82063 (|l#$Mutation_82063| T@$Location) (|p#$Mutation_82063| (Seq Int)) (|v#$Mutation_82063| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_80623 0)) ((($Mutation_80623 (|l#$Mutation_80623| T@$Location) (|p#$Mutation_80623| (Seq Int)) (|v#$Mutation_80623| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_79877 0)) ((($Mutation_79877 (|l#$Mutation_79877| T@$Location) (|p#$Mutation_79877| (Seq Int)) (|v#$Mutation_79877| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_78437 0)) ((($Mutation_78437 (|l#$Mutation_78437| T@$Location) (|p#$Mutation_78437| (Seq Int)) (|v#$Mutation_78437| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_77691 0)) ((($Mutation_77691 (|l#$Mutation_77691| T@$Location) (|p#$Mutation_77691| (Seq Int)) (|v#$Mutation_77691| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_76251 0)) ((($Mutation_76251 (|l#$Mutation_76251| T@$Location) (|p#$Mutation_76251| (Seq Int)) (|v#$Mutation_76251| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_75505 0)) ((($Mutation_75505 (|l#$Mutation_75505| T@$Location) (|p#$Mutation_75505| (Seq Int)) (|v#$Mutation_75505| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_74065 0)) ((($Mutation_74065 (|l#$Mutation_74065| T@$Location) (|p#$Mutation_74065| (Seq Int)) (|v#$Mutation_74065| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_73319 0)) ((($Mutation_73319 (|l#$Mutation_73319| T@$Location) (|p#$Mutation_73319| (Seq Int)) (|v#$Mutation_73319| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_71879 0)) ((($Mutation_71879 (|l#$Mutation_71879| T@$Location) (|p#$Mutation_71879| (Seq Int)) (|v#$Mutation_71879| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71133 0)) ((($Mutation_71133 (|l#$Mutation_71133| T@$Location) (|p#$Mutation_71133| (Seq Int)) (|v#$Mutation_71133| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_69693 0)) ((($Mutation_69693 (|l#$Mutation_69693| T@$Location) (|p#$Mutation_69693| (Seq Int)) (|v#$Mutation_69693| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68947 0)) ((($Mutation_68947 (|l#$Mutation_68947| T@$Location) (|p#$Mutation_68947| (Seq Int)) (|v#$Mutation_68947| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_67469 0)) ((($Mutation_67469 (|l#$Mutation_67469| T@$Location) (|p#$Mutation_67469| (Seq Int)) (|v#$Mutation_67469| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_66723 0)) ((($Mutation_66723 (|l#$Mutation_66723| T@$Location) (|p#$Mutation_66723| (Seq Int)) (|v#$Mutation_66723| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_64751_| (|T@[$1_Event_EventHandle]Multiset_64751| T@$1_Event_EventHandle) T@Multiset_64751)
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
(declare-fun ReverseVec_58934 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_58540 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_58343 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_58737 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_57752 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_57949 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_58146 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_57555 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_64751| |T@[$1_Event_EventHandle]Multiset_64751|) |T@[$1_Event_EventHandle]Multiset_64751|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountFreezingandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountFreezingandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountFreezingandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountFreezingandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountFreezingandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountFreezingandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountFreezingandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountFreezingandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |AccountFreezingandybpl.590:13|
 :skolemid |15|
))))
 :qid |AccountFreezingandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |AccountFreezingandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |AccountFreezingandybpl.603:17|
 :skolemid |18|
)))))
 :qid |AccountFreezingandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |AccountFreezingandybpl.770:13|
 :skolemid |20|
))))
 :qid |AccountFreezingandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |AccountFreezingandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |AccountFreezingandybpl.783:17|
 :skolemid |23|
)))))
 :qid |AccountFreezingandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |AccountFreezingandybpl.950:13|
 :skolemid |25|
))))
 :qid |AccountFreezingandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |AccountFreezingandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |AccountFreezingandybpl.963:17|
 :skolemid |28|
)))))
 :qid |AccountFreezingandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |AccountFreezingandybpl.1130:13|
 :skolemid |30|
))))
 :qid |AccountFreezingandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |AccountFreezingandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |AccountFreezingandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |AccountFreezingandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |AccountFreezingandybpl.1310:13|
 :skolemid |35|
))))
 :qid |AccountFreezingandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |AccountFreezingandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |AccountFreezingandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |AccountFreezingandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |AccountFreezingandybpl.1490:13|
 :skolemid |40|
))))
 :qid |AccountFreezingandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |AccountFreezingandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |AccountFreezingandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |AccountFreezingandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |AccountFreezingandybpl.1670:13|
 :skolemid |45|
))))
 :qid |AccountFreezingandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |AccountFreezingandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |AccountFreezingandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |AccountFreezingandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |AccountFreezingandybpl.1850:13|
 :skolemid |50|
))))
 :qid |AccountFreezingandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |AccountFreezingandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |AccountFreezingandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |AccountFreezingandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |AccountFreezingandybpl.2030:13|
 :skolemid |55|
))))
 :qid |AccountFreezingandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |AccountFreezingandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |AccountFreezingandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |AccountFreezingandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |AccountFreezingandybpl.2210:13|
 :skolemid |60|
))))
 :qid |AccountFreezingandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |AccountFreezingandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |AccountFreezingandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |AccountFreezingandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |AccountFreezingandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |AccountFreezingandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountFreezingandybpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountFreezingandybpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_64751| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream) v@@24) 0)
 :qid |AccountFreezingandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountFreezingandybpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |AccountFreezingandybpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountFreezingandybpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |AccountFreezingandybpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountFreezingandybpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |AccountFreezingandybpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountFreezingandybpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |AccountFreezingandybpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountFreezingandybpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |AccountFreezingandybpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountFreezingandybpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |AccountFreezingandybpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountFreezingandybpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |AccountFreezingandybpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountFreezingandybpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |AccountFreezingandybpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountFreezingandybpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |AccountFreezingandybpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |AccountFreezingandybpl.3083:70|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |AccountFreezingandybpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |AccountFreezingandybpl.3139:60|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |AccountFreezingandybpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |AccountFreezingandybpl.3195:66|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |AccountFreezingandybpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |AccountFreezingandybpl.3251:60|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |AccountFreezingandybpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |AccountFreezingandybpl.3307:63|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |AccountFreezingandybpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |AccountFreezingandybpl.3363:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |AccountFreezingandybpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |AccountFreezingandybpl.3419:82|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |AccountFreezingandybpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |AccountFreezingandybpl.3475:88|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |AccountFreezingandybpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountFreezingandybpl.3684:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |AccountFreezingandybpl.4233:49|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |AccountFreezingandybpl.4283:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |AccountFreezingandybpl.4302:49|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |AccountFreezingandybpl.4390:91|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |AccountFreezingandybpl.4404:113|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |AccountFreezingandybpl.4418:71|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |AccountFreezingandybpl.4432:75|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |AccountFreezingandybpl.4446:73|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |AccountFreezingandybpl.4466:48|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |AccountFreezingandybpl.4482:57|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |AccountFreezingandybpl.4496:103|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |AccountFreezingandybpl.4510:125|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |AccountFreezingandybpl.4524:83|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |AccountFreezingandybpl.4538:87|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |AccountFreezingandybpl.4552:85|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |AccountFreezingandybpl.4566:48|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |AccountFreezingandybpl.4579:65|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |AccountFreezingandybpl.5083:45|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |AccountFreezingandybpl.5096:45|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |AccountFreezingandybpl.5109:55|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |AccountFreezingandybpl.5123:55|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |AccountFreezingandybpl.5143:38|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |AccountFreezingandybpl.5164:44|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |AccountFreezingandybpl.5215:53|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |AccountFreezingandybpl.5277:53|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25) true)
 :qid |AccountFreezingandybpl.5303:55|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26) true)
 :qid |AccountFreezingandybpl.5317:55|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@27)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@27))))
 :qid |AccountFreezingandybpl.5334:38|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@28)))
 :qid |AccountFreezingandybpl.5348:48|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@29)))
 :qid |AccountFreezingandybpl.5362:48|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@30))))
 :qid |AccountFreezingandybpl.5382:41|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@31)))
 :qid |AccountFreezingandybpl.5397:53|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@32)))
 :qid |AccountFreezingandybpl.5411:53|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33))))
 :qid |AccountFreezingandybpl.5428:60|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34))))
 :qid |AccountFreezingandybpl.5445:60|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |AccountFreezingandybpl.5462:57|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36) true)
 :qid |AccountFreezingandybpl.7673:68|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))))
 :qid |AccountFreezingandybpl.7695:66|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))))
 :qid |AccountFreezingandybpl.7721:66|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@39) true)
 :qid |AccountFreezingandybpl.8054:31|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@39))
)))
(assert (forall ((s@@40 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@40) true)
 :qid |AccountFreezingandybpl.8398:31|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@41)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@41)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@41))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@41))))
 :qid |AccountFreezingandybpl.8417:35|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@41))
)))
(assert (forall ((s@@42 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@42)))
 :qid |AccountFreezingandybpl.8843:71|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@43) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@43)))
 :qid |AccountFreezingandybpl.8892:46|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@44)))
 :qid |AccountFreezingandybpl.8905:64|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@45)))
 :qid |AccountFreezingandybpl.8918:75|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@46)))
 :qid |AccountFreezingandybpl.8931:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46))
)))
(assert (forall ((s@@47 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@47)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@47)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@47))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@47))))
 :qid |AccountFreezingandybpl.8960:46|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@48)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@48))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@48))))
 :qid |AccountFreezingandybpl.8981:55|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |AccountFreezingandybpl.9010:65|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |AccountFreezingandybpl.9409:60|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |AccountFreezingandybpl.9426:66|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |AccountFreezingandybpl.9455:50|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |AccountFreezingandybpl.9474:45|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |AccountFreezingandybpl.9798:87|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@55)))
 :qid |AccountFreezingandybpl.10015:43|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@56))))
 :qid |AccountFreezingandybpl.10034:48|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@57)))
 :qid |AccountFreezingandybpl.10049:50|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@58)))
 :qid |AccountFreezingandybpl.10063:47|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@59)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@59))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@59))))
 :qid |AccountFreezingandybpl.10083:58|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@60) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@60)))
 :qid |AccountFreezingandybpl.10098:39|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@61))))
 :qid |AccountFreezingandybpl.10125:58|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62))))
 :qid |AccountFreezingandybpl.10142:58|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63) true)
 :qid |AccountFreezingandybpl.10157:51|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64))))
 :qid |AccountFreezingandybpl.10174:60|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@65)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@65))))
 :qid |AccountFreezingandybpl.12258:47|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@66))))
 :qid |AccountFreezingandybpl.12280:63|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@67)))
 :qid |AccountFreezingandybpl.12295:57|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@68)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@68))))
 :qid |AccountFreezingandybpl.12311:54|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@69)))
 :qid |AccountFreezingandybpl.12325:55|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@70)))
 :qid |AccountFreezingandybpl.12339:57|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@71)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@71))))
 :qid |AccountFreezingandybpl.12361:56|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@72))))
 :qid |AccountFreezingandybpl.12386:52|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@73)))
 :qid |AccountFreezingandybpl.12402:54|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@74)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@74))))
 :qid |AccountFreezingandybpl.13273:45|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@75)))
 :qid |AccountFreezingandybpl.13287:51|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@76)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@76))))
 :qid |AccountFreezingandybpl.13310:48|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |AccountFreezingandybpl.13624:47|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |AccountFreezingandybpl.13648:47|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |AccountFreezingandybpl.13903:49|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |AccountFreezingandybpl.13946:49|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |AccountFreezingandybpl.13975:48|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |AccountFreezingandybpl.14270:47|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_58934 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58934 v@@26))
)))
(assert (forall ((v@@27 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_58540 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58540 v@@27))
)))
(assert (forall ((v@@28 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_58343 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58343 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@4 (ReverseVec_58737 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58737 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@5 (ReverseVec_57752 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57752 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@6 (ReverseVec_57949 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57949 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@7 (ReverseVec_58146 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58146 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_57555 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57555 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |AccountFreezingandybpl.245:54|
 :skolemid |264|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_64751|) (|l#1| |T@[$1_Event_EventHandle]Multiset_64751|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| |l#1| handle@@0))))
(Multiset_64751 (|lambda#3| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| |l#0@@0| handle@@0)) (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountFreezingandybpl.2548:13|
 :skolemid |265|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |AccountFreezingandybpl.124:29|
 :skolemid |266|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_94155)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_94155)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_93681)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_95127)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_95199)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_93681)
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
(declare-fun $t14 () T@$Mutation_94155)
(declare-fun $t14@0 () T@$Mutation_94155)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_94155)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 201094) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12329 (|l#$Mutation_94155| $t14@1) (seq.++ (|p#$Mutation_94155| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_94155| $t14@1)))) (=> (and (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2)) (= $t14@2 ($Mutation_94155 (|l#$Mutation_94155| $t14@1) (|p#$Mutation_94155| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1))))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_93681 (|Store__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_94155| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_94155| $t14@2)) (|v#$Mutation_94155| $t14@2)))))) (and (=> (= (ControlFlow 0 147736) (- 0 201824)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (and (=> (= (ControlFlow 0 147736) (- 0 201838)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (and (=> (= (ControlFlow 0 147736) (- 0 201852)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (and (=> (= (ControlFlow 0 147736) (- 0 201866)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 147736) (- 0 201893)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 147736) (- 0 201903)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 147736) (- 0 201917)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 147736) (- 0 201941)) (= $t25 _$t2))))))))))))))))))))))
(let ((anon31_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 147794) 147736)) L5_correct)))
(let ((anon32_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 147524) 147736)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 147520) (- 0 201991)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 147520) (- 0 202028)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon31_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 147790) 147520))) L8_correct)))
(let ((anon30_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 147774) 147794) anon31_Then_correct) (=> (= (ControlFlow 0 147774) 147790) anon31_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 147404) 147520))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 147388) 147524) anon32_Then_correct) (=> (= (ControlFlow 0 147388) 147404) anon32_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 147352) 147388)) anon30_Else$1_correct)))
(let ((anon30_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 147358) 147352)) inline$$Lt$0$anon0_correct)))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= $t17@0 (= _$t1 0))) (and (=> (= (ControlFlow 0 147306) 147774) anon30_Then_correct) (=> (= (ControlFlow 0 147306) 147358) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 147808) 147520))) L8_correct)))
(let ((inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 0) (= 0 0)) (and (=> (= (ControlFlow 0 147286) 147808) anon29_Then_correct) (=> (= (ControlFlow 0 147286) 147306) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_94155| $t14@1))) (=> (and (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|) (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_94155| $t14@1)))) (and (= $t15@0 $t15@0) (= (ControlFlow 0 147292) 147286))) inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 147822) 147520))) L8_correct)))
(let ((anon27_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 147874) 147822) anon28_Then_correct) (=> (= (ControlFlow 0 147874) 147292) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 147872) 147874)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_94155 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 147189) 147822) anon28_Then_correct) (=> (= (ControlFlow 0 147189) 147292) anon28_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 147167) (- 0 201439)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 147167) 147872) anon27_Then_correct) (=> (= (ControlFlow 0 147167) 147189) anon27_Else_correct)))))))
(let ((anon25_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 147918) 147520))) L8_correct))))
(let ((anon24_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 147944) 147520))) L8_correct))))
(let ((anon26_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 147147) 147888) anon26_Then_correct) (=> (= (ControlFlow 0 147147) 147167) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not $t12) (= (ControlFlow 0 147153) 147147)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct)))
(let ((anon24_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 147076) 147918) anon25_Then_correct) (=> (= (ControlFlow 0 147076) 147153) anon25_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |AccountFreezingandybpl.3872:20|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 147054) 147944) anon24_Then_correct) (=> (= (ControlFlow 0 147054) 147076) anon24_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_64751| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@0) v@@35) 0)
 :qid |AccountFreezingandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 146942) 147054)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_94155| $t3)) 0) (= (seq.len (|p#$Mutation_94155| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 146952) 146942))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 201094) 146952) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory@1 () T@$Memory_95127)
(declare-fun _$t0@@0 () Int)
(declare-fun $t3@@0 () Int)
(declare-fun $t5@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory@0 () T@$Memory_95127)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|T@[Int]$1_AccountFreezing_FreezeEventsHolder| Int T@$1_AccountFreezing_FreezeEventsHolder) |T@[Int]$1_AccountFreezing_FreezeEventsHolder|)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|T@[Int]$1_AccountFreezing_FreezeEventsHolder| Int) T@$1_AccountFreezing_FreezeEventsHolder)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezeEventsHolder)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|Store__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezeEventsHolder)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|Store__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| ?x0 ?y1))) :weight 0)))
(declare-fun $t14@0@@0 () T@$1_AccountFreezing_FreezeEventsHolder)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t11@@0 () Int)
(declare-fun $t8@0 () Bool)
(declare-fun $t6 () Bool)
(declare-fun $t7 () Int)
(declare-fun $t5 () Int)
(declare-fun $t4 () Bool)
(push 1)
(set-info :boogie-vc-id $1_AccountFreezing_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 202267) (let ((anon24_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 148736) (- 0 202946)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 148736) (- 0 202960)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 148736) (- 0 202977)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 148736) (- 0 202987)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 148736) (- 0 203001)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $t3@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $t3@@0)) (and (=> (= (ControlFlow 0 148736) (- 0 203011)) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory@1) $t3@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory@1) $t3@@0) (=> (= (ControlFlow 0 148736) (- 0 203019)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr) (= (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr)))))
 :qid |AccountFreezingandybpl.10675:15|
 :skolemid |174|
))))))))))))))))))
(let ((anon22_Then_correct true))
(let ((anon21_Then_correct true))
(let ((L3_correct  (and (=> (= (ControlFlow 0 148425) (- 0 202868)) (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@0 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $t3@@0))) (=> (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@0 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $t3@@0)) (=> (= (ControlFlow 0 148425) (- 0 202891)) (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t5@0)) (and (not (= _$t0@@0 173345816)) (= 2 $t5@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $t3@@0) (= 6 $t5@0))))))))
(let ((anon24_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t5@0 $abort_code@1@@0) (= (ControlFlow 0 148750) 148425))) L3_correct)))
(let ((anon23_Then$1_correct  (=> (= $1_AccountFreezing_FreezeEventsHolder_$memory@1 $1_AccountFreezing_FreezeEventsHolder_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 148800) 148750) anon24_Then_correct@@0) (=> (= (ControlFlow 0 148800) 148736) anon24_Else_correct@@0))))))
(let ((anon23_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) _$t0@@0) (= (ControlFlow 0 148798) 148800)) anon23_Then$1_correct)))
(let ((anon23_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) _$t0@@0)) (=> (and (and (= $1_AccountFreezing_FreezeEventsHolder_$memory@0 ($Memory_95127 (|Store__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) _$t0@@0 true) (|Store__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) _$t0@@0 $t14@0@@0))) (= $1_AccountFreezing_FreezeEventsHolder_$memory@1 $1_AccountFreezing_FreezeEventsHolder_$memory@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 148619) 148750) anon24_Then_correct@@0) (=> (= (ControlFlow 0 148619) 148736) anon24_Else_correct@@0))))))
(let ((anon22_Else_correct  (=> (and (not false) (= $t14@0@@0 ($1_AccountFreezing_FreezeEventsHolder |inline$$1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 148601) 148798) anon23_Then_correct) (=> (= (ControlFlow 0 148601) 148619) anon23_Else_correct)))))
(let ((|inline$$1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 148579) 148814) anon22_Then_correct) (=> (= (ControlFlow 0 148579) 148601) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not false) (= (ControlFlow 0 148585) 148579)) |inline$$1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 148497) 148828) anon21_Then_correct) (=> (= (ControlFlow 0 148497) 148585) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 148503) 148497)) |inline$$1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'$0$anon0_correct|)))
(let ((anon20_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t11@@0 $t11@@0)) (and (= $t5@0 $t11@@0) (= (ControlFlow 0 148341) 148425))) L3_correct)))
(let ((anon19_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t11@@0) (= $t11@@0 6)) (and (= $t11@@0 $t11@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 148325) 148503) anon20_Then_correct) (=> (= (ControlFlow 0 148325) 148341) anon20_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t8@0)) (= (ControlFlow 0 148285) 148325)) anon19_Else$1_correct)))
(let ((anon19_Else_correct  (=> (not $t6) (=> (and (and (|$IsValid'address'| $t7) (= $t7 _$t0@@0)) (and (= $t8@0 (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $t7)) (= (ControlFlow 0 148291) 148285))) inline$$Not$0$anon0_correct))))
(let ((anon19_Then_correct  (=> $t6 (=> (and (and (and (not (= _$t0@@0 173345816)) (= 2 $t5)) (= $t5 $t5)) (and (= $t5@0 $t5) (= (ControlFlow 0 148858) 148425))) L3_correct))))
(let ((anon18_Else_correct  (=> (and (not $t4) (= $t6  (not (= _$t0@@0 173345816)))) (and (=> (= (ControlFlow 0 148229) 148858) anon19_Then_correct) (=> (= (ControlFlow 0 148229) 148291) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> $t4 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t5)) (= $t5 $t5)) (and (= $t5@0 $t5) (= (ControlFlow 0 148884) 148425))) L3_correct))))
(let ((anon0$1_correct@@0  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))) (and (|$IsValid'address'| _$t0@@0) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |AccountFreezingandybpl.10448:20|
 :skolemid |172|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
)))) (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@1)))
(|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| $rsc@@1))
 :qid |AccountFreezingandybpl.10452:20|
 :skolemid |173|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@1))
)) (= $t3@@0 _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= $t4  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 148207) 148884) anon18_Then_correct) (=> (= (ControlFlow 0 148207) 148229) anon18_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_64751| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@1) v@@36) 0)
 :qid |AccountFreezingandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 148061) 148207)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 202267) 148061) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t1@0 () Bool)
(declare-fun _$t0@@1 () Int)
(declare-fun $t5@0@@0 () Bool)
(declare-fun $t3@1 () T@$1_AccountFreezing_FreezingBit)
(declare-fun $t3@@1 () T@$1_AccountFreezing_FreezingBit)
(declare-fun $t3@0 () T@$1_AccountFreezing_FreezingBit)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t2@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_AccountFreezing_account_is_frozen$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 203063) (let ((anon11_Then_correct  (=> $abort_flag@0@@1 (=> (and (= $abort_code@1@@1 $abort_code@1@@1) (= (ControlFlow 0 149258) (- 0 203293))) false))))
(let ((L3_correct@@0  (=> (= $t1@0 $t1@0) (and (=> (= (ControlFlow 0 149198) (- 0 203339)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 149198) (- 0 203346)) (= $t1@0  (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@1) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@1))))) (=> (= $t1@0  (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@1) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@1)))) (=> (= (ControlFlow 0 149198) (- 0 203357)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@0) (= (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@0)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@0)))))
 :qid |AccountFreezingandybpl.10821:15|
 :skolemid |176|
))))))))))
(let ((anon11_Else_correct  (=> (not $abort_flag@0@@1) (=> (and (and (= $t5@0@@0 (|$is_frozen#$1_AccountFreezing_FreezingBit| $t3@1)) (= $t5@0@@0 $t5@0@@0)) (and (= $t1@0 $t5@0@@0) (= (ControlFlow 0 149236) 149198))) L3_correct@@0))))
(let ((anon10_Then$1_correct  (=> (= $t3@1 $t3@@1) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 149310) 149258) anon11_Then_correct) (=> (= (ControlFlow 0 149310) 149236) anon11_Else_correct))))))
(let ((anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@1)) (= (ControlFlow 0 149308) 149310)) anon10_Then$1_correct)))
(let ((anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@1) (=> (and (and (= $t3@0 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@1)) (= $t3@1 $t3@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 149216) 149258) anon11_Then_correct) (=> (= (ControlFlow 0 149216) 149236) anon11_Else_correct))))))
(let ((anon9_Then_correct  (=> $t2@0 (and (=> (= (ControlFlow 0 149202) 149308) anon10_Then_correct) (=> (= (ControlFlow 0 149202) 149216) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (and (not $t2@0) (= false false)) (and (= $t1@0 false) (= (ControlFlow 0 149131) 149198))) L3_correct@@0)))
(let ((anon0$1_correct@@1  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))) (=> (and (and (|$IsValid'address'| _$t0@@1) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $a_0@@2)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@2))
 :qid |AccountFreezingandybpl.10734:20|
 :skolemid |175|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $a_0@@2))
))) (and (= _$t0@@1 _$t0@@1) (= $t2@0 (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@1)))) (and (=> (= (ControlFlow 0 149111) 149202) anon9_Then_correct) (=> (= (ControlFlow 0 149111) 149131) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_64751| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@2) v@@37) 0)
 :qid |AccountFreezingandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 149027) 149111)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 203063) 149027) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t6@@0 () Int)
(declare-fun _$t0@@2 () Int)
(declare-fun $t3@@2 () Bool)
(push 1)
(set-info :boogie-vc-id $1_AccountFreezing_assert_not_frozen$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 203401) (let ((anon4_Else_correct  (=> (and (not inline$$Not$0$dst@1@@0) (= $t6@@0 $t6@@0)) (and (=> (= (ControlFlow 0 149580) (- 0 203629)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2))) (=> (= (ControlFlow 0 149580) (- 0 203633)) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2))) (= 1 $t6@@0))))))))
(let ((anon4_Then_correct  (=> inline$$Not$0$dst@1@@0 (and (=> (= (ControlFlow 0 149633) (- 0 203571)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2))))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2)))) (=> (= (ControlFlow 0 149633) (- 0 203580)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@1) (= (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@1)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@1)))))
 :qid |AccountFreezingandybpl.10954:15|
 :skolemid |178|
))))))))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t6@@0) (= $t6@@0 1)) (and (= $t6@@0 $t6@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 149540) 149633) anon4_Then_correct) (=> (= (ControlFlow 0 149540) 149580) anon4_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t3@@2)) (= (ControlFlow 0 149504) 149540)) anon0$2_correct)))
(let ((anon0$1_correct@@2  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (|$IsValid'address'| _$t0@@2)) (=> (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $a_0@@3)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@3))
 :qid |AccountFreezingandybpl.10877:20|
 :skolemid |177|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $a_0@@3))
)) (= _$t0@@2 _$t0@@2)) (and (= $t3@@2  (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@2)))) (= (ControlFlow 0 149510) 149504))) inline$$Not$0$anon0_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_64751| stream@@3) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@3) v@@38) 0)
 :qid |AccountFreezingandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 149386) 149510)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 203401) 149386) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_95199)
(declare-fun $t4@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun _$t0@@3 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_95199)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun $t12@0 () T@$1_AccountFreezing_FreezingBit)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$modifies () |T@[Int]Bool|)
(declare-fun $t9@@0 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t5@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountFreezing_create$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 203659) (let ((anon12_Else_correct  (=> (not $abort_flag@0@@2) (and (=> (= (ControlFlow 0 150097) (- 0 204044)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) 173345816)))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) 173345816))))) (and (=> (= (ControlFlow 0 150097) (- 0 204058)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) 186537453)))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) 186537453))))) (and (=> (= (ControlFlow 0 150097) (- 0 204072)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) addr@@2)))
 :qid |AccountFreezingandybpl.11154:15|
 :skolemid |180|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) addr@@3)))
 :qid |AccountFreezingandybpl.11154:15|
 :skolemid |180|
)) (and (=> (= (ControlFlow 0 150097) (- 0 204099)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $t4@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $t4@@0)) (and (=> (= (ControlFlow 0 150097) (- 0 204109)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0))))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0)))) (=> (= (ControlFlow 0 150097) (- 0 204117)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@4) (= (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@1) addr@@4)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@4)))))
 :qid |AccountFreezingandybpl.11173:15|
 :skolemid |181|
))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 149935) (- 0 204016)) (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $t4@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $t4@@0) (=> (= (ControlFlow 0 149935) (- 0 204021)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $t4@@0) (= 6 $t10@0)))))))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t10@0 $abort_code@1@@2) (= (ControlFlow 0 150111) 149935))) L3_correct@@1)))
(let ((anon11_Then$1_correct  (=> (= $1_AccountFreezing_FreezingBit_$memory@1 $1_AccountFreezing_FreezingBit_$memory) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 150161) 150111) anon12_Then_correct) (=> (= (ControlFlow 0 150161) 150097) anon12_Else_correct))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@3) (= (ControlFlow 0 150159) 150161)) anon11_Then$1_correct)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@3)) (=> (and (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_95199 (|Store__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@3 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t0@@3 $t12@0))) (= $1_AccountFreezing_FreezingBit_$memory@1 $1_AccountFreezing_FreezingBit_$memory@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 149979) 150111) anon12_Then_correct) (=> (= (ControlFlow 0 149979) 150097) anon12_Else_correct))))))
(let ((anon10_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@1 (= $t12@0 ($1_AccountFreezing_FreezingBit false))) (and (=> (= (ControlFlow 0 149961) (- 0 203901)) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies _$t0@@3)) (=> (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies _$t0@@3) (and (=> (= (ControlFlow 0 149961) 150159) anon11_Then_correct@@0) (=> (= (ControlFlow 0 149961) 149979) anon11_Else_correct@@0)))))))
(let ((anon10_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t9@@0 $t9@@0)) (and (= $t10@0 $t9@@0) (= (ControlFlow 0 149907) 149935))) L3_correct@@1)))
(let ((anon0$2_correct@@0  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 6)) (and (= $t9@@0 $t9@@0) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 149891) 149961) anon10_Then_correct@@0) (=> (= (ControlFlow 0 149891) 149907) anon10_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t6@0)) (= (ControlFlow 0 149855) 149891)) anon0$2_correct@@0)))
(let ((anon0$1_correct@@3  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))) (and (|$IsValid'address'| _$t0@@3) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $a_0@@4)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@4))
 :qid |AccountFreezingandybpl.11021:20|
 :skolemid |179|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $a_0@@4))
)))) (=> (and (and (and (= $t4@@0 _$t0@@3) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies $t4@@0)) (and (= _$t0@@3 _$t0@@3) (|$IsValid'address'| $t5@@0))) (and (and (= $t5@@0 _$t0@@3) (= $t5@@0 $t5@@0)) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $t5@@0)) (= (ControlFlow 0 149861) 149855)))) inline$$Not$0$anon0_correct@@1))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_64751| stream@@4) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@4) v@@39) 0)
 :qid |AccountFreezingandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 149705) 149861)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 203659) 149705) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1 () Bool)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_95846)
(declare-fun $t9@@1 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0@@4 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t12@@0 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0@@0 () T@$Memory_95199)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t10@@0 () T@$1_Event_EventHandle)
(declare-fun $t11@@1 () T@$1_AccountFreezing_FreezeAccountEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_64751_| (|T@[$1_Event_EventHandle]Multiset_64751| T@$1_Event_EventHandle T@Multiset_64751) |T@[$1_Event_EventHandle]Multiset_64751|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_64751|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_64751)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|Store__T@[$1_Event_EventHandle]Multiset_64751_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_64751|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_64751)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|Store__T@[$1_Event_EventHandle]Multiset_64751_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_64751_| ?x0 ?y1))) :weight 0)))
(declare-fun $t14@0@@1 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_87441)
(declare-fun $t35@0 () T@$1_AccountFreezing_FreezeAccountEvent)
(declare-fun $t33@1 () T@$Mutation_122816)
(declare-fun $t31 () Int)
(declare-fun $t33 () T@$Mutation_122816)
(declare-fun $t33@0 () T@$Mutation_122816)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t30@0 () T@$Mutation_30721)
(declare-fun $t29@1 () T@$Mutation_122774)
(declare-fun $t30@1 () T@$Mutation_30721)
(declare-fun $t29@2 () T@$Mutation_122774)
(declare-fun $t29 () T@$Mutation_122774)
(declare-fun $t29@0 () T@$Mutation_122774)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t25@0 () Bool)
(declare-fun $t27 () Int)
(declare-fun $t22@0 () Bool)
(declare-fun $t24@@0 () Int)
(declare-fun $t18@0@@0 () Bool)
(declare-fun $t20@@0 () Int)
(declare-fun $t16 () Bool)
(declare-fun $t15 () Int)
(declare-fun $t14@@0 () Int)
(declare-fun $t13 () Bool)
(declare-fun $t30 () T@$Mutation_30721)
(declare-fun $t34 () T@$Mutation_87441)
(push 1)
(set-info :boogie-vc-id $1_AccountFreezing_freeze_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 204158) (let ((anon45_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 151778) (- 0 205722)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 151778) (- 0 205732)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t9@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t9@@1))) (and (=> (= (ControlFlow 0 151778) (- 0 205744)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t9@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (and (=> (= (ControlFlow 0 151778) (- 0 205762)) (not (not (= _$t0@@4 186537453)))) (=> (not (not (= _$t0@@4 186537453))) (and (=> (= (ControlFlow 0 151778) (- 0 205776)) (not (= _$t1@@0 173345816))) (=> (not (= _$t1@@0 173345816)) (and (=> (= (ControlFlow 0 151778) (- 0 205786)) (not (= _$t1@@0 186537453))) (=> (not (= _$t1@@0 186537453)) (and (=> (= (ControlFlow 0 151778) (- 0 205796)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@0))) (and (=> (= (ControlFlow 0 151778) (- 0 205807)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t12@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t12@@0))) (and (=> (= (ControlFlow 0 151778) (- 0 205819)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t12@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t12@@0)) 1))) (and (=> (= (ControlFlow 0 151778) (- 0 205837)) (not (not (= _$t0@@4 186537453)))) (=> (not (not (= _$t0@@4 186537453))) (and (=> (= (ControlFlow 0 151778) (- 0 205851)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@0) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@0) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@0))) (and (=> (= (ControlFlow 0 151778) (- 0 205858)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t10@@0)))
(let ((stream_new (let ((len (|l#Multiset_64751| stream@@5)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@5) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@1))))
(Multiset_64751 (|Store__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@5) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@1) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t10@@0 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@6 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected) handle@@6)) (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual) handle@@6))) (forall ((v@@40 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected) handle@@6)) v@@40) (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual) handle@@6)) v@@40))
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |3|
)))
 :qid |AccountFreezingandybpl.2554:13|
 :skolemid |70|
)))))) (=> (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t10@@0)))
(let ((stream_new (let ((len (|l#Multiset_64751| stream@@5)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@5) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@1))))
(Multiset_64751 (|Store__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@5) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@1) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t10@@0 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@7 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected) handle@@7)) (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual) handle@@7))) (forall ((v@@41 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected) handle@@7)) v@@41) (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual) handle@@7)) v@@41))
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |3|
)))
 :qid |AccountFreezingandybpl.2554:13|
 :skolemid |70|
))))) (=> (= (ControlFlow 0 151778) (- 0 205883)) (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t10@@0)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_64751| stream@@6)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@6) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@1))))
(Multiset_64751 (|Store__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@6) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@1) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t10@@0 stream_new@@0))))))
 (and (<= (|counter#$EventStore| actual@@0) (|counter#$EventStore| expected@@0)) (forall ((handle@@8 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual@@0) handle@@8)) (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected@@0) handle@@8))) (forall ((v@@42 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual@@0) handle@@8)) v@@42) (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected@@0) handle@@8)) v@@42))
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |3|
)))
 :qid |AccountFreezingandybpl.2554:13|
 :skolemid |70|
)))))))))))))))))))))))))))))))))
(let ((anon37_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 151018) (- 0 205444)) (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t9@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (not (= _$t0@@4 186537453))) (= _$t1@@0 173345816)) (= _$t1@@0 186537453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t12@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t12@@0)) 1))) (not (= _$t0@@4 186537453)))) (=> (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t9@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (not (= _$t0@@4 186537453))) (= _$t1@@0 173345816)) (= _$t1@@0 186537453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t12@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t12@@0)) 1))) (not (= _$t0@@4 186537453))) (=> (= (ControlFlow 0 151018) (- 0 205541)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t14@0@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t9@@1)) (= 5 $t14@0@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t9@@1)) 1)) (= 3 $t14@0@@1))) (and (not (= _$t0@@4 186537453)) (= 2 $t14@0@@1))) (and (= _$t1@@0 173345816) (= 7 $t14@0@@1))) (and (= _$t1@@0 186537453) (= 7 $t14@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@0)) (= 5 $t14@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t12@@0)) (= 5 $t14@0@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t12@@0)) 1)) (= 3 $t14@0@@1))) (and (not (= _$t0@@4 186537453)) (= 2 $t14@0@@1))))))))
(let ((anon45_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t14@0@@1 $abort_code@2) (= (ControlFlow 0 151792) 151018))) L7_correct)))
(let ((|inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1| (|v#$Mutation_87441| $t34@0)) (= $es@0 (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1|)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_64751| stream@@7)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@7) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t35@0))))
(Multiset_64751 (|Store__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@7) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t35@0) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1| stream_new@@1)))))) (and (=> (= (ControlFlow 0 151568) 151792) anon45_Then_correct) (=> (= (ControlFlow 0 151568) 151778) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (and (not $abort_flag@1) (= $t34@0 ($Mutation_87441 (|l#$Mutation_122816| $t33@1) (seq.++ (|p#$Mutation_122816| $t33@1) (seq.unit 0)) (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| (|v#$Mutation_122816| $t33@1))))) (and (= $t35@0 ($1_AccountFreezing_FreezeAccountEvent $t31 _$t1@@0)) (= (ControlFlow 0 151574) 151568))) |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$anon0_correct|)))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t14@0@@1 $abort_code@2) (= (ControlFlow 0 151806) 151018))) L7_correct)))
(let ((anon43_Then$1_correct  (=> (= $t33@1 $t33) (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 151858) 151806) anon44_Then_correct) (=> (= (ControlFlow 0 151858) 151574) anon44_Else_correct))))))
(let ((anon43_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (= (ControlFlow 0 151856) 151858)) anon43_Then$1_correct)))
(let ((anon43_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816) (=> (and (and (= $t33@0 ($Mutation_122816 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (= $t33@1 $t33@0)) (and (= $abort_flag@1 $abort_flag@0@@3) (= $abort_code@2 $abort_code@1@@3))) (and (=> (= (ControlFlow 0 151469) 151806) anon44_Then_correct) (=> (= (ControlFlow 0 151469) 151574) anon44_Else_correct))))))
(let ((anon42_Else_correct  (=> (not $abort_flag@0@@3) (and (=> (= (ControlFlow 0 151447) 151856) anon43_Then_correct) (=> (= (ControlFlow 0 151447) 151469) anon43_Else_correct)))))
(let ((anon42_Then_correct  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t14@0@@1 $abort_code@1@@3) (= (ControlFlow 0 151872) 151018))) L7_correct)))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 151433) 151872) anon42_Then_correct) (=> (= (ControlFlow 0 151433) 151447) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (not $abort_flag@0@@3) (=> (and (and (= $t30@0 ($Mutation_30721 (|l#$Mutation_122774| $t29@1) (seq.++ (|p#$Mutation_122774| $t29@1) (seq.unit 0)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|v#$Mutation_122774| $t29@1)))) (= $t30@1 ($Mutation_30721 (|l#$Mutation_30721| $t30@0) (|p#$Mutation_30721| $t30@0) true))) (and (= $t29@2 ($Mutation_122774 (|l#$Mutation_122774| $t29@1) (|p#$Mutation_122774| $t29@1) ($1_AccountFreezing_FreezingBit (|v#$Mutation_30721| $t30@1)))) (= $1_AccountFreezing_FreezingBit_$memory@0@@0 ($Memory_95199 (|Store__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) (|a#$Global| (|l#$Mutation_122774| $t29@2)) true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) (|a#$Global| (|l#$Mutation_122774| $t29@2)) (|v#$Mutation_122774| $t29@2)))))) (and (=> (= (ControlFlow 0 151439) (- 0 205125)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) 173345816)))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) 173345816))))) (and (=> (= (ControlFlow 0 151439) (- 0 205139)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) 186537453)))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) 186537453))))) (and (=> (= (ControlFlow 0 151439) (- 0 205153)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) addr@@5)))
 :qid |AccountFreezingandybpl.11607:15|
 :skolemid |186|
))) (=> (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@0) addr@@6)))
 :qid |AccountFreezingandybpl.11607:15|
 :skolemid |186|
)) (=> (and (and (|$IsValid'address'| $t31) (= $t31 _$t0@@4)) (and (= $t31 $t31) (= (ControlFlow 0 151439) 151433))) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct)))))))))))
(let ((anon41_Then_correct  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t14@0@@1 $abort_code@1@@3) (= (ControlFlow 0 151886) 151018))) L7_correct)))
(let ((anon40_Then$1_correct  (=> (= $t29@1 $t29) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 151938) 151886) anon41_Then_correct) (=> (= (ControlFlow 0 151938) 151439) anon41_Else_correct))))))
(let ((anon40_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@0)) (= (ControlFlow 0 151936) 151938)) anon40_Then$1_correct)))
(let ((anon40_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@0) (=> (and (and (= $t29@0 ($Mutation_122774 ($Global _$t1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@0))) (= $t29@1 $t29@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 151237) 151886) anon41_Then_correct) (=> (= (ControlFlow 0 151237) 151439) anon41_Else_correct))))))
(let ((anon39_Then_correct  (=> $t25@0 (and (=> (= (ControlFlow 0 151215) 151936) anon40_Then_correct) (=> (= (ControlFlow 0 151215) 151237) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (and (not $t25@0) (= $t27 $t27)) (and (= $t14@0@@1 $t27) (= (ControlFlow 0 151205) 151018))) L7_correct)))
(let ((anon38_Then_correct  (=> $t22@0 (=> (and (= $t25@0 (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@0)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t27) (= $t27 5)) (and (= $t27 $t27) (= $t25@0 $t25@0))) (and (=> (= (ControlFlow 0 151189) 151215) anon39_Then_correct) (=> (= (ControlFlow 0 151189) 151205) anon39_Else_correct)))))))
(let ((anon38_Else_correct  (=> (and (and (not $t22@0) (= $t24@@0 $t24@@0)) (and (= $t14@0@@1 $t24@@0) (= (ControlFlow 0 151151) 151018))) L7_correct)))
(let ((anon37_Else_correct  (=> (not false) (=> (and (= $t22@0  (not (= _$t1@@0 186537453))) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t24@@0) (= $t24@@0 7)) (and (= $t24@@0 $t24@@0) (= $t22@0 $t22@0))) (and (=> (= (ControlFlow 0 151135) 151189) anon38_Then_correct) (=> (= (ControlFlow 0 151135) 151151) anon38_Else_correct)))))))
(let ((inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 186537453) (= 186537453 186537453)) (and (=> (= (ControlFlow 0 151085) 151952) anon37_Then_correct) (=> (= (ControlFlow 0 151085) 151135) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> (and $t18@0@@0 (= (ControlFlow 0 151091) 151085)) inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct)))
(let ((anon36_Else_correct  (=> (and (and (not $t18@0@@0) (= $t20@@0 $t20@@0)) (and (= $t14@0@@1 $t20@@0) (= (ControlFlow 0 150714) 151018))) L7_correct)))
(let ((anon35_Else_correct  (=> (not false) (=> (and (= $t18@0@@0  (not (= _$t1@@0 173345816))) (|$IsValid'u64'| 3)) (=> (and (and (|$IsValid'u64'| $t20@@0) (= $t20@@0 7)) (and (= $t20@@0 $t20@@0) (= $t18@0@@0 $t18@0@@0))) (and (=> (= (ControlFlow 0 150698) 151091) anon36_Then_correct) (=> (= (ControlFlow 0 150698) 150714) anon36_Else_correct)))))))
(let ((anon34_Then_correct  (=> $t16 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t15)) (= 5 $t14@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t15)) 1)) (= 3 $t14@@0))) (and (not (= _$t0@@4 186537453)) (= 2 $t14@@0))) (= $t14@@0 $t14@@0)) (and (= $t14@0@@1 $t14@@0) (= (ControlFlow 0 152038) 151018))) L7_correct))))
(let ((anon33_Then_correct  (=> $t13 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t14@@0)) (= $t14@@0 $t14@@0)) (and (= $t14@0@@1 $t14@@0) (= (ControlFlow 0 152064) 151018))) L7_correct))))
(let ((anon35_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@0  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 150648) 151966) anon35_Then_correct) (=> (= (ControlFlow 0 150648) 150698) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (not $t16) (= (ControlFlow 0 150654) 150648)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@0)))
(let ((anon33_Else_correct  (=> (not $t13) (=> (and (= $t15 _$t0@@4) (= $t16  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t15)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t15)) 1))) (not (= _$t0@@4 186537453))))) (and (=> (= (ControlFlow 0 150577) 152038) anon34_Then_correct) (=> (= (ControlFlow 0 150577) 150654) anon34_Else_correct))))))
(let ((anon0$1_correct@@4  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (|$IsValid'address'| _$t0@@4))) (and (and (|$IsValid'address'| _$t1@@0) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@5)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@5))
 :qid |AccountFreezingandybpl.11280:20|
 :skolemid |182|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@5))
))) (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |AccountFreezingandybpl.11284:20|
 :skolemid |183|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@7)))
(|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| $rsc@@7))
 :qid |AccountFreezingandybpl.11288:20|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@7))
))))) (and (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $a_0@@8)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@8))
 :qid |AccountFreezingandybpl.11292:20|
 :skolemid |185|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $a_0@@8))
)) (= $t9@@1 _$t0@@4)) (and (= $t10@@0 (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (= $t11@@1 ($1_AccountFreezing_FreezeAccountEvent _$t0@@4 _$t1@@0)))) (and (and (= $t12@@0 _$t0@@4) (= _$t0@@4 _$t0@@4)) (and (= _$t1@@0 _$t1@@0) (= $t13  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 150517) 152064) anon33_Then_correct) (=> (= (ControlFlow 0 150517) 150577) anon33_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_64751| stream@@8) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@8) v@@43) 0)
 :qid |AccountFreezingandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 150279) 150517)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (seq.len (|p#$Mutation_122774| $t29)) 0) (=> (and (and (= (seq.len (|p#$Mutation_30721| $t30)) 0) (= (seq.len (|p#$Mutation_122816| $t33)) 0)) (and (= (seq.len (|p#$Mutation_87441| $t34)) 0) (= (ControlFlow 0 150289) 150279))) inline$$InitEventStore$0$anon0_correct@@4))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 204158) 150289) anon0_correct@@4)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $t5@@1 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun _$t1@@1 () Int)
(declare-fun $t8 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0@@1 () T@$Memory_95199)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t6@@1 () T@$1_Event_EventHandle)
(declare-fun $t7@@0 () T@$1_AccountFreezing_UnfreezeAccountEvent)
(declare-fun $t10@0@@0 () Int)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t22@0@@0 () T@$Mutation_87441)
(declare-fun $t23@0 () T@$1_AccountFreezing_UnfreezeAccountEvent)
(declare-fun $t21@1 () T@$Mutation_122816)
(declare-fun $t19 () Int)
(declare-fun $t21 () T@$Mutation_122816)
(declare-fun $t21@0 () T@$Mutation_122816)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t18@0@@1 () T@$Mutation_30721)
(declare-fun $t17@1 () T@$Mutation_122774)
(declare-fun $t18@1 () T@$Mutation_30721)
(declare-fun $t17@2 () T@$Mutation_122774)
(declare-fun $t17 () T@$Mutation_122774)
(declare-fun $t17@0@@0 () T@$Mutation_122774)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t13@0 () Bool)
(declare-fun $t15@@0 () Int)
(declare-fun $t12@@1 () Bool)
(declare-fun $t11@@2 () Int)
(declare-fun $t10@@1 () Int)
(declare-fun $t9@@2 () Bool)
(declare-fun $t18 () T@$Mutation_30721)
(declare-fun $t22 () T@$Mutation_87441)
(push 1)
(set-info :boogie-vc-id $1_AccountFreezing_unfreeze_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 205916) (let ((anon31_Else_correct@@0  (=> (not $abort_flag@1@@0) (and (=> (= (ControlFlow 0 153459) (- 0 207202)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 153459) (- 0 207212)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t5@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t5@@1))) (and (=> (= (ControlFlow 0 153459) (- 0 207224)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t5@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t5@@1)) 1))) (and (=> (= (ControlFlow 0 153459) (- 0 207242)) (not (not (= _$t0@@5 186537453)))) (=> (not (not (= _$t0@@5 186537453))) (and (=> (= (ControlFlow 0 153459) (- 0 207256)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1))) (and (=> (= (ControlFlow 0 153459) (- 0 207267)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t8))) (and (=> (= (ControlFlow 0 153459) (- 0 207279)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t8)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t8)) 1))) (and (=> (= (ControlFlow 0 153459) (- 0 207297)) (not (not (= _$t0@@5 186537453)))) (=> (not (not (= _$t0@@5 186537453))) (and (=> (= (ControlFlow 0 153459) (- 0 207311)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) _$t1@@1) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) _$t1@@1))))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) _$t1@@1) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) _$t1@@1)))) (and (=> (= (ControlFlow 0 153459) (- 0 207320)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t6@@1)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_64751| stream@@9)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@9) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@0))))
(Multiset_64751 (|Store__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@9) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t6@@1 stream_new@@2))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@10 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected@@1) handle@@10)) (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual@@1) handle@@10))) (forall ((v@@44 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected@@1) handle@@10)) v@@44) (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual@@1) handle@@10)) v@@44))
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |3|
)))
 :qid |AccountFreezingandybpl.2554:13|
 :skolemid |70|
)))))) (=> (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t6@@1)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_64751| stream@@9)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@9) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@0))))
(Multiset_64751 (|Store__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@9) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t6@@1 stream_new@@2))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@11 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected@@1) handle@@11)) (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual@@1) handle@@11))) (forall ((v@@45 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected@@1) handle@@11)) v@@45) (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual@@1) handle@@11)) v@@45))
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |3|
)))
 :qid |AccountFreezingandybpl.2554:13|
 :skolemid |70|
))))) (=> (= (ControlFlow 0 153459) (- 0 207345)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t6@@1)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_64751| stream@@10)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@10) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@0))))
(Multiset_64751 (|Store__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@10) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t7@@0) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $EmptyEventStore) $t6@@1 stream_new@@3))))))
 (and (<= (|counter#$EventStore| actual@@2) (|counter#$EventStore| expected@@2)) (forall ((handle@@12 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual@@2) handle@@12)) (|l#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected@@2) handle@@12))) (forall ((v@@46 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| actual@@2) handle@@12)) v@@46) (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| expected@@2) handle@@12)) v@@46))
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |3|
)))
 :qid |AccountFreezingandybpl.2554:13|
 :skolemid |70|
)))))))))))))))))))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 152904) (- 0 206966)) (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t5@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t5@@1)) 1))) (not (= _$t0@@5 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t8)) 1))) (not (= _$t0@@5 186537453)))) (=> (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t5@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t5@@1)) 1))) (not (= _$t0@@5 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t8)) 1))) (not (= _$t0@@5 186537453))) (=> (= (ControlFlow 0 152904) (- 0 207049)) (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t10@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t5@@1)) (= 5 $t10@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t5@@1)) 1)) (= 3 $t10@0@@0))) (and (not (= _$t0@@5 186537453)) (= 2 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1)) (= 5 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t8)) (= 5 $t10@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t8)) 1)) (= 3 $t10@0@@0))) (and (not (= _$t0@@5 186537453)) (= 2 $t10@0@@0))))))))
(let ((anon31_Then_correct@@0  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= $t10@0@@0 $abort_code@2@@0) (= (ControlFlow 0 153473) 152904))) L3_correct@@2)))
(let ((|inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$handle@1| (|v#$Mutation_87441| $t22@0@@0)) (= $es@0@@0 (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$handle@1|)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_64751| stream@@11)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@11) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t23@0))))
(Multiset_64751 (|Store__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@11) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| $t23@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$handle@1| stream_new@@4)))))) (and (=> (= (ControlFlow 0 153267) 153473) anon31_Then_correct@@0) (=> (= (ControlFlow 0 153267) 153459) anon31_Else_correct@@0)))))
(let ((anon30_Else_correct@@0  (=> (and (and (not $abort_flag@1@@0) (= $t22@0@@0 ($Mutation_87441 (|l#$Mutation_122816| $t21@1) (seq.++ (|p#$Mutation_122816| $t21@1) (seq.unit 1)) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| (|v#$Mutation_122816| $t21@1))))) (and (= $t23@0 ($1_AccountFreezing_UnfreezeAccountEvent $t19 _$t1@@1)) (= (ControlFlow 0 153273) 153267))) |inline$$1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'$0$anon0_correct|)))
(let ((anon30_Then_correct@@0  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= $t10@0@@0 $abort_code@2@@0) (= (ControlFlow 0 153487) 152904))) L3_correct@@2)))
(let ((anon29_Then$1_correct  (=> (= $t21@1 $t21) (=> (and (= $abort_flag@1@@0 true) (= $abort_code@2@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 153539) 153487) anon30_Then_correct@@0) (=> (= (ControlFlow 0 153539) 153273) anon30_Else_correct@@0))))))
(let ((anon29_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (= (ControlFlow 0 153537) 153539)) anon29_Then$1_correct)))
(let ((anon29_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816) (=> (and (and (= $t21@0 ($Mutation_122816 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (= $t21@1 $t21@0)) (and (= $abort_flag@1@@0 $abort_flag@0@@4) (= $abort_code@2@@0 $abort_code@1@@4))) (and (=> (= (ControlFlow 0 153168) 153487) anon30_Then_correct@@0) (=> (= (ControlFlow 0 153168) 153273) anon30_Else_correct@@0))))))
(let ((anon28_Else_correct@@0  (=> (not $abort_flag@0@@4) (and (=> (= (ControlFlow 0 153146) 153537) anon29_Then_correct@@0) (=> (= (ControlFlow 0 153146) 153168) anon29_Else_correct@@0)))))
(let ((anon28_Then_correct@@0  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t10@0@@0 $abort_code@1@@4) (= (ControlFlow 0 153553) 152904))) L3_correct@@2)))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@1  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 153132) 153553) anon28_Then_correct@@0) (=> (= (ControlFlow 0 153132) 153146) anon28_Else_correct@@0)))))
(let ((anon27_Else_correct@@0  (=> (not $abort_flag@0@@4) (=> (and (and (= $t18@0@@1 ($Mutation_30721 (|l#$Mutation_122774| $t17@1) (seq.++ (|p#$Mutation_122774| $t17@1) (seq.unit 0)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|v#$Mutation_122774| $t17@1)))) (= $t18@1 ($Mutation_30721 (|l#$Mutation_30721| $t18@0@@1) (|p#$Mutation_30721| $t18@0@@1) false))) (and (= $t17@2 ($Mutation_122774 (|l#$Mutation_122774| $t17@1) (|p#$Mutation_122774| $t17@1) ($1_AccountFreezing_FreezingBit (|v#$Mutation_30721| $t18@1)))) (= $1_AccountFreezing_FreezingBit_$memory@0@@1 ($Memory_95199 (|Store__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) (|a#$Global| (|l#$Mutation_122774| $t17@2)) true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) (|a#$Global| (|l#$Mutation_122774| $t17@2)) (|v#$Mutation_122774| $t17@2)))))) (and (=> (= (ControlFlow 0 153138) (- 0 206659)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) 173345816)))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) 173345816))))) (and (=> (= (ControlFlow 0 153138) (- 0 206673)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) 186537453)))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) 186537453))))) (and (=> (= (ControlFlow 0 153138) (- 0 206687)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) addr@@7)))
 :qid |AccountFreezingandybpl.12041:15|
 :skolemid |191|
))) (=> (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory@0@@1) addr@@8)))
 :qid |AccountFreezingandybpl.12041:15|
 :skolemid |191|
)) (=> (and (and (|$IsValid'address'| $t19) (= $t19 _$t0@@5)) (and (= $t19 $t19) (= (ControlFlow 0 153138) 153132))) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@1)))))))))))
(let ((anon27_Then_correct@@0  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t10@0@@0 $abort_code@1@@4) (= (ControlFlow 0 153567) 152904))) L3_correct@@2)))
(let ((anon26_Then$1_correct  (=> (= $t17@1 $t17) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 153619) 153567) anon27_Then_correct@@0) (=> (= (ControlFlow 0 153619) 153138) anon27_Else_correct@@0))))))
(let ((anon26_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1)) (= (ControlFlow 0 153617) 153619)) anon26_Then$1_correct)))
(let ((anon26_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1) (=> (and (and (= $t17@0@@0 ($Mutation_122774 ($Global _$t1@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1))) (= $t17@1 $t17@0@@0)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 152936) 153567) anon27_Then_correct@@0) (=> (= (ControlFlow 0 152936) 153138) anon27_Else_correct@@0))))))
(let ((anon25_Then_correct@@0  (=> $t13@0 (and (=> (= (ControlFlow 0 152914) 153617) anon26_Then_correct@@0) (=> (= (ControlFlow 0 152914) 152936) anon26_Else_correct@@0)))))
(let ((anon25_Else_correct@@0  (=> (and (and (not $t13@0) (= $t15@@0 $t15@@0)) (and (= $t10@0@@0 $t15@@0) (= (ControlFlow 0 152648) 152904))) L3_correct@@2)))
(let ((anon24_Else_correct@@1  (=> (not $t12@@1) (=> (and (= $t13@0 (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t15@@0) (= $t15@@0 5)) (and (= $t15@@0 $t15@@0) (= $t13@0 $t13@0))) (and (=> (= (ControlFlow 0 152632) 152914) anon25_Then_correct@@0) (=> (= (ControlFlow 0 152632) 152648) anon25_Else_correct@@0)))))))
(let ((anon24_Then_correct@@1  (=> $t12@@1 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t11@@2)) (= 5 $t10@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t11@@2)) 1)) (= 3 $t10@@1))) (and (not (= _$t0@@5 186537453)) (= 2 $t10@@1))) (= $t10@@1 $t10@@1)) (and (= $t10@0@@0 $t10@@1) (= (ControlFlow 0 153691) 152904))) L3_correct@@2))))
(let ((anon23_Else_correct@@0  (=> (not $t9@@2) (=> (and (= $t11@@2 _$t0@@5) (= $t12@@1  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95846| $1_Roles_RoleId_$memory) $t11@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $t11@@2)) 1))) (not (= _$t0@@5 186537453))))) (and (=> (= (ControlFlow 0 152590) 153691) anon24_Then_correct@@1) (=> (= (ControlFlow 0 152590) 152632) anon24_Else_correct@@1))))))
(let ((anon23_Then_correct@@0  (=> $t9@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t10@@1)) (= $t10@@1 $t10@@1)) (and (= $t10@0@@0 $t10@@1) (= (ControlFlow 0 153717) 152904))) L3_correct@@2))))
(let ((anon0$1_correct@@5  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (|$IsValid'address'| _$t0@@5))) (and (and (|$IsValid'address'| _$t1@@1) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@9)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@9))
 :qid |AccountFreezingandybpl.11828:20|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@9))
))) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $a_0@@10)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@10))
 :qid |AccountFreezingandybpl.11832:20|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95846| $1_Roles_RoleId_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@11)))
(|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| $rsc@@11))
 :qid |AccountFreezingandybpl.11836:20|
 :skolemid |189|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@11))
))))) (and (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $a_0@@12)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@12))
 :qid |AccountFreezingandybpl.11840:20|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_95199| $1_AccountFreezing_FreezingBit_$memory) $a_0@@12))
)) (= $t5@@1 _$t0@@5)) (and (= $t6@@1 (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_95127| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (= $t7@@0 ($1_AccountFreezing_UnfreezeAccountEvent _$t0@@5 _$t1@@1)))) (and (and (= $t8 _$t0@@5) (= _$t0@@5 _$t0@@5)) (and (= _$t1@@1 _$t1@@1) (= $t9@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93681| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 152530) 153717) anon23_Then_correct@@0) (=> (= (ControlFlow 0 152530) 152590) anon23_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_64751_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_64751| stream@@12) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64751| stream@@12) v@@47) 0)
 :qid |AccountFreezingandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 152292) 152530)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (seq.len (|p#$Mutation_122774| $t17)) 0) (=> (and (and (= (seq.len (|p#$Mutation_30721| $t18)) 0) (= (seq.len (|p#$Mutation_122816| $t21)) 0)) (and (= (seq.len (|p#$Mutation_87441| $t22)) 0) (= (ControlFlow 0 152302) 152292))) inline$$InitEventStore$0$anon0_correct@@5))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 205916) 152302) anon0_correct@@5)))
PreconditionGeneratedEntry_correct@@1))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 207384) true)
))
(check-sat)
(pop 1)
; Valid
