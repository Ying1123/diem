(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_103723 0)) ((($Memory_103723 (|domain#$Memory_103723| |T@[Int]Bool|) (|contents#$Memory_103723| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_173338 0)) ((($Memory_173338 (|domain#$Memory_173338| |T@[Int]Bool|) (|contents#$Memory_173338| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_168743 0)) ((($Memory_168743 (|domain#$Memory_168743| |T@[Int]Bool|) (|contents#$Memory_168743| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_166746 0)) ((($Memory_166746 (|domain#$Memory_166746| |T@[Int]Bool|) (|contents#$Memory_166746| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_167026 0)) ((($Memory_167026 (|domain#$Memory_167026| |T@[Int]Bool|) (|contents#$Memory_167026| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_166713 0)) ((($Memory_166713 (|domain#$Memory_166713| |T@[Int]Bool|) (|contents#$Memory_166713| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_166498 0)) ((($Memory_166498 (|domain#$Memory_166498| |T@[Int]Bool|) (|contents#$Memory_166498| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_166127 0)) ((($Memory_166127 (|domain#$Memory_166127| |T@[Int]Bool|) (|contents#$Memory_166127| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_163667 0)) ((($Memory_163667 (|domain#$Memory_163667| |T@[Int]Bool|) (|contents#$Memory_163667| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_163603 0)) ((($Memory_163603 (|domain#$Memory_163603| |T@[Int]Bool|) (|contents#$Memory_163603| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_167669 0)) ((($Memory_167669 (|domain#$Memory_167669| |T@[Int]Bool|) (|contents#$Memory_167669| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_162084 0)) ((($Memory_162084 (|domain#$Memory_162084| |T@[Int]Bool|) (|contents#$Memory_162084| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_161574 0)) ((($Memory_161574 (|domain#$Memory_161574| |T@[Int]Bool|) (|contents#$Memory_161574| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_158425 0)) ((($Memory_158425 (|domain#$Memory_158425| |T@[Int]Bool|) (|contents#$Memory_158425| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_158206 0)) ((($Memory_158206 (|domain#$Memory_158206| |T@[Int]Bool|) (|contents#$Memory_158206| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_168532 0)) ((($Memory_168532 (|domain#$Memory_168532| |T@[Int]Bool|) (|contents#$Memory_168532| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_151097 0)) ((($Memory_151097 (|domain#$Memory_151097| |T@[Int]Bool|) (|contents#$Memory_151097| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_151010 0)) ((($Memory_151010 (|domain#$Memory_151010| |T@[Int]Bool|) (|contents#$Memory_151010| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_147807 0)) ((($Memory_147807 (|domain#$Memory_147807| |T@[Int]Bool|) (|contents#$Memory_147807| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_147720 0)) ((($Memory_147720 (|domain#$Memory_147720| |T@[Int]Bool|) (|contents#$Memory_147720| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_151361 0)) ((($Memory_151361 (|domain#$Memory_151361| |T@[Int]Bool|) (|contents#$Memory_151361| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_160266 0)) ((($Memory_160266 (|domain#$Memory_160266| |T@[Int]Bool|) (|contents#$Memory_160266| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_151687 0)) ((($Memory_151687 (|domain#$Memory_151687| |T@[Int]Bool|) (|contents#$Memory_151687| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_151270 0)) ((($Memory_151270 (|domain#$Memory_151270| |T@[Int]Bool|) (|contents#$Memory_151270| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_162509 0)) ((($Memory_162509 (|domain#$Memory_162509| |T@[Int]Bool|) (|contents#$Memory_162509| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_151588 0)) ((($Memory_151588 (|domain#$Memory_151588| |T@[Int]Bool|) (|contents#$Memory_151588| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_144958 0)) ((($Memory_144958 (|domain#$Memory_144958| |T@[Int]Bool|) (|contents#$Memory_144958| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_144871 0)) ((($Memory_144871 (|domain#$Memory_144871| |T@[Int]Bool|) (|contents#$Memory_144871| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_144784 0)) ((($Memory_144784 (|domain#$Memory_144784| |T@[Int]Bool|) (|contents#$Memory_144784| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_172029 0)) ((($Memory_172029 (|domain#$Memory_172029| |T@[Int]Bool|) (|contents#$Memory_172029| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_144697 0)) ((($Memory_144697 (|domain#$Memory_144697| |T@[Int]Bool|) (|contents#$Memory_144697| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_144610 0)) ((($Memory_144610 (|domain#$Memory_144610| |T@[Int]Bool|) (|contents#$Memory_144610| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_143729 0)) ((($Memory_143729 (|domain#$Memory_143729| |T@[Int]Bool|) (|contents#$Memory_143729| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_143796 0)) ((($Memory_143796 (|domain#$Memory_143796| |T@[Int]Bool|) (|contents#$Memory_143796| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_143647 0)) ((($Memory_143647 (|domain#$Memory_143647| |T@[Int]Bool|) (|contents#$Memory_143647| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_143565 0)) ((($Memory_143565 (|domain#$Memory_143565| |T@[Int]Bool|) (|contents#$Memory_143565| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_143483 0)) ((($Memory_143483 (|domain#$Memory_143483| |T@[Int]Bool|) (|contents#$Memory_143483| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_143401 0)) ((($Memory_143401 (|domain#$Memory_143401| |T@[Int]Bool|) (|contents#$Memory_143401| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_143319 0)) ((($Memory_143319 (|domain#$Memory_143319| |T@[Int]Bool|) (|contents#$Memory_143319| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_147418 0)) ((($Memory_147418 (|domain#$Memory_147418| |T@[Int]Bool|) (|contents#$Memory_147418| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_147353 0)) ((($Memory_147353 (|domain#$Memory_147353| |T@[Int]Bool|) (|contents#$Memory_147353| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_112037 0)) ((($Memory_112037 (|domain#$Memory_112037| |T@[Int]Bool|) (|contents#$Memory_112037| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_112638 0)) ((($Memory_112638 (|domain#$Memory_112638| |T@[Int]Bool|) (|contents#$Memory_112638| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_110591 0)) ((($Memory_110591 (|domain#$Memory_110591| |T@[Int]Bool|) (|contents#$Memory_110591| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_81661 0)) (((Multiset_81661 (|v#Multiset_81661| |T@[$EventRep]Int|) (|l#Multiset_81661| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_81661| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_81661|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_169570 0)) ((($Mutation_169570 (|l#$Mutation_169570| T@$Location) (|p#$Mutation_169570| (Seq Int)) (|v#$Mutation_169570| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_169526 0)) ((($Mutation_169526 (|l#$Mutation_169526| T@$Location) (|p#$Mutation_169526| (Seq Int)) (|v#$Mutation_169526| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_50431 0)) ((($Mutation_50431 (|l#$Mutation_50431| T@$Location) (|p#$Mutation_50431| (Seq Int)) (|v#$Mutation_50431| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_156923 0)) ((($Mutation_156923 (|l#$Mutation_156923| T@$Location) (|p#$Mutation_156923| (Seq Int)) (|v#$Mutation_156923| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_146096 0)) ((($Mutation_146096 (|l#$Mutation_146096| T@$Location) (|p#$Mutation_146096| (Seq Int)) (|v#$Mutation_146096| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_111065 0)) ((($Mutation_111065 (|l#$Mutation_111065| T@$Location) (|p#$Mutation_111065| (Seq Int)) (|v#$Mutation_111065| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_104351 0)) ((($Mutation_104351 (|l#$Mutation_104351| T@$Location) (|p#$Mutation_104351| (Seq Int)) (|v#$Mutation_104351| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_99719 0)) ((($Mutation_99719 (|l#$Mutation_99719| T@$Location) (|p#$Mutation_99719| (Seq Int)) (|v#$Mutation_99719| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_98973 0)) ((($Mutation_98973 (|l#$Mutation_98973| T@$Location) (|p#$Mutation_98973| (Seq Int)) (|v#$Mutation_98973| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_97533 0)) ((($Mutation_97533 (|l#$Mutation_97533| T@$Location) (|p#$Mutation_97533| (Seq Int)) (|v#$Mutation_97533| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_96787 0)) ((($Mutation_96787 (|l#$Mutation_96787| T@$Location) (|p#$Mutation_96787| (Seq Int)) (|v#$Mutation_96787| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_95347 0)) ((($Mutation_95347 (|l#$Mutation_95347| T@$Location) (|p#$Mutation_95347| (Seq Int)) (|v#$Mutation_95347| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_94601 0)) ((($Mutation_94601 (|l#$Mutation_94601| T@$Location) (|p#$Mutation_94601| (Seq Int)) (|v#$Mutation_94601| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_93161 0)) ((($Mutation_93161 (|l#$Mutation_93161| T@$Location) (|p#$Mutation_93161| (Seq Int)) (|v#$Mutation_93161| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_92415 0)) ((($Mutation_92415 (|l#$Mutation_92415| T@$Location) (|p#$Mutation_92415| (Seq Int)) (|v#$Mutation_92415| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_90975 0)) ((($Mutation_90975 (|l#$Mutation_90975| T@$Location) (|p#$Mutation_90975| (Seq Int)) (|v#$Mutation_90975| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_90229 0)) ((($Mutation_90229 (|l#$Mutation_90229| T@$Location) (|p#$Mutation_90229| (Seq Int)) (|v#$Mutation_90229| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_88789 0)) ((($Mutation_88789 (|l#$Mutation_88789| T@$Location) (|p#$Mutation_88789| (Seq Int)) (|v#$Mutation_88789| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_88043 0)) ((($Mutation_88043 (|l#$Mutation_88043| T@$Location) (|p#$Mutation_88043| (Seq Int)) (|v#$Mutation_88043| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_86603 0)) ((($Mutation_86603 (|l#$Mutation_86603| T@$Location) (|p#$Mutation_86603| (Seq Int)) (|v#$Mutation_86603| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_85857 0)) ((($Mutation_85857 (|l#$Mutation_85857| T@$Location) (|p#$Mutation_85857| (Seq Int)) (|v#$Mutation_85857| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_84379 0)) ((($Mutation_84379 (|l#$Mutation_84379| T@$Location) (|p#$Mutation_84379| (Seq Int)) (|v#$Mutation_84379| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_83633 0)) ((($Mutation_83633 (|l#$Mutation_83633| T@$Location) (|p#$Mutation_83633| (Seq Int)) (|v#$Mutation_83633| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_81661_| (|T@[$1_Event_EventHandle]Multiset_81661| T@$1_Event_EventHandle) T@Multiset_81661)
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
(declare-fun ReverseVec_74101 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_73707 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_73510 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_73904 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_72919 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_73116 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_73313 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_72722 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_81661| |T@[$1_Event_EventHandle]Multiset_81661|) |T@[$1_Event_EventHandle]Multiset_81661|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |Rolescvc4bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |Rolescvc4bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |Rolescvc4bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |Rolescvc4bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |Rolescvc4bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |Rolescvc4bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |Rolescvc4bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |Rolescvc4bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |Rolescvc4bpl.590:13|
 :skolemid |15|
))))
 :qid |Rolescvc4bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |Rolescvc4bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |Rolescvc4bpl.603:17|
 :skolemid |18|
)))))
 :qid |Rolescvc4bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |Rolescvc4bpl.770:13|
 :skolemid |20|
))))
 :qid |Rolescvc4bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |Rolescvc4bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |Rolescvc4bpl.783:17|
 :skolemid |23|
)))))
 :qid |Rolescvc4bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |Rolescvc4bpl.950:13|
 :skolemid |25|
))))
 :qid |Rolescvc4bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |Rolescvc4bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |Rolescvc4bpl.963:17|
 :skolemid |28|
)))))
 :qid |Rolescvc4bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |Rolescvc4bpl.1130:13|
 :skolemid |30|
))))
 :qid |Rolescvc4bpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |Rolescvc4bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |Rolescvc4bpl.1143:17|
 :skolemid |33|
)))))
 :qid |Rolescvc4bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |Rolescvc4bpl.1310:13|
 :skolemid |35|
))))
 :qid |Rolescvc4bpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |Rolescvc4bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |Rolescvc4bpl.1323:17|
 :skolemid |38|
)))))
 :qid |Rolescvc4bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |Rolescvc4bpl.1490:13|
 :skolemid |40|
))))
 :qid |Rolescvc4bpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |Rolescvc4bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |Rolescvc4bpl.1503:17|
 :skolemid |43|
)))))
 :qid |Rolescvc4bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |Rolescvc4bpl.1670:13|
 :skolemid |45|
))))
 :qid |Rolescvc4bpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |Rolescvc4bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |Rolescvc4bpl.1683:17|
 :skolemid |48|
)))))
 :qid |Rolescvc4bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |Rolescvc4bpl.1850:13|
 :skolemid |50|
))))
 :qid |Rolescvc4bpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |Rolescvc4bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |Rolescvc4bpl.1863:17|
 :skolemid |53|
)))))
 :qid |Rolescvc4bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |Rolescvc4bpl.2030:13|
 :skolemid |55|
))))
 :qid |Rolescvc4bpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |Rolescvc4bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |Rolescvc4bpl.2043:17|
 :skolemid |58|
)))))
 :qid |Rolescvc4bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |Rolescvc4bpl.2210:13|
 :skolemid |60|
))))
 :qid |Rolescvc4bpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |Rolescvc4bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |Rolescvc4bpl.2223:17|
 :skolemid |63|
)))))
 :qid |Rolescvc4bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |Rolescvc4bpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |Rolescvc4bpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |Rolescvc4bpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |Rolescvc4bpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_81661| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream) v@@24) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |Rolescvc4bpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |Rolescvc4bpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |Rolescvc4bpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |Rolescvc4bpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |Rolescvc4bpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |Rolescvc4bpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |Rolescvc4bpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |Rolescvc4bpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |Rolescvc4bpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |Rolescvc4bpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |Rolescvc4bpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |Rolescvc4bpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |Rolescvc4bpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |Rolescvc4bpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |Rolescvc4bpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |Rolescvc4bpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |Rolescvc4bpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |Rolescvc4bpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |Rolescvc4bpl.3083:70|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |Rolescvc4bpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |Rolescvc4bpl.3139:60|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |Rolescvc4bpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |Rolescvc4bpl.3195:66|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |Rolescvc4bpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |Rolescvc4bpl.3251:60|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |Rolescvc4bpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |Rolescvc4bpl.3307:63|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |Rolescvc4bpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |Rolescvc4bpl.3363:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |Rolescvc4bpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |Rolescvc4bpl.3419:82|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |Rolescvc4bpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |Rolescvc4bpl.3475:88|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |Rolescvc4bpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |Rolescvc4bpl.3684:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |Rolescvc4bpl.4217:49|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |Rolescvc4bpl.4277:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |Rolescvc4bpl.10368:49|
 :skolemid |332|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |Rolescvc4bpl.10456:91|
 :skolemid |333|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |Rolescvc4bpl.10470:113|
 :skolemid |334|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |Rolescvc4bpl.10484:71|
 :skolemid |335|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |Rolescvc4bpl.10498:75|
 :skolemid |336|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |Rolescvc4bpl.10512:73|
 :skolemid |337|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |Rolescvc4bpl.10532:48|
 :skolemid |338|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |Rolescvc4bpl.10548:57|
 :skolemid |339|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |Rolescvc4bpl.10562:103|
 :skolemid |340|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |Rolescvc4bpl.10576:125|
 :skolemid |341|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |Rolescvc4bpl.10590:83|
 :skolemid |342|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |Rolescvc4bpl.10604:87|
 :skolemid |343|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |Rolescvc4bpl.10618:85|
 :skolemid |344|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |Rolescvc4bpl.10632:48|
 :skolemid |345|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |Rolescvc4bpl.10645:65|
 :skolemid |346|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |Rolescvc4bpl.11149:45|
 :skolemid |347|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |Rolescvc4bpl.11162:45|
 :skolemid |348|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |Rolescvc4bpl.11175:55|
 :skolemid |349|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |Rolescvc4bpl.11189:55|
 :skolemid |350|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |Rolescvc4bpl.11209:38|
 :skolemid |351|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |Rolescvc4bpl.11230:44|
 :skolemid |352|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |Rolescvc4bpl.11281:53|
 :skolemid |353|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |Rolescvc4bpl.11343:53|
 :skolemid |354|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25) true)
 :qid |Rolescvc4bpl.11369:55|
 :skolemid |355|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26) true)
 :qid |Rolescvc4bpl.11383:55|
 :skolemid |356|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@27)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@27))))
 :qid |Rolescvc4bpl.11400:38|
 :skolemid |357|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@28)))
 :qid |Rolescvc4bpl.11414:48|
 :skolemid |358|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@29)))
 :qid |Rolescvc4bpl.11428:48|
 :skolemid |359|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@30))))
 :qid |Rolescvc4bpl.11448:41|
 :skolemid |360|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@31)))
 :qid |Rolescvc4bpl.11463:53|
 :skolemid |361|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@32)))
 :qid |Rolescvc4bpl.11477:53|
 :skolemid |362|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33))))
 :qid |Rolescvc4bpl.11494:60|
 :skolemid |363|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34))))
 :qid |Rolescvc4bpl.11511:60|
 :skolemid |364|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |Rolescvc4bpl.11528:57|
 :skolemid |365|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36) true)
 :qid |Rolescvc4bpl.13739:68|
 :skolemid |366|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))))
 :qid |Rolescvc4bpl.13761:66|
 :skolemid |367|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))))
 :qid |Rolescvc4bpl.13787:66|
 :skolemid |368|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@39) true)
 :qid |Rolescvc4bpl.14120:31|
 :skolemid |369|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@39))
)))
(assert (forall ((s@@40 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@40) true)
 :qid |Rolescvc4bpl.14464:31|
 :skolemid |370|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@41)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@41)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@41))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@41))))
 :qid |Rolescvc4bpl.14483:35|
 :skolemid |371|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@41))
)))
(assert (forall ((s@@42 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@42)))
 :qid |Rolescvc4bpl.14909:71|
 :skolemid |372|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@43) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@43)))
 :qid |Rolescvc4bpl.14958:46|
 :skolemid |373|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@44)))
 :qid |Rolescvc4bpl.14971:64|
 :skolemid |374|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@45)))
 :qid |Rolescvc4bpl.14984:75|
 :skolemid |375|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@46)))
 :qid |Rolescvc4bpl.14997:72|
 :skolemid |376|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46))
)))
(assert (forall ((s@@47 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@47)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@47)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@47))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@47))))
 :qid |Rolescvc4bpl.15026:46|
 :skolemid |377|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@48)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@48))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@48))))
 :qid |Rolescvc4bpl.15047:55|
 :skolemid |378|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |Rolescvc4bpl.15076:65|
 :skolemid |379|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |Rolescvc4bpl.15475:60|
 :skolemid |380|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |Rolescvc4bpl.15492:66|
 :skolemid |381|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |Rolescvc4bpl.15521:50|
 :skolemid |382|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |Rolescvc4bpl.15540:45|
 :skolemid |383|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |Rolescvc4bpl.15864:87|
 :skolemid |384|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@55)))
 :qid |Rolescvc4bpl.16081:43|
 :skolemid |385|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@56))))
 :qid |Rolescvc4bpl.16100:48|
 :skolemid |386|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@57)))
 :qid |Rolescvc4bpl.16115:50|
 :skolemid |387|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@58)))
 :qid |Rolescvc4bpl.16129:47|
 :skolemid |388|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@59)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@59))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@59))))
 :qid |Rolescvc4bpl.16149:58|
 :skolemid |389|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@60) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@60)))
 :qid |Rolescvc4bpl.16164:39|
 :skolemid |390|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@61))))
 :qid |Rolescvc4bpl.16186:58|
 :skolemid |391|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62))))
 :qid |Rolescvc4bpl.16203:58|
 :skolemid |392|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63) true)
 :qid |Rolescvc4bpl.16218:51|
 :skolemid |393|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64))))
 :qid |Rolescvc4bpl.16235:60|
 :skolemid |394|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@65)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@65))))
 :qid |Rolescvc4bpl.16533:47|
 :skolemid |395|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@66))))
 :qid |Rolescvc4bpl.16555:63|
 :skolemid |396|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@67)))
 :qid |Rolescvc4bpl.16570:57|
 :skolemid |397|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@68)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@68))))
 :qid |Rolescvc4bpl.16586:54|
 :skolemid |398|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@69)))
 :qid |Rolescvc4bpl.16600:55|
 :skolemid |399|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@70)))
 :qid |Rolescvc4bpl.16614:57|
 :skolemid |400|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@71)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@71))))
 :qid |Rolescvc4bpl.16636:56|
 :skolemid |401|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@72))))
 :qid |Rolescvc4bpl.16661:52|
 :skolemid |402|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@73)))
 :qid |Rolescvc4bpl.16677:54|
 :skolemid |403|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@74)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@74))))
 :qid |Rolescvc4bpl.17548:45|
 :skolemid |404|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@75)))
 :qid |Rolescvc4bpl.17562:51|
 :skolemid |405|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@76)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@76))))
 :qid |Rolescvc4bpl.17585:48|
 :skolemid |406|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |Rolescvc4bpl.17899:47|
 :skolemid |407|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |Rolescvc4bpl.17923:47|
 :skolemid |408|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |Rolescvc4bpl.18178:49|
 :skolemid |409|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |Rolescvc4bpl.18221:49|
 :skolemid |410|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |Rolescvc4bpl.18250:48|
 :skolemid |411|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |Rolescvc4bpl.18545:47|
 :skolemid |412|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |Rolescvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |Rolescvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_74101 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |Rolescvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |Rolescvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_74101 v@@26))
)))
(assert (forall ((v@@27 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_73707 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |Rolescvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |Rolescvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_73707 v@@27))
)))
(assert (forall ((v@@28 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_73510 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |Rolescvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |Rolescvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_73510 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@4 (ReverseVec_73904 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |Rolescvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |Rolescvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_73904 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@5 (ReverseVec_72919 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |Rolescvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |Rolescvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_72919 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@6 (ReverseVec_73116 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |Rolescvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |Rolescvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_73116 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@7 (ReverseVec_73313 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |Rolescvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |Rolescvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_73313 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_72722 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |Rolescvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |Rolescvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_72722 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |Rolescvc4bpl.245:54|
 :skolemid |467|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_81661|) (|l#1| |T@[$1_Event_EventHandle]Multiset_81661|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_81661| (|Select__T@[$1_Event_EventHandle]Multiset_81661_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_81661| (|Select__T@[$1_Event_EventHandle]Multiset_81661_| |l#1| handle@@0))))
(Multiset_81661 (|lambda#3| (|v#Multiset_81661| (|Select__T@[$1_Event_EventHandle]Multiset_81661_| |l#0@@0| handle@@0)) (|v#Multiset_81661| (|Select__T@[$1_Event_EventHandle]Multiset_81661_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |Rolescvc4bpl.2548:13|
 :skolemid |468|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |Rolescvc4bpl.124:29|
 :skolemid |469|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_111065)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_111065)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_110591)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_112037)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_110591)
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
(declare-fun $t14 () T@$Mutation_111065)
(declare-fun $t14@0 () T@$Mutation_111065)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_111065)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 264105) (let ((L5_correct  (=> (and (= $t24@0 ($Mutation_12329 (|l#$Mutation_111065| $t14@1) (seq.++ (|p#$Mutation_111065| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_111065| $t14@1)))) (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2))) (=> (and (and (= $t14@2 ($Mutation_111065 (|l#$Mutation_111065| $t14@1) (|p#$Mutation_111065| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1)))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) 173345816)) 0)))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) 186537453)) 1))) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_110591 (|Store__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_111065| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_111065| $t14@2)) (|v#$Mutation_111065| $t14@2)))))) (and (=> (= (ControlFlow 0 188135) (- 0 264823)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) 173345816)) 0)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) 173345816)) 0))) (and (=> (= (ControlFlow 0 188135) (- 0 264837)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) 186537453)) 1)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) 186537453)) 1))) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 188135) (- 0 264864)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 188135) (- 0 264874)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 188135) (- 0 264888)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 188135) (- 0 264912)) (= $t25 _$t2)))))))))))))))))
(let ((anon31_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 188193) 188135)) L5_correct)))
(let ((anon32_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 187963) 188135)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 187959) (- 0 264962)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 187959) (- 0 264999)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon31_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 188189) 187959))) L8_correct)))
(let ((anon30_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 188173) 188193) anon31_Then_correct) (=> (= (ControlFlow 0 188173) 188189) anon31_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 187843) 187959))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 187827) 187963) anon32_Then_correct) (=> (= (ControlFlow 0 187827) 187843) anon32_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 187791) 187827)) anon30_Else$1_correct)))
(let ((anon30_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 187797) 187791)) inline$$Lt$0$anon0_correct)))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= $t17@0 (= _$t1 0))) (and (=> (= (ControlFlow 0 187745) 188173) anon30_Then_correct) (=> (= (ControlFlow 0 187745) 187797) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 188207) 187959))) L8_correct)))
(let ((inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 0) (= 0 0)) (and (=> (= (ControlFlow 0 187725) 188207) anon29_Then_correct) (=> (= (ControlFlow 0 187725) 187745) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_111065| $t14@1))) (=> (and (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|) (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_111065| $t14@1)))) (and (= $t15@0 $t15@0) (= (ControlFlow 0 187731) 187725))) inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 188221) 187959))) L8_correct)))
(let ((anon27_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 188273) 188221) anon28_Then_correct) (=> (= (ControlFlow 0 188273) 187731) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 188271) 188273)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_111065 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 187628) 188221) anon28_Then_correct) (=> (= (ControlFlow 0 187628) 187731) anon28_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 187606) (- 0 264450)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 187606) 188271) anon27_Then_correct) (=> (= (ControlFlow 0 187606) 187628) anon27_Else_correct)))))))
(let ((anon25_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 188317) 187959))) L8_correct))))
(let ((anon24_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 188343) 187959))) L8_correct))))
(let ((anon26_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 187586) 188287) anon26_Then_correct) (=> (= (ControlFlow 0 187586) 187606) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not $t12) (= (ControlFlow 0 187592) 187586)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct)))
(let ((anon24_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 187515) 188317) anon25_Then_correct) (=> (= (ControlFlow 0 187515) 187592) anon25_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |Rolescvc4bpl.3872:20|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 187493) 188343) anon24_Then_correct) (=> (= (ControlFlow 0 187493) 187515) anon24_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_81661| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@0) v@@35) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 187381) 187493)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_111065| $t3)) 0) (= (seq.len (|p#$Mutation_111065| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 187391) 187381))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 264105) 187391) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t16@0 () Bool)
(declare-fun _$t0@@0 () Int)
(declare-fun $t6 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $t18 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t14@0@@0 () Int)
(declare-fun $t13@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t13 () T@$1_Roles_RoleId)
(declare-fun $t9@@0 () Int)
(declare-fun $t13@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t10@0 () Bool)
(declare-fun $t12@@0 () Int)
(declare-fun $t7 () Bool)
(declare-fun $t8 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_diem_root$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 265236) (let ((anon18_Then_correct  (=> $t16@0 (and (=> (= (ControlFlow 0 189253) (- 0 265615)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 189253) (- 0 265629)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 189253) (- 0 265641)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6)) 0))) (and (=> (= (ControlFlow 0 189253) (- 0 265659)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 189253) (- 0 265673)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr)) 0))))
 :qid |Rolescvc4bpl.4523:15|
 :skolemid |110|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@0)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@0)) 0))))
 :qid |Rolescvc4bpl.4523:15|
 :skolemid |110|
)) (and (=> (= (ControlFlow 0 189253) (- 0 265722)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@1)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@1)) 1))))
 :qid |Rolescvc4bpl.4527:15|
 :skolemid |111|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@2)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@2)) 1))))
 :qid |Rolescvc4bpl.4527:15|
 :skolemid |111|
)) (and (=> (= (ControlFlow 0 189253) (- 0 265771)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@3)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |Rolescvc4bpl.4531:15|
 :skolemid |112|
))) (=> (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@4)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@4)) 3))))
 :qid |Rolescvc4bpl.4531:15|
 :skolemid |112|
)) (and (=> (= (ControlFlow 0 189253) (- 0 265820)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@5)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@5)) 4))))
 :qid |Rolescvc4bpl.4535:15|
 :skolemid |113|
))) (=> (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@6)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@6)) 4))))
 :qid |Rolescvc4bpl.4535:15|
 :skolemid |113|
)) (and (=> (= (ControlFlow 0 189253) (- 0 265869)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@7)) 2))))
 :qid |Rolescvc4bpl.4539:15|
 :skolemid |114|
))) (=> (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@8)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@8)) 2))))
 :qid |Rolescvc4bpl.4539:15|
 :skolemid |114|
)) (and (=> (= (ControlFlow 0 189253) (- 0 265918)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@9)) 5))))
 :qid |Rolescvc4bpl.4543:15|
 :skolemid |115|
))) (=> (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@10)) 5))))
 :qid |Rolescvc4bpl.4543:15|
 :skolemid |115|
)) (=> (= (ControlFlow 0 189253) (- 0 265967)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@11)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@11)) 6))))
 :qid |Rolescvc4bpl.4547:15|
 :skolemid |116|
))))))))))))))))))))))))))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 188744) (- 0 266051)) (or (or (or (not (= _$t0@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= _$t0@@0 173345816)))) (=> (or (or (or (not (= _$t0@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= _$t0@@0 173345816))) (=> (= (ControlFlow 0 188744) (- 0 266095)) (or (or (or (and (not (= _$t0@@0 173345816)) (= 2 $t8@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6)) (= 5 $t8@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6)) 0)) (= 3 $t8@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t8@0))))))))
(let ((anon18_Else_correct  (=> (and (and (not $t16@0) (= $t18 $t18)) (and (= $t8@0 $t18) (= (ControlFlow 0 188830) 188744))) L5_correct@@0)))
(let ((anon17_Else_correct  (=> (not $abort_flag@0@@0) (=> (and (and (and (= $t14@0@@0 (|$role_id#$1_Roles_RoleId| $t13@1)) (|$IsValid'u64'| 0)) (and (= $t16@0 (= $t14@0@@0 0)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t18) (= $t18 3)) (and (= $t18 $t18) (= $t16@0 $t16@0)))) (and (=> (= (ControlFlow 0 188814) 189253) anon18_Then_correct) (=> (= (ControlFlow 0 188814) 188830) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t8@0 $abort_code@1@@0) (= (ControlFlow 0 189267) 188744))) L5_correct@@0)))
(let ((anon16_Then$1_correct  (=> (= $t13@1 $t13) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 189319) 189267) anon17_Then_correct) (=> (= (ControlFlow 0 189319) 188814) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t9@@0)) (= (ControlFlow 0 189317) 189319)) anon16_Then$1_correct)))
(let ((anon16_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t9@@0) (=> (and (and (= $t13@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t9@@0)) (= $t13@1 $t13@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 188762) 189267) anon17_Then_correct) (=> (= (ControlFlow 0 188762) 188814) anon17_Else_correct))))))
(let ((anon15_Then_correct  (=> $t10@0 (and (=> (= (ControlFlow 0 188748) 189317) anon16_Then_correct) (=> (= (ControlFlow 0 188748) 188762) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (and (not $t10@0) (= $t12@@0 $t12@@0)) (and (= $t8@0 $t12@@0) (= (ControlFlow 0 188608) 188744))) L5_correct@@0)))
(let ((anon14_Else_correct  (=> (and (not $t7) (|$IsValid'address'| $t9@@0)) (=> (and (and (and (= $t9@@0 _$t0@@0) (= $t9@@0 $t9@@0)) (and (= $t10@0 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t9@@0)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t12@@0) (= $t12@@0 5)) (and (= $t12@@0 $t12@@0) (= $t10@0 $t10@0)))) (and (=> (= (ControlFlow 0 188592) 188748) anon15_Then_correct) (=> (= (ControlFlow 0 188592) 188608) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> $t7 (=> (and (and (and (not (= _$t0@@0 173345816)) (= 2 $t8)) (= $t8 $t8)) (and (= $t8@0 $t8) (= (ControlFlow 0 189349) 188744))) L5_correct@@0))))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| _$t0@@0) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |Rolescvc4bpl.4323:20|
 :skolemid |109|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@0))
)) (= $t6 _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= $t7  (not (= _$t0@@0 173345816))))) (and (=> (= (ControlFlow 0 188530) 189349) anon14_Then_correct) (=> (= (ControlFlow 0 188530) 188592) anon14_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_81661| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@1) v@@36) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 188454) 188530)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 265236) 188454) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t16@0@@0 () Bool)
(declare-fun $t6@@0 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $t8@0@@0 () Int)
(declare-fun $t18@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t14@0@@1 () Int)
(declare-fun $t13@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t13@@0 () T@$1_Roles_RoleId)
(declare-fun $t9@@1 () Int)
(declare-fun $t13@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t10@0@@0 () Bool)
(declare-fun $t12@@1 () Int)
(declare-fun $t7@@0 () Bool)
(declare-fun $t8@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_treasury_compliance$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 266180) (let ((anon18_Then_correct@@0  (=> $t16@0@@0 (and (=> (= (ControlFlow 0 190208) (- 0 266565)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 190208) (- 0 266577)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (and (=> (= (ControlFlow 0 190208) (- 0 266595)) (not (not (= _$t0@@1 186537453)))) (=> (not (not (= _$t0@@1 186537453))) (and (=> (= (ControlFlow 0 190208) (- 0 266609)) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@12)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@12)) 0))))
 :qid |Rolescvc4bpl.4807:15|
 :skolemid |118|
))) (=> (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@13)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@13)) 0))))
 :qid |Rolescvc4bpl.4807:15|
 :skolemid |118|
)) (and (=> (= (ControlFlow 0 190208) (- 0 266658)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@14)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@14)) 1))))
 :qid |Rolescvc4bpl.4811:15|
 :skolemid |119|
))) (=> (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@15)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@15)) 1))))
 :qid |Rolescvc4bpl.4811:15|
 :skolemid |119|
)) (and (=> (= (ControlFlow 0 190208) (- 0 266707)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@16)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@16)) 3))))
 :qid |Rolescvc4bpl.4815:15|
 :skolemid |120|
))) (=> (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@17)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@17)) 3))))
 :qid |Rolescvc4bpl.4815:15|
 :skolemid |120|
)) (and (=> (= (ControlFlow 0 190208) (- 0 266756)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@18)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@18)) 4))))
 :qid |Rolescvc4bpl.4819:15|
 :skolemid |121|
))) (=> (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@19)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@19)) 4))))
 :qid |Rolescvc4bpl.4819:15|
 :skolemid |121|
)) (and (=> (= (ControlFlow 0 190208) (- 0 266805)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@20)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@20)) 2))))
 :qid |Rolescvc4bpl.4823:15|
 :skolemid |122|
))) (=> (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@21)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@21)) 2))))
 :qid |Rolescvc4bpl.4823:15|
 :skolemid |122|
)) (and (=> (= (ControlFlow 0 190208) (- 0 266854)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@22)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@22)) 5))))
 :qid |Rolescvc4bpl.4827:15|
 :skolemid |123|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@23)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@23)) 5))))
 :qid |Rolescvc4bpl.4827:15|
 :skolemid |123|
)) (=> (= (ControlFlow 0 190208) (- 0 266903)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@24)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@24)) 6))))
 :qid |Rolescvc4bpl.4831:15|
 :skolemid |124|
))))))))))))))))))))))))
(let ((L5_correct@@1  (and (=> (= (ControlFlow 0 189709) (- 0 266987)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t0@@1 186537453)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t0@@1 186537453))) (=> (= (ControlFlow 0 189709) (- 0 267020)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t8@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@0)) 1)) (= 3 $t8@0@@0))) (and (not (= _$t0@@1 186537453)) (= 2 $t8@0@@0))))))))
(let ((anon18_Else_correct@@0  (=> (and (and (not $t16@0@@0) (= $t18@@0 $t18@@0)) (and (= $t8@0@@0 $t18@@0) (= (ControlFlow 0 189799) 189709))) L5_correct@@1)))
(let ((anon17_Else_correct@@0  (=> (not $abort_flag@0@@1) (=> (and (and (and (= $t14@0@@1 (|$role_id#$1_Roles_RoleId| $t13@1@@0)) (|$IsValid'u64'| 1)) (and (= $t16@0@@0 (= $t14@0@@1 1)) (|$IsValid'u64'| 2))) (and (and (|$IsValid'u64'| $t18@@0) (= $t18@@0 3)) (and (= $t18@@0 $t18@@0) (= $t16@0@@0 $t16@0@@0)))) (and (=> (= (ControlFlow 0 189783) 190208) anon18_Then_correct@@0) (=> (= (ControlFlow 0 189783) 189799) anon18_Else_correct@@0))))))
(let ((anon17_Then_correct@@0  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t8@0@@0 $abort_code@1@@1) (= (ControlFlow 0 190222) 189709))) L5_correct@@1)))
(let ((anon16_Then$1_correct@@0  (=> (= $t13@1@@0 $t13@@0) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 190274) 190222) anon17_Then_correct@@0) (=> (= (ControlFlow 0 190274) 189783) anon17_Else_correct@@0))))))
(let ((anon16_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t9@@1)) (= (ControlFlow 0 190272) 190274)) anon16_Then$1_correct@@0)))
(let ((anon16_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t9@@1) (=> (and (and (= $t13@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t9@@1)) (= $t13@1@@0 $t13@0@@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 189727) 190222) anon17_Then_correct@@0) (=> (= (ControlFlow 0 189727) 189783) anon17_Else_correct@@0))))))
(let ((anon15_Then_correct@@0  (=> $t10@0@@0 (and (=> (= (ControlFlow 0 189713) 190272) anon16_Then_correct@@0) (=> (= (ControlFlow 0 189713) 189727) anon16_Else_correct@@0)))))
(let ((anon15_Else_correct@@0  (=> (and (and (not $t10@0@@0) (= $t12@@1 $t12@@1)) (and (= $t8@0@@0 $t12@@1) (= (ControlFlow 0 189605) 189709))) L5_correct@@1)))
(let ((anon14_Else_correct@@0  (=> (and (not $t7@@0) (|$IsValid'address'| $t9@@1)) (=> (and (and (and (= $t9@@1 _$t0@@1) (= $t9@@1 $t9@@1)) (and (= $t10@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t9@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t12@@1) (= $t12@@1 5)) (and (= $t12@@1 $t12@@1) (= $t10@0@@0 $t10@0@@0)))) (and (=> (= (ControlFlow 0 189589) 189713) anon15_Then_correct@@0) (=> (= (ControlFlow 0 189589) 189605) anon15_Else_correct@@0))))))
(let ((anon14_Then_correct@@0  (=> $t7@@0 (=> (and (and (and (not (= _$t0@@1 186537453)) (= 2 $t8@@0)) (= $t8@@0 $t8@@0)) (and (= $t8@0@@0 $t8@@0) (= (ControlFlow 0 190304) 189709))) L5_correct@@1))))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| _$t0@@1) (=> (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |Rolescvc4bpl.4610:20|
 :skolemid |117|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@1))
)) (= $t6@@0 _$t0@@1)) (and (= _$t0@@1 _$t0@@1) (= $t7@@0  (not (= _$t0@@1 186537453))))) (and (=> (= (ControlFlow 0 189527) 190304) anon14_Then_correct@@0) (=> (= (ControlFlow 0 189527) 189589) anon14_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_81661| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@2) v@@37) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 189451) 189527)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 266180) 189451) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t14@0@@2 () Bool)
(declare-fun _$t0@@2 () Int)
(declare-fun $t10@0@@1 () Int)
(declare-fun $t16 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t12@0 () Int)
(declare-fun $t11@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t11@@0 () T@$1_Roles_RoleId)
(declare-fun $t6@@1 () Int)
(declare-fun $t11@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t9@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 267087) (let ((anon15_Then_correct@@1  (=> $t14@0@@2 (and (=> (= (ControlFlow 0 191095) (- 0 267410)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@2))) (and (=> (= (ControlFlow 0 191095) (- 0 267423)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@2)) 6)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@2)) 6))) (and (=> (= (ControlFlow 0 191095) (- 0 267442)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@25)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@25)) 0))))
 :qid |Rolescvc4bpl.5049:15|
 :skolemid |126|
))) (=> (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@26)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@26)) 0))))
 :qid |Rolescvc4bpl.5049:15|
 :skolemid |126|
)) (and (=> (= (ControlFlow 0 191095) (- 0 267491)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@27)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@27)) 1))))
 :qid |Rolescvc4bpl.5053:15|
 :skolemid |127|
))) (=> (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@28)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@28)) 1))))
 :qid |Rolescvc4bpl.5053:15|
 :skolemid |127|
)) (and (=> (= (ControlFlow 0 191095) (- 0 267540)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@29)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@29)) 3))))
 :qid |Rolescvc4bpl.5057:15|
 :skolemid |128|
))) (=> (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@30)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@30)) 3))))
 :qid |Rolescvc4bpl.5057:15|
 :skolemid |128|
)) (and (=> (= (ControlFlow 0 191095) (- 0 267589)) (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@31)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@31)) 4))))
 :qid |Rolescvc4bpl.5061:15|
 :skolemid |129|
))) (=> (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@32)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@32)) 4))))
 :qid |Rolescvc4bpl.5061:15|
 :skolemid |129|
)) (and (=> (= (ControlFlow 0 191095) (- 0 267638)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@33)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@33)) 2))))
 :qid |Rolescvc4bpl.5065:15|
 :skolemid |130|
))) (=> (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@34)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@34)) 2))))
 :qid |Rolescvc4bpl.5065:15|
 :skolemid |130|
)) (and (=> (= (ControlFlow 0 191095) (- 0 267687)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@35)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@35)) 5))))
 :qid |Rolescvc4bpl.5069:15|
 :skolemid |131|
))) (=> (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@36)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@36)) 5))))
 :qid |Rolescvc4bpl.5069:15|
 :skolemid |131|
)) (=> (= (ControlFlow 0 191095) (- 0 267736)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@37)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@37)) 6))))
 :qid |Rolescvc4bpl.5073:15|
 :skolemid |132|
))))))))))))))))))))))
(let ((L5_correct@@2  (and (=> (= (ControlFlow 0 190606) (- 0 267816)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@2)) 6)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@2)) 6))) (=> (= (ControlFlow 0 190606) (- 0 267840)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@2)) (= 5 $t10@0@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@2)) 6)) (= 3 $t10@0@@1))))))))
(let ((anon15_Else_correct@@1  (=> (and (and (not $t14@0@@2) (= $t16 $t16)) (and (= $t10@0@@1 $t16) (= (ControlFlow 0 190696) 190606))) L5_correct@@2)))
(let ((anon14_Else_correct@@1  (=> (not $abort_flag@0@@2) (=> (and (and (and (= $t12@0 (|$role_id#$1_Roles_RoleId| $t11@1)) (|$IsValid'u64'| 6)) (and (= $t14@0@@2 (= $t12@0 6)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| $t16) (= $t16 3)) (and (= $t16 $t16) (= $t14@0@@2 $t14@0@@2)))) (and (=> (= (ControlFlow 0 190680) 191095) anon15_Then_correct@@1) (=> (= (ControlFlow 0 190680) 190696) anon15_Else_correct@@1))))))
(let ((anon14_Then_correct@@1  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t10@0@@1 $abort_code@1@@2) (= (ControlFlow 0 191109) 190606))) L5_correct@@2)))
(let ((anon13_Then$1_correct  (=> (= $t11@1 $t11@@0) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 191161) 191109) anon14_Then_correct@@1) (=> (= (ControlFlow 0 191161) 190680) anon14_Else_correct@@1))))))
(let ((anon13_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@1)) (= (ControlFlow 0 191159) 191161)) anon13_Then$1_correct)))
(let ((anon13_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@1) (=> (and (and (= $t11@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@1)) (= $t11@1 $t11@0@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 190624) 191109) anon14_Then_correct@@1) (=> (= (ControlFlow 0 190624) 190680) anon14_Else_correct@@1))))))
(let ((anon12_Then_correct  (=> $t7@0 (and (=> (= (ControlFlow 0 190610) 191159) anon13_Then_correct) (=> (= (ControlFlow 0 190610) 190624) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not $t7@0) (= $t9@@2 $t9@@2)) (and (= $t10@0@@1 $t9@@2) (= (ControlFlow 0 190526) 190606))) L5_correct@@2)))
(let ((anon0$1_correct@@2  (=> (and (and (|$IsValid'address'| _$t0@@2) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |Rolescvc4bpl.4892:20|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@2))
))) (and (= _$t0@@2 _$t0@@2) (|$IsValid'address'| $t6@@1))) (=> (and (and (and (= $t6@@1 _$t0@@2) (= $t6@@1 $t6@@1)) (and (= $t7@0 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t9@@2) (= $t9@@2 5)) (and (= $t9@@2 $t9@@2) (= $t7@0 $t7@0)))) (and (=> (= (ControlFlow 0 190510) 190610) anon12_Then_correct) (=> (= (ControlFlow 0 190510) 190526) anon12_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_81661| stream@@3) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@3) v@@38) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 190406) 190510)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 267087) 190406) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t15@0@@0 () Bool)
(declare-fun $t6@@2 () Int)
(declare-fun $t11@0@@1 () Int)
(declare-fun $t17 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $t13@0@@1 () Int)
(declare-fun $t12@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t12@@2 () T@$1_Roles_RoleId)
(declare-fun $t7@@1 () Int)
(declare-fun $t12@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t8@0@@1 () Bool)
(declare-fun $t10@@0 () Int)
(declare-fun _$t0@@3 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_designated_dealer$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 267891) (let ((anon15_Then_correct@@2  (=> $t15@0@@0 (and (=> (= (ControlFlow 0 191952) (- 0 268227)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@2))) (and (=> (= (ControlFlow 0 191952) (- 0 268239)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@2)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@2)) 2))) (and (=> (= (ControlFlow 0 191952) (- 0 268257)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@38)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@38)) 0))))
 :qid |Rolescvc4bpl.5297:15|
 :skolemid |134|
))) (=> (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@39)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@39)) 0))))
 :qid |Rolescvc4bpl.5297:15|
 :skolemid |134|
)) (and (=> (= (ControlFlow 0 191952) (- 0 268306)) (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@40)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@40)) 1))))
 :qid |Rolescvc4bpl.5301:15|
 :skolemid |135|
))) (=> (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@41)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@41)) 1))))
 :qid |Rolescvc4bpl.5301:15|
 :skolemid |135|
)) (and (=> (= (ControlFlow 0 191952) (- 0 268355)) (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@42)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@42)) 3))))
 :qid |Rolescvc4bpl.5305:15|
 :skolemid |136|
))) (=> (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@43)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@43)) 3))))
 :qid |Rolescvc4bpl.5305:15|
 :skolemid |136|
)) (and (=> (= (ControlFlow 0 191952) (- 0 268404)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@44)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@44)) 4))))
 :qid |Rolescvc4bpl.5309:15|
 :skolemid |137|
))) (=> (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@45)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@45)) 4))))
 :qid |Rolescvc4bpl.5309:15|
 :skolemid |137|
)) (and (=> (= (ControlFlow 0 191952) (- 0 268453)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@46)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@46)) 2))))
 :qid |Rolescvc4bpl.5313:15|
 :skolemid |138|
))) (=> (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@47)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@47)) 2))))
 :qid |Rolescvc4bpl.5313:15|
 :skolemid |138|
)) (and (=> (= (ControlFlow 0 191952) (- 0 268502)) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@48)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@48)) 5))))
 :qid |Rolescvc4bpl.5317:15|
 :skolemid |139|
))) (=> (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@49)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@49)) 5))))
 :qid |Rolescvc4bpl.5317:15|
 :skolemid |139|
)) (=> (= (ControlFlow 0 191952) (- 0 268551)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@50)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@50)) 6))))
 :qid |Rolescvc4bpl.5321:15|
 :skolemid |140|
))))))))))))))))))))))
(let ((L5_correct@@3  (and (=> (= (ControlFlow 0 191467) (- 0 268631)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@2)) 2)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@2)) 2))) (=> (= (ControlFlow 0 191467) (- 0 268653)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@2)) (= 5 $t11@0@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@2)) 2)) (= 3 $t11@0@@1))))))))
(let ((anon15_Else_correct@@2  (=> (and (and (not $t15@0@@0) (= $t17 $t17)) (and (= $t11@0@@1 $t17) (= (ControlFlow 0 191557) 191467))) L5_correct@@3)))
(let ((anon14_Else_correct@@2  (=> (not $abort_flag@0@@3) (=> (and (and (and (= $t13@0@@1 (|$role_id#$1_Roles_RoleId| $t12@1)) (|$IsValid'u64'| 2)) (and (= $t15@0@@0 (= $t13@0@@1 2)) (|$IsValid'u64'| 6))) (and (and (|$IsValid'u64'| $t17) (= $t17 3)) (and (= $t17 $t17) (= $t15@0@@0 $t15@0@@0)))) (and (=> (= (ControlFlow 0 191541) 191952) anon15_Then_correct@@2) (=> (= (ControlFlow 0 191541) 191557) anon15_Else_correct@@2))))))
(let ((anon14_Then_correct@@2  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t11@0@@1 $abort_code@1@@3) (= (ControlFlow 0 191966) 191467))) L5_correct@@3)))
(let ((anon13_Then$1_correct@@0  (=> (= $t12@1 $t12@@2) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 192018) 191966) anon14_Then_correct@@2) (=> (= (ControlFlow 0 192018) 191541) anon14_Else_correct@@2))))))
(let ((anon13_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t7@@1)) (= (ControlFlow 0 192016) 192018)) anon13_Then$1_correct@@0)))
(let ((anon13_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t7@@1) (=> (and (and (= $t12@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t7@@1)) (= $t12@1 $t12@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 191485) 191966) anon14_Then_correct@@2) (=> (= (ControlFlow 0 191485) 191541) anon14_Else_correct@@2))))))
(let ((anon12_Then_correct@@0  (=> $t8@0@@1 (and (=> (= (ControlFlow 0 191471) 192016) anon13_Then_correct@@0) (=> (= (ControlFlow 0 191471) 191485) anon13_Else_correct@@0)))))
(let ((anon12_Else_correct@@0  (=> (and (and (not $t8@0@@1) (= $t10@@0 $t10@@0)) (and (= $t11@0@@1 $t10@@0) (= (ControlFlow 0 191395) 191467))) L5_correct@@3)))
(let ((anon0$1_correct@@3  (=> (|$IsValid'address'| _$t0@@3) (=> (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@3)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@3))
 :qid |Rolescvc4bpl.5135:20|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@3))
)) (= $t6@@2 _$t0@@3)) (and (= _$t0@@3 _$t0@@3) (|$IsValid'address'| $t7@@1))) (=> (and (and (and (= $t7@@1 _$t0@@3) (= $t7@@1 $t7@@1)) (and (= $t8@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t7@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t10@@0) (= $t10@@0 5)) (and (= $t10@@0 $t10@@0) (= $t8@0@@1 $t8@0@@1)))) (and (=> (= (ControlFlow 0 191379) 191471) anon12_Then_correct@@0) (=> (= (ControlFlow 0 191379) 191395) anon12_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_81661| stream@@4) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@4) v@@39) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 191263) 191379)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 267891) 191263) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t7@0@@0 () Bool)
(declare-fun $t8@@1 () Int)
(declare-fun $t9@@3 () Int)
(declare-fun $t14@0@@3 () Int)
(declare-fun $t23@@0 () Int)
(declare-fun $t18@0@@0 () Bool)
(declare-fun $t21@0 () Bool)
(declare-fun $t16@0@@1 () Int)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $t15@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t15 () T@$1_Roles_RoleId)
(declare-fun $t10@@1 () Int)
(declare-fun $t15@0@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t11@0@@2 () Bool)
(declare-fun $t13@@1 () Int)
(declare-fun _$t0@@4 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_parent_vasp_or_child_vasp$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 268702) (let ((anon19_Then_correct  (=> $t7@0@@0 (and (=> (= (ControlFlow 0 192871) (- 0 269120)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@1))) (and (=> (= (ControlFlow 0 192871) (- 0 269132)) (not (and (not (= $t9@@3 5)) (not (= $t9@@3 6))))) (=> (not (and (not (= $t9@@3 5)) (not (= $t9@@3 6)))) (and (=> (= (ControlFlow 0 192871) (- 0 269155)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@51)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@51)) 0))))
 :qid |Rolescvc4bpl.5604:15|
 :skolemid |142|
))) (=> (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@52)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@52)) 0))))
 :qid |Rolescvc4bpl.5604:15|
 :skolemid |142|
)) (and (=> (= (ControlFlow 0 192871) (- 0 269204)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@53)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@53)) 1))))
 :qid |Rolescvc4bpl.5608:15|
 :skolemid |143|
))) (=> (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@54)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@54)) 1))))
 :qid |Rolescvc4bpl.5608:15|
 :skolemid |143|
)) (and (=> (= (ControlFlow 0 192871) (- 0 269253)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@55)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@55)) 3))))
 :qid |Rolescvc4bpl.5612:15|
 :skolemid |144|
))) (=> (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@56)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@56)) 3))))
 :qid |Rolescvc4bpl.5612:15|
 :skolemid |144|
)) (and (=> (= (ControlFlow 0 192871) (- 0 269302)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@57)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@57)) 4))))
 :qid |Rolescvc4bpl.5616:15|
 :skolemid |145|
))) (=> (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@58)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@58)) 4))))
 :qid |Rolescvc4bpl.5616:15|
 :skolemid |145|
)) (and (=> (= (ControlFlow 0 192871) (- 0 269351)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@59)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@59)) 2))))
 :qid |Rolescvc4bpl.5620:15|
 :skolemid |146|
))) (=> (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@60)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@60)) 2))))
 :qid |Rolescvc4bpl.5620:15|
 :skolemid |146|
)) (and (=> (= (ControlFlow 0 192871) (- 0 269400)) (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@61)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@61)) 5))))
 :qid |Rolescvc4bpl.5624:15|
 :skolemid |147|
))) (=> (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@62)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@62)) 5))))
 :qid |Rolescvc4bpl.5624:15|
 :skolemid |147|
)) (=> (= (ControlFlow 0 192871) (- 0 269449)) (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@63)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@63)) 6))))
 :qid |Rolescvc4bpl.5628:15|
 :skolemid |148|
))))))))))))))))))))))
(let ((L9_correct  (and (=> (= (ControlFlow 0 192346) (- 0 269529)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@1)) (and (not (= $t9@@3 5)) (not (= $t9@@3 6))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@1)) (and (not (= $t9@@3 5)) (not (= $t9@@3 6)))) (=> (= (ControlFlow 0 192346) (- 0 269556)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@1)) (= 5 $t14@0@@3)) (and (and (not (= $t9@@3 5)) (not (= $t9@@3 6))) (= 3 $t14@0@@3))))))))
(let ((anon19_Else_correct  (=> (and (and (not $t7@0@@0) (= $t23@@0 $t23@@0)) (and (= $t14@0@@3 $t23@@0) (= (ControlFlow 0 192472) 192346))) L9_correct)))
(let ((L5_correct@@4  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 3)) (and (= $t23@@0 $t23@@0) (= $t7@0@@0 $t7@0@@0))) (and (=> (= (ControlFlow 0 192456) 192871) anon19_Then_correct) (=> (= (ControlFlow 0 192456) 192472) anon19_Else_correct))))))
(let ((anon18_Else_correct@@1  (=> (and (not $t18@0@@0) (|$IsValid'u64'| 6)) (=> (and (and (= $t21@0 (= $t16@0@@1 6)) (= $t21@0 $t21@0)) (and (= $t7@0@@0 $t21@0) (= (ControlFlow 0 192422) 192456))) L5_correct@@4))))
(let ((anon18_Then_correct@@1  (=> (and (and $t18@0@@0 (= true true)) (and (= $t7@0@@0 true) (= (ControlFlow 0 192889) 192456))) L5_correct@@4)))
(let ((anon17_Else_correct@@1  (=> (not $abort_flag@0@@4) (=> (and (and (= $t16@0@@1 (|$role_id#$1_Roles_RoleId| $t15@1)) (= $t16@0@@1 $t16@0@@1)) (and (|$IsValid'u64'| 5) (= $t18@0@@0 (= $t16@0@@1 5)))) (and (=> (= (ControlFlow 0 192396) 192889) anon18_Then_correct@@1) (=> (= (ControlFlow 0 192396) 192422) anon18_Else_correct@@1))))))
(let ((anon17_Then_correct@@1  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t14@0@@3 $abort_code@1@@4) (= (ControlFlow 0 192903) 192346))) L9_correct)))
(let ((anon16_Then$1_correct@@1  (=> (= $t15@1 $t15) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 192955) 192903) anon17_Then_correct@@1) (=> (= (ControlFlow 0 192955) 192396) anon17_Else_correct@@1))))))
(let ((anon16_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t10@@1)) (= (ControlFlow 0 192953) 192955)) anon16_Then$1_correct@@1)))
(let ((anon16_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t10@@1) (=> (and (and (= $t15@0@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t10@@1)) (= $t15@1 $t15@0@@1)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 192364) 192903) anon17_Then_correct@@1) (=> (= (ControlFlow 0 192364) 192396) anon17_Else_correct@@1))))))
(let ((anon15_Then_correct@@3  (=> $t11@0@@2 (and (=> (= (ControlFlow 0 192350) 192953) anon16_Then_correct@@1) (=> (= (ControlFlow 0 192350) 192364) anon16_Else_correct@@1)))))
(let ((anon15_Else_correct@@3  (=> (and (and (not $t11@0@@2) (= $t13@@1 $t13@@1)) (and (= $t14@0@@3 $t13@@1) (= (ControlFlow 0 192266) 192346))) L9_correct)))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| _$t0@@4) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |Rolescvc4bpl.5389:20|
 :skolemid |141|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@4))
))) (=> (and (and (= $t8@@1 _$t0@@4) (= $t9@@3 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@1)))) (and (= _$t0@@4 _$t0@@4) (|$IsValid'address'| $t10@@1))) (=> (and (and (and (= $t10@@1 _$t0@@4) (= $t10@@1 $t10@@1)) (and (= $t11@0@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t10@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t13@@1) (= $t13@@1 5)) (and (= $t13@@1 $t13@@1) (= $t11@0@@2 $t11@0@@2)))) (and (=> (= (ControlFlow 0 192250) 192350) anon15_Then_correct@@3) (=> (= (ControlFlow 0 192250) 192266) anon15_Else_correct@@3)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_81661| stream@@5) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@5) v@@40) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 192120) 192250)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 268702) 192120) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t7@0@@1 () Bool)
(declare-fun $t8@@2 () Int)
(declare-fun $t9@@4 () Int)
(declare-fun $t14@0@@4 () Int)
(declare-fun $t23@@1 () Int)
(declare-fun $t18@0@@1 () Bool)
(declare-fun $t21@0@@0 () Bool)
(declare-fun $t16@0@@2 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t15@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $t15@@0 () T@$1_Roles_RoleId)
(declare-fun $t10@@2 () Int)
(declare-fun $t15@0@@2 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t11@0@@3 () Bool)
(declare-fun $t13@@2 () Int)
(declare-fun _$t0@@5 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_parent_vasp_or_designated_dealer$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 269610) (let ((anon19_Then_correct@@0  (=> $t7@0@@1 (and (=> (= (ControlFlow 0 193806) (- 0 270028)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@2))) (and (=> (= (ControlFlow 0 193806) (- 0 270040)) (not (and (not (= $t9@@4 5)) (not (= $t9@@4 2))))) (=> (not (and (not (= $t9@@4 5)) (not (= $t9@@4 2)))) (and (=> (= (ControlFlow 0 193806) (- 0 270063)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@64)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@64)) 0))))
 :qid |Rolescvc4bpl.5911:15|
 :skolemid |150|
))) (=> (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@65)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@65)) 0))))
 :qid |Rolescvc4bpl.5911:15|
 :skolemid |150|
)) (and (=> (= (ControlFlow 0 193806) (- 0 270112)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@66)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@66)) 1))))
 :qid |Rolescvc4bpl.5915:15|
 :skolemid |151|
))) (=> (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@67)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@67)) 1))))
 :qid |Rolescvc4bpl.5915:15|
 :skolemid |151|
)) (and (=> (= (ControlFlow 0 193806) (- 0 270161)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@68)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@68)) 3))))
 :qid |Rolescvc4bpl.5919:15|
 :skolemid |152|
))) (=> (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@69)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@69)) 3))))
 :qid |Rolescvc4bpl.5919:15|
 :skolemid |152|
)) (and (=> (= (ControlFlow 0 193806) (- 0 270210)) (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@70)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@70)) 4))))
 :qid |Rolescvc4bpl.5923:15|
 :skolemid |153|
))) (=> (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@71)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@71)) 4))))
 :qid |Rolescvc4bpl.5923:15|
 :skolemid |153|
)) (and (=> (= (ControlFlow 0 193806) (- 0 270259)) (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@72)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@72)) 2))))
 :qid |Rolescvc4bpl.5927:15|
 :skolemid |154|
))) (=> (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@73)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@73)) 2))))
 :qid |Rolescvc4bpl.5927:15|
 :skolemid |154|
)) (and (=> (= (ControlFlow 0 193806) (- 0 270308)) (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@74)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@74)) 5))))
 :qid |Rolescvc4bpl.5931:15|
 :skolemid |155|
))) (=> (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@75)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@75)) 5))))
 :qid |Rolescvc4bpl.5931:15|
 :skolemid |155|
)) (=> (= (ControlFlow 0 193806) (- 0 270357)) (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@76)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@76)) 6))))
 :qid |Rolescvc4bpl.5935:15|
 :skolemid |156|
))))))))))))))))))))))
(let ((L9_correct@@0  (and (=> (= (ControlFlow 0 193281) (- 0 270437)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@2)) (and (not (= $t9@@4 5)) (not (= $t9@@4 2))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@2)) (and (not (= $t9@@4 5)) (not (= $t9@@4 2)))) (=> (= (ControlFlow 0 193281) (- 0 270464)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@2)) (= 5 $t14@0@@4)) (and (and (not (= $t9@@4 5)) (not (= $t9@@4 2))) (= 3 $t14@0@@4))))))))
(let ((anon19_Else_correct@@0  (=> (and (and (not $t7@0@@1) (= $t23@@1 $t23@@1)) (and (= $t14@0@@4 $t23@@1) (= (ControlFlow 0 193407) 193281))) L9_correct@@0)))
(let ((L5_correct@@5  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t23@@1) (= $t23@@1 3)) (and (= $t23@@1 $t23@@1) (= $t7@0@@1 $t7@0@@1))) (and (=> (= (ControlFlow 0 193391) 193806) anon19_Then_correct@@0) (=> (= (ControlFlow 0 193391) 193407) anon19_Else_correct@@0))))))
(let ((anon18_Else_correct@@2  (=> (and (not $t18@0@@1) (|$IsValid'u64'| 2)) (=> (and (and (= $t21@0@@0 (= $t16@0@@2 2)) (= $t21@0@@0 $t21@0@@0)) (and (= $t7@0@@1 $t21@0@@0) (= (ControlFlow 0 193357) 193391))) L5_correct@@5))))
(let ((anon18_Then_correct@@2  (=> (and (and $t18@0@@1 (= true true)) (and (= $t7@0@@1 true) (= (ControlFlow 0 193824) 193391))) L5_correct@@5)))
(let ((anon17_Else_correct@@2  (=> (not $abort_flag@0@@5) (=> (and (and (= $t16@0@@2 (|$role_id#$1_Roles_RoleId| $t15@1@@0)) (= $t16@0@@2 $t16@0@@2)) (and (|$IsValid'u64'| 5) (= $t18@0@@1 (= $t16@0@@2 5)))) (and (=> (= (ControlFlow 0 193331) 193824) anon18_Then_correct@@2) (=> (= (ControlFlow 0 193331) 193357) anon18_Else_correct@@2))))))
(let ((anon17_Then_correct@@2  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t14@0@@4 $abort_code@1@@5) (= (ControlFlow 0 193838) 193281))) L9_correct@@0)))
(let ((anon16_Then$1_correct@@2  (=> (= $t15@1@@0 $t15@@0) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 193890) 193838) anon17_Then_correct@@2) (=> (= (ControlFlow 0 193890) 193331) anon17_Else_correct@@2))))))
(let ((anon16_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t10@@2)) (= (ControlFlow 0 193888) 193890)) anon16_Then$1_correct@@2)))
(let ((anon16_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t10@@2) (=> (and (and (= $t15@0@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t10@@2)) (= $t15@1@@0 $t15@0@@2)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 193299) 193838) anon17_Then_correct@@2) (=> (= (ControlFlow 0 193299) 193331) anon17_Else_correct@@2))))))
(let ((anon15_Then_correct@@4  (=> $t11@0@@3 (and (=> (= (ControlFlow 0 193285) 193888) anon16_Then_correct@@2) (=> (= (ControlFlow 0 193285) 193299) anon16_Else_correct@@2)))))
(let ((anon15_Else_correct@@4  (=> (and (and (not $t11@0@@3) (= $t13@@2 $t13@@2)) (and (= $t14@0@@4 $t13@@2) (= (ControlFlow 0 193201) 193281))) L9_correct@@0)))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'address'| _$t0@@5) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |Rolescvc4bpl.5696:20|
 :skolemid |149|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@5))
))) (=> (and (and (= $t8@@2 _$t0@@5) (= $t9@@4 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t8@@2)))) (and (= _$t0@@5 _$t0@@5) (|$IsValid'address'| $t10@@2))) (=> (and (and (and (= $t10@@2 _$t0@@5) (= $t10@@2 $t10@@2)) (and (= $t11@0@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t10@@2)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t13@@2) (= $t13@@2 5)) (and (= $t13@@2 $t13@@2) (= $t11@0@@3 $t11@0@@3)))) (and (=> (= (ControlFlow 0 193185) 193285) anon15_Then_correct@@4) (=> (= (ControlFlow 0 193185) 193201) anon15_Else_correct@@4)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_81661| stream@@6) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@6) v@@41) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 193055) 193185)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 269610) 193055) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5)))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t15@0@@3 () Bool)
(declare-fun $t6@@3 () Int)
(declare-fun $t11@0@@4 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $t13@0@@2 () Int)
(declare-fun $t12@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $t12@@3 () T@$1_Roles_RoleId)
(declare-fun $t7@@2 () Int)
(declare-fun $t12@0@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun $t8@0@@2 () Bool)
(declare-fun $t10@@3 () Int)
(declare-fun _$t0@@6 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 270518) (let ((anon15_Then_correct@@5  (=> $t15@0@@3 (and (=> (= (ControlFlow 0 194679) (- 0 270854)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@3))) (and (=> (= (ControlFlow 0 194679) (- 0 270866)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@3)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@3)) 5))) (and (=> (= (ControlFlow 0 194679) (- 0 270884)) (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@77)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@77)) 0))))
 :qid |Rolescvc4bpl.6159:15|
 :skolemid |158|
))) (=> (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@78)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@78)) 0))))
 :qid |Rolescvc4bpl.6159:15|
 :skolemid |158|
)) (and (=> (= (ControlFlow 0 194679) (- 0 270933)) (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@79)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@79)) 1))))
 :qid |Rolescvc4bpl.6163:15|
 :skolemid |159|
))) (=> (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@80)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@80)) 1))))
 :qid |Rolescvc4bpl.6163:15|
 :skolemid |159|
)) (and (=> (= (ControlFlow 0 194679) (- 0 270982)) (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@81)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@81)) 3))))
 :qid |Rolescvc4bpl.6167:15|
 :skolemid |160|
))) (=> (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@82)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@82)) 3))))
 :qid |Rolescvc4bpl.6167:15|
 :skolemid |160|
)) (and (=> (= (ControlFlow 0 194679) (- 0 271031)) (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@83)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@83)) 4))))
 :qid |Rolescvc4bpl.6171:15|
 :skolemid |161|
))) (=> (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@84)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@84)) 4))))
 :qid |Rolescvc4bpl.6171:15|
 :skolemid |161|
)) (and (=> (= (ControlFlow 0 194679) (- 0 271080)) (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@85)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@85)) 2))))
 :qid |Rolescvc4bpl.6175:15|
 :skolemid |162|
))) (=> (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@86)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@86)) 2))))
 :qid |Rolescvc4bpl.6175:15|
 :skolemid |162|
)) (and (=> (= (ControlFlow 0 194679) (- 0 271129)) (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@87)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@87)) 5))))
 :qid |Rolescvc4bpl.6179:15|
 :skolemid |163|
))) (=> (forall ((addr@@88 Int) ) (!  (=> (|$IsValid'address'| addr@@88) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@88)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@88)) 5))))
 :qid |Rolescvc4bpl.6179:15|
 :skolemid |163|
)) (=> (= (ControlFlow 0 194679) (- 0 271178)) (forall ((addr@@89 Int) ) (!  (=> (|$IsValid'address'| addr@@89) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@89)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@89)) 6))))
 :qid |Rolescvc4bpl.6183:15|
 :skolemid |164|
))))))))))))))))))))))
(let ((L5_correct@@6  (and (=> (= (ControlFlow 0 194194) (- 0 271258)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@3)) 5)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@3)) 5))) (=> (= (ControlFlow 0 194194) (- 0 271280)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@3)) (= 5 $t11@0@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@3)) 5)) (= 3 $t11@0@@4))))))))
(let ((anon15_Else_correct@@5  (=> (and (and (not $t15@0@@3) (= $t17@@0 $t17@@0)) (and (= $t11@0@@4 $t17@@0) (= (ControlFlow 0 194284) 194194))) L5_correct@@6)))
(let ((anon14_Else_correct@@3  (=> (not $abort_flag@0@@6) (=> (and (and (and (= $t13@0@@2 (|$role_id#$1_Roles_RoleId| $t12@1@@0)) (|$IsValid'u64'| 5)) (and (= $t15@0@@3 (= $t13@0@@2 5)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t17@@0) (= $t17@@0 3)) (and (= $t17@@0 $t17@@0) (= $t15@0@@3 $t15@0@@3)))) (and (=> (= (ControlFlow 0 194268) 194679) anon15_Then_correct@@5) (=> (= (ControlFlow 0 194268) 194284) anon15_Else_correct@@5))))))
(let ((anon14_Then_correct@@3  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t11@0@@4 $abort_code@1@@6) (= (ControlFlow 0 194693) 194194))) L5_correct@@6)))
(let ((anon13_Then$1_correct@@1  (=> (= $t12@1@@0 $t12@@3) (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 194745) 194693) anon14_Then_correct@@3) (=> (= (ControlFlow 0 194745) 194268) anon14_Else_correct@@3))))))
(let ((anon13_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t7@@2)) (= (ControlFlow 0 194743) 194745)) anon13_Then$1_correct@@1)))
(let ((anon13_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t7@@2) (=> (and (and (= $t12@0@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t7@@2)) (= $t12@1@@0 $t12@0@@1)) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 194212) 194693) anon14_Then_correct@@3) (=> (= (ControlFlow 0 194212) 194268) anon14_Else_correct@@3))))))
(let ((anon12_Then_correct@@1  (=> $t8@0@@2 (and (=> (= (ControlFlow 0 194198) 194743) anon13_Then_correct@@1) (=> (= (ControlFlow 0 194198) 194212) anon13_Else_correct@@1)))))
(let ((anon12_Else_correct@@1  (=> (and (and (not $t8@0@@2) (= $t10@@3 $t10@@3)) (and (= $t11@0@@4 $t10@@3) (= (ControlFlow 0 194122) 194194))) L5_correct@@6)))
(let ((anon0$1_correct@@6  (=> (|$IsValid'address'| _$t0@@6) (=> (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |Rolescvc4bpl.5997:20|
 :skolemid |157|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@6))
)) (= $t6@@3 _$t0@@6)) (and (= _$t0@@6 _$t0@@6) (|$IsValid'address'| $t7@@2))) (=> (and (and (and (= $t7@@2 _$t0@@6) (= $t7@@2 $t7@@2)) (and (= $t8@0@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t7@@2)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t10@@3) (= $t10@@3 5)) (and (= $t10@@3 $t10@@3) (= $t8@0@@2 $t8@0@@2)))) (and (=> (= (ControlFlow 0 194106) 194198) anon12_Then_correct@@1) (=> (= (ControlFlow 0 194106) 194122) anon12_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_81661| stream@@7) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@7) v@@42) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 193990) 194106)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 270518) 193990) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t14@0@@5 () Bool)
(declare-fun _$t0@@7 () Int)
(declare-fun $t10@0@@2 () Int)
(declare-fun $t16@@0 () Int)
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $t12@0@@2 () Int)
(declare-fun $t11@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t11@@1 () T@$1_Roles_RoleId)
(declare-fun $t6@@4 () Int)
(declare-fun $t11@0@@5 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun $t7@0@@2 () Bool)
(declare-fun $t9@@5 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 271329) (let ((anon15_Then_correct@@6  (=> $t14@0@@5 (and (=> (= (ControlFlow 0 195536) (- 0 271652)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@7))) (and (=> (= (ControlFlow 0 195536) (- 0 271665)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@7)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@7)) 3))) (and (=> (= (ControlFlow 0 195536) (- 0 271684)) (forall ((addr@@90 Int) ) (!  (=> (|$IsValid'address'| addr@@90) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@90)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@90)) 0))))
 :qid |Rolescvc4bpl.6401:15|
 :skolemid |166|
))) (=> (forall ((addr@@91 Int) ) (!  (=> (|$IsValid'address'| addr@@91) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@91)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@91)) 0))))
 :qid |Rolescvc4bpl.6401:15|
 :skolemid |166|
)) (and (=> (= (ControlFlow 0 195536) (- 0 271733)) (forall ((addr@@92 Int) ) (!  (=> (|$IsValid'address'| addr@@92) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@92)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@92)) 1))))
 :qid |Rolescvc4bpl.6405:15|
 :skolemid |167|
))) (=> (forall ((addr@@93 Int) ) (!  (=> (|$IsValid'address'| addr@@93) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@93)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@93)) 1))))
 :qid |Rolescvc4bpl.6405:15|
 :skolemid |167|
)) (and (=> (= (ControlFlow 0 195536) (- 0 271782)) (forall ((addr@@94 Int) ) (!  (=> (|$IsValid'address'| addr@@94) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@94)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@94)) 3))))
 :qid |Rolescvc4bpl.6409:15|
 :skolemid |168|
))) (=> (forall ((addr@@95 Int) ) (!  (=> (|$IsValid'address'| addr@@95) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@95)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@95)) 3))))
 :qid |Rolescvc4bpl.6409:15|
 :skolemid |168|
)) (and (=> (= (ControlFlow 0 195536) (- 0 271831)) (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@96)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@96)) 4))))
 :qid |Rolescvc4bpl.6413:15|
 :skolemid |169|
))) (=> (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@97)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@97)) 4))))
 :qid |Rolescvc4bpl.6413:15|
 :skolemid |169|
)) (and (=> (= (ControlFlow 0 195536) (- 0 271880)) (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@98)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@98)) 2))))
 :qid |Rolescvc4bpl.6417:15|
 :skolemid |170|
))) (=> (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@99)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@99)) 2))))
 :qid |Rolescvc4bpl.6417:15|
 :skolemid |170|
)) (and (=> (= (ControlFlow 0 195536) (- 0 271929)) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@100)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@100)) 5))))
 :qid |Rolescvc4bpl.6421:15|
 :skolemid |171|
))) (=> (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@101)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@101)) 5))))
 :qid |Rolescvc4bpl.6421:15|
 :skolemid |171|
)) (=> (= (ControlFlow 0 195536) (- 0 271978)) (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@102) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@102)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@102) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@102)) 6))))
 :qid |Rolescvc4bpl.6425:15|
 :skolemid |172|
))))))))))))))))))))))
(let ((L5_correct@@7  (and (=> (= (ControlFlow 0 195047) (- 0 272058)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@7)) 3)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@7)) 3))) (=> (= (ControlFlow 0 195047) (- 0 272082)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@7)) (= 5 $t10@0@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@7)) 3)) (= 3 $t10@0@@2))))))))
(let ((anon15_Else_correct@@6  (=> (and (and (not $t14@0@@5) (= $t16@@0 $t16@@0)) (and (= $t10@0@@2 $t16@@0) (= (ControlFlow 0 195137) 195047))) L5_correct@@7)))
(let ((anon14_Else_correct@@4  (=> (not $abort_flag@0@@7) (=> (and (and (and (= $t12@0@@2 (|$role_id#$1_Roles_RoleId| $t11@1@@0)) (|$IsValid'u64'| 3)) (and (= $t14@0@@5 (= $t12@0@@2 3)) (|$IsValid'u64'| 7))) (and (and (|$IsValid'u64'| $t16@@0) (= $t16@@0 3)) (and (= $t16@@0 $t16@@0) (= $t14@0@@5 $t14@0@@5)))) (and (=> (= (ControlFlow 0 195121) 195536) anon15_Then_correct@@6) (=> (= (ControlFlow 0 195121) 195137) anon15_Else_correct@@6))))))
(let ((anon14_Then_correct@@4  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t10@0@@2 $abort_code@1@@7) (= (ControlFlow 0 195550) 195047))) L5_correct@@7)))
(let ((anon13_Then$1_correct@@2  (=> (= $t11@1@@0 $t11@@1) (=> (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 195602) 195550) anon14_Then_correct@@4) (=> (= (ControlFlow 0 195602) 195121) anon14_Else_correct@@4))))))
(let ((anon13_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@4)) (= (ControlFlow 0 195600) 195602)) anon13_Then$1_correct@@2)))
(let ((anon13_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@4) (=> (and (and (= $t11@0@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@4)) (= $t11@1@@0 $t11@0@@5)) (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7))) (and (=> (= (ControlFlow 0 195065) 195550) anon14_Then_correct@@4) (=> (= (ControlFlow 0 195065) 195121) anon14_Else_correct@@4))))))
(let ((anon12_Then_correct@@2  (=> $t7@0@@2 (and (=> (= (ControlFlow 0 195051) 195600) anon13_Then_correct@@2) (=> (= (ControlFlow 0 195051) 195065) anon13_Else_correct@@2)))))
(let ((anon12_Else_correct@@2  (=> (and (and (not $t7@0@@2) (= $t9@@5 $t9@@5)) (and (= $t10@0@@2 $t9@@5) (= (ControlFlow 0 194967) 195047))) L5_correct@@7)))
(let ((anon0$1_correct@@7  (=> (and (and (|$IsValid'address'| _$t0@@7) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |Rolescvc4bpl.6244:20|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@7))
))) (and (= _$t0@@7 _$t0@@7) (|$IsValid'address'| $t6@@4))) (=> (and (and (and (= $t6@@4 _$t0@@7) (= $t6@@4 $t6@@4)) (and (= $t7@0@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@4)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t9@@5) (= $t9@@5 5)) (and (= $t9@@5 $t9@@5) (= $t7@0@@2 $t7@0@@2)))) (and (=> (= (ControlFlow 0 194951) 195051) anon12_Then_correct@@2) (=> (= (ControlFlow 0 194951) 194967) anon12_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_81661| stream@@8) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@8) v@@43) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 194847) 194951)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 271329) 194847) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t14@0@@6 () Bool)
(declare-fun _$t0@@8 () Int)
(declare-fun $t10@0@@3 () Int)
(declare-fun $t16@@1 () Int)
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun $t12@0@@3 () Int)
(declare-fun $t11@1@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun $t11@@2 () T@$1_Roles_RoleId)
(declare-fun $t6@@5 () Int)
(declare-fun $t11@0@@6 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun $t7@0@@3 () Bool)
(declare-fun $t9@@6 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_validator_operator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 272133) (let ((anon15_Then_correct@@7  (=> $t14@0@@6 (and (=> (= (ControlFlow 0 196393) (- 0 272456)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@8))) (and (=> (= (ControlFlow 0 196393) (- 0 272469)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@8)) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@8)) 4))) (and (=> (= (ControlFlow 0 196393) (- 0 272488)) (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@103) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@103)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@103) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@103)) 0))))
 :qid |Rolescvc4bpl.6643:15|
 :skolemid |174|
))) (=> (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@104) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@104)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@104) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@104)) 0))))
 :qid |Rolescvc4bpl.6643:15|
 :skolemid |174|
)) (and (=> (= (ControlFlow 0 196393) (- 0 272537)) (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@105) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@105)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@105) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@105)) 1))))
 :qid |Rolescvc4bpl.6647:15|
 :skolemid |175|
))) (=> (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@106)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@106)) 1))))
 :qid |Rolescvc4bpl.6647:15|
 :skolemid |175|
)) (and (=> (= (ControlFlow 0 196393) (- 0 272586)) (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@107) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@107)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@107) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@107)) 3))))
 :qid |Rolescvc4bpl.6651:15|
 :skolemid |176|
))) (=> (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@108) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@108)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@108) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@108)) 3))))
 :qid |Rolescvc4bpl.6651:15|
 :skolemid |176|
)) (and (=> (= (ControlFlow 0 196393) (- 0 272635)) (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@109) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@109)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@109) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@109)) 4))))
 :qid |Rolescvc4bpl.6655:15|
 :skolemid |177|
))) (=> (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@110)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@110)) 4))))
 :qid |Rolescvc4bpl.6655:15|
 :skolemid |177|
)) (and (=> (= (ControlFlow 0 196393) (- 0 272684)) (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@111)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@111)) 2))))
 :qid |Rolescvc4bpl.6659:15|
 :skolemid |178|
))) (=> (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@112)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@112)) 2))))
 :qid |Rolescvc4bpl.6659:15|
 :skolemid |178|
)) (and (=> (= (ControlFlow 0 196393) (- 0 272733)) (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@113)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@113)) 5))))
 :qid |Rolescvc4bpl.6663:15|
 :skolemid |179|
))) (=> (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@114)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@114)) 5))))
 :qid |Rolescvc4bpl.6663:15|
 :skolemid |179|
)) (=> (= (ControlFlow 0 196393) (- 0 272782)) (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@115)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@115)) 6))))
 :qid |Rolescvc4bpl.6667:15|
 :skolemid |180|
))))))))))))))))))))))
(let ((L5_correct@@8  (and (=> (= (ControlFlow 0 195904) (- 0 272862)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@8)) 4)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@8)) 4))) (=> (= (ControlFlow 0 195904) (- 0 272886)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@8)) (= 5 $t10@0@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@8)) 4)) (= 3 $t10@0@@3))))))))
(let ((anon15_Else_correct@@7  (=> (and (and (not $t14@0@@6) (= $t16@@1 $t16@@1)) (and (= $t10@0@@3 $t16@@1) (= (ControlFlow 0 195994) 195904))) L5_correct@@8)))
(let ((anon14_Else_correct@@5  (=> (not $abort_flag@0@@8) (=> (and (and (and (= $t12@0@@3 (|$role_id#$1_Roles_RoleId| $t11@1@@1)) (|$IsValid'u64'| 4)) (and (= $t14@0@@6 (= $t12@0@@3 4)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| $t16@@1) (= $t16@@1 3)) (and (= $t16@@1 $t16@@1) (= $t14@0@@6 $t14@0@@6)))) (and (=> (= (ControlFlow 0 195978) 196393) anon15_Then_correct@@7) (=> (= (ControlFlow 0 195978) 195994) anon15_Else_correct@@7))))))
(let ((anon14_Then_correct@@5  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t10@0@@3 $abort_code@1@@8) (= (ControlFlow 0 196407) 195904))) L5_correct@@8)))
(let ((anon13_Then$1_correct@@3  (=> (= $t11@1@@1 $t11@@2) (=> (and (= $abort_flag@0@@8 true) (= $abort_code@1@@8 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 196459) 196407) anon14_Then_correct@@5) (=> (= (ControlFlow 0 196459) 195978) anon14_Else_correct@@5))))))
(let ((anon13_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@5)) (= (ControlFlow 0 196457) 196459)) anon13_Then$1_correct@@3)))
(let ((anon13_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@5) (=> (and (and (= $t11@0@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@5)) (= $t11@1@@1 $t11@0@@6)) (and (= $abort_flag@0@@8 false) (= $abort_code@1@@8 $abort_code@0@@8))) (and (=> (= (ControlFlow 0 195922) 196407) anon14_Then_correct@@5) (=> (= (ControlFlow 0 195922) 195978) anon14_Else_correct@@5))))))
(let ((anon12_Then_correct@@3  (=> $t7@0@@3 (and (=> (= (ControlFlow 0 195908) 196457) anon13_Then_correct@@3) (=> (= (ControlFlow 0 195908) 195922) anon13_Else_correct@@3)))))
(let ((anon12_Else_correct@@3  (=> (and (and (not $t7@0@@3) (= $t9@@6 $t9@@6)) (and (= $t10@0@@3 $t9@@6) (= (ControlFlow 0 195824) 195904))) L5_correct@@8)))
(let ((anon0$1_correct@@8  (=> (and (and (|$IsValid'address'| _$t0@@8) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |Rolescvc4bpl.6486:20|
 :skolemid |173|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@8))
))) (and (= _$t0@@8 _$t0@@8) (|$IsValid'address'| $t6@@5))) (=> (and (and (and (= $t6@@5 _$t0@@8) (= $t6@@5 $t6@@5)) (and (= $t7@0@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@5)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t9@@6) (= $t9@@6 5)) (and (= $t9@@6 $t9@@6) (= $t7@0@@3 $t7@0@@3)))) (and (=> (= (ControlFlow 0 195808) 195908) anon12_Then_correct@@3) (=> (= (ControlFlow 0 195808) 195824) anon12_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_81661| stream@@9) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@9) v@@44) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 195704) 195808)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 272133) 195704) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@0 () Bool)
(declare-fun $abort_flag@12 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 () Bool)
(declare-fun $t1@0 () Bool)
(declare-fun $abort_flag@11 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t3@1 () Bool)
(declare-fun $abort_flag@10 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1 () Bool)
(declare-fun _$t0@@9 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t3@1 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1 () Bool)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@0@@9 () Bool)
(declare-fun $abort_code@1@@9 () Int)
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
(declare-fun $abort_code@0@@9 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1 () Bool)
(push 1)
(set-info :boogie-vc-id $1_Roles_can_hold_balance$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 272938) (let ((L7_correct  (=> (= $t2@0 $t2@0) (and (=> (= (ControlFlow 0 199062) (- 0 274473)) (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@116)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@116)) 0))))
 :qid |Rolescvc4bpl.6846:15|
 :skolemid |182|
))) (=> (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@117) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@117)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@117) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@117)) 0))))
 :qid |Rolescvc4bpl.6846:15|
 :skolemid |182|
)) (and (=> (= (ControlFlow 0 199062) (- 0 274522)) (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@118)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@118)) 1))))
 :qid |Rolescvc4bpl.6850:15|
 :skolemid |183|
))) (=> (forall ((addr@@119 Int) ) (!  (=> (|$IsValid'address'| addr@@119) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@119) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@119)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@119) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@119)) 1))))
 :qid |Rolescvc4bpl.6850:15|
 :skolemid |183|
)) (and (=> (= (ControlFlow 0 199062) (- 0 274571)) (forall ((addr@@120 Int) ) (!  (=> (|$IsValid'address'| addr@@120) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@120) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@120)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@120) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@120)) 3))))
 :qid |Rolescvc4bpl.6854:15|
 :skolemid |184|
))) (=> (forall ((addr@@121 Int) ) (!  (=> (|$IsValid'address'| addr@@121) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@121) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@121)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@121) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@121)) 3))))
 :qid |Rolescvc4bpl.6854:15|
 :skolemid |184|
)) (and (=> (= (ControlFlow 0 199062) (- 0 274620)) (forall ((addr@@122 Int) ) (!  (=> (|$IsValid'address'| addr@@122) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@122) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@122)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@122) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@122)) 4))))
 :qid |Rolescvc4bpl.6858:15|
 :skolemid |185|
))) (=> (forall ((addr@@123 Int) ) (!  (=> (|$IsValid'address'| addr@@123) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@123) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@123)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@123) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@123)) 4))))
 :qid |Rolescvc4bpl.6858:15|
 :skolemid |185|
)) (and (=> (= (ControlFlow 0 199062) (- 0 274669)) (forall ((addr@@124 Int) ) (!  (=> (|$IsValid'address'| addr@@124) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@124) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@124)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@124) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@124)) 2))))
 :qid |Rolescvc4bpl.6862:15|
 :skolemid |186|
))) (=> (forall ((addr@@125 Int) ) (!  (=> (|$IsValid'address'| addr@@125) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@125) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@125)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@125) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@125)) 2))))
 :qid |Rolescvc4bpl.6862:15|
 :skolemid |186|
)) (and (=> (= (ControlFlow 0 199062) (- 0 274718)) (forall ((addr@@126 Int) ) (!  (=> (|$IsValid'address'| addr@@126) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@126)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@126)) 5))))
 :qid |Rolescvc4bpl.6866:15|
 :skolemid |187|
))) (=> (forall ((addr@@127 Int) ) (!  (=> (|$IsValid'address'| addr@@127) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@127) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@127)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@127) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@127)) 5))))
 :qid |Rolescvc4bpl.6866:15|
 :skolemid |187|
)) (=> (= (ControlFlow 0 199062) (- 0 274767)) (forall ((addr@@128 Int) ) (!  (=> (|$IsValid'address'| addr@@128) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@128) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@128)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@128) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@128)) 6))))
 :qid |Rolescvc4bpl.6870:15|
 :skolemid |188|
))))))))))))))))))
(let ((anon18_Else_correct@@3  (=> (and (and (not $abort_flag@12) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (and (= $t2@0 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= (ControlFlow 0 198691) 199062))) L7_correct)))
(let ((anon17_Then_correct@@3  (=> (and (and $t1@0 (= true true)) (and (= $t2@0 true) (= (ControlFlow 0 199100) 199062))) L7_correct)))
(let ((anon18_Then_correct@@3 true))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@11) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@12 $abort_flag@11))) (and (=> (= (ControlFlow 0 198649) 199076) anon18_Then_correct@@3) (=> (= (ControlFlow 0 198649) 198691) anon18_Else_correct@@3)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@12 true))) (and (=> (= (ControlFlow 0 198667) 199076) anon18_Then_correct@@3) (=> (= (ControlFlow 0 198667) 198691) anon18_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@9 (=> (and (and (= $abort_code@8 $abort_code@8) (= $abort_flag@11 true)) (and (= $abort_code@10 $abort_code@8) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 198573) 198667) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 198573) 198649) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t3@1 inline$$1_Roles_has_role$2$$t3@1) (= $abort_flag@11 $abort_flag@10)) (and (= $abort_code@10 $abort_code@9) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t3@1))) (and (=> (= (ControlFlow 0 198509) 198667) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 198509) 198649) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@9) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@10 $abort_flag@9) (= inline$$1_Roles_has_role$2$$t3@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@9 $abort_code@8) (= (ControlFlow 0 198555) 198509)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@8 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 198625) 198573) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 198625) 198555) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 198623) 198625)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@8 $abort_code@7)) (and (= $abort_flag@9 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 198527) 198573) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 198527) 198555) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 198513) 198623) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 198513) 198527) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@10 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t3@1 false)) (and (= $abort_code@9 $abort_code@7) (= (ControlFlow 0 198497) 198509))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= _$t0@@9 _$t0@@9) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 _$t0@@9)) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 198477) 198513) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 198477) 198497) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= _$t0@@9 _$t0@@9) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 198631) 198477)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((anon17_Else_correct@@3  (=> (and (not $t1@0) (= (ControlFlow 0 198673) 198631)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((anon16_Else_correct@@3  (=> (not $abort_flag@7) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= $abort_flag@8 $abort_flag@7)) (and (= $abort_code@7 $abort_code@6) (= $t1@0 inline$$1_Roles_has_child_VASP_role$0$$ret0@1))) (and (=> (= (ControlFlow 0 197991) 199100) anon17_Then_correct@@3) (=> (= (ControlFlow 0 197991) 198673) anon17_Else_correct@@3))))))
(let ((anon15_Then_correct@@8  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= $abort_flag@8 $abort_flag@3)) (and (= $abort_code@7 $abort_code@3) (= $t1@0 true))) (and (=> (= (ControlFlow 0 199132) 199100) anon17_Then_correct@@3) (=> (= (ControlFlow 0 199132) 198673) anon17_Else_correct@@3))))))
(let ((anon16_Then_correct@@3 true))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@6) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@7 $abort_flag@6))) (and (=> (= (ControlFlow 0 197949) 199114) anon16_Then_correct@@3) (=> (= (ControlFlow 0 197949) 197991) anon16_Else_correct@@3)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@6 $abort_code@6)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@7 true))) (and (=> (= (ControlFlow 0 197967) 199114) anon16_Then_correct@@3) (=> (= (ControlFlow 0 197967) 197991) anon16_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@4 (=> (and (and (= $abort_code@4 $abort_code@4) (= $abort_code@6 $abort_code@4)) (and (= $abort_flag@6 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 197873) 197967) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 197873) 197949) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t3@1 inline$$1_Roles_has_role$1$$t3@1) (= $abort_code@6 $abort_code@5)) (and (= $abort_flag@6 $abort_flag@5) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t3@1))) (and (=> (= (ControlFlow 0 197809) 197967) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 197809) 197949) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@4) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@5 $abort_code@4) (= inline$$1_Roles_has_role$1$$t3@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@5 $abort_flag@4) (= (ControlFlow 0 197855) 197809)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 197925) 197873) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 197925) 197855) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 197923) 197925)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@4 $abort_code@3) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 197827) 197873) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 197827) 197855) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 197813) 197923) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 197813) 197827) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@5 $abort_code@3) (= inline$$1_Roles_has_role$1$$t3@1 false)) (and (= $abort_flag@5 $abort_flag@3) (= (ControlFlow 0 197797) 197809))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= _$t0@@9 _$t0@@9) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 _$t0@@9)) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 197777) 197813) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 197777) 197797) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= _$t0@@9 _$t0@@9) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 197931) 197777)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((anon15_Else_correct@@8  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 197973) 197931)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((anon14_Else_correct@@6  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 197293) 199132) anon15_Then_correct@@8) (=> (= (ControlFlow 0 197293) 197973) anon15_Else_correct@@8)))))
(let ((anon14_Then_correct@@6 true))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@2) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 197261) 199146) anon14_Then_correct@@6) (=> (= (ControlFlow 0 197261) 197293) anon14_Else_correct@@6)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@3 true))) (and (=> (= (ControlFlow 0 197279) 199146) anon14_Then_correct@@6) (=> (= (ControlFlow 0 197279) 197293) anon14_Else_correct@@6)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@0@@9 (=> (and (and (= $abort_code@1@@9 $abort_code@1@@9) (= $abort_code@3 $abort_code@1@@9)) (and (= $abort_flag@2 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 197185) 197279) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 197185) 197261) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1 inline$$1_Roles_has_role$0$$t3@1) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t3@1))) (and (=> (= (ControlFlow 0 197121) 197279) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 197121) 197261) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@0@@9) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@2 $abort_code@1@@9) (= inline$$1_Roles_has_role$0$$t3@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@1 $abort_flag@0@@9) (= (ControlFlow 0 197167) 197121)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@0@@9 true) (=> (and (= $abort_code@1@@9 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 197237) 197185) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 197237) 197167) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 197235) 197237)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@0@@9 false)) (and (= $abort_code@1@@9 $abort_code@0@@9) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 197139) 197185) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 197139) 197167) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 197125) 197235) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 197125) 197139) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@2 $abort_code@0@@9) (= inline$$1_Roles_has_role$0$$t3@1 false)) (and (= $abort_flag@1 false) (= (ControlFlow 0 197109) 197121))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= _$t0@@9 _$t0@@9) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 _$t0@@9)) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 197089) 197125) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 197089) 197109) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= _$t0@@9 _$t0@@9) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 197243) 197089)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((anon0$1_correct@@9  (=> (and (and (|$IsValid'address'| _$t0@@9) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |Rolescvc4bpl.6719:20|
 :skolemid |181|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@9))
))) (and (= _$t0@@9 _$t0@@9) (= (ControlFlow 0 197285) 197243))) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_81661| stream@@10) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@10) v@@45) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 196561) 197285)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 272938) 196561) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9)))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@10 () Bool)
(declare-fun $t8@0@@3 () Int)
(declare-fun $t7@1 () T@$1_Roles_RoleId)
(declare-fun $t7@@3 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@10 () Int)
(declare-fun _$t0@@10 () Int)
(declare-fun $t7@0@@4 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@10 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t5 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_get_role_id$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 274833) (let ((anon12_Else_correct@@4  (=> (not $abort_flag@0@@10) (=> (and (= $t8@0@@3 (|$role_id#$1_Roles_RoleId| $t7@1)) (= $t8@0@@3 $t8@0@@3)) (and (=> (= (ControlFlow 0 199764) (- 0 275085)) (forall ((addr@@129 Int) ) (!  (=> (|$IsValid'address'| addr@@129) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@129) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@129)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@129) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@129)) 0))))
 :qid |Rolescvc4bpl.6997:15|
 :skolemid |190|
))) (=> (forall ((addr@@130 Int) ) (!  (=> (|$IsValid'address'| addr@@130) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@130) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@130)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@130) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@130)) 0))))
 :qid |Rolescvc4bpl.6997:15|
 :skolemid |190|
)) (and (=> (= (ControlFlow 0 199764) (- 0 275134)) (forall ((addr@@131 Int) ) (!  (=> (|$IsValid'address'| addr@@131) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@131) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@131)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@131) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@131)) 1))))
 :qid |Rolescvc4bpl.7001:15|
 :skolemid |191|
))) (=> (forall ((addr@@132 Int) ) (!  (=> (|$IsValid'address'| addr@@132) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@132) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@132)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@132) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@132)) 1))))
 :qid |Rolescvc4bpl.7001:15|
 :skolemid |191|
)) (and (=> (= (ControlFlow 0 199764) (- 0 275183)) (forall ((addr@@133 Int) ) (!  (=> (|$IsValid'address'| addr@@133) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@133) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@133)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@133) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@133)) 3))))
 :qid |Rolescvc4bpl.7005:15|
 :skolemid |192|
))) (=> (forall ((addr@@134 Int) ) (!  (=> (|$IsValid'address'| addr@@134) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@134) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@134)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@134) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@134)) 3))))
 :qid |Rolescvc4bpl.7005:15|
 :skolemid |192|
)) (and (=> (= (ControlFlow 0 199764) (- 0 275232)) (forall ((addr@@135 Int) ) (!  (=> (|$IsValid'address'| addr@@135) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@135) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@135)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@135) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@135)) 4))))
 :qid |Rolescvc4bpl.7009:15|
 :skolemid |193|
))) (=> (forall ((addr@@136 Int) ) (!  (=> (|$IsValid'address'| addr@@136) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@136) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@136)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@136) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@136)) 4))))
 :qid |Rolescvc4bpl.7009:15|
 :skolemid |193|
)) (and (=> (= (ControlFlow 0 199764) (- 0 275281)) (forall ((addr@@137 Int) ) (!  (=> (|$IsValid'address'| addr@@137) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@137) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@137)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@137) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@137)) 2))))
 :qid |Rolescvc4bpl.7013:15|
 :skolemid |194|
))) (=> (forall ((addr@@138 Int) ) (!  (=> (|$IsValid'address'| addr@@138) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@138) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@138)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@138) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@138)) 2))))
 :qid |Rolescvc4bpl.7013:15|
 :skolemid |194|
)) (and (=> (= (ControlFlow 0 199764) (- 0 275330)) (forall ((addr@@139 Int) ) (!  (=> (|$IsValid'address'| addr@@139) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@139) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@139)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@139) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@139)) 5))))
 :qid |Rolescvc4bpl.7017:15|
 :skolemid |195|
))) (=> (forall ((addr@@140 Int) ) (!  (=> (|$IsValid'address'| addr@@140) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@140) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@140)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@140) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@140)) 5))))
 :qid |Rolescvc4bpl.7017:15|
 :skolemid |195|
)) (=> (= (ControlFlow 0 199764) (- 0 275379)) (forall ((addr@@141 Int) ) (!  (=> (|$IsValid'address'| addr@@141) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@141) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@141)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@141) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@141)) 6))))
 :qid |Rolescvc4bpl.7021:15|
 :skolemid |196|
)))))))))))))))))))
(let ((anon12_Then_correct@@4 true))
(let ((anon11_Then$1_correct  (=> (= $t7@1 $t7@@3) (=> (and (= $abort_flag@0@@10 true) (= $abort_code@1@@10 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 199830) 199778) anon12_Then_correct@@4) (=> (= (ControlFlow 0 199830) 199764) anon12_Else_correct@@4))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@10)) (= (ControlFlow 0 199828) 199830)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@10) (=> (and (and (= $t7@0@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@10)) (= $t7@1 $t7@0@@4)) (and (= $abort_flag@0@@10 false) (= $abort_code@1@@10 $abort_code@0@@10))) (and (=> (= (ControlFlow 0 199383) 199778) anon12_Then_correct@@4) (=> (= (ControlFlow 0 199383) 199764) anon12_Else_correct@@4))))))
(let ((anon10_Then_correct  (=> $t3@0 (and (=> (= (ControlFlow 0 199369) 199828) anon11_Then_correct) (=> (= (ControlFlow 0 199369) 199383) anon11_Else_correct)))))
(let ((anon10_Else_correct true))
(let ((anon0$1_correct@@10  (=> (|$IsValid'address'| _$t0@@10) (=> (and (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@10)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@10))
 :qid |Rolescvc4bpl.6915:20|
 :skolemid |189|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@10))
)) (= _$t0@@10 _$t0@@10)) (and (= $t3@0 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@10)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5) (= $t5 5)) (and (= $t5 $t5) (= $t3@0 $t3@0)))) (and (=> (= (ControlFlow 0 199343) 199369) anon10_Then_correct) (=> (= (ControlFlow 0 199343) 199359) anon10_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_81661| stream@@11) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@11) v@@46) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 199259) 199343)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 274833) 199259) inline$$InitEventStore$0$anon0_correct@@10)))
anon0_correct@@10)))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@11 () Int)
(declare-fun $t2 () Int)
(declare-fun $t6@@6 () Bool)
(declare-fun $t3@@0 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_112037)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_112037)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_112037)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 275438) (let ((L2_correct  (and (=> (= (ControlFlow 0 200714) (- 0 276184)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@11 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@11)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@11 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@11)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 200714) (- 0 276215)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= _$t0@@11 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@11) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct@@4  (=> $t6@@6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@11) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 200602) 200714))) L2_correct))))
(let ((anon12_Then_correct@@5  (=> $t3@@0 (=> (and (and (not (= _$t0@@11 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 200744) 200714))) L2_correct))))
(let ((anon11_Then_correct@@0  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 200770) 200714))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) _$t0@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) _$t0@@11)) 0)) (and (=> (= (ControlFlow 0 200560) (- 0 275830)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 200560) (- 0 275840)) (not (not (= _$t0@@11 173345816)))) (=> (not (not (= _$t0@@11 173345816))) (and (=> (= (ControlFlow 0 200560) (- 0 275854)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@11))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@11)) (and (=> (= (ControlFlow 0 200560) (- 0 275865)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 200560) (- 0 275875)) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) _$t0@@11)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) _$t0@@11) (and (=> (= (ControlFlow 0 200560) (- 0 275884)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) _$t0@@11)) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) _$t0@@11)) 0) (and (=> (= (ControlFlow 0 200560) (- 0 275899)) (forall ((addr@@142 Int) ) (!  (=> (|$IsValid'address'| addr@@142) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@142) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@142)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@142) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@142)) 1))))
 :qid |Rolescvc4bpl.7256:15|
 :skolemid |199|
))) (=> (forall ((addr@@143 Int) ) (!  (=> (|$IsValid'address'| addr@@143) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@143) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@143)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@143) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@143)) 1))))
 :qid |Rolescvc4bpl.7256:15|
 :skolemid |199|
)) (and (=> (= (ControlFlow 0 200560) (- 0 275946)) (forall ((addr@@144 Int) ) (!  (=> (|$IsValid'address'| addr@@144) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@144) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@144)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@144) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@144)) 3))))
 :qid |Rolescvc4bpl.7260:15|
 :skolemid |200|
))) (=> (forall ((addr@@145 Int) ) (!  (=> (|$IsValid'address'| addr@@145) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@145) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@145)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@145) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@145)) 3))))
 :qid |Rolescvc4bpl.7260:15|
 :skolemid |200|
)) (and (=> (= (ControlFlow 0 200560) (- 0 275993)) (forall ((addr@@146 Int) ) (!  (=> (|$IsValid'address'| addr@@146) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@146) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@146)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@146) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@146)) 4))))
 :qid |Rolescvc4bpl.7264:15|
 :skolemid |201|
))) (=> (forall ((addr@@147 Int) ) (!  (=> (|$IsValid'address'| addr@@147) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@147) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@147)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@147) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@147)) 4))))
 :qid |Rolescvc4bpl.7264:15|
 :skolemid |201|
)) (and (=> (= (ControlFlow 0 200560) (- 0 276040)) (forall ((addr@@148 Int) ) (!  (=> (|$IsValid'address'| addr@@148) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@148) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@148)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@148) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@148)) 2))))
 :qid |Rolescvc4bpl.7268:15|
 :skolemid |202|
))) (=> (forall ((addr@@149 Int) ) (!  (=> (|$IsValid'address'| addr@@149) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@149) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@149)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@149) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@149)) 2))))
 :qid |Rolescvc4bpl.7268:15|
 :skolemid |202|
)) (and (=> (= (ControlFlow 0 200560) (- 0 276087)) (forall ((addr@@150 Int) ) (!  (=> (|$IsValid'address'| addr@@150) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@150) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@150)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@150) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@150)) 5))))
 :qid |Rolescvc4bpl.7272:15|
 :skolemid |203|
))) (=> (forall ((addr@@151 Int) ) (!  (=> (|$IsValid'address'| addr@@151) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@151) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@151)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@151) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@151)) 5))))
 :qid |Rolescvc4bpl.7272:15|
 :skolemid |203|
)) (=> (= (ControlFlow 0 200560) (- 0 276134)) (forall ((addr@@152 Int) ) (!  (=> (|$IsValid'address'| addr@@152) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@152) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2) addr@@152)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@152) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@152)) 6))))
 :qid |Rolescvc4bpl.7276:15|
 :skolemid |204|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct@@7  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@11 false) (|contents#$Memory_112037| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 200154) 200560))) anon9_correct)))
(let ((anon14_Then_correct@@7  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@11 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@11 |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 200574) 200560))) anon9_correct)))
(let ((anon13_Else_correct@@4  (=> (not $t6@@6) (and (=> (= (ControlFlow 0 200140) 200574) anon14_Then_correct@@7) (=> (= (ControlFlow 0 200140) 200154) anon14_Else_correct@@7)))))
(let ((anon12_Else_correct@@5  (=> (not $t3@@0) (=> (and (|$IsValid'u64'| 0) (= $t5@@0 _$t0@@11)) (and (=> (= (ControlFlow 0 200134) (- 0 275680)) (=> (= 0 0) (= $t5@@0 173345816))) (=> (=> (= 0 0) (= $t5@@0 173345816)) (and (=> (= (ControlFlow 0 200134) (- 0 275696)) (=> (= 0 1) (= $t5@@0 186537453))) (=> (=> (= 0 1) (= $t5@@0 186537453)) (and (=> (= (ControlFlow 0 200134) (- 0 275712)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@11)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@11) (=> (= $t6@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@11)) (and (=> (= (ControlFlow 0 200134) 200602) anon13_Then_correct@@4) (=> (= (ControlFlow 0 200134) 200140) anon13_Else_correct@@4)))))))))))))
(let ((anon11_Else_correct@@0  (=> (and (not $t1) (= $t3@@0  (not (= _$t0@@11 173345816)))) (and (=> (= (ControlFlow 0 200056) 200744) anon12_Then_correct@@5) (=> (= (ControlFlow 0 200056) 200134) anon12_Else_correct@@5)))))
(let ((anon0$1_correct@@11  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0@@11) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@11))
 :qid |Rolescvc4bpl.7070:20|
 :skolemid |197|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11))
))) (=> (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@12)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@12))
 :qid |Rolescvc4bpl.7074:20|
 :skolemid |198|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@12))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@11)) (and (= _$t0@@11 _$t0@@11) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 200034) 200770) anon11_Then_correct@@0) (=> (= (ControlFlow 0 200034) 200056) anon11_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_81661| stream@@12) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@12) v@@47) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 199926) 200034)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (= (ControlFlow 0 275438) 199926) inline$$InitEventStore$0$anon0_correct@@11)))
anon0_correct@@11))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@11 () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_112037)
(declare-fun _$t0@@12 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0@@4 () Int)
(declare-fun $abort_code@1@@11 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_112037)
(declare-fun $t11@0@@7 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@11 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t9@@7 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 276293) (let ((anon12_Else_correct@@6  (=> (not $abort_flag@0@@11) (and (=> (= (ControlFlow 0 201770) (- 0 276923)) (forall ((addr@@153 Int) ) (!  (=> (|$IsValid'address'| addr@@153) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@153) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@153) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@153)) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@153))))))
 :qid |Rolescvc4bpl.7506:15|
 :skolemid |215|
))) (=> (forall ((addr@@154 Int) ) (!  (=> (|$IsValid'address'| addr@@154) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@154) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@154) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@154)) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@154))))))
 :qid |Rolescvc4bpl.7506:15|
 :skolemid |215|
)) (and (=> (= (ControlFlow 0 201770) (- 0 276965)) (forall ((addr@@155 Int) ) (!  (=> (|$IsValid'address'| addr@@155) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@155) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@155)) 0)) (= addr@@155 173345816)))
 :qid |Rolescvc4bpl.7512:15|
 :skolemid |216|
))) (=> (forall ((addr@@156 Int) ) (!  (=> (|$IsValid'address'| addr@@156) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@156) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@156)) 0)) (= addr@@156 173345816)))
 :qid |Rolescvc4bpl.7512:15|
 :skolemid |216|
)) (and (=> (= (ControlFlow 0 201770) (- 0 276990)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) 173345816)) 0)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) 173345816)) 0))) (and (=> (= (ControlFlow 0 201770) (- 0 277004)) (forall ((addr@@157 Int) ) (!  (=> (|$IsValid'address'| addr@@157) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@157) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@157)) 1)) (= addr@@157 186537453)))
 :qid |Rolescvc4bpl.7524:15|
 :skolemid |217|
))) (=> (forall ((addr@@158 Int) ) (!  (=> (|$IsValid'address'| addr@@158) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@158) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@158)) 1)) (= addr@@158 186537453)))
 :qid |Rolescvc4bpl.7524:15|
 :skolemid |217|
)) (and (=> (= (ControlFlow 0 201770) (- 0 277029)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) 186537453)) 1)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) 186537453)) 1))) (and (=> (= (ControlFlow 0 201770) (- 0 277043)) (forall ((addr@@159 Int) ) (!  (=> (|$IsValid'address'| addr@@159) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@159) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@159)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@159) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@159)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@159) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@159)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@159) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@159)) 2))))))
 :qid |Rolescvc4bpl.7536:15|
 :skolemid |218|
))) (=> (forall ((addr@@160 Int) ) (!  (=> (|$IsValid'address'| addr@@160) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 2))))))
 :qid |Rolescvc4bpl.7536:15|
 :skolemid |218|
)) (and (=> (= (ControlFlow 0 201770) (- 0 277069)) (forall ((addr@@161 Int) ) (!  (=> (|$IsValid'address'| addr@@161) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 2))))))
 :qid |Rolescvc4bpl.7542:15|
 :skolemid |219|
))) (=> (forall ((addr@@162 Int) ) (!  (=> (|$IsValid'address'| addr@@162) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 2))))))
 :qid |Rolescvc4bpl.7542:15|
 :skolemid |219|
)) (and (=> (= (ControlFlow 0 201770) (- 0 277095)) (forall ((addr@@163 Int) ) (!  (=> (|$IsValid'address'| addr@@163) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 2))))))
 :qid |Rolescvc4bpl.7548:15|
 :skolemid |220|
))) (=> (forall ((addr@@164 Int) ) (!  (=> (|$IsValid'address'| addr@@164) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 2))))))
 :qid |Rolescvc4bpl.7548:15|
 :skolemid |220|
)) (and (=> (= (ControlFlow 0 201770) (- 0 277121)) (forall ((addr@@165 Int) ) (!  (=> (|$IsValid'address'| addr@@165) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 2))))))
 :qid |Rolescvc4bpl.7554:15|
 :skolemid |221|
))) (=> (forall ((addr@@166 Int) ) (!  (=> (|$IsValid'address'| addr@@166) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 2))))))
 :qid |Rolescvc4bpl.7554:15|
 :skolemid |221|
)) (and (=> (= (ControlFlow 0 201770) (- 0 277147)) (forall ((addr@@167 Int) ) (!  (=> (|$IsValid'address'| addr@@167) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 2)))))
 :qid |Rolescvc4bpl.7560:15|
 :skolemid |222|
))) (=> (forall ((addr@@168 Int) ) (!  (=> (|$IsValid'address'| addr@@168) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 2)))))
 :qid |Rolescvc4bpl.7560:15|
 :skolemid |222|
)) (and (=> (= (ControlFlow 0 201770) (- 0 277171)) (forall ((addr@@169 Int) ) (!  (=> (|$IsValid'address'| addr@@169) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 2)))))
 :qid |Rolescvc4bpl.7566:15|
 :skolemid |223|
))) (=> (forall ((addr@@170 Int) ) (!  (=> (|$IsValid'address'| addr@@170) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 2)))))
 :qid |Rolescvc4bpl.7566:15|
 :skolemid |223|
)) (and (=> (= (ControlFlow 0 201770) (- 0 277195)) (forall ((addr@@171 Int) ) (!  (=> (|$IsValid'address'| addr@@171) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 2)))))
 :qid |Rolescvc4bpl.7572:15|
 :skolemid |224|
))) (=> (forall ((addr@@172 Int) ) (!  (=> (|$IsValid'address'| addr@@172) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 2)))))
 :qid |Rolescvc4bpl.7572:15|
 :skolemid |224|
)) (and (=> (= (ControlFlow 0 201770) (- 0 277222)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@12))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@12)) (and (=> (= (ControlFlow 0 201770) (- 0 277233)) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) _$t0@@12)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) _$t0@@12) (=> (= (ControlFlow 0 201770) (- 0 277242)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@1@@0) _$t0@@12)) _$t1@@0)))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 201139) (- 0 276893)) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@12)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@12) (=> (= (ControlFlow 0 201139) (- 0 276899)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@12) (= 6 $t10@0@@4)))))))
(let ((anon12_Then_correct@@6  (=> (and (and $abort_flag@0@@11 (= $abort_code@1@@11 $abort_code@1@@11)) (and (= $t10@0@@4 $abort_code@1@@11) (= (ControlFlow 0 201784) 201139))) L3_correct)))
(let ((anon11_Then$1_correct@@0  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@11 true) (= $abort_code@1@@11 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 201834) 201784) anon12_Then_correct@@6) (=> (= (ControlFlow 0 201834) 201770) anon12_Else_correct@@6))))))
(let ((anon11_Then_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@12) (= (ControlFlow 0 201832) 201834)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@1  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@12)) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@12 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@12 $t11@0@@7))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0@@11 false) (= $abort_code@1@@11 $abort_code@0@@11))) (and (=> (= (ControlFlow 0 201416) 201784) anon12_Then_correct@@6) (=> (= (ControlFlow 0 201416) 201770) anon12_Else_correct@@6))))))
(let ((anon10_Then_correct@@0  (=> (and inline$$Not$0$dst@1 (= $t11@0@@7 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 201398) (- 0 276539)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 _$t0@@12)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 _$t0@@12) (=> (forall ((addr@@173 Int) ) (!  (=> (|$IsValid'address'| addr@@173) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@173) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@173)) 0)) (= addr@@173 173345816)))
 :qid |Rolescvc4bpl.7442:20|
 :skolemid |206|
)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@174 Int) ) (!  (=> (|$IsValid'address'| addr@@174) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@174) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@174)) 1)) (= addr@@174 186537453)))
 :qid |Rolescvc4bpl.7450:20|
 :skolemid |207|
))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@175 Int) ) (!  (=> (|$IsValid'address'| addr@@175) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@175)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@175)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@175)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@175)) 2))))))
 :qid |Rolescvc4bpl.7458:20|
 :skolemid |208|
))) (and (forall ((addr@@176 Int) ) (!  (=> (|$IsValid'address'| addr@@176) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@176)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@176)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@176)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@176)) 2))))))
 :qid |Rolescvc4bpl.7462:20|
 :skolemid |209|
)) (forall ((addr@@177 Int) ) (!  (=> (|$IsValid'address'| addr@@177) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@177)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@177)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@177)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@177)) 2))))))
 :qid |Rolescvc4bpl.7466:20|
 :skolemid |210|
)))) (and (and (forall ((addr@@178 Int) ) (!  (=> (|$IsValid'address'| addr@@178) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@178)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@178)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@178)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@178)) 2))))))
 :qid |Rolescvc4bpl.7470:20|
 :skolemid |211|
)) (forall ((addr@@179 Int) ) (!  (=> (|$IsValid'address'| addr@@179) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@179)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@179)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@179)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@179)) 2)))))
 :qid |Rolescvc4bpl.7474:20|
 :skolemid |212|
))) (and (forall ((addr@@180 Int) ) (!  (=> (|$IsValid'address'| addr@@180) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@180)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@180)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@180)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@180)) 2)))))
 :qid |Rolescvc4bpl.7478:20|
 :skolemid |213|
)) (forall ((addr@@181 Int) ) (!  (=> (|$IsValid'address'| addr@@181) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@181)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@181)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@181)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@181)) 2)))))
 :qid |Rolescvc4bpl.7482:20|
 :skolemid |214|
))))) (and (=> (= (ControlFlow 0 201398) 201832) anon11_Then_correct@@1) (=> (= (ControlFlow 0 201398) 201416) anon11_Else_correct@@1))))))))))
(let ((anon10_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@7 $t9@@7)) (and (= $t10@0@@4 $t9@@7) (= (ControlFlow 0 201107) 201139))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@7) (= $t9@@7 6)) (and (= $t9@@7 $t9@@7) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 201091) 201398) anon10_Then_correct@@0) (=> (= (ControlFlow 0 201091) 201107) anon10_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 201055) 201091)) anon0$2_correct)))
(let ((anon0$1_correct@@12  (=> (|$IsValid'address'| _$t0@@12) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@13)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@13))
 :qid |Rolescvc4bpl.7338:20|
 :skolemid |205|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@13))
))) (and (= $t4 _$t0@@12) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 _$t0@@12)) (and (= _$t0@@12 _$t0@@12) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5@@1) (= $t5@@1 _$t0@@12)) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t5@@1)) (= (ControlFlow 0 201061) 201055)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_81661| stream@@13) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@13) v@@48) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 200893) 201061)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (= (ControlFlow 0 276293) 200893) inline$$InitEventStore$0$anon0_correct@@12)))
anon0_correct@@12))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@13 () Int)
(declare-fun $t2@@0 () Int)
(declare-fun _$t1@@1 () Int)
(declare-fun $t4@@0 () Int)
(declare-fun $t10@@4 () Bool)
(declare-fun $t7@@4 () Bool)
(declare-fun $t6@@7 () Int)
(declare-fun $t5@@2 () Bool)
(declare-fun $t3@@1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_112037)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_112037)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_112037)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@8 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 277262) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 202984) (- 0 278235)) (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@13 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= _$t1@@1 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@13)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@13 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= _$t1@@1 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@13)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 202984) (- 0 278301)) (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (not (= _$t0@@13 186537453)) (= 2 $t4@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t4@@0))) (and (not (= _$t1@@1 173345816)) (= 2 $t4@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@13) (= 6 $t4@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0))))))))
(let ((anon16_Then_correct@@4  (=> $t10@@4 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@13) (= 6 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 202772) 202984))) L2_correct@@0))))
(let ((anon15_Then_correct@@9  (=> (and (and $t7@@4 (or (or (or (and (not (= _$t1@@1 173345816)) (= 2 $t4@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@7)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@7)) 0)) (= 3 $t4@@0))) (and (not (= _$t1@@1 173345816)) (= 2 $t4@@0)))) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 203076) 202984))) L2_correct@@0)))
(let ((anon14_Then_correct@@8  (=> $t5@@2 (=> (and (and (not (= _$t0@@13 186537453)) (= 2 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 203106) 202984))) L2_correct@@0))))
(let ((anon13_Then_correct@@5  (=> $t3@@1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 203132) 202984))) L2_correct@@0))))
(let ((anon11_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) _$t0@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) _$t0@@13)) 1)) (and (=> (= (ControlFlow 0 202730) (- 0 277837)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 202730) (- 0 277847)) (not (not (= _$t0@@13 186537453)))) (=> (not (not (= _$t0@@13 186537453))) (and (=> (= (ControlFlow 0 202730) (- 0 277861)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 202730) (- 0 277873)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 202730) (- 0 277891)) (not (not (= _$t1@@1 173345816)))) (=> (not (not (= _$t1@@1 173345816))) (and (=> (= (ControlFlow 0 202730) (- 0 277905)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@13))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@13)) (and (=> (= (ControlFlow 0 202730) (- 0 277916)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 202730) (- 0 277926)) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) _$t0@@13)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) _$t0@@13) (and (=> (= (ControlFlow 0 202730) (- 0 277935)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) _$t0@@13)) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) _$t0@@13)) 1) (and (=> (= (ControlFlow 0 202730) (- 0 277950)) (forall ((addr@@182 Int) ) (!  (=> (|$IsValid'address'| addr@@182) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@182)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@182)) 0))))
 :qid |Rolescvc4bpl.7899:15|
 :skolemid |227|
))) (=> (forall ((addr@@183 Int) ) (!  (=> (|$IsValid'address'| addr@@183) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@183) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@183)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@183) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@183)) 0))))
 :qid |Rolescvc4bpl.7899:15|
 :skolemid |227|
)) (and (=> (= (ControlFlow 0 202730) (- 0 277997)) (forall ((addr@@184 Int) ) (!  (=> (|$IsValid'address'| addr@@184) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@184) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@184)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@184) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@184)) 3))))
 :qid |Rolescvc4bpl.7903:15|
 :skolemid |228|
))) (=> (forall ((addr@@185 Int) ) (!  (=> (|$IsValid'address'| addr@@185) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@185) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@185)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@185) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@185)) 3))))
 :qid |Rolescvc4bpl.7903:15|
 :skolemid |228|
)) (and (=> (= (ControlFlow 0 202730) (- 0 278044)) (forall ((addr@@186 Int) ) (!  (=> (|$IsValid'address'| addr@@186) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@186) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@186)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@186) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@186)) 4))))
 :qid |Rolescvc4bpl.7907:15|
 :skolemid |229|
))) (=> (forall ((addr@@187 Int) ) (!  (=> (|$IsValid'address'| addr@@187) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@187) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@187)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@187) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@187)) 4))))
 :qid |Rolescvc4bpl.7907:15|
 :skolemid |229|
)) (and (=> (= (ControlFlow 0 202730) (- 0 278091)) (forall ((addr@@188 Int) ) (!  (=> (|$IsValid'address'| addr@@188) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@188) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@188)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@188) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@188)) 2))))
 :qid |Rolescvc4bpl.7911:15|
 :skolemid |230|
))) (=> (forall ((addr@@189 Int) ) (!  (=> (|$IsValid'address'| addr@@189) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@189) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@189)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@189) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@189)) 2))))
 :qid |Rolescvc4bpl.7911:15|
 :skolemid |230|
)) (and (=> (= (ControlFlow 0 202730) (- 0 278138)) (forall ((addr@@190 Int) ) (!  (=> (|$IsValid'address'| addr@@190) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@190) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@190)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@190) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@190)) 5))))
 :qid |Rolescvc4bpl.7915:15|
 :skolemid |231|
))) (=> (forall ((addr@@191 Int) ) (!  (=> (|$IsValid'address'| addr@@191) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@191) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@191)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@191) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@191)) 5))))
 :qid |Rolescvc4bpl.7915:15|
 :skolemid |231|
)) (=> (= (ControlFlow 0 202730) (- 0 278185)) (forall ((addr@@192 Int) ) (!  (=> (|$IsValid'address'| addr@@192) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@192) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@0) addr@@192)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@192) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@192)) 6))))
 :qid |Rolescvc4bpl.7919:15|
 :skolemid |232|
))))))))))))))))))))))))))))))))))
(let ((anon17_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_Roles_RoleId_$memory@1@@1 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@13 false) (|contents#$Memory_112037| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@1) (= (ControlFlow 0 202280) 202730))) anon11_correct)))
(let ((anon17_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@0| (= $1_Roles_RoleId_$memory@0@@1 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@13 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@13 |$temp_0'$1_Roles_RoleId'@0@@0|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@1) (= (ControlFlow 0 202744) 202730))) anon11_correct)))
(let ((anon16_Else_correct@@4  (=> (not $t10@@4) (and (=> (= (ControlFlow 0 202266) 202744) anon17_Then_correct@@4) (=> (= (ControlFlow 0 202266) 202280) anon17_Else_correct@@4)))))
(let ((anon15_Else_correct@@9  (=> (not $t7@@4) (=> (and (|$IsValid'u64'| 1) (= $t9@@8 _$t0@@13)) (and (=> (= (ControlFlow 0 202260) (- 0 277687)) (=> (= 1 0) (= $t9@@8 173345816))) (=> (=> (= 1 0) (= $t9@@8 173345816)) (and (=> (= (ControlFlow 0 202260) (- 0 277703)) (=> (= 1 1) (= $t9@@8 186537453))) (=> (=> (= 1 1) (= $t9@@8 186537453)) (and (=> (= (ControlFlow 0 202260) (- 0 277719)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 _$t0@@13)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 _$t0@@13) (=> (= $t10@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t0@@13)) (and (=> (= (ControlFlow 0 202260) 202772) anon16_Then_correct@@4) (=> (= (ControlFlow 0 202260) 202266) anon16_Else_correct@@4)))))))))))))
(let ((anon14_Else_correct@@8  (=> (not $t5@@2) (=> (and (= $t6@@7 _$t1@@1) (= $t7@@4  (or (or (or (not (= _$t1@@1 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t6@@7)) 0))) (not (= _$t1@@1 173345816))))) (and (=> (= (ControlFlow 0 202182) 203076) anon15_Then_correct@@9) (=> (= (ControlFlow 0 202182) 202260) anon15_Else_correct@@9))))))
(let ((anon13_Else_correct@@5  (=> (and (not $t3@@1) (= $t5@@2  (not (= _$t0@@13 186537453)))) (and (=> (= (ControlFlow 0 202110) 203106) anon14_Then_correct@@8) (=> (= (ControlFlow 0 202110) 202182) anon14_Else_correct@@8)))))
(let ((anon0$1_correct@@13  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$IsValid'address'| _$t0@@13)) (=> (and (and (and (|$IsValid'address'| _$t1@@1) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@14)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@14))
 :qid |Rolescvc4bpl.7656:20|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@14))
))) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@15)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@15))
 :qid |Rolescvc4bpl.7660:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@15))
)) (= $t2@@0 _$t1@@1))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 _$t0@@13) (= _$t0@@13 _$t0@@13)) (and (= _$t1@@1 _$t1@@1) (= $t3@@1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110591| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 202088) 203132) anon13_Then_correct@@5) (=> (= (ControlFlow 0 202088) 202110) anon13_Else_correct@@5))))))
(let ((inline$$InitEventStore$0$anon0_correct@@13  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@15 T@$1_Event_EventHandle) ) (! (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@15)))
 (and (= (|l#Multiset_81661| stream@@14) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@14) v@@49) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 201960) 202088)) anon0$1_correct@@13)))
(let ((anon0_correct@@13  (=> (= (ControlFlow 0 277262) 201960) inline$$InitEventStore$0$anon0_correct@@13)))
anon0_correct@@13))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@0@@12 () Bool)
(declare-fun $abort_code@1@@12 () Int)
(declare-fun $abort_code@3@@0 () Int)
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
(declare-fun $abort_code@0@@12 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@0 () Bool)
(declare-fun _$t0@@14 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_child_VASP_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 278438) (let ((anon4_Else_correct  (=> (and (not $abort_flag@2@@0) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@1@@0)) (and (=> (= (ControlFlow 0 204176) (- 0 278877)) (forall ((addr@@193 Int) ) (!  (=> (|$IsValid'address'| addr@@193) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@193) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@193)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@193) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@193)) 0))))
 :qid |Rolescvc4bpl.8051:15|
 :skolemid |234|
))) (=> (forall ((addr@@194 Int) ) (!  (=> (|$IsValid'address'| addr@@194) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@194) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@194)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@194) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@194)) 0))))
 :qid |Rolescvc4bpl.8051:15|
 :skolemid |234|
)) (and (=> (= (ControlFlow 0 204176) (- 0 278926)) (forall ((addr@@195 Int) ) (!  (=> (|$IsValid'address'| addr@@195) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@195) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@195)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@195) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@195)) 1))))
 :qid |Rolescvc4bpl.8055:15|
 :skolemid |235|
))) (=> (forall ((addr@@196 Int) ) (!  (=> (|$IsValid'address'| addr@@196) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@196) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@196)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@196) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@196)) 1))))
 :qid |Rolescvc4bpl.8055:15|
 :skolemid |235|
)) (and (=> (= (ControlFlow 0 204176) (- 0 278975)) (forall ((addr@@197 Int) ) (!  (=> (|$IsValid'address'| addr@@197) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@197) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@197)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@197) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@197)) 3))))
 :qid |Rolescvc4bpl.8059:15|
 :skolemid |236|
))) (=> (forall ((addr@@198 Int) ) (!  (=> (|$IsValid'address'| addr@@198) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@198) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@198)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@198) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@198)) 3))))
 :qid |Rolescvc4bpl.8059:15|
 :skolemid |236|
)) (and (=> (= (ControlFlow 0 204176) (- 0 279024)) (forall ((addr@@199 Int) ) (!  (=> (|$IsValid'address'| addr@@199) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@199) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@199)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@199) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@199)) 4))))
 :qid |Rolescvc4bpl.8063:15|
 :skolemid |237|
))) (=> (forall ((addr@@200 Int) ) (!  (=> (|$IsValid'address'| addr@@200) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@200) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@200)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@200) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@200)) 4))))
 :qid |Rolescvc4bpl.8063:15|
 :skolemid |237|
)) (and (=> (= (ControlFlow 0 204176) (- 0 279073)) (forall ((addr@@201 Int) ) (!  (=> (|$IsValid'address'| addr@@201) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@201) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@201)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@201) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@201)) 2))))
 :qid |Rolescvc4bpl.8067:15|
 :skolemid |238|
))) (=> (forall ((addr@@202 Int) ) (!  (=> (|$IsValid'address'| addr@@202) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@202) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@202)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@202) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@202)) 2))))
 :qid |Rolescvc4bpl.8067:15|
 :skolemid |238|
)) (and (=> (= (ControlFlow 0 204176) (- 0 279122)) (forall ((addr@@203 Int) ) (!  (=> (|$IsValid'address'| addr@@203) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@203) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@203)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@203) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@203)) 5))))
 :qid |Rolescvc4bpl.8071:15|
 :skolemid |239|
))) (=> (forall ((addr@@204 Int) ) (!  (=> (|$IsValid'address'| addr@@204) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@204) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@204)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@204) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@204)) 5))))
 :qid |Rolescvc4bpl.8071:15|
 :skolemid |239|
)) (=> (= (ControlFlow 0 204176) (- 0 279171)) (forall ((addr@@205 Int) ) (!  (=> (|$IsValid'address'| addr@@205) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@205) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@205)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@205) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@205)) 6))))
 :qid |Rolescvc4bpl.8075:15|
 :skolemid |240|
))))))))))))))))))
(let ((anon4_Then_correct true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@0  (=> $abort_flag@0@@12 (=> (and (and (= $abort_code@1@@12 $abort_code@1@@12) (= $abort_code@3@@0 $abort_code@1@@12)) (and (= $abort_flag@2@@0 true) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@0@@0))) (and (=> (= (ControlFlow 0 203741) 204194) anon4_Then_correct) (=> (= (ControlFlow 0 203741) 204176) anon4_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@0 inline$$1_Roles_has_role$0$$t3@1@@0) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$t3@1@@0))) (and (=> (= (ControlFlow 0 203677) 204194) anon4_Then_correct) (=> (= (ControlFlow 0 203677) 204176) anon4_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@0@@12) (= inline$$1_Roles_has_role$0$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@0))) (and (= inline$$1_Roles_has_role$0$$t9@1@@0 (= inline$$1_Roles_has_role$0$$t8@1@@0 6)) (= inline$$1_Roles_has_role$0$$t9@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0))) (and (and (= $abort_code@2@@0 $abort_code@1@@12) (= inline$$1_Roles_has_role$0$$t3@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0)) (and (= $abort_flag@1@@0 $abort_flag@0@@12) (= (ControlFlow 0 203723) 203677)))) inline$$1_Roles_has_role$0$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0  (=> (= $abort_flag@0@@12 true) (=> (and (= $abort_code@1@@12 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@0@@0)) (and (=> (= (ControlFlow 0 203793) 203741) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 203793) 203723) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= (ControlFlow 0 203791) 203793)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= $abort_flag@0@@12 false)) (and (= $abort_code@1@@12 $abort_code@0@@12) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@1@@0))) (and (=> (= (ControlFlow 0 203695) 203741) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 203695) 203723) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$0$$t5@1@@0 (and (=> (= (ControlFlow 0 203681) 203791) inline$$1_Roles_has_role$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 203681) 203695) inline$$1_Roles_has_role$0$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@0) (= false false)) (=> (and (and (= $abort_code@2@@0 $abort_code@0@@12) (= inline$$1_Roles_has_role$0$$t3@1@@0 false)) (and (= $abort_flag@1@@0 false) (= (ControlFlow 0 203665) 203677))) inline$$1_Roles_has_role$0$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@0  (=> (and (= _$t0@@14 _$t0@@14) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t4@0@@0 _$t0@@14)) (and (= inline$$1_Roles_has_role$0$$t4@0@@0 inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)))) (and (=> (= (ControlFlow 0 203645) 203681) inline$$1_Roles_has_role$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 203645) 203665) inline$$1_Roles_has_role$0$anon9_Else_correct@@0))))))
(let ((anon0$1_correct@@14  (=> (|$IsValid'address'| _$t0@@14) (=> (and (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@16)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@16))
 :qid |Rolescvc4bpl.8018:20|
 :skolemid |233|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@16))
)) (= _$t0@@14 _$t0@@14)) (and (|$IsValid'u64'| 6) (= (ControlFlow 0 203799) 203645))) inline$$1_Roles_has_role$0$anon0_correct@@0))))
(let ((inline$$InitEventStore$0$anon0_correct@@14  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@16 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@16)))
 (and (= (|l#Multiset_81661| stream@@15) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@15) v@@50) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 203263) 203799)) anon0$1_correct@@14)))
(let ((anon0_correct@@14  (=> (= (ControlFlow 0 278438) 203263) inline$$InitEventStore$0$anon0_correct@@14)))
anon0_correct@@14)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@0@@13 () Bool)
(declare-fun $abort_code@1@@13 () Int)
(declare-fun $abort_code@3@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@1 () Bool)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@13 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@1 () Bool)
(declare-fun _$t0@@15 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 279231) (let ((anon4_Else_correct@@0  (=> (and (not $abort_flag@2@@1) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@1@@1)) (and (=> (= (ControlFlow 0 205204) (- 0 279670)) (forall ((addr@@206 Int) ) (!  (=> (|$IsValid'address'| addr@@206) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@206) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@206)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@206) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@206)) 0))))
 :qid |Rolescvc4bpl.8199:15|
 :skolemid |242|
))) (=> (forall ((addr@@207 Int) ) (!  (=> (|$IsValid'address'| addr@@207) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@207) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@207)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@207) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@207)) 0))))
 :qid |Rolescvc4bpl.8199:15|
 :skolemid |242|
)) (and (=> (= (ControlFlow 0 205204) (- 0 279719)) (forall ((addr@@208 Int) ) (!  (=> (|$IsValid'address'| addr@@208) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@208)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@208)) 1))))
 :qid |Rolescvc4bpl.8203:15|
 :skolemid |243|
))) (=> (forall ((addr@@209 Int) ) (!  (=> (|$IsValid'address'| addr@@209) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@209) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@209)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@209) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@209)) 1))))
 :qid |Rolescvc4bpl.8203:15|
 :skolemid |243|
)) (and (=> (= (ControlFlow 0 205204) (- 0 279768)) (forall ((addr@@210 Int) ) (!  (=> (|$IsValid'address'| addr@@210) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@210) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@210)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@210) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@210)) 3))))
 :qid |Rolescvc4bpl.8207:15|
 :skolemid |244|
))) (=> (forall ((addr@@211 Int) ) (!  (=> (|$IsValid'address'| addr@@211) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@211) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@211)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@211) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@211)) 3))))
 :qid |Rolescvc4bpl.8207:15|
 :skolemid |244|
)) (and (=> (= (ControlFlow 0 205204) (- 0 279817)) (forall ((addr@@212 Int) ) (!  (=> (|$IsValid'address'| addr@@212) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@212) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@212)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@212) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@212)) 4))))
 :qid |Rolescvc4bpl.8211:15|
 :skolemid |245|
))) (=> (forall ((addr@@213 Int) ) (!  (=> (|$IsValid'address'| addr@@213) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@213) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@213)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@213) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@213)) 4))))
 :qid |Rolescvc4bpl.8211:15|
 :skolemid |245|
)) (and (=> (= (ControlFlow 0 205204) (- 0 279866)) (forall ((addr@@214 Int) ) (!  (=> (|$IsValid'address'| addr@@214) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@214) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@214)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@214) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@214)) 2))))
 :qid |Rolescvc4bpl.8215:15|
 :skolemid |246|
))) (=> (forall ((addr@@215 Int) ) (!  (=> (|$IsValid'address'| addr@@215) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@215) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@215)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@215) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@215)) 2))))
 :qid |Rolescvc4bpl.8215:15|
 :skolemid |246|
)) (and (=> (= (ControlFlow 0 205204) (- 0 279915)) (forall ((addr@@216 Int) ) (!  (=> (|$IsValid'address'| addr@@216) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@216) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@216)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@216) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@216)) 5))))
 :qid |Rolescvc4bpl.8219:15|
 :skolemid |247|
))) (=> (forall ((addr@@217 Int) ) (!  (=> (|$IsValid'address'| addr@@217) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@217) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@217)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@217) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@217)) 5))))
 :qid |Rolescvc4bpl.8219:15|
 :skolemid |247|
)) (=> (= (ControlFlow 0 205204) (- 0 279964)) (forall ((addr@@218 Int) ) (!  (=> (|$IsValid'address'| addr@@218) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@218) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@218)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@218) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@218)) 6))))
 :qid |Rolescvc4bpl.8223:15|
 :skolemid |248|
))))))))))))))))))
(let ((anon4_Then_correct@@0 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@1  (=> $abort_flag@0@@13 (=> (and (and (= $abort_code@1@@13 $abort_code@1@@13) (= $abort_code@3@@1 $abort_code@1@@13)) (and (= $abort_flag@2@@1 true) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@0@@1))) (and (=> (= (ControlFlow 0 204769) 205222) anon4_Then_correct@@0) (=> (= (ControlFlow 0 204769) 205204) anon4_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@1  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@1 inline$$1_Roles_has_role$0$$t3@1@@1) (= $abort_code@3@@1 $abort_code@2@@1)) (and (= $abort_flag@2@@1 $abort_flag@1@@1) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$t3@1@@1))) (and (=> (= (ControlFlow 0 204705) 205222) anon4_Then_correct@@0) (=> (= (ControlFlow 0 204705) 205204) anon4_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@1  (=> (and (and (and (not $abort_flag@0@@13) (= inline$$1_Roles_has_role$0$$t8@1@@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@1))) (and (= inline$$1_Roles_has_role$0$$t9@1@@1 (= inline$$1_Roles_has_role$0$$t8@1@@1 2)) (= inline$$1_Roles_has_role$0$$t9@1@@1 inline$$1_Roles_has_role$0$$t9@1@@1))) (and (and (= $abort_code@2@@1 $abort_code@1@@13) (= inline$$1_Roles_has_role$0$$t3@1@@1 inline$$1_Roles_has_role$0$$t9@1@@1)) (and (= $abort_flag@1@@1 $abort_flag@0@@13) (= (ControlFlow 0 204751) 204705)))) inline$$1_Roles_has_role$0$L3_correct@@1)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@1  (=> (= $abort_flag@0@@13 true) (=> (and (= $abort_code@1@@13 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@1 inline$$1_Roles_has_role$0$$t6@0@@1)) (and (=> (= (ControlFlow 0 204821) 204769) inline$$1_Roles_has_role$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 204821) 204751) inline$$1_Roles_has_role$0$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)) (= (ControlFlow 0 204819) 204821)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@1)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)) (= $abort_flag@0@@13 false)) (and (= $abort_code@1@@13 $abort_code@0@@13) (= inline$$1_Roles_has_role$0$$t6@2@@1 inline$$1_Roles_has_role$0$$t6@1@@1))) (and (=> (= (ControlFlow 0 204723) 204769) inline$$1_Roles_has_role$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 204723) 204751) inline$$1_Roles_has_role$0$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@1  (=> inline$$1_Roles_has_role$0$$t5@1@@1 (and (=> (= (ControlFlow 0 204709) 204819) inline$$1_Roles_has_role$0$anon10_Then_correct@@1) (=> (= (ControlFlow 0 204709) 204723) inline$$1_Roles_has_role$0$anon10_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@1  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@1) (= false false)) (=> (and (and (= $abort_code@2@@1 $abort_code@0@@13) (= inline$$1_Roles_has_role$0$$t3@1@@1 false)) (and (= $abort_flag@1@@1 false) (= (ControlFlow 0 204693) 204705))) inline$$1_Roles_has_role$0$L3_correct@@1))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@1  (=> (and (= _$t0@@15 _$t0@@15) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@1) (= inline$$1_Roles_has_role$0$$t4@0@@1 _$t0@@15)) (and (= inline$$1_Roles_has_role$0$$t4@0@@1 inline$$1_Roles_has_role$0$$t4@0@@1) (= inline$$1_Roles_has_role$0$$t5@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)))) (and (=> (= (ControlFlow 0 204673) 204709) inline$$1_Roles_has_role$0$anon9_Then_correct@@1) (=> (= (ControlFlow 0 204673) 204693) inline$$1_Roles_has_role$0$anon9_Else_correct@@1))))))
(let ((anon0$1_correct@@15  (=> (|$IsValid'address'| _$t0@@15) (=> (and (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@17)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@17))
 :qid |Rolescvc4bpl.8166:20|
 :skolemid |241|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@17))
)) (= _$t0@@15 _$t0@@15)) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 204827) 204673))) inline$$1_Roles_has_role$0$anon0_correct@@1))))
(let ((inline$$InitEventStore$0$anon0_correct@@15  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@17 T@$1_Event_EventHandle) ) (! (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@17)))
 (and (= (|l#Multiset_81661| stream@@16) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@16) v@@51) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 204291) 204827)) anon0$1_correct@@15)))
(let ((anon0_correct@@15  (=> (= (ControlFlow 0 279231) 204291) inline$$InitEventStore$0$anon0_correct@@15)))
anon0_correct@@15)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@2 () Bool)
(declare-fun $abort_flag@0@@14 () Bool)
(declare-fun $abort_code@1@@14 () Int)
(declare-fun $abort_code@3@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@2 () Bool)
(declare-fun $abort_code@2@@2 () Int)
(declare-fun $abort_flag@1@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@2 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@14 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@2 () Bool)
(declare-fun _$t0@@16 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 280024) (let ((anon4_Else_correct@@1  (=> (and (not $abort_flag@2@@2) (= inline$$1_Roles_has_role$0$$ret0@1@@2 inline$$1_Roles_has_role$0$$ret0@1@@2)) (and (=> (= (ControlFlow 0 206232) (- 0 280463)) (forall ((addr@@219 Int) ) (!  (=> (|$IsValid'address'| addr@@219) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@219) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@219)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@219) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@219)) 0))))
 :qid |Rolescvc4bpl.8295:15|
 :skolemid |250|
))) (=> (forall ((addr@@220 Int) ) (!  (=> (|$IsValid'address'| addr@@220) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@220) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@220)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@220) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@220)) 0))))
 :qid |Rolescvc4bpl.8295:15|
 :skolemid |250|
)) (and (=> (= (ControlFlow 0 206232) (- 0 280512)) (forall ((addr@@221 Int) ) (!  (=> (|$IsValid'address'| addr@@221) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@221) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@221)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@221) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@221)) 1))))
 :qid |Rolescvc4bpl.8299:15|
 :skolemid |251|
))) (=> (forall ((addr@@222 Int) ) (!  (=> (|$IsValid'address'| addr@@222) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@222) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@222)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@222) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@222)) 1))))
 :qid |Rolescvc4bpl.8299:15|
 :skolemid |251|
)) (and (=> (= (ControlFlow 0 206232) (- 0 280561)) (forall ((addr@@223 Int) ) (!  (=> (|$IsValid'address'| addr@@223) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@223) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@223)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@223) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@223)) 3))))
 :qid |Rolescvc4bpl.8303:15|
 :skolemid |252|
))) (=> (forall ((addr@@224 Int) ) (!  (=> (|$IsValid'address'| addr@@224) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@224) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@224)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@224) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@224)) 3))))
 :qid |Rolescvc4bpl.8303:15|
 :skolemid |252|
)) (and (=> (= (ControlFlow 0 206232) (- 0 280610)) (forall ((addr@@225 Int) ) (!  (=> (|$IsValid'address'| addr@@225) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@225) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@225)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@225) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@225)) 4))))
 :qid |Rolescvc4bpl.8307:15|
 :skolemid |253|
))) (=> (forall ((addr@@226 Int) ) (!  (=> (|$IsValid'address'| addr@@226) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@226) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@226)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@226) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@226)) 4))))
 :qid |Rolescvc4bpl.8307:15|
 :skolemid |253|
)) (and (=> (= (ControlFlow 0 206232) (- 0 280659)) (forall ((addr@@227 Int) ) (!  (=> (|$IsValid'address'| addr@@227) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@227) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@227)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@227) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@227)) 2))))
 :qid |Rolescvc4bpl.8311:15|
 :skolemid |254|
))) (=> (forall ((addr@@228 Int) ) (!  (=> (|$IsValid'address'| addr@@228) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@228) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@228)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@228) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@228)) 2))))
 :qid |Rolescvc4bpl.8311:15|
 :skolemid |254|
)) (and (=> (= (ControlFlow 0 206232) (- 0 280708)) (forall ((addr@@229 Int) ) (!  (=> (|$IsValid'address'| addr@@229) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@229) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@229)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@229) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@229)) 5))))
 :qid |Rolescvc4bpl.8315:15|
 :skolemid |255|
))) (=> (forall ((addr@@230 Int) ) (!  (=> (|$IsValid'address'| addr@@230) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@230) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@230)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@230) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@230)) 5))))
 :qid |Rolescvc4bpl.8315:15|
 :skolemid |255|
)) (=> (= (ControlFlow 0 206232) (- 0 280757)) (forall ((addr@@231 Int) ) (!  (=> (|$IsValid'address'| addr@@231) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@231) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@231)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@231) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@231)) 6))))
 :qid |Rolescvc4bpl.8319:15|
 :skolemid |256|
))))))))))))))))))
(let ((anon4_Then_correct@@1 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@2  (=> $abort_flag@0@@14 (=> (and (and (= $abort_code@1@@14 $abort_code@1@@14) (= $abort_code@3@@2 $abort_code@1@@14)) (and (= $abort_flag@2@@2 true) (= inline$$1_Roles_has_role$0$$ret0@1@@2 inline$$1_Roles_has_role$0$$ret0@0@@2))) (and (=> (= (ControlFlow 0 205797) 206250) anon4_Then_correct@@1) (=> (= (ControlFlow 0 205797) 206232) anon4_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@2  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@2 inline$$1_Roles_has_role$0$$t3@1@@2) (= $abort_code@3@@2 $abort_code@2@@2)) (and (= $abort_flag@2@@2 $abort_flag@1@@2) (= inline$$1_Roles_has_role$0$$ret0@1@@2 inline$$1_Roles_has_role$0$$t3@1@@2))) (and (=> (= (ControlFlow 0 205733) 206250) anon4_Then_correct@@1) (=> (= (ControlFlow 0 205733) 206232) anon4_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@2  (=> (and (and (and (not $abort_flag@0@@14) (= inline$$1_Roles_has_role$0$$t8@1@@2 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@2))) (and (= inline$$1_Roles_has_role$0$$t9@1@@2 (= inline$$1_Roles_has_role$0$$t8@1@@2 0)) (= inline$$1_Roles_has_role$0$$t9@1@@2 inline$$1_Roles_has_role$0$$t9@1@@2))) (and (and (= $abort_code@2@@2 $abort_code@1@@14) (= inline$$1_Roles_has_role$0$$t3@1@@2 inline$$1_Roles_has_role$0$$t9@1@@2)) (and (= $abort_flag@1@@2 $abort_flag@0@@14) (= (ControlFlow 0 205779) 205733)))) inline$$1_Roles_has_role$0$L3_correct@@2)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@2  (=> (= $abort_flag@0@@14 true) (=> (and (= $abort_code@1@@14 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@2 inline$$1_Roles_has_role$0$$t6@0@@2)) (and (=> (= (ControlFlow 0 205849) 205797) inline$$1_Roles_has_role$0$anon11_Then_correct@@2) (=> (= (ControlFlow 0 205849) 205779) inline$$1_Roles_has_role$0$anon11_Else_correct@@2))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2)) (= (ControlFlow 0 205847) 205849)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@2)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2)) (= $abort_flag@0@@14 false)) (and (= $abort_code@1@@14 $abort_code@0@@14) (= inline$$1_Roles_has_role$0$$t6@2@@2 inline$$1_Roles_has_role$0$$t6@1@@2))) (and (=> (= (ControlFlow 0 205751) 205797) inline$$1_Roles_has_role$0$anon11_Then_correct@@2) (=> (= (ControlFlow 0 205751) 205779) inline$$1_Roles_has_role$0$anon11_Else_correct@@2))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@2  (=> inline$$1_Roles_has_role$0$$t5@1@@2 (and (=> (= (ControlFlow 0 205737) 205847) inline$$1_Roles_has_role$0$anon10_Then_correct@@2) (=> (= (ControlFlow 0 205737) 205751) inline$$1_Roles_has_role$0$anon10_Else_correct@@2)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@2  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@2) (= false false)) (=> (and (and (= $abort_code@2@@2 $abort_code@0@@14) (= inline$$1_Roles_has_role$0$$t3@1@@2 false)) (and (= $abort_flag@1@@2 false) (= (ControlFlow 0 205721) 205733))) inline$$1_Roles_has_role$0$L3_correct@@2))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@2  (=> (and (= _$t0@@16 _$t0@@16) (= 0 0)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@2) (= inline$$1_Roles_has_role$0$$t4@0@@2 _$t0@@16)) (and (= inline$$1_Roles_has_role$0$$t4@0@@2 inline$$1_Roles_has_role$0$$t4@0@@2) (= inline$$1_Roles_has_role$0$$t5@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2)))) (and (=> (= (ControlFlow 0 205701) 205737) inline$$1_Roles_has_role$0$anon9_Then_correct@@2) (=> (= (ControlFlow 0 205701) 205721) inline$$1_Roles_has_role$0$anon9_Else_correct@@2))))))
(let ((anon0$1_correct@@16  (=> (|$IsValid'address'| _$t0@@16) (=> (and (and (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@18)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@18))
 :qid |Rolescvc4bpl.8262:20|
 :skolemid |249|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@18))
)) (= _$t0@@16 _$t0@@16)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 205855) 205701))) inline$$1_Roles_has_role$0$anon0_correct@@2))))
(let ((inline$$InitEventStore$0$anon0_correct@@16  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_81661| stream@@17) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@17) v@@52) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 205319) 205855)) anon0$1_correct@@16)))
(let ((anon0_correct@@16  (=> (= (ControlFlow 0 280024) 205319) inline$$InitEventStore$0$anon0_correct@@16)))
anon0_correct@@16)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@3 () Bool)
(declare-fun $abort_flag@0@@15 () Bool)
(declare-fun $abort_code@1@@15 () Int)
(declare-fun $abort_code@3@@3 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@3 () Bool)
(declare-fun $abort_code@2@@3 () Int)
(declare-fun $abort_flag@1@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@3 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@3 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@3 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@3 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@3 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@15 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@3 () Bool)
(declare-fun _$t0@@17 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_parent_VASP_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 280817) (let ((anon4_Else_correct@@2  (=> (and (not $abort_flag@2@@3) (= inline$$1_Roles_has_role$0$$ret0@1@@3 inline$$1_Roles_has_role$0$$ret0@1@@3)) (and (=> (= (ControlFlow 0 207260) (- 0 281256)) (forall ((addr@@232 Int) ) (!  (=> (|$IsValid'address'| addr@@232) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@232) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@232)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@232) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@232)) 0))))
 :qid |Rolescvc4bpl.8443:15|
 :skolemid |258|
))) (=> (forall ((addr@@233 Int) ) (!  (=> (|$IsValid'address'| addr@@233) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@233) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@233)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@233) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@233)) 0))))
 :qid |Rolescvc4bpl.8443:15|
 :skolemid |258|
)) (and (=> (= (ControlFlow 0 207260) (- 0 281305)) (forall ((addr@@234 Int) ) (!  (=> (|$IsValid'address'| addr@@234) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@234) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@234)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@234) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@234)) 1))))
 :qid |Rolescvc4bpl.8447:15|
 :skolemid |259|
))) (=> (forall ((addr@@235 Int) ) (!  (=> (|$IsValid'address'| addr@@235) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@235) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@235)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@235) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@235)) 1))))
 :qid |Rolescvc4bpl.8447:15|
 :skolemid |259|
)) (and (=> (= (ControlFlow 0 207260) (- 0 281354)) (forall ((addr@@236 Int) ) (!  (=> (|$IsValid'address'| addr@@236) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@236) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@236)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@236) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@236)) 3))))
 :qid |Rolescvc4bpl.8451:15|
 :skolemid |260|
))) (=> (forall ((addr@@237 Int) ) (!  (=> (|$IsValid'address'| addr@@237) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@237) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@237)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@237) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@237)) 3))))
 :qid |Rolescvc4bpl.8451:15|
 :skolemid |260|
)) (and (=> (= (ControlFlow 0 207260) (- 0 281403)) (forall ((addr@@238 Int) ) (!  (=> (|$IsValid'address'| addr@@238) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@238) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@238)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@238) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@238)) 4))))
 :qid |Rolescvc4bpl.8455:15|
 :skolemid |261|
))) (=> (forall ((addr@@239 Int) ) (!  (=> (|$IsValid'address'| addr@@239) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@239) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@239)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@239) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@239)) 4))))
 :qid |Rolescvc4bpl.8455:15|
 :skolemid |261|
)) (and (=> (= (ControlFlow 0 207260) (- 0 281452)) (forall ((addr@@240 Int) ) (!  (=> (|$IsValid'address'| addr@@240) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@240) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@240)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@240) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@240)) 2))))
 :qid |Rolescvc4bpl.8459:15|
 :skolemid |262|
))) (=> (forall ((addr@@241 Int) ) (!  (=> (|$IsValid'address'| addr@@241) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@241) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@241)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@241) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@241)) 2))))
 :qid |Rolescvc4bpl.8459:15|
 :skolemid |262|
)) (and (=> (= (ControlFlow 0 207260) (- 0 281501)) (forall ((addr@@242 Int) ) (!  (=> (|$IsValid'address'| addr@@242) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@242) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@242)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@242) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@242)) 5))))
 :qid |Rolescvc4bpl.8463:15|
 :skolemid |263|
))) (=> (forall ((addr@@243 Int) ) (!  (=> (|$IsValid'address'| addr@@243) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@243) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@243)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@243) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@243)) 5))))
 :qid |Rolescvc4bpl.8463:15|
 :skolemid |263|
)) (=> (= (ControlFlow 0 207260) (- 0 281550)) (forall ((addr@@244 Int) ) (!  (=> (|$IsValid'address'| addr@@244) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@244) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@244)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@244) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@244)) 6))))
 :qid |Rolescvc4bpl.8467:15|
 :skolemid |264|
))))))))))))))))))
(let ((anon4_Then_correct@@2 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@3  (=> $abort_flag@0@@15 (=> (and (and (= $abort_code@1@@15 $abort_code@1@@15) (= $abort_code@3@@3 $abort_code@1@@15)) (and (= $abort_flag@2@@3 true) (= inline$$1_Roles_has_role$0$$ret0@1@@3 inline$$1_Roles_has_role$0$$ret0@0@@3))) (and (=> (= (ControlFlow 0 206825) 207278) anon4_Then_correct@@2) (=> (= (ControlFlow 0 206825) 207260) anon4_Else_correct@@2))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@3  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@3 inline$$1_Roles_has_role$0$$t3@1@@3) (= $abort_code@3@@3 $abort_code@2@@3)) (and (= $abort_flag@2@@3 $abort_flag@1@@3) (= inline$$1_Roles_has_role$0$$ret0@1@@3 inline$$1_Roles_has_role$0$$t3@1@@3))) (and (=> (= (ControlFlow 0 206761) 207278) anon4_Then_correct@@2) (=> (= (ControlFlow 0 206761) 207260) anon4_Else_correct@@2)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@3  (=> (and (and (and (not $abort_flag@0@@15) (= inline$$1_Roles_has_role$0$$t8@1@@3 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@3))) (and (= inline$$1_Roles_has_role$0$$t9@1@@3 (= inline$$1_Roles_has_role$0$$t8@1@@3 5)) (= inline$$1_Roles_has_role$0$$t9@1@@3 inline$$1_Roles_has_role$0$$t9@1@@3))) (and (and (= $abort_code@2@@3 $abort_code@1@@15) (= inline$$1_Roles_has_role$0$$t3@1@@3 inline$$1_Roles_has_role$0$$t9@1@@3)) (and (= $abort_flag@1@@3 $abort_flag@0@@15) (= (ControlFlow 0 206807) 206761)))) inline$$1_Roles_has_role$0$L3_correct@@3)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@3  (=> (= $abort_flag@0@@15 true) (=> (and (= $abort_code@1@@15 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@3 inline$$1_Roles_has_role$0$$t6@0@@3)) (and (=> (= (ControlFlow 0 206877) 206825) inline$$1_Roles_has_role$0$anon11_Then_correct@@3) (=> (= (ControlFlow 0 206877) 206807) inline$$1_Roles_has_role$0$anon11_Else_correct@@3))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3)) (= (ControlFlow 0 206875) 206877)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@3)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3)) (= $abort_flag@0@@15 false)) (and (= $abort_code@1@@15 $abort_code@0@@15) (= inline$$1_Roles_has_role$0$$t6@2@@3 inline$$1_Roles_has_role$0$$t6@1@@3))) (and (=> (= (ControlFlow 0 206779) 206825) inline$$1_Roles_has_role$0$anon11_Then_correct@@3) (=> (= (ControlFlow 0 206779) 206807) inline$$1_Roles_has_role$0$anon11_Else_correct@@3))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@3  (=> inline$$1_Roles_has_role$0$$t5@1@@3 (and (=> (= (ControlFlow 0 206765) 206875) inline$$1_Roles_has_role$0$anon10_Then_correct@@3) (=> (= (ControlFlow 0 206765) 206779) inline$$1_Roles_has_role$0$anon10_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@3  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@3) (= false false)) (=> (and (and (= $abort_code@2@@3 $abort_code@0@@15) (= inline$$1_Roles_has_role$0$$t3@1@@3 false)) (and (= $abort_flag@1@@3 false) (= (ControlFlow 0 206749) 206761))) inline$$1_Roles_has_role$0$L3_correct@@3))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@3  (=> (and (= _$t0@@17 _$t0@@17) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@3) (= inline$$1_Roles_has_role$0$$t4@0@@3 _$t0@@17)) (and (= inline$$1_Roles_has_role$0$$t4@0@@3 inline$$1_Roles_has_role$0$$t4@0@@3) (= inline$$1_Roles_has_role$0$$t5@1@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3)))) (and (=> (= (ControlFlow 0 206729) 206765) inline$$1_Roles_has_role$0$anon9_Then_correct@@3) (=> (= (ControlFlow 0 206729) 206749) inline$$1_Roles_has_role$0$anon9_Else_correct@@3))))))
(let ((anon0$1_correct@@17  (=> (|$IsValid'address'| _$t0@@17) (=> (and (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@19)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@19))
 :qid |Rolescvc4bpl.8410:20|
 :skolemid |257|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@19))
)) (= _$t0@@17 _$t0@@17)) (and (|$IsValid'u64'| 5) (= (ControlFlow 0 206883) 206729))) inline$$1_Roles_has_role$0$anon0_correct@@3))))
(let ((inline$$InitEventStore$0$anon0_correct@@17  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@19 T@$1_Event_EventHandle) ) (! (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@19)))
 (and (= (|l#Multiset_81661| stream@@18) 0) (forall ((v@@53 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@18) v@@53) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 206347) 206883)) anon0$1_correct@@17)))
(let ((anon0_correct@@17  (=> (= (ControlFlow 0 280817) 206347) inline$$InitEventStore$0$anon0_correct@@17)))
anon0_correct@@17)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t3@0@@0 () Bool)
(declare-fun $abort_flag@0@@16 () Bool)
(declare-fun $t8@0@@4 () Int)
(declare-fun $t6@1 () T@$1_Roles_RoleId)
(declare-fun $t9@0 () Bool)
(declare-fun _$t1@@2 () Int)
(declare-fun $t6@@8 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@16 () Int)
(declare-fun $t4@@1 () Int)
(declare-fun $t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@16 () Int)
(declare-fun $t5@0 () Bool)
(declare-fun _$t0@@18 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 281611) (let ((anon12_Then_correct@@7 true))
(let ((L3_correct@@0  (=> (= $t3@0@@0 $t3@0@@0) (and (=> (= (ControlFlow 0 207854) (- 0 281905)) (forall ((addr@@245 Int) ) (!  (=> (|$IsValid'address'| addr@@245) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@245) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@245)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@245) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@245)) 0))))
 :qid |Rolescvc4bpl.8748:15|
 :skolemid |266|
))) (=> (forall ((addr@@246 Int) ) (!  (=> (|$IsValid'address'| addr@@246) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@246) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@246)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@246) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@246)) 0))))
 :qid |Rolescvc4bpl.8748:15|
 :skolemid |266|
)) (and (=> (= (ControlFlow 0 207854) (- 0 281954)) (forall ((addr@@247 Int) ) (!  (=> (|$IsValid'address'| addr@@247) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@247) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@247)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@247) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@247)) 1))))
 :qid |Rolescvc4bpl.8752:15|
 :skolemid |267|
))) (=> (forall ((addr@@248 Int) ) (!  (=> (|$IsValid'address'| addr@@248) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@248) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@248)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@248) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@248)) 1))))
 :qid |Rolescvc4bpl.8752:15|
 :skolemid |267|
)) (and (=> (= (ControlFlow 0 207854) (- 0 282003)) (forall ((addr@@249 Int) ) (!  (=> (|$IsValid'address'| addr@@249) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@249) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@249)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@249) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@249)) 3))))
 :qid |Rolescvc4bpl.8756:15|
 :skolemid |268|
))) (=> (forall ((addr@@250 Int) ) (!  (=> (|$IsValid'address'| addr@@250) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@250) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@250)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@250) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@250)) 3))))
 :qid |Rolescvc4bpl.8756:15|
 :skolemid |268|
)) (and (=> (= (ControlFlow 0 207854) (- 0 282052)) (forall ((addr@@251 Int) ) (!  (=> (|$IsValid'address'| addr@@251) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@251) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@251)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@251) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@251)) 4))))
 :qid |Rolescvc4bpl.8760:15|
 :skolemid |269|
))) (=> (forall ((addr@@252 Int) ) (!  (=> (|$IsValid'address'| addr@@252) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@252) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@252)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@252) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@252)) 4))))
 :qid |Rolescvc4bpl.8760:15|
 :skolemid |269|
)) (and (=> (= (ControlFlow 0 207854) (- 0 282101)) (forall ((addr@@253 Int) ) (!  (=> (|$IsValid'address'| addr@@253) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@253) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@253)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@253) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@253)) 2))))
 :qid |Rolescvc4bpl.8764:15|
 :skolemid |270|
))) (=> (forall ((addr@@254 Int) ) (!  (=> (|$IsValid'address'| addr@@254) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@254) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@254)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@254) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@254)) 2))))
 :qid |Rolescvc4bpl.8764:15|
 :skolemid |270|
)) (and (=> (= (ControlFlow 0 207854) (- 0 282150)) (forall ((addr@@255 Int) ) (!  (=> (|$IsValid'address'| addr@@255) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@255) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@255)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@255) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@255)) 5))))
 :qid |Rolescvc4bpl.8768:15|
 :skolemid |271|
))) (=> (forall ((addr@@256 Int) ) (!  (=> (|$IsValid'address'| addr@@256) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@256) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@256)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@256) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@256)) 5))))
 :qid |Rolescvc4bpl.8768:15|
 :skolemid |271|
)) (=> (= (ControlFlow 0 207854) (- 0 282199)) (forall ((addr@@257 Int) ) (!  (=> (|$IsValid'address'| addr@@257) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@257) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@257)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@257) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@257)) 6))))
 :qid |Rolescvc4bpl.8772:15|
 :skolemid |272|
))))))))))))))))))
(let ((anon12_Else_correct@@7  (=> (and (not $abort_flag@0@@16) (= $t8@0@@4 (|$role_id#$1_Roles_RoleId| $t6@1))) (=> (and (and (= $t9@0 (= $t8@0@@4 _$t1@@2)) (= $t9@0 $t9@0)) (and (= $t3@0@@0 $t9@0) (= (ControlFlow 0 207900) 207854))) L3_correct@@0))))
(let ((anon11_Then$1_correct@@1  (=> (= $t6@1 $t6@@8) (=> (and (= $abort_flag@0@@16 true) (= $abort_code@1@@16 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 207970) 207918) anon12_Then_correct@@7) (=> (= (ControlFlow 0 207970) 207900) anon12_Else_correct@@7))))))
(let ((anon11_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@1)) (= (ControlFlow 0 207968) 207970)) anon11_Then$1_correct@@1)))
(let ((anon11_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@1) (=> (and (and (= $t6@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@1)) (= $t6@1 $t6@0@@0)) (and (= $abort_flag@0@@16 false) (= $abort_code@1@@16 $abort_code@0@@16))) (and (=> (= (ControlFlow 0 207872) 207918) anon12_Then_correct@@7) (=> (= (ControlFlow 0 207872) 207900) anon12_Else_correct@@7))))))
(let ((anon10_Then_correct@@1  (=> $t5@0 (and (=> (= (ControlFlow 0 207858) 207968) anon11_Then_correct@@2) (=> (= (ControlFlow 0 207858) 207872) anon11_Else_correct@@2)))))
(let ((anon10_Else_correct@@1  (=> (and (and (not $t5@0) (= false false)) (and (= $t3@0@@0 false) (= (ControlFlow 0 207483) 207854))) L3_correct@@0)))
(let ((anon0$1_correct@@18  (=> (|$IsValid'address'| _$t0@@18) (=> (and (and (and (|$IsValid'u64'| _$t1@@2) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@20)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@20))
 :qid |Rolescvc4bpl.8647:20|
 :skolemid |265|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@20))
))) (and (= _$t0@@18 _$t0@@18) (= _$t1@@2 _$t1@@2))) (and (and (|$IsValid'address'| $t4@@1) (= $t4@@1 _$t0@@18)) (and (= $t4@@1 $t4@@1) (= $t5@0 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@1))))) (and (=> (= (ControlFlow 0 207463) 207858) anon10_Then_correct@@1) (=> (= (ControlFlow 0 207463) 207483) anon10_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@18  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@20 T@$1_Event_EventHandle) ) (! (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@20)))
 (and (= (|l#Multiset_81661| stream@@19) 0) (forall ((v@@54 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@19) v@@54) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 207377) 207463)) anon0$1_correct@@18)))
(let ((anon0_correct@@18  (=> (= (ControlFlow 0 281611) 207377) inline$$InitEventStore$0$anon0_correct@@18)))
anon0_correct@@18))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@4 () Bool)
(declare-fun $abort_flag@0@@17 () Bool)
(declare-fun $abort_code@1@@17 () Int)
(declare-fun $abort_code@3@@4 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@4 () Bool)
(declare-fun $abort_code@2@@4 () Int)
(declare-fun $abort_flag@1@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@4 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@4 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@4 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@4 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@4 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@17 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@4 () Bool)
(declare-fun _$t0@@19 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 282259) (let ((anon4_Else_correct@@3  (=> (and (not $abort_flag@2@@4) (= inline$$1_Roles_has_role$0$$ret0@1@@4 inline$$1_Roles_has_role$0$$ret0@1@@4)) (and (=> (= (ControlFlow 0 208979) (- 0 282698)) (forall ((addr@@258 Int) ) (!  (=> (|$IsValid'address'| addr@@258) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@258) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@258)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@258) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@258)) 0))))
 :qid |Rolescvc4bpl.8844:15|
 :skolemid |274|
))) (=> (forall ((addr@@259 Int) ) (!  (=> (|$IsValid'address'| addr@@259) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@259) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@259)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@259) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@259)) 0))))
 :qid |Rolescvc4bpl.8844:15|
 :skolemid |274|
)) (and (=> (= (ControlFlow 0 208979) (- 0 282747)) (forall ((addr@@260 Int) ) (!  (=> (|$IsValid'address'| addr@@260) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@260) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@260)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@260) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@260)) 1))))
 :qid |Rolescvc4bpl.8848:15|
 :skolemid |275|
))) (=> (forall ((addr@@261 Int) ) (!  (=> (|$IsValid'address'| addr@@261) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@261) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@261)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@261) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@261)) 1))))
 :qid |Rolescvc4bpl.8848:15|
 :skolemid |275|
)) (and (=> (= (ControlFlow 0 208979) (- 0 282796)) (forall ((addr@@262 Int) ) (!  (=> (|$IsValid'address'| addr@@262) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@262) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@262)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@262) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@262)) 3))))
 :qid |Rolescvc4bpl.8852:15|
 :skolemid |276|
))) (=> (forall ((addr@@263 Int) ) (!  (=> (|$IsValid'address'| addr@@263) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@263) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@263)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@263) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@263)) 3))))
 :qid |Rolescvc4bpl.8852:15|
 :skolemid |276|
)) (and (=> (= (ControlFlow 0 208979) (- 0 282845)) (forall ((addr@@264 Int) ) (!  (=> (|$IsValid'address'| addr@@264) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@264) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@264)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@264) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@264)) 4))))
 :qid |Rolescvc4bpl.8856:15|
 :skolemid |277|
))) (=> (forall ((addr@@265 Int) ) (!  (=> (|$IsValid'address'| addr@@265) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@265) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@265)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@265) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@265)) 4))))
 :qid |Rolescvc4bpl.8856:15|
 :skolemid |277|
)) (and (=> (= (ControlFlow 0 208979) (- 0 282894)) (forall ((addr@@266 Int) ) (!  (=> (|$IsValid'address'| addr@@266) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@266) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@266)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@266) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@266)) 2))))
 :qid |Rolescvc4bpl.8860:15|
 :skolemid |278|
))) (=> (forall ((addr@@267 Int) ) (!  (=> (|$IsValid'address'| addr@@267) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@267) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@267)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@267) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@267)) 2))))
 :qid |Rolescvc4bpl.8860:15|
 :skolemid |278|
)) (and (=> (= (ControlFlow 0 208979) (- 0 282943)) (forall ((addr@@268 Int) ) (!  (=> (|$IsValid'address'| addr@@268) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@268) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@268)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@268) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@268)) 5))))
 :qid |Rolescvc4bpl.8864:15|
 :skolemid |279|
))) (=> (forall ((addr@@269 Int) ) (!  (=> (|$IsValid'address'| addr@@269) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@269) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@269)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@269) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@269)) 5))))
 :qid |Rolescvc4bpl.8864:15|
 :skolemid |279|
)) (=> (= (ControlFlow 0 208979) (- 0 282992)) (forall ((addr@@270 Int) ) (!  (=> (|$IsValid'address'| addr@@270) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@270) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@270)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@270) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@270)) 6))))
 :qid |Rolescvc4bpl.8868:15|
 :skolemid |280|
))))))))))))))))))
(let ((anon4_Then_correct@@3 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@4  (=> $abort_flag@0@@17 (=> (and (and (= $abort_code@1@@17 $abort_code@1@@17) (= $abort_code@3@@4 $abort_code@1@@17)) (and (= $abort_flag@2@@4 true) (= inline$$1_Roles_has_role$0$$ret0@1@@4 inline$$1_Roles_has_role$0$$ret0@0@@4))) (and (=> (= (ControlFlow 0 208544) 208997) anon4_Then_correct@@3) (=> (= (ControlFlow 0 208544) 208979) anon4_Else_correct@@3))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@4  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@4 inline$$1_Roles_has_role$0$$t3@1@@4) (= $abort_code@3@@4 $abort_code@2@@4)) (and (= $abort_flag@2@@4 $abort_flag@1@@4) (= inline$$1_Roles_has_role$0$$ret0@1@@4 inline$$1_Roles_has_role$0$$t3@1@@4))) (and (=> (= (ControlFlow 0 208480) 208997) anon4_Then_correct@@3) (=> (= (ControlFlow 0 208480) 208979) anon4_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@4  (=> (and (and (and (not $abort_flag@0@@17) (= inline$$1_Roles_has_role$0$$t8@1@@4 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@4))) (and (= inline$$1_Roles_has_role$0$$t9@1@@4 (= inline$$1_Roles_has_role$0$$t8@1@@4 1)) (= inline$$1_Roles_has_role$0$$t9@1@@4 inline$$1_Roles_has_role$0$$t9@1@@4))) (and (and (= $abort_code@2@@4 $abort_code@1@@17) (= inline$$1_Roles_has_role$0$$t3@1@@4 inline$$1_Roles_has_role$0$$t9@1@@4)) (and (= $abort_flag@1@@4 $abort_flag@0@@17) (= (ControlFlow 0 208526) 208480)))) inline$$1_Roles_has_role$0$L3_correct@@4)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@4  (=> (= $abort_flag@0@@17 true) (=> (and (= $abort_code@1@@17 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@4 inline$$1_Roles_has_role$0$$t6@0@@4)) (and (=> (= (ControlFlow 0 208596) 208544) inline$$1_Roles_has_role$0$anon11_Then_correct@@4) (=> (= (ControlFlow 0 208596) 208526) inline$$1_Roles_has_role$0$anon11_Else_correct@@4))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4)) (= (ControlFlow 0 208594) 208596)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@4)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4)) (= $abort_flag@0@@17 false)) (and (= $abort_code@1@@17 $abort_code@0@@17) (= inline$$1_Roles_has_role$0$$t6@2@@4 inline$$1_Roles_has_role$0$$t6@1@@4))) (and (=> (= (ControlFlow 0 208498) 208544) inline$$1_Roles_has_role$0$anon11_Then_correct@@4) (=> (= (ControlFlow 0 208498) 208526) inline$$1_Roles_has_role$0$anon11_Else_correct@@4))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@4  (=> inline$$1_Roles_has_role$0$$t5@1@@4 (and (=> (= (ControlFlow 0 208484) 208594) inline$$1_Roles_has_role$0$anon10_Then_correct@@4) (=> (= (ControlFlow 0 208484) 208498) inline$$1_Roles_has_role$0$anon10_Else_correct@@4)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@4  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@4) (= false false)) (=> (and (and (= $abort_code@2@@4 $abort_code@0@@17) (= inline$$1_Roles_has_role$0$$t3@1@@4 false)) (and (= $abort_flag@1@@4 false) (= (ControlFlow 0 208468) 208480))) inline$$1_Roles_has_role$0$L3_correct@@4))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@4  (=> (and (= _$t0@@19 _$t0@@19) (= 1 1)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@4) (= inline$$1_Roles_has_role$0$$t4@0@@4 _$t0@@19)) (and (= inline$$1_Roles_has_role$0$$t4@0@@4 inline$$1_Roles_has_role$0$$t4@0@@4) (= inline$$1_Roles_has_role$0$$t5@1@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4)))) (and (=> (= (ControlFlow 0 208448) 208484) inline$$1_Roles_has_role$0$anon9_Then_correct@@4) (=> (= (ControlFlow 0 208448) 208468) inline$$1_Roles_has_role$0$anon9_Else_correct@@4))))))
(let ((anon0$1_correct@@19  (=> (|$IsValid'address'| _$t0@@19) (=> (and (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@21)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@21))
 :qid |Rolescvc4bpl.8811:20|
 :skolemid |273|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@21))
)) (= _$t0@@19 _$t0@@19)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 208602) 208448))) inline$$1_Roles_has_role$0$anon0_correct@@4))))
(let ((inline$$InitEventStore$0$anon0_correct@@19  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@21 T@$1_Event_EventHandle) ) (! (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@21)))
 (and (= (|l#Multiset_81661| stream@@20) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@20) v@@55) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 208066) 208602)) anon0$1_correct@@19)))
(let ((anon0_correct@@19  (=> (= (ControlFlow 0 282259) 208066) inline$$InitEventStore$0$anon0_correct@@19)))
anon0_correct@@19)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@5 () Bool)
(declare-fun $abort_flag@0@@18 () Bool)
(declare-fun $abort_code@1@@18 () Int)
(declare-fun $abort_code@3@@5 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@5 () Bool)
(declare-fun $abort_code@2@@5 () Int)
(declare-fun $abort_flag@1@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@5 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@5 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@5 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@5 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@5 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@18 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@5 () Bool)
(declare-fun _$t0@@20 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 283052) (let ((anon4_Else_correct@@4  (=> (and (not $abort_flag@2@@5) (= inline$$1_Roles_has_role$0$$ret0@1@@5 inline$$1_Roles_has_role$0$$ret0@1@@5)) (and (=> (= (ControlFlow 0 210007) (- 0 283491)) (forall ((addr@@271 Int) ) (!  (=> (|$IsValid'address'| addr@@271) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@271) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@271)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@271) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@271)) 0))))
 :qid |Rolescvc4bpl.8940:15|
 :skolemid |282|
))) (=> (forall ((addr@@272 Int) ) (!  (=> (|$IsValid'address'| addr@@272) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@272) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@272)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@272) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@272)) 0))))
 :qid |Rolescvc4bpl.8940:15|
 :skolemid |282|
)) (and (=> (= (ControlFlow 0 210007) (- 0 283540)) (forall ((addr@@273 Int) ) (!  (=> (|$IsValid'address'| addr@@273) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@273) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@273)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@273) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@273)) 1))))
 :qid |Rolescvc4bpl.8944:15|
 :skolemid |283|
))) (=> (forall ((addr@@274 Int) ) (!  (=> (|$IsValid'address'| addr@@274) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@274) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@274)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@274) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@274)) 1))))
 :qid |Rolescvc4bpl.8944:15|
 :skolemid |283|
)) (and (=> (= (ControlFlow 0 210007) (- 0 283589)) (forall ((addr@@275 Int) ) (!  (=> (|$IsValid'address'| addr@@275) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@275) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@275)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@275) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@275)) 3))))
 :qid |Rolescvc4bpl.8948:15|
 :skolemid |284|
))) (=> (forall ((addr@@276 Int) ) (!  (=> (|$IsValid'address'| addr@@276) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@276) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@276)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@276) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@276)) 3))))
 :qid |Rolescvc4bpl.8948:15|
 :skolemid |284|
)) (and (=> (= (ControlFlow 0 210007) (- 0 283638)) (forall ((addr@@277 Int) ) (!  (=> (|$IsValid'address'| addr@@277) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@277) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@277)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@277) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@277)) 4))))
 :qid |Rolescvc4bpl.8952:15|
 :skolemid |285|
))) (=> (forall ((addr@@278 Int) ) (!  (=> (|$IsValid'address'| addr@@278) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@278) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@278)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@278) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@278)) 4))))
 :qid |Rolescvc4bpl.8952:15|
 :skolemid |285|
)) (and (=> (= (ControlFlow 0 210007) (- 0 283687)) (forall ((addr@@279 Int) ) (!  (=> (|$IsValid'address'| addr@@279) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@279) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@279)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@279) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@279)) 2))))
 :qid |Rolescvc4bpl.8956:15|
 :skolemid |286|
))) (=> (forall ((addr@@280 Int) ) (!  (=> (|$IsValid'address'| addr@@280) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@280) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@280)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@280) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@280)) 2))))
 :qid |Rolescvc4bpl.8956:15|
 :skolemid |286|
)) (and (=> (= (ControlFlow 0 210007) (- 0 283736)) (forall ((addr@@281 Int) ) (!  (=> (|$IsValid'address'| addr@@281) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@281) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@281)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@281) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@281)) 5))))
 :qid |Rolescvc4bpl.8960:15|
 :skolemid |287|
))) (=> (forall ((addr@@282 Int) ) (!  (=> (|$IsValid'address'| addr@@282) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@282) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@282)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@282) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@282)) 5))))
 :qid |Rolescvc4bpl.8960:15|
 :skolemid |287|
)) (=> (= (ControlFlow 0 210007) (- 0 283785)) (forall ((addr@@283 Int) ) (!  (=> (|$IsValid'address'| addr@@283) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@283) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@283)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@283) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@283)) 6))))
 :qid |Rolescvc4bpl.8964:15|
 :skolemid |288|
))))))))))))))))))
(let ((anon4_Then_correct@@4 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@5  (=> $abort_flag@0@@18 (=> (and (and (= $abort_code@1@@18 $abort_code@1@@18) (= $abort_code@3@@5 $abort_code@1@@18)) (and (= $abort_flag@2@@5 true) (= inline$$1_Roles_has_role$0$$ret0@1@@5 inline$$1_Roles_has_role$0$$ret0@0@@5))) (and (=> (= (ControlFlow 0 209572) 210025) anon4_Then_correct@@4) (=> (= (ControlFlow 0 209572) 210007) anon4_Else_correct@@4))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@5  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@5 inline$$1_Roles_has_role$0$$t3@1@@5) (= $abort_code@3@@5 $abort_code@2@@5)) (and (= $abort_flag@2@@5 $abort_flag@1@@5) (= inline$$1_Roles_has_role$0$$ret0@1@@5 inline$$1_Roles_has_role$0$$t3@1@@5))) (and (=> (= (ControlFlow 0 209508) 210025) anon4_Then_correct@@4) (=> (= (ControlFlow 0 209508) 210007) anon4_Else_correct@@4)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@5  (=> (and (and (and (not $abort_flag@0@@18) (= inline$$1_Roles_has_role$0$$t8@1@@5 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@5))) (and (= inline$$1_Roles_has_role$0$$t9@1@@5 (= inline$$1_Roles_has_role$0$$t8@1@@5 4)) (= inline$$1_Roles_has_role$0$$t9@1@@5 inline$$1_Roles_has_role$0$$t9@1@@5))) (and (and (= $abort_code@2@@5 $abort_code@1@@18) (= inline$$1_Roles_has_role$0$$t3@1@@5 inline$$1_Roles_has_role$0$$t9@1@@5)) (and (= $abort_flag@1@@5 $abort_flag@0@@18) (= (ControlFlow 0 209554) 209508)))) inline$$1_Roles_has_role$0$L3_correct@@5)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@5  (=> (= $abort_flag@0@@18 true) (=> (and (= $abort_code@1@@18 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@5 inline$$1_Roles_has_role$0$$t6@0@@5)) (and (=> (= (ControlFlow 0 209624) 209572) inline$$1_Roles_has_role$0$anon11_Then_correct@@5) (=> (= (ControlFlow 0 209624) 209554) inline$$1_Roles_has_role$0$anon11_Else_correct@@5))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@5  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5)) (= (ControlFlow 0 209622) 209624)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@5)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@5  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5)) (= $abort_flag@0@@18 false)) (and (= $abort_code@1@@18 $abort_code@0@@18) (= inline$$1_Roles_has_role$0$$t6@2@@5 inline$$1_Roles_has_role$0$$t6@1@@5))) (and (=> (= (ControlFlow 0 209526) 209572) inline$$1_Roles_has_role$0$anon11_Then_correct@@5) (=> (= (ControlFlow 0 209526) 209554) inline$$1_Roles_has_role$0$anon11_Else_correct@@5))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@5  (=> inline$$1_Roles_has_role$0$$t5@1@@5 (and (=> (= (ControlFlow 0 209512) 209622) inline$$1_Roles_has_role$0$anon10_Then_correct@@5) (=> (= (ControlFlow 0 209512) 209526) inline$$1_Roles_has_role$0$anon10_Else_correct@@5)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@5  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@5) (= false false)) (=> (and (and (= $abort_code@2@@5 $abort_code@0@@18) (= inline$$1_Roles_has_role$0$$t3@1@@5 false)) (and (= $abort_flag@1@@5 false) (= (ControlFlow 0 209496) 209508))) inline$$1_Roles_has_role$0$L3_correct@@5))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@5  (=> (and (= _$t0@@20 _$t0@@20) (= 4 4)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@5) (= inline$$1_Roles_has_role$0$$t4@0@@5 _$t0@@20)) (and (= inline$$1_Roles_has_role$0$$t4@0@@5 inline$$1_Roles_has_role$0$$t4@0@@5) (= inline$$1_Roles_has_role$0$$t5@1@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5)))) (and (=> (= (ControlFlow 0 209476) 209512) inline$$1_Roles_has_role$0$anon9_Then_correct@@5) (=> (= (ControlFlow 0 209476) 209496) inline$$1_Roles_has_role$0$anon9_Else_correct@@5))))))
(let ((anon0$1_correct@@20  (=> (|$IsValid'address'| _$t0@@20) (=> (and (and (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@22)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@22))
 :qid |Rolescvc4bpl.8907:20|
 :skolemid |281|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@22))
)) (= _$t0@@20 _$t0@@20)) (and (|$IsValid'u64'| 4) (= (ControlFlow 0 209630) 209476))) inline$$1_Roles_has_role$0$anon0_correct@@5))))
(let ((inline$$InitEventStore$0$anon0_correct@@20  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@22 T@$1_Event_EventHandle) ) (! (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@22)))
 (and (= (|l#Multiset_81661| stream@@21) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@21) v@@56) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 209094) 209630)) anon0$1_correct@@20)))
(let ((anon0_correct@@20  (=> (= (ControlFlow 0 283052) 209094) inline$$InitEventStore$0$anon0_correct@@20)))
anon0_correct@@20)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@6 () Bool)
(declare-fun $abort_flag@0@@19 () Bool)
(declare-fun $abort_code@1@@19 () Int)
(declare-fun $abort_code@3@@6 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1@@6 () Bool)
(declare-fun $abort_code@2@@6 () Int)
(declare-fun $abort_flag@1@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@6 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@6 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@6 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@6 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@6 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@19 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@6 () Bool)
(declare-fun _$t0@@21 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 283845) (let ((anon4_Else_correct@@5  (=> (and (not $abort_flag@2@@6) (= inline$$1_Roles_has_role$0$$ret0@1@@6 inline$$1_Roles_has_role$0$$ret0@1@@6)) (and (=> (= (ControlFlow 0 211035) (- 0 284284)) (forall ((addr@@284 Int) ) (!  (=> (|$IsValid'address'| addr@@284) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@284) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@284)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@284) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@284)) 0))))
 :qid |Rolescvc4bpl.9036:15|
 :skolemid |290|
))) (=> (forall ((addr@@285 Int) ) (!  (=> (|$IsValid'address'| addr@@285) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@285) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@285)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@285) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@285)) 0))))
 :qid |Rolescvc4bpl.9036:15|
 :skolemid |290|
)) (and (=> (= (ControlFlow 0 211035) (- 0 284333)) (forall ((addr@@286 Int) ) (!  (=> (|$IsValid'address'| addr@@286) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@286) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@286)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@286) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@286)) 1))))
 :qid |Rolescvc4bpl.9040:15|
 :skolemid |291|
))) (=> (forall ((addr@@287 Int) ) (!  (=> (|$IsValid'address'| addr@@287) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@287) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@287)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@287) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@287)) 1))))
 :qid |Rolescvc4bpl.9040:15|
 :skolemid |291|
)) (and (=> (= (ControlFlow 0 211035) (- 0 284382)) (forall ((addr@@288 Int) ) (!  (=> (|$IsValid'address'| addr@@288) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@288) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@288)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@288) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@288)) 3))))
 :qid |Rolescvc4bpl.9044:15|
 :skolemid |292|
))) (=> (forall ((addr@@289 Int) ) (!  (=> (|$IsValid'address'| addr@@289) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@289) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@289)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@289) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@289)) 3))))
 :qid |Rolescvc4bpl.9044:15|
 :skolemid |292|
)) (and (=> (= (ControlFlow 0 211035) (- 0 284431)) (forall ((addr@@290 Int) ) (!  (=> (|$IsValid'address'| addr@@290) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@290) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@290)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@290) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@290)) 4))))
 :qid |Rolescvc4bpl.9048:15|
 :skolemid |293|
))) (=> (forall ((addr@@291 Int) ) (!  (=> (|$IsValid'address'| addr@@291) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@291) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@291)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@291) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@291)) 4))))
 :qid |Rolescvc4bpl.9048:15|
 :skolemid |293|
)) (and (=> (= (ControlFlow 0 211035) (- 0 284480)) (forall ((addr@@292 Int) ) (!  (=> (|$IsValid'address'| addr@@292) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@292) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@292)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@292) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@292)) 2))))
 :qid |Rolescvc4bpl.9052:15|
 :skolemid |294|
))) (=> (forall ((addr@@293 Int) ) (!  (=> (|$IsValid'address'| addr@@293) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@293) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@293)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@293) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@293)) 2))))
 :qid |Rolescvc4bpl.9052:15|
 :skolemid |294|
)) (and (=> (= (ControlFlow 0 211035) (- 0 284529)) (forall ((addr@@294 Int) ) (!  (=> (|$IsValid'address'| addr@@294) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@294) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@294)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@294) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@294)) 5))))
 :qid |Rolescvc4bpl.9056:15|
 :skolemid |295|
))) (=> (forall ((addr@@295 Int) ) (!  (=> (|$IsValid'address'| addr@@295) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@295) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@295)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@295) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@295)) 5))))
 :qid |Rolescvc4bpl.9056:15|
 :skolemid |295|
)) (=> (= (ControlFlow 0 211035) (- 0 284578)) (forall ((addr@@296 Int) ) (!  (=> (|$IsValid'address'| addr@@296) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@296) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@296)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@296) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@296)) 6))))
 :qid |Rolescvc4bpl.9060:15|
 :skolemid |296|
))))))))))))))))))
(let ((anon4_Then_correct@@5 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@6  (=> $abort_flag@0@@19 (=> (and (and (= $abort_code@1@@19 $abort_code@1@@19) (= $abort_code@3@@6 $abort_code@1@@19)) (and (= $abort_flag@2@@6 true) (= inline$$1_Roles_has_role$0$$ret0@1@@6 inline$$1_Roles_has_role$0$$ret0@0@@6))) (and (=> (= (ControlFlow 0 210600) 211053) anon4_Then_correct@@5) (=> (= (ControlFlow 0 210600) 211035) anon4_Else_correct@@5))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@6  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1@@6 inline$$1_Roles_has_role$0$$t3@1@@6) (= $abort_code@3@@6 $abort_code@2@@6)) (and (= $abort_flag@2@@6 $abort_flag@1@@6) (= inline$$1_Roles_has_role$0$$ret0@1@@6 inline$$1_Roles_has_role$0$$t3@1@@6))) (and (=> (= (ControlFlow 0 210536) 211053) anon4_Then_correct@@5) (=> (= (ControlFlow 0 210536) 211035) anon4_Else_correct@@5)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@6  (=> (and (and (and (not $abort_flag@0@@19) (= inline$$1_Roles_has_role$0$$t8@1@@6 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@6))) (and (= inline$$1_Roles_has_role$0$$t9@1@@6 (= inline$$1_Roles_has_role$0$$t8@1@@6 3)) (= inline$$1_Roles_has_role$0$$t9@1@@6 inline$$1_Roles_has_role$0$$t9@1@@6))) (and (and (= $abort_code@2@@6 $abort_code@1@@19) (= inline$$1_Roles_has_role$0$$t3@1@@6 inline$$1_Roles_has_role$0$$t9@1@@6)) (and (= $abort_flag@1@@6 $abort_flag@0@@19) (= (ControlFlow 0 210582) 210536)))) inline$$1_Roles_has_role$0$L3_correct@@6)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@6  (=> (= $abort_flag@0@@19 true) (=> (and (= $abort_code@1@@19 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@6 inline$$1_Roles_has_role$0$$t6@0@@6)) (and (=> (= (ControlFlow 0 210652) 210600) inline$$1_Roles_has_role$0$anon11_Then_correct@@6) (=> (= (ControlFlow 0 210652) 210582) inline$$1_Roles_has_role$0$anon11_Else_correct@@6))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@6  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6)) (= (ControlFlow 0 210650) 210652)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@6)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@6  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6)) (= $abort_flag@0@@19 false)) (and (= $abort_code@1@@19 $abort_code@0@@19) (= inline$$1_Roles_has_role$0$$t6@2@@6 inline$$1_Roles_has_role$0$$t6@1@@6))) (and (=> (= (ControlFlow 0 210554) 210600) inline$$1_Roles_has_role$0$anon11_Then_correct@@6) (=> (= (ControlFlow 0 210554) 210582) inline$$1_Roles_has_role$0$anon11_Else_correct@@6))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@6  (=> inline$$1_Roles_has_role$0$$t5@1@@6 (and (=> (= (ControlFlow 0 210540) 210650) inline$$1_Roles_has_role$0$anon10_Then_correct@@6) (=> (= (ControlFlow 0 210540) 210554) inline$$1_Roles_has_role$0$anon10_Else_correct@@6)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@6  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@6) (= false false)) (=> (and (and (= $abort_code@2@@6 $abort_code@0@@19) (= inline$$1_Roles_has_role$0$$t3@1@@6 false)) (and (= $abort_flag@1@@6 false) (= (ControlFlow 0 210524) 210536))) inline$$1_Roles_has_role$0$L3_correct@@6))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@6  (=> (and (= _$t0@@21 _$t0@@21) (= 3 3)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@6) (= inline$$1_Roles_has_role$0$$t4@0@@6 _$t0@@21)) (and (= inline$$1_Roles_has_role$0$$t4@0@@6 inline$$1_Roles_has_role$0$$t4@0@@6) (= inline$$1_Roles_has_role$0$$t5@1@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6)))) (and (=> (= (ControlFlow 0 210504) 210540) inline$$1_Roles_has_role$0$anon9_Then_correct@@6) (=> (= (ControlFlow 0 210504) 210524) inline$$1_Roles_has_role$0$anon9_Else_correct@@6))))))
(let ((anon0$1_correct@@21  (=> (|$IsValid'address'| _$t0@@21) (=> (and (and (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@23)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@23))
 :qid |Rolescvc4bpl.9003:20|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@23))
)) (= _$t0@@21 _$t0@@21)) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 210658) 210504))) inline$$1_Roles_has_role$0$anon0_correct@@6))))
(let ((inline$$InitEventStore$0$anon0_correct@@21  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@23 T@$1_Event_EventHandle) ) (! (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@23)))
 (and (= (|l#Multiset_81661| stream@@22) 0) (forall ((v@@57 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@22) v@@57) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 210122) 210658)) anon0$1_correct@@21)))
(let ((anon0_correct@@21  (=> (= (ControlFlow 0 283845) 210122) inline$$InitEventStore$0$anon0_correct@@21)))
anon0_correct@@21)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@1 () Int)
(declare-fun _$t1@@3 () Int)
(declare-fun $t3@@2 () Int)
(declare-fun $t6@@9 () Int)
(declare-fun $t9@@9 () Bool)
(declare-fun $t5@@3 () Bool)
(declare-fun $t4@@2 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_112037)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_112037)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_112037)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@22 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 284638) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 212022) (- 0 285409)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@2)) 5)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@2)) 5))) (=> (= (ControlFlow 0 212022) (- 0 285463)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $t6@@9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $t6@@9))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@3) (= 6 $t6@@9))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@2)) (= 5 $t6@@9))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@2)) 5)) (= 3 $t6@@9))))))))
(let ((anon10_Then_correct@@2  (=> $t9@@9 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@3) (= 6 $t6@@9)) (and (= $t6@@9 $t6@@9) (= (ControlFlow 0 211854) 212022))) L2_correct@@1))))
(let ((anon9_Then_correct  (=> (and (and $t5@@3 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t6@@9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@2)) 5)) (= 3 $t6@@9)))) (and (= $t6@@9 $t6@@9) (= (ControlFlow 0 212074) 212022))) L2_correct@@1)))
(let ((anon7_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) _$t1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) _$t1@@3)) 6)) (and (=> (= (ControlFlow 0 211812) (- 0 285029)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 211812) (- 0 285041)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 211812) (- 0 285059)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@3))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@3)) (and (=> (= (ControlFlow 0 211812) (- 0 285070)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@2))) (and (=> (= (ControlFlow 0 211812) (- 0 285082)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@2)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@2)) 5))) (and (=> (= (ControlFlow 0 211812) (- 0 285100)) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) _$t1@@3)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) _$t1@@3) (and (=> (= (ControlFlow 0 211812) (- 0 285109)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) _$t1@@3)) 6)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) _$t1@@3)) 6) (and (=> (= (ControlFlow 0 211812) (- 0 285124)) (forall ((addr@@297 Int) ) (!  (=> (|$IsValid'address'| addr@@297) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@297) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@297)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@297) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@297)) 0))))
 :qid |Rolescvc4bpl.9280:15|
 :skolemid |298|
))) (=> (forall ((addr@@298 Int) ) (!  (=> (|$IsValid'address'| addr@@298) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@298) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@298)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@298) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@298)) 0))))
 :qid |Rolescvc4bpl.9280:15|
 :skolemid |298|
)) (and (=> (= (ControlFlow 0 211812) (- 0 285171)) (forall ((addr@@299 Int) ) (!  (=> (|$IsValid'address'| addr@@299) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@299) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@299)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@299) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@299)) 1))))
 :qid |Rolescvc4bpl.9284:15|
 :skolemid |299|
))) (=> (forall ((addr@@300 Int) ) (!  (=> (|$IsValid'address'| addr@@300) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@300) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@300)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@300) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@300)) 1))))
 :qid |Rolescvc4bpl.9284:15|
 :skolemid |299|
)) (and (=> (= (ControlFlow 0 211812) (- 0 285218)) (forall ((addr@@301 Int) ) (!  (=> (|$IsValid'address'| addr@@301) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@301) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@301)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@301) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@301)) 3))))
 :qid |Rolescvc4bpl.9288:15|
 :skolemid |300|
))) (=> (forall ((addr@@302 Int) ) (!  (=> (|$IsValid'address'| addr@@302) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@302) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@302)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@302) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@302)) 3))))
 :qid |Rolescvc4bpl.9288:15|
 :skolemid |300|
)) (and (=> (= (ControlFlow 0 211812) (- 0 285265)) (forall ((addr@@303 Int) ) (!  (=> (|$IsValid'address'| addr@@303) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@303) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@303)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@303) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@303)) 4))))
 :qid |Rolescvc4bpl.9292:15|
 :skolemid |301|
))) (=> (forall ((addr@@304 Int) ) (!  (=> (|$IsValid'address'| addr@@304) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@304) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@304)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@304) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@304)) 4))))
 :qid |Rolescvc4bpl.9292:15|
 :skolemid |301|
)) (and (=> (= (ControlFlow 0 211812) (- 0 285312)) (forall ((addr@@305 Int) ) (!  (=> (|$IsValid'address'| addr@@305) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@305) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@305)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@305) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@305)) 2))))
 :qid |Rolescvc4bpl.9296:15|
 :skolemid |302|
))) (=> (forall ((addr@@306 Int) ) (!  (=> (|$IsValid'address'| addr@@306) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@306) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@306)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@306) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@306)) 2))))
 :qid |Rolescvc4bpl.9296:15|
 :skolemid |302|
)) (=> (= (ControlFlow 0 211812) (- 0 285359)) (forall ((addr@@307 Int) ) (!  (=> (|$IsValid'address'| addr@@307) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@307) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@1) addr@@307)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@307) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@307)) 5))))
 :qid |Rolescvc4bpl.9300:15|
 :skolemid |303|
))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_Roles_RoleId_$memory@1@@2 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@3 false) (|contents#$Memory_112037| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@1@@2) (= (ControlFlow 0 211380) 211812))) anon7_correct)))
(let ((anon11_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@1| (= $1_Roles_RoleId_$memory@0@@2 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@3 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@3 |$temp_0'$1_Roles_RoleId'@0@@1|)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@0@@2) (= (ControlFlow 0 211826) 211812))) anon7_correct)))
(let ((anon10_Else_correct@@2  (=> (not $t9@@9) (and (=> (= (ControlFlow 0 211366) 211826) anon11_Then_correct@@3) (=> (= (ControlFlow 0 211366) 211380) anon11_Else_correct@@3)))))
(let ((anon9_Else_correct  (=> (not $t5@@3) (=> (and (|$IsValid'u64'| 6) (= $t8@@3 _$t1@@3)) (and (=> (= (ControlFlow 0 211360) (- 0 284879)) (=> (= 6 0) (= $t8@@3 173345816))) (=> (=> (= 6 0) (= $t8@@3 173345816)) (and (=> (= (ControlFlow 0 211360) (- 0 284895)) (=> (= 6 1) (= $t8@@3 186537453))) (=> (=> (= 6 1) (= $t8@@3 186537453)) (and (=> (= (ControlFlow 0 211360) (- 0 284911)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 _$t1@@3)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 _$t1@@3) (=> (= $t9@@9 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@3)) (and (=> (= (ControlFlow 0 211360) 211854) anon10_Then_correct@@2) (=> (= (ControlFlow 0 211360) 211366) anon10_Else_correct@@2)))))))))))))
(let ((anon0$1_correct@@22  (=> (and (|$IsValid'address'| _$t0@@22) (|$IsValid'address'| _$t1@@3)) (=> (and (and (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@24)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@24))
 :qid |Rolescvc4bpl.9111:20|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@24))
)) (= $t2@@1 _$t0@@22)) (and (= $t3@@2 _$t0@@22) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 _$t1@@3))) (and (and (= _$t0@@22 _$t0@@22) (= _$t1@@3 _$t1@@3)) (and (= $t4@@2 _$t0@@22) (= $t5@@3  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@2)) 5))))))) (and (=> (= (ControlFlow 0 211282) 212074) anon9_Then_correct) (=> (= (ControlFlow 0 211282) 211360) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@22  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@24 T@$1_Event_EventHandle) ) (! (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@24)))
 (and (= (|l#Multiset_81661| stream@@23) 0) (forall ((v@@58 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@23) v@@58) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 211152) 211282)) anon0$1_correct@@22)))
(let ((anon0_correct@@22  (=> (= (ControlFlow 0 284638) 211152) inline$$InitEventStore$0$anon0_correct@@22)))
anon0_correct@@22))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@2 () Int)
(declare-fun _$t0@@23 () Int)
(declare-fun _$t1@@4 () Int)
(declare-fun $t3@@3 () Int)
(declare-fun $t6@@10 () Int)
(declare-fun $t9@@10 () Bool)
(declare-fun $t5@@4 () Bool)
(declare-fun $t4@@3 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_112037)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_112037)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_112037)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@4 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 285572) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 213170) (- 0 286401)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= _$t0@@23 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= _$t0@@23 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= _$t0@@23 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= _$t0@@23 186537453))) (=> (= (ControlFlow 0 213170) (- 0 286477)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@2)) (= 5 $t6@@10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@2)) 1)) (= 3 $t6@@10))) (and (not (= _$t0@@23 186537453)) (= 2 $t6@@10))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@4) (= 6 $t6@@10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t6@@10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@3)) 1)) (= 3 $t6@@10))) (and (not (= _$t0@@23 186537453)) (= 2 $t6@@10))))))))
(let ((anon10_Then_correct@@3  (=> $t9@@10 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@4) (= 6 $t6@@10)) (and (= $t6@@10 $t6@@10) (= (ControlFlow 0 212938) 213170))) L2_correct@@2))))
(let ((anon9_Then_correct@@0  (=> (and (and $t5@@4 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@3)) (= 5 $t6@@10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@3)) 1)) (= 3 $t6@@10))) (and (not (= _$t0@@23 186537453)) (= 2 $t6@@10)))) (and (= $t6@@10 $t6@@10) (= (ControlFlow 0 213242) 213170))) L2_correct@@2)))
(let ((anon7_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) _$t1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) _$t1@@4)) 2)) (and (=> (= (ControlFlow 0 212896) (- 0 285993)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@2))) (and (=> (= (ControlFlow 0 212896) (- 0 286005)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (and (=> (= (ControlFlow 0 212896) (- 0 286023)) (not (not (= _$t0@@23 186537453)))) (=> (not (not (= _$t0@@23 186537453))) (and (=> (= (ControlFlow 0 212896) (- 0 286037)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@4))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@4)) (and (=> (= (ControlFlow 0 212896) (- 0 286048)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 212896) (- 0 286060)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (and (=> (= (ControlFlow 0 212896) (- 0 286078)) (not (not (= _$t0@@23 186537453)))) (=> (not (not (= _$t0@@23 186537453))) (and (=> (= (ControlFlow 0 212896) (- 0 286092)) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) _$t1@@4)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) _$t1@@4) (and (=> (= (ControlFlow 0 212896) (- 0 286101)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) _$t1@@4)) 2)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) _$t1@@4)) 2) (and (=> (= (ControlFlow 0 212896) (- 0 286116)) (forall ((addr@@308 Int) ) (!  (=> (|$IsValid'address'| addr@@308) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@308) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@308)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@308) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@308)) 0))))
 :qid |Rolescvc4bpl.9538:15|
 :skolemid |305|
))) (=> (forall ((addr@@309 Int) ) (!  (=> (|$IsValid'address'| addr@@309) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@309) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@309)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@309) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@309)) 0))))
 :qid |Rolescvc4bpl.9538:15|
 :skolemid |305|
)) (and (=> (= (ControlFlow 0 212896) (- 0 286163)) (forall ((addr@@310 Int) ) (!  (=> (|$IsValid'address'| addr@@310) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@310) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@310)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@310) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@310)) 1))))
 :qid |Rolescvc4bpl.9542:15|
 :skolemid |306|
))) (=> (forall ((addr@@311 Int) ) (!  (=> (|$IsValid'address'| addr@@311) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@311) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@311)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@311) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@311)) 1))))
 :qid |Rolescvc4bpl.9542:15|
 :skolemid |306|
)) (and (=> (= (ControlFlow 0 212896) (- 0 286210)) (forall ((addr@@312 Int) ) (!  (=> (|$IsValid'address'| addr@@312) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@312) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@312)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@312) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@312)) 3))))
 :qid |Rolescvc4bpl.9546:15|
 :skolemid |307|
))) (=> (forall ((addr@@313 Int) ) (!  (=> (|$IsValid'address'| addr@@313) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@313) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@313)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@313) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@313)) 3))))
 :qid |Rolescvc4bpl.9546:15|
 :skolemid |307|
)) (and (=> (= (ControlFlow 0 212896) (- 0 286257)) (forall ((addr@@314 Int) ) (!  (=> (|$IsValid'address'| addr@@314) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@314) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@314)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@314) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@314)) 4))))
 :qid |Rolescvc4bpl.9550:15|
 :skolemid |308|
))) (=> (forall ((addr@@315 Int) ) (!  (=> (|$IsValid'address'| addr@@315) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@315) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@315)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@315) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@315)) 4))))
 :qid |Rolescvc4bpl.9550:15|
 :skolemid |308|
)) (and (=> (= (ControlFlow 0 212896) (- 0 286304)) (forall ((addr@@316 Int) ) (!  (=> (|$IsValid'address'| addr@@316) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@316) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@316)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@316) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@316)) 5))))
 :qid |Rolescvc4bpl.9554:15|
 :skolemid |309|
))) (=> (forall ((addr@@317 Int) ) (!  (=> (|$IsValid'address'| addr@@317) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@317) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@317)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@317) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@317)) 5))))
 :qid |Rolescvc4bpl.9554:15|
 :skolemid |309|
)) (=> (= (ControlFlow 0 212896) (- 0 286351)) (forall ((addr@@318 Int) ) (!  (=> (|$IsValid'address'| addr@@318) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@318) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@2) addr@@318)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@318) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@318)) 6))))
 :qid |Rolescvc4bpl.9558:15|
 :skolemid |310|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@2|) (= $1_Roles_RoleId_$memory@1@@3 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@4 false) (|contents#$Memory_112037| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@1@@3) (= (ControlFlow 0 212436) 212896))) anon7_correct@@0)))
(let ((anon11_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@2| (= $1_Roles_RoleId_$memory@0@@3 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@4 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@4 |$temp_0'$1_Roles_RoleId'@0@@2|)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@0@@3) (= (ControlFlow 0 212910) 212896))) anon7_correct@@0)))
(let ((anon10_Else_correct@@3  (=> (not $t9@@10) (and (=> (= (ControlFlow 0 212422) 212910) anon11_Then_correct@@4) (=> (= (ControlFlow 0 212422) 212436) anon11_Else_correct@@4)))))
(let ((anon9_Else_correct@@0  (=> (not $t5@@4) (=> (and (|$IsValid'u64'| 2) (= $t8@@4 _$t1@@4)) (and (=> (= (ControlFlow 0 212416) (- 0 285843)) (=> (= 2 0) (= $t8@@4 173345816))) (=> (=> (= 2 0) (= $t8@@4 173345816)) (and (=> (= (ControlFlow 0 212416) (- 0 285859)) (=> (= 2 1) (= $t8@@4 186537453))) (=> (=> (= 2 1) (= $t8@@4 186537453)) (and (=> (= (ControlFlow 0 212416) (- 0 285875)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 _$t1@@4)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 _$t1@@4) (=> (= $t9@@10 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@4)) (and (=> (= (ControlFlow 0 212416) 212938) anon10_Then_correct@@3) (=> (= (ControlFlow 0 212416) 212422) anon10_Else_correct@@3)))))))))))))
(let ((anon0$1_correct@@23  (=> (and (|$IsValid'address'| _$t0@@23) (|$IsValid'address'| _$t1@@4)) (=> (and (and (and (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@25)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@25))
 :qid |Rolescvc4bpl.9359:20|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@25))
)) (= $t2@@2 _$t0@@23)) (and (= $t3@@3 _$t0@@23) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 _$t1@@4))) (and (and (= _$t0@@23 _$t0@@23) (= _$t1@@4 _$t1@@4)) (and (= $t4@@3 _$t0@@23) (= $t5@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@3)) 1))) (not (= _$t0@@23 186537453))))))) (and (=> (= (ControlFlow 0 212338) 213242) anon9_Then_correct@@0) (=> (= (ControlFlow 0 212338) 212416) anon9_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@23  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@25 T@$1_Event_EventHandle) ) (! (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@25)))
 (and (= (|l#Multiset_81661| stream@@24) 0) (forall ((v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@24) v@@59) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 212196) 212338)) anon0$1_correct@@23)))
(let ((anon0_correct@@23  (=> (= (ControlFlow 0 285572) 212196) inline$$InitEventStore$0$anon0_correct@@23)))
anon0_correct@@23))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@3 () Int)
(declare-fun _$t0@@24 () Int)
(declare-fun _$t1@@5 () Int)
(declare-fun $t3@@4 () Int)
(declare-fun $t6@@11 () Int)
(declare-fun $t9@@11 () Bool)
(declare-fun $t5@@5 () Bool)
(declare-fun $t4@@4 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_112037)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_112037)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_112037)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@5 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 286624) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 214338) (- 0 287453)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= _$t0@@24 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@4)) 1))) (not (= _$t0@@24 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= _$t0@@24 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@4)) 1))) (not (= _$t0@@24 186537453))) (=> (= (ControlFlow 0 214338) (- 0 287529)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@3)) (= 5 $t6@@11)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@3)) 1)) (= 3 $t6@@11))) (and (not (= _$t0@@24 186537453)) (= 2 $t6@@11))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@5) (= 6 $t6@@11))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@4)) (= 5 $t6@@11))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@4)) 1)) (= 3 $t6@@11))) (and (not (= _$t0@@24 186537453)) (= 2 $t6@@11))))))))
(let ((anon10_Then_correct@@4  (=> $t9@@11 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@5) (= 6 $t6@@11)) (and (= $t6@@11 $t6@@11) (= (ControlFlow 0 214106) 214338))) L2_correct@@3))))
(let ((anon9_Then_correct@@1  (=> (and (and $t5@@5 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@4)) (= 5 $t6@@11)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@4)) 1)) (= 3 $t6@@11))) (and (not (= _$t0@@24 186537453)) (= 2 $t6@@11)))) (and (= $t6@@11 $t6@@11) (= (ControlFlow 0 214410) 214338))) L2_correct@@3)))
(let ((anon7_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) _$t1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) _$t1@@5)) 5)) (and (=> (= (ControlFlow 0 214064) (- 0 287045)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@3))) (and (=> (= (ControlFlow 0 214064) (- 0 287057)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (and (=> (= (ControlFlow 0 214064) (- 0 287075)) (not (not (= _$t0@@24 186537453)))) (=> (not (not (= _$t0@@24 186537453))) (and (=> (= (ControlFlow 0 214064) (- 0 287089)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@5)) (and (=> (= (ControlFlow 0 214064) (- 0 287100)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@4))) (and (=> (= (ControlFlow 0 214064) (- 0 287112)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@4)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@4)) 1))) (and (=> (= (ControlFlow 0 214064) (- 0 287130)) (not (not (= _$t0@@24 186537453)))) (=> (not (not (= _$t0@@24 186537453))) (and (=> (= (ControlFlow 0 214064) (- 0 287144)) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) _$t1@@5)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) _$t1@@5) (and (=> (= (ControlFlow 0 214064) (- 0 287153)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) _$t1@@5)) 5)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) _$t1@@5)) 5) (and (=> (= (ControlFlow 0 214064) (- 0 287168)) (forall ((addr@@319 Int) ) (!  (=> (|$IsValid'address'| addr@@319) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@319) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@319)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@319) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@319)) 0))))
 :qid |Rolescvc4bpl.9796:15|
 :skolemid |312|
))) (=> (forall ((addr@@320 Int) ) (!  (=> (|$IsValid'address'| addr@@320) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@320) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@320)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@320) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@320)) 0))))
 :qid |Rolescvc4bpl.9796:15|
 :skolemid |312|
)) (and (=> (= (ControlFlow 0 214064) (- 0 287215)) (forall ((addr@@321 Int) ) (!  (=> (|$IsValid'address'| addr@@321) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@321) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@321)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@321) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@321)) 1))))
 :qid |Rolescvc4bpl.9800:15|
 :skolemid |313|
))) (=> (forall ((addr@@322 Int) ) (!  (=> (|$IsValid'address'| addr@@322) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@322) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@322)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@322) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@322)) 1))))
 :qid |Rolescvc4bpl.9800:15|
 :skolemid |313|
)) (and (=> (= (ControlFlow 0 214064) (- 0 287262)) (forall ((addr@@323 Int) ) (!  (=> (|$IsValid'address'| addr@@323) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@323) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@323)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@323) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@323)) 3))))
 :qid |Rolescvc4bpl.9804:15|
 :skolemid |314|
))) (=> (forall ((addr@@324 Int) ) (!  (=> (|$IsValid'address'| addr@@324) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@324) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@324)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@324) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@324)) 3))))
 :qid |Rolescvc4bpl.9804:15|
 :skolemid |314|
)) (and (=> (= (ControlFlow 0 214064) (- 0 287309)) (forall ((addr@@325 Int) ) (!  (=> (|$IsValid'address'| addr@@325) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@325) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@325)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@325) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@325)) 4))))
 :qid |Rolescvc4bpl.9808:15|
 :skolemid |315|
))) (=> (forall ((addr@@326 Int) ) (!  (=> (|$IsValid'address'| addr@@326) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@326) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@326)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@326) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@326)) 4))))
 :qid |Rolescvc4bpl.9808:15|
 :skolemid |315|
)) (and (=> (= (ControlFlow 0 214064) (- 0 287356)) (forall ((addr@@327 Int) ) (!  (=> (|$IsValid'address'| addr@@327) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@327) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@327)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@327) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@327)) 2))))
 :qid |Rolescvc4bpl.9812:15|
 :skolemid |316|
))) (=> (forall ((addr@@328 Int) ) (!  (=> (|$IsValid'address'| addr@@328) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@328) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@328)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@328) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@328)) 2))))
 :qid |Rolescvc4bpl.9812:15|
 :skolemid |316|
)) (=> (= (ControlFlow 0 214064) (- 0 287403)) (forall ((addr@@329 Int) ) (!  (=> (|$IsValid'address'| addr@@329) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@329) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@3) addr@@329)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@329) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@329)) 6))))
 :qid |Rolescvc4bpl.9816:15|
 :skolemid |317|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@3|) (= $1_Roles_RoleId_$memory@1@@4 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@5 false) (|contents#$Memory_112037| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@1@@4) (= (ControlFlow 0 213604) 214064))) anon7_correct@@1)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@3| (= $1_Roles_RoleId_$memory@0@@4 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@5 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@5 |$temp_0'$1_Roles_RoleId'@0@@3|)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@0@@4) (= (ControlFlow 0 214078) 214064))) anon7_correct@@1)))
(let ((anon10_Else_correct@@4  (=> (not $t9@@11) (and (=> (= (ControlFlow 0 213590) 214078) anon11_Then_correct@@5) (=> (= (ControlFlow 0 213590) 213604) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct@@1  (=> (not $t5@@5) (=> (and (|$IsValid'u64'| 5) (= $t8@@5 _$t1@@5)) (and (=> (= (ControlFlow 0 213584) (- 0 286895)) (=> (= 5 0) (= $t8@@5 173345816))) (=> (=> (= 5 0) (= $t8@@5 173345816)) (and (=> (= (ControlFlow 0 213584) (- 0 286911)) (=> (= 5 1) (= $t8@@5 186537453))) (=> (=> (= 5 1) (= $t8@@5 186537453)) (and (=> (= (ControlFlow 0 213584) (- 0 286927)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 _$t1@@5)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 _$t1@@5) (=> (= $t9@@11 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@5)) (and (=> (= (ControlFlow 0 213584) 214106) anon10_Then_correct@@4) (=> (= (ControlFlow 0 213584) 213590) anon10_Else_correct@@4)))))))))))))
(let ((anon0$1_correct@@24  (=> (and (|$IsValid'address'| _$t0@@24) (|$IsValid'address'| _$t1@@5)) (=> (and (and (and (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@26)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@26))
 :qid |Rolescvc4bpl.9617:20|
 :skolemid |311|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@26))
)) (= $t2@@3 _$t0@@24)) (and (= $t3@@4 _$t0@@24) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 _$t1@@5))) (and (and (= _$t0@@24 _$t0@@24) (= _$t1@@5 _$t1@@5)) (and (= $t4@@4 _$t0@@24) (= $t5@@5  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@4)) 1))) (not (= _$t0@@24 186537453))))))) (and (=> (= (ControlFlow 0 213506) 214410) anon9_Then_correct@@1) (=> (= (ControlFlow 0 213506) 213584) anon9_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@24  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@26 T@$1_Event_EventHandle) ) (! (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@26)))
 (and (= (|l#Multiset_81661| stream@@25) 0) (forall ((v@@60 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@25) v@@60) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 213364) 213506)) anon0$1_correct@@24)))
(let ((anon0_correct@@24  (=> (= (ControlFlow 0 286624) 213364) inline$$InitEventStore$0$anon0_correct@@24)))
anon0_correct@@24))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@4 () Int)
(declare-fun _$t0@@25 () Int)
(declare-fun _$t1@@6 () Int)
(declare-fun $t3@@5 () Int)
(declare-fun $t6@@12 () Int)
(declare-fun $t9@@12 () Bool)
(declare-fun $t5@@6 () Bool)
(declare-fun $t4@@5 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_112037)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_112037)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_112037)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@6 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 287676) (let ((L2_correct@@4  (and (=> (= (ControlFlow 0 215518) (- 0 288535)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= _$t0@@25 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@6)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= _$t0@@25 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= _$t0@@25 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@6)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= _$t0@@25 173345816))) (=> (= (ControlFlow 0 215518) (- 0 288611)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@4)) (= 5 $t6@@12)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@4)) 0)) (= 3 $t6@@12))) (and (not (= _$t0@@25 173345816)) (= 2 $t6@@12))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@6) (= 6 $t6@@12))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@5)) (= 5 $t6@@12))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@5)) 0)) (= 3 $t6@@12))) (and (not (= _$t0@@25 173345816)) (= 2 $t6@@12))))))))
(let ((anon10_Then_correct@@5  (=> $t9@@12 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@6) (= 6 $t6@@12)) (and (= $t6@@12 $t6@@12) (= (ControlFlow 0 215286) 215518))) L2_correct@@4))))
(let ((anon9_Then_correct@@2  (=> (and (and $t5@@6 (or (or (or (and (not (= _$t0@@25 173345816)) (= 2 $t6@@12)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@5)) (= 5 $t6@@12))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@5)) 0)) (= 3 $t6@@12))) (and (not (= _$t0@@25 173345816)) (= 2 $t6@@12)))) (and (= $t6@@12 $t6@@12) (= (ControlFlow 0 215610) 215518))) L2_correct@@4)))
(let ((anon7_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) _$t1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) _$t1@@6)) 4)) (and (=> (= (ControlFlow 0 215244) (- 0 288127)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@4))) (and (=> (= (ControlFlow 0 215244) (- 0 288139)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (and (=> (= (ControlFlow 0 215244) (- 0 288157)) (not (not (= _$t0@@25 173345816)))) (=> (not (not (= _$t0@@25 173345816))) (and (=> (= (ControlFlow 0 215244) (- 0 288171)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@6))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@6)) (and (=> (= (ControlFlow 0 215244) (- 0 288182)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@5))) (and (=> (= (ControlFlow 0 215244) (- 0 288194)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (and (=> (= (ControlFlow 0 215244) (- 0 288212)) (not (not (= _$t0@@25 173345816)))) (=> (not (not (= _$t0@@25 173345816))) (and (=> (= (ControlFlow 0 215244) (- 0 288226)) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) _$t1@@6)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) _$t1@@6) (and (=> (= (ControlFlow 0 215244) (- 0 288235)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) _$t1@@6)) 4)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) _$t1@@6)) 4) (and (=> (= (ControlFlow 0 215244) (- 0 288250)) (forall ((addr@@330 Int) ) (!  (=> (|$IsValid'address'| addr@@330) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@330) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@330)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@330) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@330)) 0))))
 :qid |Rolescvc4bpl.10054:15|
 :skolemid |319|
))) (=> (forall ((addr@@331 Int) ) (!  (=> (|$IsValid'address'| addr@@331) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@331) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@331)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@331) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@331)) 0))))
 :qid |Rolescvc4bpl.10054:15|
 :skolemid |319|
)) (and (=> (= (ControlFlow 0 215244) (- 0 288297)) (forall ((addr@@332 Int) ) (!  (=> (|$IsValid'address'| addr@@332) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@332) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@332)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@332) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@332)) 1))))
 :qid |Rolescvc4bpl.10058:15|
 :skolemid |320|
))) (=> (forall ((addr@@333 Int) ) (!  (=> (|$IsValid'address'| addr@@333) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@333) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@333)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@333) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@333)) 1))))
 :qid |Rolescvc4bpl.10058:15|
 :skolemid |320|
)) (and (=> (= (ControlFlow 0 215244) (- 0 288344)) (forall ((addr@@334 Int) ) (!  (=> (|$IsValid'address'| addr@@334) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@334) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@334)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@334) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@334)) 3))))
 :qid |Rolescvc4bpl.10062:15|
 :skolemid |321|
))) (=> (forall ((addr@@335 Int) ) (!  (=> (|$IsValid'address'| addr@@335) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@335) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@335)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@335) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@335)) 3))))
 :qid |Rolescvc4bpl.10062:15|
 :skolemid |321|
)) (and (=> (= (ControlFlow 0 215244) (- 0 288391)) (forall ((addr@@336 Int) ) (!  (=> (|$IsValid'address'| addr@@336) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@336) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@336)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@336) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@336)) 2))))
 :qid |Rolescvc4bpl.10066:15|
 :skolemid |322|
))) (=> (forall ((addr@@337 Int) ) (!  (=> (|$IsValid'address'| addr@@337) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@337) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@337)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@337) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@337)) 2))))
 :qid |Rolescvc4bpl.10066:15|
 :skolemid |322|
)) (and (=> (= (ControlFlow 0 215244) (- 0 288438)) (forall ((addr@@338 Int) ) (!  (=> (|$IsValid'address'| addr@@338) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@338) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@338)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@338) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@338)) 5))))
 :qid |Rolescvc4bpl.10070:15|
 :skolemid |323|
))) (=> (forall ((addr@@339 Int) ) (!  (=> (|$IsValid'address'| addr@@339) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@339) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@339)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@339) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@339)) 5))))
 :qid |Rolescvc4bpl.10070:15|
 :skolemid |323|
)) (=> (= (ControlFlow 0 215244) (- 0 288485)) (forall ((addr@@340 Int) ) (!  (=> (|$IsValid'address'| addr@@340) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@340) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@4) addr@@340)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@340) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@340)) 6))))
 :qid |Rolescvc4bpl.10074:15|
 :skolemid |324|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@6  (=> (and (and (not |$temp_0'bool'@0@@4|) (= $1_Roles_RoleId_$memory@1@@5 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@6 false) (|contents#$Memory_112037| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@1@@5) (= (ControlFlow 0 214784) 215244))) anon7_correct@@2)))
(let ((anon11_Then_correct@@6  (=> (and (and |$temp_0'bool'@0@@4| (= $1_Roles_RoleId_$memory@0@@5 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@6 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@6 |$temp_0'$1_Roles_RoleId'@0@@4|)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@0@@5) (= (ControlFlow 0 215258) 215244))) anon7_correct@@2)))
(let ((anon10_Else_correct@@5  (=> (not $t9@@12) (and (=> (= (ControlFlow 0 214770) 215258) anon11_Then_correct@@6) (=> (= (ControlFlow 0 214770) 214784) anon11_Else_correct@@6)))))
(let ((anon9_Else_correct@@2  (=> (not $t5@@6) (=> (and (|$IsValid'u64'| 4) (= $t8@@6 _$t1@@6)) (and (=> (= (ControlFlow 0 214764) (- 0 287977)) (=> (= 4 0) (= $t8@@6 173345816))) (=> (=> (= 4 0) (= $t8@@6 173345816)) (and (=> (= (ControlFlow 0 214764) (- 0 287993)) (=> (= 4 1) (= $t8@@6 186537453))) (=> (=> (= 4 1) (= $t8@@6 186537453)) (and (=> (= (ControlFlow 0 214764) (- 0 288009)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 _$t1@@6)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 _$t1@@6) (=> (= $t9@@12 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@6)) (and (=> (= (ControlFlow 0 214764) 215286) anon10_Then_correct@@5) (=> (= (ControlFlow 0 214764) 214770) anon10_Else_correct@@5)))))))))))))
(let ((anon0$1_correct@@25  (=> (and (|$IsValid'address'| _$t0@@25) (|$IsValid'address'| _$t1@@6)) (=> (and (and (and (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@27)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@27))
 :qid |Rolescvc4bpl.9875:20|
 :skolemid |318|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@27))
)) (= $t2@@4 _$t0@@25)) (and (= $t3@@5 _$t0@@25) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 _$t1@@6))) (and (and (= _$t0@@25 _$t0@@25) (= _$t1@@6 _$t1@@6)) (and (= $t4@@5 _$t0@@25) (= $t5@@6  (or (or (or (not (= _$t0@@25 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@5)) 0))) (not (= _$t0@@25 173345816))))))) (and (=> (= (ControlFlow 0 214686) 215610) anon9_Then_correct@@2) (=> (= (ControlFlow 0 214686) 214764) anon9_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@25  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@27 T@$1_Event_EventHandle) ) (! (let ((stream@@26 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@27)))
 (and (= (|l#Multiset_81661| stream@@26) 0) (forall ((v@@61 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@26) v@@61) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 214532) 214686)) anon0$1_correct@@25)))
(let ((anon0_correct@@25  (=> (= (ControlFlow 0 287676) 214532) inline$$InitEventStore$0$anon0_correct@@25)))
anon0_correct@@25))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@5 () Int)
(declare-fun _$t0@@26 () Int)
(declare-fun _$t1@@7 () Int)
(declare-fun $t3@@6 () Int)
(declare-fun $t6@@13 () Int)
(declare-fun $t9@@13 () Bool)
(declare-fun $t5@@7 () Bool)
(declare-fun $t4@@6 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_112037)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_112037)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_112037)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@7 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 288758) (let ((L2_correct@@5  (and (=> (= (ControlFlow 0 216718) (- 0 289617)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= _$t0@@26 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@7)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@6)) 0))) (not (= _$t0@@26 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= _$t0@@26 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@7)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@6)) 0))) (not (= _$t0@@26 173345816))) (=> (= (ControlFlow 0 216718) (- 0 289693)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@5)) (= 5 $t6@@13)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@5)) 0)) (= 3 $t6@@13))) (and (not (= _$t0@@26 173345816)) (= 2 $t6@@13))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@7) (= 6 $t6@@13))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@6)) (= 5 $t6@@13))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@6)) 0)) (= 3 $t6@@13))) (and (not (= _$t0@@26 173345816)) (= 2 $t6@@13))))))))
(let ((anon10_Then_correct@@6  (=> $t9@@13 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@7) (= 6 $t6@@13)) (and (= $t6@@13 $t6@@13) (= (ControlFlow 0 216486) 216718))) L2_correct@@5))))
(let ((anon9_Then_correct@@3  (=> (and (and $t5@@7 (or (or (or (and (not (= _$t0@@26 173345816)) (= 2 $t6@@13)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@6)) (= 5 $t6@@13))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@6)) 0)) (= 3 $t6@@13))) (and (not (= _$t0@@26 173345816)) (= 2 $t6@@13)))) (and (= $t6@@13 $t6@@13) (= (ControlFlow 0 216810) 216718))) L2_correct@@5)))
(let ((anon7_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) _$t1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) _$t1@@7)) 3)) (and (=> (= (ControlFlow 0 216444) (- 0 289209)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@5))) (and (=> (= (ControlFlow 0 216444) (- 0 289221)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (and (=> (= (ControlFlow 0 216444) (- 0 289239)) (not (not (= _$t0@@26 173345816)))) (=> (not (not (= _$t0@@26 173345816))) (and (=> (= (ControlFlow 0 216444) (- 0 289253)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@7))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@7)) (and (=> (= (ControlFlow 0 216444) (- 0 289264)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@6))) (and (=> (= (ControlFlow 0 216444) (- 0 289276)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t3@@6)) 0))) (and (=> (= (ControlFlow 0 216444) (- 0 289294)) (not (not (= _$t0@@26 173345816)))) (=> (not (not (= _$t0@@26 173345816))) (and (=> (= (ControlFlow 0 216444) (- 0 289308)) (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) _$t1@@7)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) _$t1@@7) (and (=> (= (ControlFlow 0 216444) (- 0 289317)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) _$t1@@7)) 3)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) _$t1@@7)) 3) (and (=> (= (ControlFlow 0 216444) (- 0 289332)) (forall ((addr@@341 Int) ) (!  (=> (|$IsValid'address'| addr@@341) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@341) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@341)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@341) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@341)) 0))))
 :qid |Rolescvc4bpl.10312:15|
 :skolemid |326|
))) (=> (forall ((addr@@342 Int) ) (!  (=> (|$IsValid'address'| addr@@342) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@342) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@342)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@342) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@342)) 0))))
 :qid |Rolescvc4bpl.10312:15|
 :skolemid |326|
)) (and (=> (= (ControlFlow 0 216444) (- 0 289379)) (forall ((addr@@343 Int) ) (!  (=> (|$IsValid'address'| addr@@343) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@343) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@343)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@343) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@343)) 1))))
 :qid |Rolescvc4bpl.10316:15|
 :skolemid |327|
))) (=> (forall ((addr@@344 Int) ) (!  (=> (|$IsValid'address'| addr@@344) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@344) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@344)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@344) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@344)) 1))))
 :qid |Rolescvc4bpl.10316:15|
 :skolemid |327|
)) (and (=> (= (ControlFlow 0 216444) (- 0 289426)) (forall ((addr@@345 Int) ) (!  (=> (|$IsValid'address'| addr@@345) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@345) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@345)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@345) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@345)) 4))))
 :qid |Rolescvc4bpl.10320:15|
 :skolemid |328|
))) (=> (forall ((addr@@346 Int) ) (!  (=> (|$IsValid'address'| addr@@346) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@346) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@346)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@346) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@346)) 4))))
 :qid |Rolescvc4bpl.10320:15|
 :skolemid |328|
)) (and (=> (= (ControlFlow 0 216444) (- 0 289473)) (forall ((addr@@347 Int) ) (!  (=> (|$IsValid'address'| addr@@347) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@347) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@347)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@347) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@347)) 2))))
 :qid |Rolescvc4bpl.10324:15|
 :skolemid |329|
))) (=> (forall ((addr@@348 Int) ) (!  (=> (|$IsValid'address'| addr@@348) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@348) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@348)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@348) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@348)) 2))))
 :qid |Rolescvc4bpl.10324:15|
 :skolemid |329|
)) (and (=> (= (ControlFlow 0 216444) (- 0 289520)) (forall ((addr@@349 Int) ) (!  (=> (|$IsValid'address'| addr@@349) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@349) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@349)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@349) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@349)) 5))))
 :qid |Rolescvc4bpl.10328:15|
 :skolemid |330|
))) (=> (forall ((addr@@350 Int) ) (!  (=> (|$IsValid'address'| addr@@350) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@350) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@350)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@350) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@350)) 5))))
 :qid |Rolescvc4bpl.10328:15|
 :skolemid |330|
)) (=> (= (ControlFlow 0 216444) (- 0 289567)) (forall ((addr@@351 Int) ) (!  (=> (|$IsValid'address'| addr@@351) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@351) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory@2@@5) addr@@351)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) addr@@351) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) addr@@351)) 6))))
 :qid |Rolescvc4bpl.10332:15|
 :skolemid |331|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@7  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_Roles_RoleId_$memory@1@@6 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@7 false) (|contents#$Memory_112037| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@1@@6) (= (ControlFlow 0 215984) 216444))) anon7_correct@@3)))
(let ((anon11_Then_correct@@7  (=> (and (and |$temp_0'bool'@0@@5| (= $1_Roles_RoleId_$memory@0@@6 ($Memory_112037 (|Store__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@7 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@7 |$temp_0'$1_Roles_RoleId'@0@@5|)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@0@@6) (= (ControlFlow 0 216458) 216444))) anon7_correct@@3)))
(let ((anon10_Else_correct@@6  (=> (not $t9@@13) (and (=> (= (ControlFlow 0 215970) 216458) anon11_Then_correct@@7) (=> (= (ControlFlow 0 215970) 215984) anon11_Else_correct@@7)))))
(let ((anon9_Else_correct@@3  (=> (not $t5@@7) (=> (and (|$IsValid'u64'| 3) (= $t8@@7 _$t1@@7)) (and (=> (= (ControlFlow 0 215964) (- 0 289059)) (=> (= 3 0) (= $t8@@7 173345816))) (=> (=> (= 3 0) (= $t8@@7 173345816)) (and (=> (= (ControlFlow 0 215964) (- 0 289075)) (=> (= 3 1) (= $t8@@7 186537453))) (=> (=> (= 3 1) (= $t8@@7 186537453)) (and (=> (= (ControlFlow 0 215964) (- 0 289091)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 _$t1@@7)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 _$t1@@7) (=> (= $t9@@13 (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) _$t1@@7)) (and (=> (= (ControlFlow 0 215964) 216486) anon10_Then_correct@@6) (=> (= (ControlFlow 0 215964) 215970) anon10_Else_correct@@6)))))))))))))
(let ((anon0$1_correct@@26  (=> (and (|$IsValid'address'| _$t0@@26) (|$IsValid'address'| _$t1@@7)) (=> (and (and (and (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@28)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@28))
 :qid |Rolescvc4bpl.10133:20|
 :skolemid |325|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $a_0@@28))
)) (= $t2@@5 _$t0@@26)) (and (= $t3@@6 _$t0@@26) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 _$t1@@7))) (and (and (= _$t0@@26 _$t0@@26) (= _$t1@@7 _$t1@@7)) (and (= $t4@@6 _$t0@@26) (= $t5@@7  (or (or (or (not (= _$t0@@26 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112037| $1_Roles_RoleId_$memory) $t4@@6)) 0))) (not (= _$t0@@26 173345816))))))) (and (=> (= (ControlFlow 0 215886) 216810) anon9_Then_correct@@3) (=> (= (ControlFlow 0 215886) 215964) anon9_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@26  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@28 T@$1_Event_EventHandle) ) (! (let ((stream@@27 (|Select__T@[$1_Event_EventHandle]Multiset_81661_| (|streams#$EventStore| $es) handle@@28)))
 (and (= (|l#Multiset_81661| stream@@27) 0) (forall ((v@@62 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81661| stream@@27) v@@62) 0)
 :qid |Rolescvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |Rolescvc4bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 215732) 215886)) anon0$1_correct@@26)))
(let ((anon0_correct@@26  (=> (= (ControlFlow 0 288758) 215732) inline$$InitEventStore$0$anon0_correct@@26)))
anon0_correct@@26))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 289848) true)
))
(check-sat)
(pop 1)
; Valid
