(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_146709 0)) ((($Memory_146709 (|domain#$Memory_146709| |T@[Int]Bool|) (|contents#$Memory_146709| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_274164 0)) ((($Memory_274164 (|domain#$Memory_274164| |T@[Int]Bool|) (|contents#$Memory_274164| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_269569 0)) ((($Memory_269569 (|domain#$Memory_269569| |T@[Int]Bool|) (|contents#$Memory_269569| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_267572 0)) ((($Memory_267572 (|domain#$Memory_267572| |T@[Int]Bool|) (|contents#$Memory_267572| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_267852 0)) ((($Memory_267852 (|domain#$Memory_267852| |T@[Int]Bool|) (|contents#$Memory_267852| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_267539 0)) ((($Memory_267539 (|domain#$Memory_267539| |T@[Int]Bool|) (|contents#$Memory_267539| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_267324 0)) ((($Memory_267324 (|domain#$Memory_267324| |T@[Int]Bool|) (|contents#$Memory_267324| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_266953 0)) ((($Memory_266953 (|domain#$Memory_266953| |T@[Int]Bool|) (|contents#$Memory_266953| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_264493 0)) ((($Memory_264493 (|domain#$Memory_264493| |T@[Int]Bool|) (|contents#$Memory_264493| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_264429 0)) ((($Memory_264429 (|domain#$Memory_264429| |T@[Int]Bool|) (|contents#$Memory_264429| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_268495 0)) ((($Memory_268495 (|domain#$Memory_268495| |T@[Int]Bool|) (|contents#$Memory_268495| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_262910 0)) ((($Memory_262910 (|domain#$Memory_262910| |T@[Int]Bool|) (|contents#$Memory_262910| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_262400 0)) ((($Memory_262400 (|domain#$Memory_262400| |T@[Int]Bool|) (|contents#$Memory_262400| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_259251 0)) ((($Memory_259251 (|domain#$Memory_259251| |T@[Int]Bool|) (|contents#$Memory_259251| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_259032 0)) ((($Memory_259032 (|domain#$Memory_259032| |T@[Int]Bool|) (|contents#$Memory_259032| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_269358 0)) ((($Memory_269358 (|domain#$Memory_269358| |T@[Int]Bool|) (|contents#$Memory_269358| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_154883 0)) ((($Memory_154883 (|domain#$Memory_154883| |T@[Int]Bool|) (|contents#$Memory_154883| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_154798 0)) ((($Memory_154798 (|domain#$Memory_154798| |T@[Int]Bool|) (|contents#$Memory_154798| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_154713 0)) ((($Memory_154713 (|domain#$Memory_154713| |T@[Int]Bool|) (|contents#$Memory_154713| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_155142 0)) ((($Memory_155142 (|domain#$Memory_155142| |T@[Int]Bool|) (|contents#$Memory_155142| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_155057 0)) ((($Memory_155057 (|domain#$Memory_155057| |T@[Int]Bool|) (|contents#$Memory_155057| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_154972 0)) ((($Memory_154972 (|domain#$Memory_154972| |T@[Int]Bool|) (|contents#$Memory_154972| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_155587 0)) ((($Memory_155587 (|domain#$Memory_155587| |T@[Int]Bool|) (|contents#$Memory_155587| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_155527 0)) ((($Memory_155527 (|domain#$Memory_155527| |T@[Int]Bool|) (|contents#$Memory_155527| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_155440 0)) ((($Memory_155440 (|domain#$Memory_155440| |T@[Int]Bool|) (|contents#$Memory_155440| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_261092 0)) ((($Memory_261092 (|domain#$Memory_261092| |T@[Int]Bool|) (|contents#$Memory_261092| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_155380 0)) ((($Memory_155380 (|domain#$Memory_155380| |T@[Int]Bool|) (|contents#$Memory_155380| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_155293 0)) ((($Memory_155293 (|domain#$Memory_155293| |T@[Int]Bool|) (|contents#$Memory_155293| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_263335 0)) ((($Memory_263335 (|domain#$Memory_263335| |T@[Int]Bool|) (|contents#$Memory_263335| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_155233 0)) ((($Memory_155233 (|domain#$Memory_155233| |T@[Int]Bool|) (|contents#$Memory_155233| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_158313 0)) ((($Memory_158313 (|domain#$Memory_158313| |T@[Int]Bool|) (|contents#$Memory_158313| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_158226 0)) ((($Memory_158226 (|domain#$Memory_158226| |T@[Int]Bool|) (|contents#$Memory_158226| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_158139 0)) ((($Memory_158139 (|domain#$Memory_158139| |T@[Int]Bool|) (|contents#$Memory_158139| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_272855 0)) ((($Memory_272855 (|domain#$Memory_272855| |T@[Int]Bool|) (|contents#$Memory_272855| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_158052 0)) ((($Memory_158052 (|domain#$Memory_158052| |T@[Int]Bool|) (|contents#$Memory_158052| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_157965 0)) ((($Memory_157965 (|domain#$Memory_157965| |T@[Int]Bool|) (|contents#$Memory_157965| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_157084 0)) ((($Memory_157084 (|domain#$Memory_157084| |T@[Int]Bool|) (|contents#$Memory_157084| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_157151 0)) ((($Memory_157151 (|domain#$Memory_157151| |T@[Int]Bool|) (|contents#$Memory_157151| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_157002 0)) ((($Memory_157002 (|domain#$Memory_157002| |T@[Int]Bool|) (|contents#$Memory_157002| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_156920 0)) ((($Memory_156920 (|domain#$Memory_156920| |T@[Int]Bool|) (|contents#$Memory_156920| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_156838 0)) ((($Memory_156838 (|domain#$Memory_156838| |T@[Int]Bool|) (|contents#$Memory_156838| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_156756 0)) ((($Memory_156756 (|domain#$Memory_156756| |T@[Int]Bool|) (|contents#$Memory_156756| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_156674 0)) ((($Memory_156674 (|domain#$Memory_156674| |T@[Int]Bool|) (|contents#$Memory_156674| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_160865 0)) ((($Memory_160865 (|domain#$Memory_160865| |T@[Int]Bool|) (|contents#$Memory_160865| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_160800 0)) ((($Memory_160800 (|domain#$Memory_160800| |T@[Int]Bool|) (|contents#$Memory_160800| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_160735 0)) ((($Memory_160735 (|domain#$Memory_160735| |T@[Int]Bool|) (|contents#$Memory_160735| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_154141 0)) ((($Memory_154141 (|domain#$Memory_154141| |T@[Int]Bool|) (|contents#$Memory_154141| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_154108 0)) ((($Memory_154108 (|domain#$Memory_154108| |T@[Int]Bool|) (|contents#$Memory_154108| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_153548 0)) ((($Memory_153548 (|domain#$Memory_153548| |T@[Int]Bool|) (|contents#$Memory_153548| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_122401 0)) (((Multiset_122401 (|v#Multiset_122401| |T@[$EventRep]Int|) (|l#Multiset_122401| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_122401| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_122401|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_270396 0)) ((($Mutation_270396 (|l#$Mutation_270396| T@$Location) (|p#$Mutation_270396| (Seq Int)) (|v#$Mutation_270396| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_270352 0)) ((($Mutation_270352 (|l#$Mutation_270352| T@$Location) (|p#$Mutation_270352| (Seq Int)) (|v#$Mutation_270352| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_247319 0)) ((($Mutation_247319 (|l#$Mutation_247319| T@$Location) (|p#$Mutation_247319| (Seq Int)) (|v#$Mutation_247319| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_78938 0)) ((($Mutation_78938 (|l#$Mutation_78938| T@$Location) (|p#$Mutation_78938| (Seq Int)) (|v#$Mutation_78938| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_244469 0)) ((($Mutation_244469 (|l#$Mutation_244469| T@$Location) (|p#$Mutation_244469| (Seq Int)) (|v#$Mutation_244469| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_184165 0)) ((($Mutation_184165 (|l#$Mutation_184165| T@$Location) (|p#$Mutation_184165| (Seq Int)) (|v#$Mutation_184165| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_184118 0)) ((($Mutation_184118 (|l#$Mutation_184118| T@$Location) (|p#$Mutation_184118| (Seq Int)) (|v#$Mutation_184118| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_178639 0)) ((($Mutation_178639 (|l#$Mutation_178639| T@$Location) (|p#$Mutation_178639| (Seq Int)) (|v#$Mutation_178639| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_170618 0)) ((($Mutation_170618 (|l#$Mutation_170618| T@$Location) (|p#$Mutation_170618| (Seq Int)) (|v#$Mutation_170618| |T@$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_159478 0)) ((($Mutation_159478 (|l#$Mutation_159478| T@$Location) (|p#$Mutation_159478| (Seq Int)) (|v#$Mutation_159478| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_147337 0)) ((($Mutation_147337 (|l#$Mutation_147337| T@$Location) (|p#$Mutation_147337| (Seq Int)) (|v#$Mutation_147337| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13434 0)) ((($Mutation_13434 (|l#$Mutation_13434| T@$Location) (|p#$Mutation_13434| (Seq Int)) (|v#$Mutation_13434| Int) ) ) ))
(declare-datatypes ((T@$Mutation_142705 0)) ((($Mutation_142705 (|l#$Mutation_142705| T@$Location) (|p#$Mutation_142705| (Seq Int)) (|v#$Mutation_142705| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_141959 0)) ((($Mutation_141959 (|l#$Mutation_141959| T@$Location) (|p#$Mutation_141959| (Seq Int)) (|v#$Mutation_141959| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_140519 0)) ((($Mutation_140519 (|l#$Mutation_140519| T@$Location) (|p#$Mutation_140519| (Seq Int)) (|v#$Mutation_140519| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_139773 0)) ((($Mutation_139773 (|l#$Mutation_139773| T@$Location) (|p#$Mutation_139773| (Seq Int)) (|v#$Mutation_139773| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_138333 0)) ((($Mutation_138333 (|l#$Mutation_138333| T@$Location) (|p#$Mutation_138333| (Seq Int)) (|v#$Mutation_138333| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_137587 0)) ((($Mutation_137587 (|l#$Mutation_137587| T@$Location) (|p#$Mutation_137587| (Seq Int)) (|v#$Mutation_137587| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_136147 0)) ((($Mutation_136147 (|l#$Mutation_136147| T@$Location) (|p#$Mutation_136147| (Seq Int)) (|v#$Mutation_136147| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_135401 0)) ((($Mutation_135401 (|l#$Mutation_135401| T@$Location) (|p#$Mutation_135401| (Seq Int)) (|v#$Mutation_135401| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_133961 0)) ((($Mutation_133961 (|l#$Mutation_133961| T@$Location) (|p#$Mutation_133961| (Seq Int)) (|v#$Mutation_133961| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_133215 0)) ((($Mutation_133215 (|l#$Mutation_133215| T@$Location) (|p#$Mutation_133215| (Seq Int)) (|v#$Mutation_133215| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_131775 0)) ((($Mutation_131775 (|l#$Mutation_131775| T@$Location) (|p#$Mutation_131775| (Seq Int)) (|v#$Mutation_131775| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_131029 0)) ((($Mutation_131029 (|l#$Mutation_131029| T@$Location) (|p#$Mutation_131029| (Seq Int)) (|v#$Mutation_131029| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_129589 0)) ((($Mutation_129589 (|l#$Mutation_129589| T@$Location) (|p#$Mutation_129589| (Seq Int)) (|v#$Mutation_129589| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_128843 0)) ((($Mutation_128843 (|l#$Mutation_128843| T@$Location) (|p#$Mutation_128843| (Seq Int)) (|v#$Mutation_128843| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_127403 0)) ((($Mutation_127403 (|l#$Mutation_127403| T@$Location) (|p#$Mutation_127403| (Seq Int)) (|v#$Mutation_127403| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_126657 0)) ((($Mutation_126657 (|l#$Mutation_126657| T@$Location) (|p#$Mutation_126657| (Seq Int)) (|v#$Mutation_126657| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_125179 0)) ((($Mutation_125179 (|l#$Mutation_125179| T@$Location) (|p#$Mutation_125179| (Seq Int)) (|v#$Mutation_125179| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_124433 0)) ((($Mutation_124433 (|l#$Mutation_124433| T@$Location) (|p#$Mutation_124433| (Seq Int)) (|v#$Mutation_124433| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_122401_| (|T@[$1_Event_EventHandle]Multiset_122401| T@$1_Event_EventHandle) T@Multiset_122401)
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
(declare-fun ReverseVec_13287 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_111094 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_110700 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_110503 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_110306 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_110897 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_109715 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_109912 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_110109 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_109518 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_122401| |T@[$1_Event_EventHandle]Multiset_122401|) |T@[$1_Event_EventHandle]Multiset_122401|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |Diemcvc5bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |Diemcvc5bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |Diemcvc5bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |Diemcvc5bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |Diemcvc5bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |Diemcvc5bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |Diemcvc5bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |Diemcvc5bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |Diemcvc5bpl.590:13|
 :skolemid |15|
))))
 :qid |Diemcvc5bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |Diemcvc5bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |Diemcvc5bpl.603:17|
 :skolemid |18|
)))))
 :qid |Diemcvc5bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |Diemcvc5bpl.770:13|
 :skolemid |20|
))))
 :qid |Diemcvc5bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |Diemcvc5bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |Diemcvc5bpl.783:17|
 :skolemid |23|
)))))
 :qid |Diemcvc5bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |Diemcvc5bpl.950:13|
 :skolemid |25|
))))
 :qid |Diemcvc5bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |Diemcvc5bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |Diemcvc5bpl.963:17|
 :skolemid |28|
)))))
 :qid |Diemcvc5bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |Diemcvc5bpl.1130:13|
 :skolemid |30|
))))
 :qid |Diemcvc5bpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |Diemcvc5bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |Diemcvc5bpl.1143:17|
 :skolemid |33|
)))))
 :qid |Diemcvc5bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |Diemcvc5bpl.1310:13|
 :skolemid |35|
))))
 :qid |Diemcvc5bpl.1308:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |Diemcvc5bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |Diemcvc5bpl.1323:17|
 :skolemid |38|
)))))
 :qid |Diemcvc5bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |Diemcvc5bpl.1490:13|
 :skolemid |40|
))))
 :qid |Diemcvc5bpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |Diemcvc5bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |Diemcvc5bpl.1503:17|
 :skolemid |43|
)))))
 :qid |Diemcvc5bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |Diemcvc5bpl.1670:13|
 :skolemid |45|
))))
 :qid |Diemcvc5bpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |Diemcvc5bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |Diemcvc5bpl.1683:17|
 :skolemid |48|
)))))
 :qid |Diemcvc5bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |Diemcvc5bpl.1850:13|
 :skolemid |50|
))))
 :qid |Diemcvc5bpl.1848:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |Diemcvc5bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |Diemcvc5bpl.1863:17|
 :skolemid |53|
)))))
 :qid |Diemcvc5bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |Diemcvc5bpl.2030:13|
 :skolemid |55|
))))
 :qid |Diemcvc5bpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |Diemcvc5bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |Diemcvc5bpl.2043:17|
 :skolemid |58|
)))))
 :qid |Diemcvc5bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |Diemcvc5bpl.2210:13|
 :skolemid |60|
))))
 :qid |Diemcvc5bpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |Diemcvc5bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |Diemcvc5bpl.2223:17|
 :skolemid |63|
)))))
 :qid |Diemcvc5bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |Diemcvc5bpl.2390:13|
 :skolemid |65|
))))
 :qid |Diemcvc5bpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |Diemcvc5bpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |Diemcvc5bpl.2403:17|
 :skolemid |68|
)))))
 :qid |Diemcvc5bpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |Diemcvc5bpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |Diemcvc5bpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |Diemcvc5bpl.2639:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |Diemcvc5bpl.2642:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_122401_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_122401| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_122401| stream) v@@26) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2718:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |Diemcvc5bpl.2759:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |Diemcvc5bpl.2765:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |Diemcvc5bpl.2815:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |Diemcvc5bpl.2821:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |Diemcvc5bpl.2871:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |Diemcvc5bpl.2877:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |Diemcvc5bpl.2927:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |Diemcvc5bpl.2933:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |Diemcvc5bpl.2983:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |Diemcvc5bpl.2989:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |Diemcvc5bpl.3039:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |Diemcvc5bpl.3045:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |Diemcvc5bpl.3095:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |Diemcvc5bpl.3101:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |Diemcvc5bpl.3151:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |Diemcvc5bpl.3157:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |Diemcvc5bpl.3207:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |Diemcvc5bpl.3213:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |Diemcvc5bpl.3263:70|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |Diemcvc5bpl.3269:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |Diemcvc5bpl.3319:60|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |Diemcvc5bpl.3325:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |Diemcvc5bpl.3375:66|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |Diemcvc5bpl.3381:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |Diemcvc5bpl.3431:60|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |Diemcvc5bpl.3437:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |Diemcvc5bpl.3487:63|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |Diemcvc5bpl.3493:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |Diemcvc5bpl.3543:79|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |Diemcvc5bpl.3549:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |Diemcvc5bpl.3599:82|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |Diemcvc5bpl.3605:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |Diemcvc5bpl.3655:88|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |Diemcvc5bpl.3661:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |Diemcvc5bpl.3833:61|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |Diemcvc5bpl.3968:49|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |Diemcvc5bpl.4018:36|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |Diemcvc5bpl.4271:49|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |Diemcvc5bpl.4396:91|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |Diemcvc5bpl.4410:113|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |Diemcvc5bpl.4424:71|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |Diemcvc5bpl.4438:75|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |Diemcvc5bpl.4452:73|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |Diemcvc5bpl.4472:48|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |Diemcvc5bpl.4488:57|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |Diemcvc5bpl.4502:103|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |Diemcvc5bpl.4516:125|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |Diemcvc5bpl.4530:83|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |Diemcvc5bpl.4544:87|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |Diemcvc5bpl.4558:85|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |Diemcvc5bpl.4572:48|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |Diemcvc5bpl.4590:65|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |Diemcvc5bpl.5134:45|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |Diemcvc5bpl.5147:45|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@19) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@19)))
 :qid |Diemcvc5bpl.5160:37|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@20) true)
 :qid |Diemcvc5bpl.5173:55|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@21) true)
 :qid |Diemcvc5bpl.5187:55|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@22) true)
 :qid |Diemcvc5bpl.5201:47|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@22))
)))
(assert (forall ((s@@23 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@23)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@23)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@23))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@23))))
 :qid |Diemcvc5bpl.5221:38|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@24)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@24)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@24))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@24))))
 :qid |Diemcvc5bpl.5242:44|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@25)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))))
 :qid |Diemcvc5bpl.5293:53|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@26)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))))
 :qid |Diemcvc5bpl.5355:53|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@27)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@27)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@27))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@27))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@27))))
 :qid |Diemcvc5bpl.5417:45|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@28) true)
 :qid |Diemcvc5bpl.5443:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29) true)
 :qid |Diemcvc5bpl.5457:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@30) true)
 :qid |Diemcvc5bpl.5471:47|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@31)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@31))))
 :qid |Diemcvc5bpl.5488:38|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@32) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@32)))
 :qid |Diemcvc5bpl.5502:48|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@33) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@33)))
 :qid |Diemcvc5bpl.5516:48|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@34) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@34)))
 :qid |Diemcvc5bpl.5530:40|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@35))))
 :qid |Diemcvc5bpl.5550:41|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@36) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@36)))
 :qid |Diemcvc5bpl.5565:53|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@37) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@37)))
 :qid |Diemcvc5bpl.5579:53|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@38) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@38)))
 :qid |Diemcvc5bpl.5593:45|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@39)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@39)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@39))))
 :qid |Diemcvc5bpl.5610:60|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@40)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@40)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@40))))
 :qid |Diemcvc5bpl.5627:60|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@41)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@41)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@41))))
 :qid |Diemcvc5bpl.5644:52|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@42)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@42)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@42))))
 :qid |Diemcvc5bpl.5661:57|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@42))
)))
(assert (forall ((s@@43 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@43) true)
 :qid |Diemcvc5bpl.26231:68|
 :skolemid |644|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@44)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@44)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@44))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@44))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@44))))
 :qid |Diemcvc5bpl.26253:66|
 :skolemid |645|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@45)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@45)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@45))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@45))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@45))))
 :qid |Diemcvc5bpl.26279:66|
 :skolemid |646|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@46) true)
 :qid |Diemcvc5bpl.26612:31|
 :skolemid |647|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@46))
)))
(assert (forall ((s@@47 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@47) true)
 :qid |Diemcvc5bpl.26956:31|
 :skolemid |648|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@47))
)))
(assert (forall ((s@@48 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@48)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@48)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@48))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@48))))
 :qid |Diemcvc5bpl.26975:35|
 :skolemid |649|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@48))
)))
(assert (forall ((s@@49 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@49) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@49)))
 :qid |Diemcvc5bpl.27401:71|
 :skolemid |650|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@50) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@50)))
 :qid |Diemcvc5bpl.27450:46|
 :skolemid |651|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@51) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@51)))
 :qid |Diemcvc5bpl.27463:64|
 :skolemid |652|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@52) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@52)))
 :qid |Diemcvc5bpl.27476:75|
 :skolemid |653|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@53) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@53)))
 :qid |Diemcvc5bpl.27489:72|
 :skolemid |654|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@53))
)))
(assert (forall ((s@@54 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@54)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@54)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@54))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@54))))
 :qid |Diemcvc5bpl.27518:46|
 :skolemid |655|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@54))
)))
(assert (forall ((s@@55 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@55)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@55)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@55))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@55))))
 :qid |Diemcvc5bpl.27539:55|
 :skolemid |656|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@56)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@56)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@56))))
 :qid |Diemcvc5bpl.27568:65|
 :skolemid |657|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@57))))
 :qid |Diemcvc5bpl.27967:60|
 :skolemid |658|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@58)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@58)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@58))))
 :qid |Diemcvc5bpl.27984:66|
 :skolemid |659|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@59)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@59)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@59))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@59))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@59))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@59))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@59))))
 :qid |Diemcvc5bpl.28013:50|
 :skolemid |660|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@60) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@60)))
 :qid |Diemcvc5bpl.28032:45|
 :skolemid |661|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@61)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@61)) true))
 :qid |Diemcvc5bpl.28356:87|
 :skolemid |662|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@62) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@62)))
 :qid |Diemcvc5bpl.28573:43|
 :skolemid |663|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@63)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@63))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@63))))
 :qid |Diemcvc5bpl.28592:48|
 :skolemid |664|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@64)))
 :qid |Diemcvc5bpl.28607:50|
 :skolemid |665|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@65) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@65)))
 :qid |Diemcvc5bpl.28621:47|
 :skolemid |666|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@66)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@66)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@66))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@66))))
 :qid |Diemcvc5bpl.28641:58|
 :skolemid |667|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@67) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@67)))
 :qid |Diemcvc5bpl.28656:39|
 :skolemid |668|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@68)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@68))))
 :qid |Diemcvc5bpl.28678:58|
 :skolemid |669|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@69)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@69))))
 :qid |Diemcvc5bpl.28695:58|
 :skolemid |670|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@70) true)
 :qid |Diemcvc5bpl.28710:51|
 :skolemid |671|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@71)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@71))))
 :qid |Diemcvc5bpl.28727:60|
 :skolemid |672|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@72)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@72)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@72))))
 :qid |Diemcvc5bpl.29025:47|
 :skolemid |673|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@73)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@73)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@73))))
 :qid |Diemcvc5bpl.29047:63|
 :skolemid |674|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@74) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@74)))
 :qid |Diemcvc5bpl.29062:57|
 :skolemid |675|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@75)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@75)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@75))))
 :qid |Diemcvc5bpl.29078:54|
 :skolemid |676|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@76) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@76)))
 :qid |Diemcvc5bpl.29092:55|
 :skolemid |677|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@77) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@77)))
 :qid |Diemcvc5bpl.29106:57|
 :skolemid |678|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@78)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@78))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@78))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@78))))
 :qid |Diemcvc5bpl.29128:56|
 :skolemid |679|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@79)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@79))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@79))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@79))))
 :qid |Diemcvc5bpl.29153:52|
 :skolemid |680|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@80) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@80)))
 :qid |Diemcvc5bpl.29169:54|
 :skolemid |681|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@81)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@81)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@81))))
 :qid |Diemcvc5bpl.30040:45|
 :skolemid |682|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@82) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@82)))
 :qid |Diemcvc5bpl.30054:51|
 :skolemid |683|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@83)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@83)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@83))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@83))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@83))))
 :qid |Diemcvc5bpl.30077:48|
 :skolemid |684|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@84))))
 :qid |Diemcvc5bpl.30391:47|
 :skolemid |685|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@85)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@85))))
 :qid |Diemcvc5bpl.30415:47|
 :skolemid |686|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@86)))
 :qid |Diemcvc5bpl.30670:49|
 :skolemid |687|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@87)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@87))))
 :qid |Diemcvc5bpl.30713:49|
 :skolemid |688|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@88)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@88))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@88))))
 :qid |Diemcvc5bpl.30742:48|
 :skolemid |689|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@89)))
 :qid |Diemcvc5bpl.31037:47|
 :skolemid |690|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_13287 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13287 v@@27))
)))
(assert (forall ((v@@28 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_111094 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_111094 v@@28))
)))
(assert (forall ((v@@29 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_110700 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_110700 v@@29))
)))
(assert (forall ((v@@30 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_110503 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_110503 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@4 (ReverseVec_110306 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_110306 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@5 (ReverseVec_110897 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_110897 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@6 (ReverseVec_109715 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_109715 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@7 (ReverseVec_109912 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_109912 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@8 (ReverseVec_110109 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_110109 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@#0|)) ) (! (let ((r@@9 (ReverseVec_109518 v@@36)))
 (and (= (seq.len r@@9) (seq.len v@@36)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@9))) (= (seq.nth r@@9 i@@42) (seq.nth v@@36 (- (- (seq.len v@@36) i@@42) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@42))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_109518 v@@36))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |Diemcvc5bpl.245:54|
 :skolemid |748|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_122401|) (|l#1| |T@[$1_Event_EventHandle]Multiset_122401|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_122401_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_122401| (|Select__T@[$1_Event_EventHandle]Multiset_122401_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_122401| (|Select__T@[$1_Event_EventHandle]Multiset_122401_| |l#1| handle@@0))))
(Multiset_122401 (|lambda#3| (|v#Multiset_122401| (|Select__T@[$1_Event_EventHandle]Multiset_122401_| |l#0@@0| handle@@0)) (|v#Multiset_122401| (|Select__T@[$1_Event_EventHandle]Multiset_122401_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |Diemcvc5bpl.2728:13|
 :skolemid |749|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_122401_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@37) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@37)))
 :qid |Diemcvc5bpl.124:29|
 :skolemid |750|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_154713)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_154141)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_154798)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_154883)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_154972)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_155057)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory| () T@$Memory_155142)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_155233)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_155293)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_155380)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_155440)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_155527)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_155587)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_154141)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_154141)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun $t11@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun $t9 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5 () Int)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 429316) (let ((anon12_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 289267) (- 0 429945)) (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner)) 1))))
 :qid |Diemcvc5bpl.4194:17|
 :skolemid |123|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154798| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner@@0)) 1))))
 :qid |Diemcvc5bpl.4194:264|
 :skolemid |124|
))) (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner@@1)) 1))))
 :qid |Diemcvc5bpl.4194:512|
 :skolemid |125|
)))) (=> (and (and (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner@@2)) 1))))
 :qid |Diemcvc5bpl.4194:17|
 :skolemid |123|
)) (forall ((mint_cap_owner@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154798| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner@@3)) 1))))
 :qid |Diemcvc5bpl.4194:264|
 :skolemid |124|
))) (forall ((mint_cap_owner@@4 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) mint_cap_owner@@4)) 1))))
 :qid |Diemcvc5bpl.4194:512|
 :skolemid |125|
))) (and (=> (= (ControlFlow 0 289267) (- 0 430018)) (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154972| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1)) 1))))
 :qid |Diemcvc5bpl.4200:17|
 :skolemid |126|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155057| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@0)) 1))))
 :qid |Diemcvc5bpl.4200:227|
 :skolemid |127|
))) (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@1)) 1))))
 :qid |Diemcvc5bpl.4200:438|
 :skolemid |128|
)))) (=> (and (and (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154972| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@2)) 1))))
 :qid |Diemcvc5bpl.4200:17|
 :skolemid |126|
)) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155057| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@3)) 1))))
 :qid |Diemcvc5bpl.4200:227|
 :skolemid |127|
))) (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@4)) 1))))
 :qid |Diemcvc5bpl.4200:438|
 :skolemid |128|
))) (and (=> (= (ControlFlow 0 289267) (- 0 430091)) (and (and (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155233| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_155293| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@5)) 2))))
 :qid |Diemcvc5bpl.4206:17|
 :skolemid |129|
)) (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155380| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_155440| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@6)) 2))))
 :qid |Diemcvc5bpl.4206:288|
 :skolemid |130|
))) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_155587| |$1_Diem_Preburn'#0'_$memory|) addr1@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@7)) 2))))
 :qid |Diemcvc5bpl.4206:560|
 :skolemid |131|
)))) (=> (and (and (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155233| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_155293| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@8)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@8)) 2))))
 :qid |Diemcvc5bpl.4206:17|
 :skolemid |129|
)) (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155380| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_155440| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@9)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@9)) 2))))
 :qid |Diemcvc5bpl.4206:288|
 :skolemid |130|
))) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_155587| |$1_Diem_Preburn'#0'_$memory|) addr1@@10)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) addr1@@10)) 2))))
 :qid |Diemcvc5bpl.4206:560|
 :skolemid |131|
))) (and (=> (= (ControlFlow 0 289267) (- 0 430191)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) _$t0)) (and (=> (= (ControlFlow 0 289267) (- 0 430202)) (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory@1) _$t0) (=> (= (ControlFlow 0 289267) (- 0 430211)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory@1) _$t0)) _$t1)))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 288691) (- 0 429915)) (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) _$t0) (=> (= (ControlFlow 0 288691) (- 0 429921)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) _$t0) (= 6 $t10@0)))))))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t10@0 $abort_code@1) (= (ControlFlow 0 289281) 288691))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 289331) 289281) anon12_Then_correct) (=> (= (ControlFlow 0 289331) 289267) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) _$t0) (= (ControlFlow 0 289329) 289331)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) _$t0)) (=> (and (and (= $1_Roles_RoleId_$memory@0 ($Memory_154141 (|Store__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) _$t0 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) _$t0 $t11@0))) (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 288970) 289281) anon12_Then_correct) (=> (= (ControlFlow 0 288970) 289267) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0 ($1_Roles_RoleId _$t1))) (and (=> (= (ControlFlow 0 288952) (- 0 429560)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0) (=> (and (and (forall ((mint_cap_owner@@5 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@5)) 1))))
 :qid |Diemcvc5bpl.4166:22|
 :skolemid |114|
)) (forall ((mint_cap_owner@@6 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154798| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@6)) 1))))
 :qid |Diemcvc5bpl.4166:269|
 :skolemid |115|
))) (forall ((mint_cap_owner@@7 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@7)) 1))))
 :qid |Diemcvc5bpl.4166:517|
 :skolemid |116|
))) (=> (and (and (and (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154972| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@11) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@11)) 1))))
 :qid |Diemcvc5bpl.4170:22|
 :skolemid |117|
)) (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155057| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@12)) 1))))
 :qid |Diemcvc5bpl.4170:232|
 :skolemid |118|
))) (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@13)) 1))))
 :qid |Diemcvc5bpl.4170:443|
 :skolemid |119|
))) (and (and (forall ((addr1@@14 Int) ) (!  (=> (|$IsValid'address'| addr1@@14) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155233| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_155293| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@14)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@14)) 2))))
 :qid |Diemcvc5bpl.4174:22|
 :skolemid |120|
)) (forall ((addr1@@15 Int) ) (!  (=> (|$IsValid'address'| addr1@@15) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155380| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_155440| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@15)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@15)) 2))))
 :qid |Diemcvc5bpl.4174:293|
 :skolemid |121|
))) (forall ((addr1@@16 Int) ) (!  (=> (|$IsValid'address'| addr1@@16) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_155587| |$1_Diem_Preburn'#0'_$memory|) addr1@@16)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@16)) 2))))
 :qid |Diemcvc5bpl.4174:565|
 :skolemid |122|
)))) (and (=> (= (ControlFlow 0 288952) 289329) anon11_Then_correct) (=> (= (ControlFlow 0 288952) 288970) anon11_Else_correct)))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9 $t9)) (and (= $t10@0 $t9) (= (ControlFlow 0 288659) 288691))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9) (= $t9 6)) (and (= $t9 $t9) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 288643) 288952) anon10_Then_correct) (=> (= (ControlFlow 0 288643) 288659) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 288607) 288643)) anon0$2_correct)))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |Diemcvc5bpl.4062:20|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $a_0))
))) (and (= $t4 _$t0) (=> (= _$t1 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (|$IsValid'address'| $t5) (= $t5 _$t0)) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) $t5)) (= (ControlFlow 0 288613) 288607)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_122401_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_122401| stream@@0) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_122401| stream@@0) v@@38) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 288445) 288613)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 429316) 288445) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_153548)
(declare-fun _$t0@@0 () Int)
(declare-fun $t1 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_156674)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_157965)
(declare-fun $t2 () Int)
(declare-fun $t4@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t5@@0 () Bool)
(declare-fun $t4@@0 () Int)
(declare-fun $t3 () Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| () T@$Memory_156674)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| () T@$Memory_157965)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_157151)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t4@1 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t10@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t9@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t4@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t6@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t5@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t3@0 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_157965)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_156674)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t8@1 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@2| () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_157965)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_157965)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''@1| () |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_156674)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_156674)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1| () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_Vector_empty'vec'u8''$0$v@1| () (Seq (Seq Int)))
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t1@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t2@0 () Int)
(declare-fun $t6 () Int)
(declare-fun $t7 () Int)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(push 1)
(set-info :boogie-vc-id $1_Diem_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 430413) (let ((L2_correct  (and (=> (= (ControlFlow 0 291696) (- 0 431865)) (or (or (or (or (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@0 173345816))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) $t1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $t1)) 0))) (not (= _$t0@@0 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) $t2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $t2)) 0))) (not (= _$t0@@0 173345816)))) (=> (or (or (or (or (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@0 173345816))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) $t1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $t1)) 0))) (not (= _$t0@@0 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) $t2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $t2)) 0))) (not (= _$t0@@0 173345816))) (=> (= (ControlFlow 0 291696) (- 0 431971)) (or (or (or (or (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@0)) (and (not (= _$t0@@0 173345816)) (= 2 $t4@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) $t1)) (= 5 $t4@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $t1)) 0)) (= 3 $t4@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t4@0))) (|Select__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) $t2)) (= 5 $t4@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $t2)) 0)) (= 3 $t4@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t4@0))))))))
(let ((anon10_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t4@0 $abort_code@1@@0) (= (ControlFlow 0 291380) 291696))) L2_correct)))
(let ((anon9_Then_correct  (=> $t5@@0 (=> (and (and (and (not (= _$t0@@0 173345816)) (= 2 $t4@@0)) (= $t4@@0 $t4@@0)) (and (= $t4@0 $t4@@0) (= (ControlFlow 0 291726) 291696))) L2_correct))))
(let ((anon8_Then_correct  (=> $t3 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (= $t4@@0 $t4@@0)) (and (= $t4@0 $t4@@0) (= (ControlFlow 0 291752) 291696))) L2_correct))))
(let ((anon10_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 291366) (- 0 431659)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 291366) (- 0 431669)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 291366) (- 0 431683)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 291366) (- 0 431693)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) $t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) $t1))) (and (=> (= (ControlFlow 0 291366) (- 0 431705)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $t1)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $t1)) 0))) (and (=> (= (ControlFlow 0 291366) (- 0 431723)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 291366) (- 0 431737)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 291366) (- 0 431745)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (and (=> (= (ControlFlow 0 291366) (- 0 431756)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) $t2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) $t2))) (and (=> (= (ControlFlow 0 291366) (- 0 431768)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $t2)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $t2)) 0))) (and (=> (= (ControlFlow 0 291366) (- 0 431786)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 291366) (- 0 431800)) (= (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) addr))))) 0)) (=> (= (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) addr))))) 0) (and (=> (= (ControlFlow 0 291366) (- 0 431812)) (|Select__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) _$t0@@0) (and (=> (= (ControlFlow 0 291366) (- 0 431821)) (|Select__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 291366) (- 0 431827)) (= (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) addr@@0))) ($1_RegisteredCurrencies_RegisteredCurrencies (as seq.empty (Seq (Seq Int)))))) (=> (= (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) addr@@0))) ($1_RegisteredCurrencies_RegisteredCurrencies (as seq.empty (Seq (Seq Int))))) (=> (= (ControlFlow 0 291366) (- 0 431839)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_157151| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_157151| $1_DiemConfig_Configuration_$memory) 173345816))))))))))))))))))))))))))))))))))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$L2_correct  (=> (and (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)) (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 inline$$1_RegisteredCurrencies_initialize$0$$t4@1))) (and (=> (= (ControlFlow 0 291026) 291380) anon10_Then_correct@@0) (=> (= (ControlFlow 0 291026) 291366) anon10_Else_correct@@0)))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon18_Then_correct  (=> inline$$1_RegisteredCurrencies_initialize$0$$t10@0 (=> (and (and (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t9@0)) (= 5 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t9@0)) 0)) (= 3 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (and (not (= _$t0@@0 173345816)) (= 2 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (= inline$$1_RegisteredCurrencies_initialize$0$$t4@0 inline$$1_RegisteredCurrencies_initialize$0$$t4@0)) (and (= inline$$1_RegisteredCurrencies_initialize$0$$t4@1 inline$$1_RegisteredCurrencies_initialize$0$$t4@0) (= (ControlFlow 0 291020) 291026))) inline$$1_RegisteredCurrencies_initialize$0$L2_correct))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon16_Then_correct  (=> inline$$1_RegisteredCurrencies_initialize$0$$t6@0 (=> (and (and (or (or (or (and (not (= _$t0@@0 173345816)) (= 2 inline$$1_RegisteredCurrencies_initialize$0$$t4@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t5@0)) (= 5 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t5@0)) 0)) (= 3 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (and (not (= _$t0@@0 173345816)) (= 2 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (= inline$$1_RegisteredCurrencies_initialize$0$$t4@0 inline$$1_RegisteredCurrencies_initialize$0$$t4@0)) (and (= inline$$1_RegisteredCurrencies_initialize$0$$t4@1 inline$$1_RegisteredCurrencies_initialize$0$$t4@0) (= (ControlFlow 0 291132) 291026))) inline$$1_RegisteredCurrencies_initialize$0$L2_correct))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon15_Then_correct  (=> inline$$1_RegisteredCurrencies_initialize$0$$t3@0 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 inline$$1_RegisteredCurrencies_initialize$0$$t4@0)) (= inline$$1_RegisteredCurrencies_initialize$0$$t4@0 inline$$1_RegisteredCurrencies_initialize$0$$t4@0)) (and (= inline$$1_RegisteredCurrencies_initialize$0$$t4@1 inline$$1_RegisteredCurrencies_initialize$0$$t4@0) (= (ControlFlow 0 291158) 291026))) inline$$1_RegisteredCurrencies_initialize$0$L2_correct))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon14_correct  (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) _$t0@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816)) (and (= (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))) inline$$1_RegisteredCurrencies_initialize$0$$t8@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_157151| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_157151| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0)))) (and (=> (= (ControlFlow 0 290908) 291380) anon10_Then_correct@@0) (=> (= (ControlFlow 0 290908) 291366) anon10_Else_correct@@0)))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon20_Else_correct  (=> (and (and (not |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@2|) (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_157965 (|Store__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)))) (and (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (= (ControlFlow 0 290874) 290908))) inline$$1_RegisteredCurrencies_initialize$0$anon14_correct)))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon20_Then_correct  (=> (and (and |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@2| (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_157965 (|Store__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''@1|)))) (and (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|) (= (ControlFlow 0 290920) 290908))) inline$$1_RegisteredCurrencies_initialize$0$anon14_correct)))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon19_Else_correct  (=> (not |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@1|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_156674 (|Store__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|)) (and (=> (= (ControlFlow 0 290860) 290920) inline$$1_RegisteredCurrencies_initialize$0$anon20_Then_correct) (=> (= (ControlFlow 0 290860) 290874) inline$$1_RegisteredCurrencies_initialize$0$anon20_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon19_Then_correct  (=> |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@1| (=> (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_156674 (|Store__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1|))) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|)) (and (=> (= (ControlFlow 0 290932) 290920) inline$$1_RegisteredCurrencies_initialize$0$anon20_Then_correct) (=> (= (ControlFlow 0 290932) 290874) inline$$1_RegisteredCurrencies_initialize$0$anon20_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon18_Else_correct  (=> (not inline$$1_RegisteredCurrencies_initialize$0$$t10@0) (and (=> (= (ControlFlow 0 290848) 290932) inline$$1_RegisteredCurrencies_initialize$0$anon19_Then_correct) (=> (= (ControlFlow 0 290848) 290860) inline$$1_RegisteredCurrencies_initialize$0$anon19_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon17_Else_correct  (=> (and (and (not false) (= inline$$1_RegisteredCurrencies_initialize$0$$t8@1 ($1_RegisteredCurrencies_RegisteredCurrencies |inline$$1_Vector_empty'vec'u8''$0$v@1|))) (and (= inline$$1_RegisteredCurrencies_initialize$0$$t9@0 _$t0@@0) (= inline$$1_RegisteredCurrencies_initialize$0$$t10@0  (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t9@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t9@0)) 0))) (not (= _$t0@@0 173345816)))))) (and (=> (= (ControlFlow 0 290840) 291020) inline$$1_RegisteredCurrencies_initialize$0$anon18_Then_correct) (=> (= (ControlFlow 0 290840) 290848) inline$$1_RegisteredCurrencies_initialize$0$anon18_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon17_Then_correct true))
(let ((|inline$$1_Vector_empty'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'vec'u8''$0$v@1| (as seq.empty (Seq (Seq Int)))) (and (=> (= (ControlFlow 0 290752) 291040) inline$$1_RegisteredCurrencies_initialize$0$anon17_Then_correct) (=> (= (ControlFlow 0 290752) 290840) inline$$1_RegisteredCurrencies_initialize$0$anon17_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon16_Else_correct  (=> (and (not inline$$1_RegisteredCurrencies_initialize$0$$t6@0) (= (ControlFlow 0 290758) 290752)) |inline$$1_Vector_empty'vec'u8''$0$anon0_correct|)))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon15_Else_correct  (=> (not inline$$1_RegisteredCurrencies_initialize$0$$t3@0) (=> (and (= inline$$1_RegisteredCurrencies_initialize$0$$t5@0 _$t0@@0) (= inline$$1_RegisteredCurrencies_initialize$0$$t6@0  (or (or (or (not (= _$t0@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t5@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t5@0)) 0))) (not (= _$t0@@0 173345816))))) (and (=> (= (ControlFlow 0 290724) 291132) inline$$1_RegisteredCurrencies_initialize$0$anon16_Then_correct) (=> (= (ControlFlow 0 290724) 290758) inline$$1_RegisteredCurrencies_initialize$0$anon16_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon0_correct  (=> (and (and (= inline$$1_RegisteredCurrencies_initialize$0$$t1@0 _$t0@@0) (= inline$$1_RegisteredCurrencies_initialize$0$$t2@0 _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= inline$$1_RegisteredCurrencies_initialize$0$$t3@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 290652) 291158) inline$$1_RegisteredCurrencies_initialize$0$anon15_Then_correct) (=> (= (ControlFlow 0 290652) 290724) inline$$1_RegisteredCurrencies_initialize$0$anon15_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (and (not $t5@@0) (= $t6 _$t0@@0)) (and (= $t7 _$t0@@0) (= (ControlFlow 0 291162) 290652))) inline$$1_RegisteredCurrencies_initialize$0$anon0_correct)))
(let ((anon8_Else_correct  (=> (and (not $t3) (= $t5@@0  (not (= _$t0@@0 173345816)))) (and (=> (= (ControlFlow 0 289901) 291726) anon9_Then_correct) (=> (= (ControlFlow 0 289901) 291162) anon9_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_157151| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (and (and (and (forall ((mint_cap_owner@@8 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@8)) 1))))
 :qid |Diemcvc5bpl.5829:22|
 :skolemid |173|
)) (forall ((mint_cap_owner@@9 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154798| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@9)) 1))))
 :qid |Diemcvc5bpl.5829:269|
 :skolemid |174|
))) (forall ((mint_cap_owner@@10 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) mint_cap_owner@@10)) 1))))
 :qid |Diemcvc5bpl.5829:517|
 :skolemid |175|
))) (and (and (forall ((addr1@@17 Int) ) (!  (=> (|$IsValid'address'| addr1@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154972| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@17) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@17)) 1))))
 :qid |Diemcvc5bpl.5833:22|
 :skolemid |176|
)) (forall ((addr1@@18 Int) ) (!  (=> (|$IsValid'address'| addr1@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155057| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@18) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@18)) 1))))
 :qid |Diemcvc5bpl.5833:232|
 :skolemid |177|
))) (forall ((addr1@@19 Int) ) (!  (=> (|$IsValid'address'| addr1@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@19) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@19)) 1))))
 :qid |Diemcvc5bpl.5833:443|
 :skolemid |178|
)))) (=> (and (and (and (and (forall ((addr1@@20 Int) ) (!  (=> (|$IsValid'address'| addr1@@20) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155233| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_155293| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@20)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@20)) 2))))
 :qid |Diemcvc5bpl.5837:22|
 :skolemid |179|
)) (forall ((addr1@@21 Int) ) (!  (=> (|$IsValid'address'| addr1@@21) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155380| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_155440| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@21)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@21)) 2))))
 :qid |Diemcvc5bpl.5837:293|
 :skolemid |180|
))) (forall ((addr1@@22 Int) ) (!  (=> (|$IsValid'address'| addr1@@22) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_155587| |$1_Diem_Preburn'#0'_$memory|) addr1@@22)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) addr1@@22)) 2))))
 :qid |Diemcvc5bpl.5837:565|
 :skolemid |181|
))) (|$IsValid'address'| _$t0@@0)) (and (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |Diemcvc5bpl.5843:20|
 :skolemid |182|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |Diemcvc5bpl.5847:20|
 :skolemid |183|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_154141| $1_Roles_RoleId_$memory) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@2)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@2))
 :qid |Diemcvc5bpl.5851:20|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_156674| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@3))
 :qid |Diemcvc5bpl.5855:20|
 :skolemid |185|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_157965| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@3))
)))) (and (and (= $t1 _$t0@@0) (= $t2 _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= $t3  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_153548| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 289879) 291752) anon8_Then_correct) (=> (= (ControlFlow 0 289879) 289901) anon8_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_122401_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_122401| stream@@1) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_122401| stream@@1) v@@39) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 289450) 289879)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 430413) 289450) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0)))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@1 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t1@0 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_160865)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(push 1)
(set-info :boogie-vc-id $1_Diem_value$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 432151) (let ((anon0$1_correct@@1  (=> (and (and (|$IsValid'$1_Diem_Diem'#0''| _$t0@@1) (= _$t0@@1 _$t0@@1)) (and (= $t1@0 (|$value#$1_Diem_Diem'#0'| _$t0@@1)) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 292291) (- 0 432242)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 292291) (- 0 432263)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@2))))
 :qid |Diemcvc5bpl.6160:15|
 :skolemid |186|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@3))))
 :qid |Diemcvc5bpl.6160:15|
 :skolemid |186|
)) (and (=> (= (ControlFlow 0 292291) (- 0 432292)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@4)))
 :qid |Diemcvc5bpl.6165:15|
 :skolemid |187|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@5)))
 :qid |Diemcvc5bpl.6165:15|
 :skolemid |187|
)) (and (=> (= (ControlFlow 0 292291) (- 0 432317)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 292291) (- 0 432338)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@6)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@6))))
 :qid |Diemcvc5bpl.6175:15|
 :skolemid |188|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@7)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@7))))
 :qid |Diemcvc5bpl.6175:15|
 :skolemid |188|
)) (and (=> (= (ControlFlow 0 292291) (- 0 432367)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@8)))
 :qid |Diemcvc5bpl.6180:15|
 :skolemid |189|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@9)))
 :qid |Diemcvc5bpl.6180:15|
 :skolemid |189|
)) (and (=> (= (ControlFlow 0 292291) (- 0 432392)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 292291) (- 0 432413)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 292291) (- 0 432434)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_155587| |$1_Diem_Preburn'#0'_$memory|) addr@@10))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@10))))
 :qid |Diemcvc5bpl.6195:15|
 :skolemid |190|
))) (=> (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_155587| |$1_Diem_Preburn'#0'_$memory|) addr@@11))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@11))))
 :qid |Diemcvc5bpl.6195:15|
 :skolemid |190|
)) (and (=> (= (ControlFlow 0 292291) (- 0 432470)) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@12)))
 :qid |Diemcvc5bpl.6200:15|
 :skolemid |191|
))) (=> (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@13)))
 :qid |Diemcvc5bpl.6200:15|
 :skolemid |191|
)) (=> (= (ControlFlow 0 292291) (- 0 432495)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))))))))))))))))))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_122401_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_122401| stream@@2) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_122401| stream@@2) v@@40) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 291961) 292291)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 432151) 291961) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t1@0@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t0 () Bool)
(declare-fun $t1@@0 () Int)
(declare-fun $t4@0@@0 () (Seq Int))
(declare-fun $t3@1 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t3@@0 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t3@0 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $abort_code@0@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_Diem_currency_code$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 432523) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 292938) (- 0 433138)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (=> (= (ControlFlow 0 292938) (- 0 433143)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t1@0@@0)))))))
(let ((anon14_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t1@0@@0 $abort_code@1@@1) (= (ControlFlow 0 292910) 292938))) L2_correct@@0)))
(let ((anon11_Then_correct@@0  (=> $t0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t1@@0)) (= $t1@@0 $t1@@0)) (and (= $t1@0@@0 $t1@@0) (= (ControlFlow 0 293030) 292938))) L2_correct@@0))))
(let ((anon14_Else_correct  (=> (not $abort_flag@0@@1) (=> (and (= $t4@0@@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t3@1)) (= $t4@0@@0 $t4@0@@0)) (and (=> (= (ControlFlow 0 292896) (- 0 432829)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 292896) (- 0 432839)) (= $t4@0@@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= $t4@0@@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 292896) (- 0 432849)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 292896) (- 0 432870)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@14)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@14))))
 :qid |Diemcvc5bpl.6335:15|
 :skolemid |193|
))) (=> (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@15)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@15))))
 :qid |Diemcvc5bpl.6335:15|
 :skolemid |193|
)) (and (=> (= (ControlFlow 0 292896) (- 0 432899)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@16)))
 :qid |Diemcvc5bpl.6340:15|
 :skolemid |194|
))) (=> (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@17)))
 :qid |Diemcvc5bpl.6340:15|
 :skolemid |194|
)) (and (=> (= (ControlFlow 0 292896) (- 0 432924)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 292896) (- 0 432945)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@18)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@18))))
 :qid |Diemcvc5bpl.6350:15|
 :skolemid |195|
))) (=> (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@19)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@19))))
 :qid |Diemcvc5bpl.6350:15|
 :skolemid |195|
)) (and (=> (= (ControlFlow 0 292896) (- 0 432974)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@20)))
 :qid |Diemcvc5bpl.6355:15|
 :skolemid |196|
))) (=> (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@21)))
 :qid |Diemcvc5bpl.6355:15|
 :skolemid |196|
)) (and (=> (= (ControlFlow 0 292896) (- 0 432999)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 292896) (- 0 433020)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 292896) (- 0 433041)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_155587| |$1_Diem_Preburn'#0'_$memory|) addr@@22))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@22))))
 :qid |Diemcvc5bpl.6370:15|
 :skolemid |197|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_155587| |$1_Diem_Preburn'#0'_$memory|) addr@@23))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@23))))
 :qid |Diemcvc5bpl.6370:15|
 :skolemid |197|
)) (and (=> (= (ControlFlow 0 292896) (- 0 433077)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@24)))
 :qid |Diemcvc5bpl.6375:15|
 :skolemid |198|
))) (=> (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@25) (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@25)))
 :qid |Diemcvc5bpl.6375:15|
 :skolemid |198|
)) (=> (= (ControlFlow 0 292896) (- 0 433102)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))))))))))))))))))))))))))))))
(let ((anon13_Then$1_correct  (=> (= $t3@1 $t3@@0) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 292990) 292910) anon14_Then_correct) (=> (= (ControlFlow 0 292990) 292896) anon14_Else_correct))))))
(let ((anon13_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= (ControlFlow 0 292988) 292990)) anon13_Then$1_correct)))
(let ((anon13_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (and (and (= $t3@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t3@1 $t3@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 292574) 292910) anon14_Then_correct) (=> (= (ControlFlow 0 292574) 292896) anon14_Else_correct))))))
(let ((anon12_Else_correct@@0  (=> (not false) (and (=> (= (ControlFlow 0 292560) 292988) anon13_Then_correct) (=> (= (ControlFlow 0 292560) 292574) anon13_Else_correct)))))
(let ((anon12_Then_correct@@0 true))
(let ((inline$$1_CoreAddresses_CURRENCY_INFO_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 292546) 293004) anon12_Then_correct@@0) (=> (= (ControlFlow 0 292546) 292560) anon12_Else_correct@@0)))))
(let ((anon11_Else_correct@@0  (=> (and (not $t0) (= (ControlFlow 0 292552) 292546)) inline$$1_CoreAddresses_CURRENCY_INFO_ADDRESS$0$anon0_correct)))
(let ((anon0$1_correct@@2  (=> (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@4)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@4) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@4)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@4) 10000000000))))
 :qid |Diemcvc5bpl.6235:20|
 :skolemid |192|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@4))
)) (= $t0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 292475) 293030) anon11_Then_correct@@0) (=> (= (ControlFlow 0 292475) 292552) anon11_Else_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_122401_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_122401| stream@@3) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_122401| stream@@3) v@@41) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 292395) 292475)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 432523) 292395) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t25@2 () T@$Mutation_170618)
(declare-fun $t25@1 () T@$Mutation_170618)
(declare-fun |inline$$1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''$0$m'@1| () T@$Mutation_133215)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_155527)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t33 () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun $t10 () Int)
(declare-fun _$t1@@0 () |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun $t12 () Int)
(declare-fun $t11 () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun $t17@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t26@0 () T@$Mutation_133215)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t32 () Int)
(declare-fun |inline$$1_Vector_length'$1_Diem_PreburnWithMetadata'#0''$0$l@1| () Int)
(declare-fun $t27@0 () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun |$temp_0'vec'$1_Diem_PreburnWithMetadata'#0'''@0| () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun $t25 () T@$Mutation_170618)
(declare-fun $t13 () Int)
(declare-fun $t25@0 () T@$Mutation_170618)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t24 () Int)
(declare-fun |inline$$1_Diem_value'#0'$0$$t1@1| () Int)
(declare-fun $t19@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t14@0 () Bool)
(declare-fun $t18@0 () |T@$1_Diem_Preburn'#0'|)
(declare-fun $t16 () Int)
(declare-fun _$t0@@2 () Int)
(declare-fun $t3@@1 () T@$Mutation_133215)
(declare-fun $t26 () T@$Mutation_133215)
(push 1)
(set-info :boogie-vc-id $1_Diem_add_preburn_to_queue$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 433170) (let ((anon29_Else_correct  (=> (and (not $abort_flag@0@@2) (= $t25@2 ($Mutation_170618 (|l#$Mutation_170618| $t25@1) (|p#$Mutation_170618| $t25@1) (|$1_Diem_PreburnQueue'#0'| (|v#$Mutation_133215| |inline$$1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''$0$m'@1|))))) (and (=> (= (ControlFlow 0 294567) (- 0 434217)) (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@2))) 256)) (=> (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@2))) 256) (and (=> (= (ControlFlow 0 294567) (- 0 434231)) (let (($range_0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@2))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@44 $i_1))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@2)) i@@44)))) 0)))
 :qid |Diemcvc5bpl.6771:107|
 :skolemid |202|
)))) (=> (let (($range_0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@2))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0 $i_1@@0) (let ((i@@44 $i_1@@0))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@2)) i@@44)))) 0)))
 :qid |Diemcvc5bpl.6771:107|
 :skolemid |202|
))) (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@0| ($Memory_155527 (|Store__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) (|a#$Global| (|l#$Mutation_170618| $t25@2)) true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) (|a#$Global| (|l#$Mutation_170618| $t25@2)) (|v#$Mutation_170618| $t25@2)))) (= $t33 (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory@0|) $t10)))) (and (=> (= (ControlFlow 0 294567) (- 0 434317)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t10)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t10))) (and (=> (= (ControlFlow 0 294567) (- 0 434329)) (not (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@0))) 0))) (=> (not (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@0))) 0)) (and (=> (= (ControlFlow 0 294567) (- 0 434345)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t12) (>= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t12))) 256)))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t12) (>= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t12))) 256))) (and (=> (= (ControlFlow 0 294567) (- 0 434370)) (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory@0|) $t10)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory@0|) $t10) (and (=> (= (ControlFlow 0 294567) (- 0 434378)) (and (and (= (seq.len $t33) (+ (seq.len $t11) 1)) (= (seq.nth $t33 (- (seq.len $t33) 1)) _$t1@@0)) (= (seq.extract $t33 (|lb#$Range| ($Range 0 (- (seq.len $t33) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t33) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t33) 1))))) (seq.extract $t11 (|lb#$Range| ($Range 0 (seq.len $t11))) (- (|ub#$Range| ($Range 0 (seq.len $t11))) (|lb#$Range| ($Range 0 (seq.len $t11)))))))) (=> (and (and (= (seq.len $t33) (+ (seq.len $t11) 1)) (= (seq.nth $t33 (- (seq.len $t33) 1)) _$t1@@0)) (= (seq.extract $t33 (|lb#$Range| ($Range 0 (- (seq.len $t33) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t33) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t33) 1))))) (seq.extract $t11 (|lb#$Range| ($Range 0 (seq.len $t11))) (- (|ub#$Range| ($Range 0 (seq.len $t11))) (|lb#$Range| ($Range 0 (seq.len $t11))))))) (and (=> (= (ControlFlow 0 294567) (- 0 434388)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 294567) (- 0 434409)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@26)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@26))))
 :qid |Diemcvc5bpl.6820:15|
 :skolemid |203|
))) (=> (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@27)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@27))))
 :qid |Diemcvc5bpl.6820:15|
 :skolemid |203|
)) (and (=> (= (ControlFlow 0 294567) (- 0 434438)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@28)))
 :qid |Diemcvc5bpl.6825:15|
 :skolemid |204|
))) (=> (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_154883| |$1_Diem_MintCapability'#0'_$memory|) addr@@29)))
 :qid |Diemcvc5bpl.6825:15|
 :skolemid |204|
)) (and (=> (= (ControlFlow 0 294567) (- 0 434463)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 294567) (- 0 434484)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@30)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@30))))
 :qid |Diemcvc5bpl.6835:15|
 :skolemid |205|
))) (=> (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@31)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@31))))
 :qid |Diemcvc5bpl.6835:15|
 :skolemid |205|
)) (and (=> (= (ControlFlow 0 294567) (- 0 434513)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@32)))
 :qid |Diemcvc5bpl.6840:15|
 :skolemid |206|
))) (=> (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_155142| |$1_Diem_BurnCapability'#0'_$memory|) addr@@33)))
 :qid |Diemcvc5bpl.6840:15|
 :skolemid |206|
)) (and (=> (= (ControlFlow 0 294567) (- 0 434538)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 294567) (- 0 434559)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 294567) (- 0 434580)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@34) (|Select__T@[Int]Bool_| (|domain#$Memory_155587| |$1_Diem_Preburn'#0'_$memory|) addr@@34))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr@@34))))
 :qid |Diemcvc5bpl.6855:15|
 :skolemid |207|
))) (=> (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@35) (|Select__T@[Int]Bool_| (|domain#$Memory_155587| |$1_Diem_Preburn'#0'_$memory|) addr@@35))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr@@35))))
 :qid |Diemcvc5bpl.6855:15|
 :skolemid |207|
)) (and (=> (= (ControlFlow 0 294567) (- 0 434615)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@36) (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr@@36)))
 :qid |Diemcvc5bpl.6860:15|
 :skolemid |208|
))) (=> (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@37) (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr@@37)))
 :qid |Diemcvc5bpl.6860:15|
 :skolemid |208|
)) (=> (= (ControlFlow 0 294567) (- 0 434639)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_160865| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))))))))))))))))))))))))))))))))))))))))
(let ((anon23_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 293539) (- 0 434084)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t10)) (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@0))) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t12) (>= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t12))) 256)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t10)) (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@0))) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t12) (>= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t12))) 256))) (=> (= (ControlFlow 0 293539) (- 0 434126)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t10)) (= 1 $t17@0)) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@0))) 0) (= 7 $t17@0))) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t12) (>= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t12))) 256)) (= 8 $t17@0))))))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t17@0 $abort_code@1@@2) (= (ControlFlow 0 294581) 293539))) L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''$0$m'@1| ($Mutation_133215 (|l#$Mutation_133215| $t26@0) (|p#$Mutation_133215| $t26@0) (seq.++ (|v#$Mutation_133215| $t26@0) (seq.unit _$t1@@0)))) (and (=> (= (ControlFlow 0 294092) 294581) anon29_Then_correct) (=> (= (ControlFlow 0 294092) 294567) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 294098) 294092)) |inline$$1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''$0$anon0_correct|)))
(let ((anon28_Else_correct  (=> (not inline$$Lt$0$dst@1) (and (=> (= (ControlFlow 0 294037) (- 0 433945)) (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@1))) 256)) (=> (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@1))) 256) (and (=> (= (ControlFlow 0 294037) (- 0 433959)) (let (($range_0@@0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@1))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((i@@45 $i_1@@1))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@1)) i@@45)))) 0)))
 :qid |Diemcvc5bpl.6729:107|
 :skolemid |201|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@1))))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((i@@45 $i_1@@2))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@1)) i@@45)))) 0)))
 :qid |Diemcvc5bpl.6729:107|
 :skolemid |201|
))) (=> (= $t32 $t32) (=> (and (= $t17@0 $t32) (= (ControlFlow 0 294037) 293539)) L7_correct)))))))))
(let ((anon27_Else$1_correct  (=> (|$IsValid'u64'| 11) (=> (and (and (|$IsValid'u64'| $t32) (= $t32 8)) (and (= $t32 $t32) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 293954) 294098) anon28_Then_correct) (=> (= (ControlFlow 0 293954) 294037) anon28_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< |inline$$1_Vector_length'$1_Diem_PreburnWithMetadata'#0''$0$l@1| 256)) (= (ControlFlow 0 293914) 293954)) anon27_Else$1_correct)))
(let ((anon27_Else_correct  (=> (not $abort_flag@0@@2) (=> (and (|$IsValid'u64'| 256) (= (ControlFlow 0 293920) 293914)) inline$$Lt$0$anon0_correct))))
(let ((anon27_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t17@0 $abort_code@1@@2) (= (ControlFlow 0 294595) 293539))) L7_correct)))
(let ((|inline$$1_Vector_length'$1_Diem_PreburnWithMetadata'#0''$0$anon0_correct|  (=> (= |inline$$1_Vector_length'$1_Diem_PreburnWithMetadata'#0''$0$l@1| (seq.len $t27@0)) (and (=> (= (ControlFlow 0 293854) 294595) anon27_Then_correct) (=> (= (ControlFlow 0 293854) 293920) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (not $abort_flag@0@@2) (= $t26@0 ($Mutation_133215 (|l#$Mutation_170618| $t25@1) (seq.++ (|p#$Mutation_170618| $t25@1) (seq.unit 0)) (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_170618| $t25@1))))) (=> (and (and (= |$temp_0'vec'$1_Diem_PreburnWithMetadata'#0'''@0| (|v#$Mutation_133215| $t26@0)) (= |$temp_0'vec'$1_Diem_PreburnWithMetadata'#0'''@0| |$temp_0'vec'$1_Diem_PreburnWithMetadata'#0'''@0|)) (and (= $t27@0 (|v#$Mutation_133215| $t26@0)) (= (ControlFlow 0 293860) 293854))) |inline$$1_Vector_length'$1_Diem_PreburnWithMetadata'#0''$0$anon0_correct|))))
(let ((anon26_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t17@0 $abort_code@1@@2) (= (ControlFlow 0 294609) 293539))) L7_correct)))
(let ((anon25_Then$1_correct  (=> (= $t25@1 $t25) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 294661) 294609) anon26_Then_correct) (=> (= (ControlFlow 0 294661) 293860) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t13)) (= (ControlFlow 0 294659) 294661)) anon25_Then$1_correct)))
(let ((anon25_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t13) (=> (and (and (= $t25@0 ($Mutation_170618 ($Global $t13) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t13))) (= $t25@1 $t25@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 293788) 294609) anon26_Then_correct) (=> (= (ControlFlow 0 293788) 293860) anon26_Else_correct))))))
(let ((anon24_Then_correct  (=> inline$$Gt$0$dst@1 (and (=> (= (ControlFlow 0 293766) (- 0 433699)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t13)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t13) (and (=> (= (ControlFlow 0 293766) 294659) anon25_Then_correct) (=> (= (ControlFlow 0 293766) 293788) anon25_Else_correct)))))))
(let ((anon24_Else_correct  (=> (and (and (not inline$$Gt$0$dst@1) (= $t24 $t24)) (and (= $t17@0 $t24) (= (ControlFlow 0 293756) 293539))) L7_correct)))
(let ((anon23_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t24) (= $t24 7)) (and (= $t24 $t24) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 293740) 293766) anon24_Then_correct) (=> (= (ControlFlow 0 293740) 293756) anon24_Else_correct))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> |inline$$1_Diem_value'#0'$0$$t1@1| 0)) (= (ControlFlow 0 293704) 293740)) anon23_Else$1_correct)))
(let ((anon23_Else_correct  (=> (not false) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 293710) 293704)) inline$$Gt$0$anon0_correct))))
(let ((|inline$$1_Diem_value'#0'$0$anon0_correct|  (=> (= $t19@0 $t19@0) (=> (and (= |inline$$1_Diem_value'#0'$0$$t1@1| (|$value#$1_Diem_Diem'#0'| $t19@0)) (= |inline$$1_Diem_value'#0'$0$$t1@1| |inline$$1_Diem_value'#0'$0$$t1@1|)) (and (=> (= (ControlFlow 0 293644) 294675) anon23_Then_correct) (=> (= (ControlFlow 0 293644) 293710) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (and $t14@0 (= $t18@0 (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@0))) (and (= $t19@0 (|$to_burn#$1_Diem_Preburn'#0'| $t18@0)) (= (ControlFlow 0 293650) 293644))) |inline$$1_Diem_value'#0'$0$anon0_correct|)))
(let ((anon22_Else_correct  (=> (and (and (not $t14@0) (= $t16 $t16)) (and (= $t17@0 $t16) (= (ControlFlow 0 293415) 293539))) L7_correct)))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'address'| _$t0@@2) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| _$t1@@0)) (=> (and (and (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@5) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@5)) 256) (let (($range_1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@5)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@46 $i_2))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@5) i@@46)))) 0)))
 :qid |Diemcvc5bpl.6474:199|
 :skolemid |199|
))))))
 :qid |Diemcvc5bpl.6473:20|
 :skolemid |200|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@5))
)) (= $t10 _$t0@@2)) (and (= $t11 (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t10))) (= $t12 _$t0@@2))) (and (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t10) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@0 _$t1@@0) (|$IsValid'address'| $t13)))) (and (and (and (= $t13 _$t0@@2) (= $t13 $t13)) (and (= $t14@0 (|Select__T@[Int]Bool_| (|domain#$Memory_155527| |$1_Diem_PreburnQueue'#0'_$memory|) $t13)) (|$IsValid'u64'| 11))) (and (and (|$IsValid'u64'| $t16) (= $t16 1)) (and (= $t16 $t16) (= $t14@0 $t14@0))))) (and (=> (= (ControlFlow 0 293399) 293650) anon22_Then_correct) (=> (= (ControlFlow 0 293399) 293415) anon22_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_122401_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_122401| stream@@4) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_122401| stream@@4) v@@42) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 293174) 293399)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (and (and (= (seq.len (|p#$Mutation_133215| $t3@@1)) 0) (= (seq.len (|p#$Mutation_170618| $t25)) 0)) (and (= (seq.len (|p#$Mutation_133215| $t26)) 0) (= (ControlFlow 0 293184) 293174))) inline$$InitEventStore$0$anon0_correct@@3)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 433170) 293184) anon0_correct@@3)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
