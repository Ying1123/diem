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
(declare-datatypes ((T@$Memory_91273 0)) ((($Memory_91273 (|domain#$Memory_91273| |T@[Int]Bool|) (|contents#$Memory_91273| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_65612 0)) (((Vec_65612 (|v#Vec_65612| |T@[Int]#0|) (|l#Vec_65612| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_136629 0)) ((($Memory_136629 (|domain#$Memory_136629| |T@[Int]Bool|) (|contents#$Memory_136629| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_131974 0)) ((($Memory_131974 (|domain#$Memory_131974| |T@[Int]Bool|) (|contents#$Memory_131974| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_129780 0)) ((($Memory_129780 (|domain#$Memory_129780| |T@[Int]Bool|) (|contents#$Memory_129780| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_130092 0)) ((($Memory_130092 (|domain#$Memory_130092| |T@[Int]Bool|) (|contents#$Memory_130092| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_129747 0)) ((($Memory_129747 (|domain#$Memory_129747| |T@[Int]Bool|) (|contents#$Memory_129747| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_129527 0)) ((($Memory_129527 (|domain#$Memory_129527| |T@[Int]Bool|) (|contents#$Memory_129527| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_129141 0)) ((($Memory_129141 (|domain#$Memory_129141| |T@[Int]Bool|) (|contents#$Memory_129141| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_126521 0)) ((($Memory_126521 (|domain#$Memory_126521| |T@[Int]Bool|) (|contents#$Memory_126521| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_64321 0)) (((Vec_64321 (|v#Vec_64321| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_64321| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_64321) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_64282 0)) (((Vec_64282 (|v#Vec_64282| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_64282| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_64282) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_121123 0)) ((($Memory_121123 (|domain#$Memory_121123| |T@[Int]Bool|) (|contents#$Memory_121123| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120904 0)) ((($Memory_120904 (|domain#$Memory_120904| |T@[Int]Bool|) (|contents#$Memory_120904| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_131752 0)) ((($Memory_131752 (|domain#$Memory_131752| |T@[Int]Bool|) (|contents#$Memory_131752| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113716 0)) ((($Memory_113716 (|domain#$Memory_113716| |T@[Int]Bool|) (|contents#$Memory_113716| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113629 0)) ((($Memory_113629 (|domain#$Memory_113629| |T@[Int]Bool|) (|contents#$Memory_113629| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_22325 0)) (((Vec_22325 (|v#Vec_22325| |T@[Int]Int|) (|l#Vec_22325| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22325) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22325) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_22325) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_130735 0)) ((($Memory_130735 (|domain#$Memory_130735| |T@[Int]Bool|) (|contents#$Memory_130735| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_22325) (|$base_url#$1_DualAttestation_Credential| T@Vec_22325) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_22325) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_126457 0)) ((($Memory_126457 (|domain#$Memory_126457| |T@[Int]Bool|) (|contents#$Memory_126457| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_22325) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_22325) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_64243 0)) (((Vec_64243 (|v#Vec_64243| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_64243| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_64243) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_64584 0)) (((Vec_64584 (|v#Vec_64584| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_64584| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_124863 0)) ((($Memory_124863 (|domain#$Memory_124863| |T@[Int]Bool|) (|contents#$Memory_124863| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_124274 0)) ((($Memory_124274 (|domain#$Memory_124274| |T@[Int]Bool|) (|contents#$Memory_124274| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109904 0)) ((($Memory_109904 (|domain#$Memory_109904| |T@[Int]Bool|) (|contents#$Memory_109904| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109817 0)) ((($Memory_109817 (|domain#$Memory_109817| |T@[Int]Bool|) (|contents#$Memory_109817| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113964 0)) ((($Memory_113964 (|domain#$Memory_113964| |T@[Int]Bool|) (|contents#$Memory_113964| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_122961 0)) ((($Memory_122961 (|domain#$Memory_122961| |T@[Int]Bool|) (|contents#$Memory_122961| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_64130 0)) (((Vec_64130 (|v#Vec_64130| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_64130| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_64130) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114331 0)) ((($Memory_114331 (|domain#$Memory_114331| |T@[Int]Bool|) (|contents#$Memory_114331| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113883 0)) ((($Memory_113883 (|domain#$Memory_113883| |T@[Int]Bool|) (|contents#$Memory_113883| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_125363 0)) ((($Memory_125363 (|domain#$Memory_125363| |T@[Int]Bool|) (|contents#$Memory_125363| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_64091 0)) (((Vec_64091 (|v#Vec_64091| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_64091| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_64091) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114214 0)) ((($Memory_114214 (|domain#$Memory_114214| |T@[Int]Bool|) (|contents#$Memory_114214| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]Vec_22325| 0)
(declare-datatypes ((T@Vec_63926 0)) (((Vec_63926 (|v#Vec_63926| |T@[Int]Vec_22325|) (|l#Vec_63926| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_103248 0)) ((($Memory_103248 (|domain#$Memory_103248| |T@[Int]Bool|) (|contents#$Memory_103248| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_103161 0)) ((($Memory_103161 (|domain#$Memory_103161| |T@[Int]Bool|) (|contents#$Memory_103161| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_103074 0)) ((($Memory_103074 (|domain#$Memory_103074| |T@[Int]Bool|) (|contents#$Memory_103074| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_135317 0)) ((($Memory_135317 (|domain#$Memory_135317| |T@[Int]Bool|) (|contents#$Memory_135317| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_102987 0)) ((($Memory_102987 (|domain#$Memory_102987| |T@[Int]Bool|) (|contents#$Memory_102987| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_102900 0)) ((($Memory_102900 (|domain#$Memory_102900| |T@[Int]Bool|) (|contents#$Memory_102900| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_101749 0)) ((($Memory_101749 (|domain#$Memory_101749| |T@[Int]Bool|) (|contents#$Memory_101749| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_101816 0)) ((($Memory_101816 (|domain#$Memory_101816| |T@[Int]Bool|) (|contents#$Memory_101816| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_101667 0)) ((($Memory_101667 (|domain#$Memory_101667| |T@[Int]Bool|) (|contents#$Memory_101667| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_101585 0)) ((($Memory_101585 (|domain#$Memory_101585| |T@[Int]Bool|) (|contents#$Memory_101585| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_64584) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_101503 0)) ((($Memory_101503 (|domain#$Memory_101503| |T@[Int]Bool|) (|contents#$Memory_101503| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_63926) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_101421 0)) ((($Memory_101421 (|domain#$Memory_101421| |T@[Int]Bool|) (|contents#$Memory_101421| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_63926) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_100177 0)) ((($Memory_100177 (|domain#$Memory_100177| |T@[Int]Bool|) (|contents#$Memory_100177| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_22325) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109515 0)) ((($Memory_109515 (|domain#$Memory_109515| |T@[Int]Bool|) (|contents#$Memory_109515| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_22325) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109450 0)) ((($Memory_109450 (|domain#$Memory_109450| |T@[Int]Bool|) (|contents#$Memory_109450| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_100679 0)) ((($Memory_100679 (|domain#$Memory_100679| |T@[Int]Bool|) (|contents#$Memory_100679| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_100646 0)) ((($Memory_100646 (|domain#$Memory_100646| |T@[Int]Bool|) (|contents#$Memory_100646| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_98722 0)) ((($Memory_98722 (|domain#$Memory_98722| |T@[Int]Bool|) (|contents#$Memory_98722| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_22325) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_22325) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_22325) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainEvent 0)) ((($1_DiemId_DiemIdDomainEvent (|$removed#$1_DiemId_DiemIdDomainEvent| Bool) (|$domain#$1_DiemId_DiemIdDomainEvent| T@$1_DiemId_DiemIdDomain) (|$address#$1_DiemId_DiemIdDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_22325) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_22325) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22325) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_22325) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| (|e#$ToEventRep'$1_DiemId_DiemIdDomainEvent'| T@$1_DiemId_DiemIdDomainEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_63793 0)) (((Multiset_63793 (|v#Multiset_63793| |T@[$EventRep]Int|) (|l#Multiset_63793| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63793| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63793|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_132826 0)) ((($Mutation_132826 (|l#$Mutation_132826| T@$Location) (|p#$Mutation_132826| T@Vec_22325) (|v#$Mutation_132826| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_132781 0)) ((($Mutation_132781 (|l#$Mutation_132781| T@$Location) (|p#$Mutation_132781| T@Vec_22325) (|v#$Mutation_132781| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_33792 0)) ((($Mutation_33792 (|l#$Mutation_33792| T@$Location) (|p#$Mutation_33792| T@Vec_22325) (|v#$Mutation_33792| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_119611 0)) ((($Mutation_119611 (|l#$Mutation_119611| T@$Location) (|p#$Mutation_119611| T@Vec_22325) (|v#$Mutation_119611| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_106184 0)) ((($Mutation_106184 (|l#$Mutation_106184| T@$Location) (|p#$Mutation_106184| T@Vec_22325) (|v#$Mutation_106184| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_99196 0)) ((($Mutation_99196 (|l#$Mutation_99196| T@$Location) (|p#$Mutation_99196| T@Vec_22325) (|v#$Mutation_99196| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_91901 0)) ((($Mutation_91901 (|l#$Mutation_91901| T@$Location) (|p#$Mutation_91901| T@Vec_22325) (|v#$Mutation_91901| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12788 0)) ((($Mutation_12788 (|l#$Mutation_12788| T@$Location) (|p#$Mutation_12788| T@Vec_22325) (|v#$Mutation_12788| Int) ) ) ))
(declare-datatypes ((T@$Mutation_86214 0)) ((($Mutation_86214 (|l#$Mutation_86214| T@$Location) (|p#$Mutation_86214| T@Vec_22325) (|v#$Mutation_86214| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$Mutation_85126 0)) ((($Mutation_85126 (|l#$Mutation_85126| T@$Location) (|p#$Mutation_85126| T@Vec_22325) (|v#$Mutation_85126| T@Vec_63926) ) ) ))
(declare-datatypes ((T@$Mutation_83417 0)) ((($Mutation_83417 (|l#$Mutation_83417| T@$Location) (|p#$Mutation_83417| T@Vec_22325) (|v#$Mutation_83417| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_82430 0)) ((($Mutation_82430 (|l#$Mutation_82430| T@$Location) (|p#$Mutation_82430| T@Vec_22325) (|v#$Mutation_82430| T@Vec_64243) ) ) ))
(declare-datatypes ((T@$Mutation_80775 0)) ((($Mutation_80775 (|l#$Mutation_80775| T@$Location) (|p#$Mutation_80775| T@Vec_22325) (|v#$Mutation_80775| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_79788 0)) ((($Mutation_79788 (|l#$Mutation_79788| T@$Location) (|p#$Mutation_79788| T@Vec_22325) (|v#$Mutation_79788| T@Vec_64091) ) ) ))
(declare-datatypes ((T@$Mutation_78079 0)) ((($Mutation_78079 (|l#$Mutation_78079| T@$Location) (|p#$Mutation_78079| T@Vec_22325) (|v#$Mutation_78079| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_77092 0)) ((($Mutation_77092 (|l#$Mutation_77092| T@$Location) (|p#$Mutation_77092| T@Vec_22325) (|v#$Mutation_77092| T@Vec_64130) ) ) ))
(declare-datatypes ((T@$Mutation_75383 0)) ((($Mutation_75383 (|l#$Mutation_75383| T@$Location) (|p#$Mutation_75383| T@Vec_22325) (|v#$Mutation_75383| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_74396 0)) ((($Mutation_74396 (|l#$Mutation_74396| T@$Location) (|p#$Mutation_74396| T@Vec_22325) (|v#$Mutation_74396| T@Vec_64584) ) ) ))
(declare-datatypes ((T@$Mutation_72596 0)) ((($Mutation_72596 (|l#$Mutation_72596| T@$Location) (|p#$Mutation_72596| T@Vec_22325) (|v#$Mutation_72596| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71609 0)) ((($Mutation_71609 (|l#$Mutation_71609| T@$Location) (|p#$Mutation_71609| T@Vec_22325) (|v#$Mutation_71609| T@Vec_64321) ) ) ))
(declare-datatypes ((T@$Mutation_69944 0)) ((($Mutation_69944 (|l#$Mutation_69944| T@$Location) (|p#$Mutation_69944| T@Vec_22325) (|v#$Mutation_69944| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68957 0)) ((($Mutation_68957 (|l#$Mutation_68957| T@$Location) (|p#$Mutation_68957| T@Vec_22325) (|v#$Mutation_68957| T@Vec_64282) ) ) ))
(declare-datatypes ((T@$Mutation_67244 0)) ((($Mutation_67244 (|l#$Mutation_67244| T@$Location) (|p#$Mutation_67244| T@Vec_22325) (|v#$Mutation_67244| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_66257 0)) ((($Mutation_66257 (|l#$Mutation_66257| T@$Location) (|p#$Mutation_66257| T@Vec_22325) (|v#$Mutation_66257| T@Vec_65612) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_65612 T@Vec_65612) Bool)
(declare-fun InRangeVec_56497 (T@Vec_65612 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_65612) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_65612 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_64282 T@Vec_64282) Bool)
(declare-fun InRangeVec_56698 (T@Vec_64282 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_64282) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_64282 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_64321 T@Vec_64321) Bool)
(declare-fun InRangeVec_56899 (T@Vec_64321 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_64321) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_64321 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_64584 T@Vec_64584) Bool)
(declare-fun InRangeVec_57100 (T@Vec_64584 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_22325 T@Vec_22325) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_64584) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_64584 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_64130 T@Vec_64130) Bool)
(declare-fun InRangeVec_57301 (T@Vec_64130 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_64130) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_64130 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_64091 T@Vec_64091) Bool)
(declare-fun InRangeVec_57502 (T@Vec_64091 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_64091) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_64091 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_64243 T@Vec_64243) Bool)
(declare-fun InRangeVec_57703 (T@Vec_64243 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_64243) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_64243 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_63926 T@Vec_63926) Bool)
(declare-fun InRangeVec_84549 (T@Vec_63926 Int) Bool)
(declare-fun |Select__T@[Int]Vec_22325_| (|T@[Int]Vec_22325| Int) T@Vec_22325)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_63926) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_22325) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_63926 T@Vec_22325) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_22325 T@Vec_22325) Bool)
(declare-fun InRangeVec_12164 (T@Vec_22325 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_22325) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_22325 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_22325 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_22325) T@Vec_22325)
(declare-fun $1_Hash_sha3 (T@Vec_22325) T@Vec_22325)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_22325) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_22325 T@Vec_22325 T@Vec_22325) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63793_| (|T@[$1_Event_EventHandle]Multiset_63793| T@$1_Event_EventHandle) T@Multiset_63793)
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
(declare-fun IndexOfVec_22325 (T@Vec_22325 Int) Int)
(declare-fun IndexOfVec_63926 (T@Vec_63926 T@Vec_22325) Int)
(declare-fun IndexOfVec_64091 (T@Vec_64091 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_64130 (T@Vec_64130 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_64243 (T@Vec_64243 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_64282 (T@Vec_64282 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_64321 (T@Vec_64321 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_64584 (T@Vec_64584 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_65612 (T@Vec_65612 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63793| |T@[$1_Event_EventHandle]Multiset_63793|) |T@[$1_Event_EventHandle]Multiset_63793|)
(declare-fun |lambda#30| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]Vec_22325| |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#25| (Int Int |T@[Int]Vec_22325| Int Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Vec_22325| |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#31| (Int Int |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |RegisteredCurrenciesbaselinebpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |RegisteredCurrenciesbaselinebpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |RegisteredCurrenciesbaselinebpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |RegisteredCurrenciesbaselinebpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |RegisteredCurrenciesbaselinebpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |RegisteredCurrenciesbaselinebpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |RegisteredCurrenciesbaselinebpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |RegisteredCurrenciesbaselinebpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_65612) (v2 T@Vec_65612) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_65612| v1) (|l#Vec_65612| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_56497 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_65612| v2) i@@0)))
 :qid |RegisteredCurrenciesbaselinebpl.615:13|
 :skolemid |17|
))))
 :qid |RegisteredCurrenciesbaselinebpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_65612) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_65612| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_56497 v@@4 i@@1) true)
 :qid |RegisteredCurrenciesbaselinebpl.621:13|
 :skolemid |19|
))))
 :qid |RegisteredCurrenciesbaselinebpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_65612) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_56497 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) i@@3) e))
 :qid |RegisteredCurrenciesbaselinebpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_56497 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) j) e)))
 :qid |RegisteredCurrenciesbaselinebpl.634:17|
 :skolemid |22|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_64282) (v2@@0 T@Vec_64282) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_64282| v1@@0) (|l#Vec_64282| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_56698 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v2@@0) i@@4)))
 :qid |RegisteredCurrenciesbaselinebpl.796:13|
 :skolemid |24|
))))
 :qid |RegisteredCurrenciesbaselinebpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_64282) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_64282| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_56698 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@6) i@@5)))
 :qid |RegisteredCurrenciesbaselinebpl.802:13|
 :skolemid |26|
))))
 :qid |RegisteredCurrenciesbaselinebpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_64282) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_56698 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) i@@7) e@@0))
 :qid |RegisteredCurrenciesbaselinebpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_56698 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) j@@0) e@@0)))
 :qid |RegisteredCurrenciesbaselinebpl.815:17|
 :skolemid |29|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_64321) (v2@@1 T@Vec_64321) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_64321| v1@@1) (|l#Vec_64321| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_56899 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v2@@1) i@@8)))
 :qid |RegisteredCurrenciesbaselinebpl.977:13|
 :skolemid |31|
))))
 :qid |RegisteredCurrenciesbaselinebpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_64321) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_64321| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_56899 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@8) i@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.983:13|
 :skolemid |33|
))))
 :qid |RegisteredCurrenciesbaselinebpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_64321) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_56899 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) i@@11) e@@1))
 :qid |RegisteredCurrenciesbaselinebpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_56899 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) j@@1) e@@1)))
 :qid |RegisteredCurrenciesbaselinebpl.996:17|
 :skolemid |36|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_64584) (v2@@2 T@Vec_64584) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_64584| v1@@2) (|l#Vec_64584| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_57100 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))))
 :qid |RegisteredCurrenciesbaselinebpl.1158:13|
 :skolemid |38|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_64584) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_64584| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_57100 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@10) i@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.1164:13|
 :skolemid |40|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_64584) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_57100 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |RegisteredCurrenciesbaselinebpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_57100 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |RegisteredCurrenciesbaselinebpl.1177:17|
 :skolemid |43|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_64130) (v2@@3 T@Vec_64130) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3)  (and (= (|l#Vec_64130| v1@@3) (|l#Vec_64130| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_57301 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v2@@3) i@@16)))))
 :qid |RegisteredCurrenciesbaselinebpl.1339:13|
 :skolemid |45|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1337:65|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_64130) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_64130| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_57301 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@12) i@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.1345:13|
 :skolemid |47|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1343:65|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_64130) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_57301 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3))))
 :qid |RegisteredCurrenciesbaselinebpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_57301 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))))
 :qid |RegisteredCurrenciesbaselinebpl.1358:17|
 :skolemid |50|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_64091) (v2@@4 T@Vec_64091) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4)  (and (= (|l#Vec_64091| v1@@4) (|l#Vec_64091| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_57502 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v2@@4) i@@20)))))
 :qid |RegisteredCurrenciesbaselinebpl.1520:13|
 :skolemid |52|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_64091) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_64091| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_57502 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@14) i@@21)))
 :qid |RegisteredCurrenciesbaselinebpl.1526:13|
 :skolemid |54|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_64091) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_57502 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4))))
 :qid |RegisteredCurrenciesbaselinebpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_57502 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))))
 :qid |RegisteredCurrenciesbaselinebpl.1539:17|
 :skolemid |57|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_64243) (v2@@5 T@Vec_64243) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5)  (and (= (|l#Vec_64243| v1@@5) (|l#Vec_64243| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_57703 v1@@5 i@@24) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24)))))
 :qid |RegisteredCurrenciesbaselinebpl.1701:13|
 :skolemid |59|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1699:51|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_64243) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_64243| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_57703 v@@16 i@@25) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@16) i@@25)))
 :qid |RegisteredCurrenciesbaselinebpl.1707:13|
 :skolemid |61|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1705:51|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_64243) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@26 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_57703 v@@17 i@@27)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5))))
 :qid |RegisteredCurrenciesbaselinebpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_57703 v@@17 i@@26)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))))
 :qid |RegisteredCurrenciesbaselinebpl.1720:17|
 :skolemid |64|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_63926) (v2@@6 T@Vec_63926) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6)  (and (= (|l#Vec_63926| v1@@6) (|l#Vec_63926| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_84549 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v1@@6) i@@28) (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v2@@6) i@@28)))
 :qid |RegisteredCurrenciesbaselinebpl.1882:13|
 :skolemid |66|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_63926) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_63926| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_84549 v@@18 i@@29) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@18) i@@29)))
 :qid |RegisteredCurrenciesbaselinebpl.1888:13|
 :skolemid |68|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_63926) (e@@6 T@Vec_22325) ) (! (let ((i@@30 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_84549 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) i@@31) e@@6))
 :qid |RegisteredCurrenciesbaselinebpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_84549 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) j@@6) e@@6)))
 :qid |RegisteredCurrenciesbaselinebpl.1901:17|
 :skolemid |71|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_22325) (v2@@7 T@Vec_22325) ) (! (= (|$IsEqual'vec'address''| v1@@7 v2@@7)  (and (= (|l#Vec_22325| v1@@7) (|l#Vec_22325| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_12164 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_22325| v2@@7) i@@32)))
 :qid |RegisteredCurrenciesbaselinebpl.2063:13|
 :skolemid |73|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'address''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_22325) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_22325| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_12164 v@@20 i@@33) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_22325| v@@20) i@@33)))
 :qid |RegisteredCurrenciesbaselinebpl.2069:13|
 :skolemid |75|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_22325) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_12164 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) i@@35) e@@7))
 :qid |RegisteredCurrenciesbaselinebpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_12164 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) j@@7) e@@7)))
 :qid |RegisteredCurrenciesbaselinebpl.2082:17|
 :skolemid |78|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_22325) (v2@@8 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8)  (and (= (|l#Vec_22325| v1@@8) (|l#Vec_22325| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_12164 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_22325| v2@@8) i@@36)))
 :qid |RegisteredCurrenciesbaselinebpl.2244:13|
 :skolemid |80|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2242:28|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u8''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_22325) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_22325| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_12164 v@@22 i@@37) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_22325| v@@22) i@@37)))
 :qid |RegisteredCurrenciesbaselinebpl.2250:13|
 :skolemid |82|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2248:28|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_22325) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_12164 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) i@@39) e@@8))
 :qid |RegisteredCurrenciesbaselinebpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_12164 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) j@@8) e@@8)))
 :qid |RegisteredCurrenciesbaselinebpl.2263:17|
 :skolemid |85|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_22325) (v2@@9 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.2436:15|
 :skolemid |87|
 :pattern ( ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9))
)))
(assert (forall ((v1@@10 T@Vec_22325) (v2@@10 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10)))
 :qid |RegisteredCurrenciesbaselinebpl.2452:15|
 :skolemid |88|
 :pattern ( ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10))
)))
(assert (forall ((k1 T@Vec_22325) (k2 T@Vec_22325) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |RegisteredCurrenciesbaselinebpl.2499:15|
 :skolemid |89|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_22325) (s2 T@Vec_22325) (k1@@0 T@Vec_22325) (k2@@0 T@Vec_22325) (m1 T@Vec_22325) (m2 T@Vec_22325) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |RegisteredCurrenciesbaselinebpl.2502:15|
 :skolemid |90|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63793| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63793| stream) v@@24) 0)
 :qid |RegisteredCurrenciesbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2578:13|
 :skolemid |91|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |RegisteredCurrenciesbaselinebpl.2619:80|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11)))
 :qid |RegisteredCurrenciesbaselinebpl.2625:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |RegisteredCurrenciesbaselinebpl.2675:82|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12)))
 :qid |RegisteredCurrenciesbaselinebpl.2681:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |RegisteredCurrenciesbaselinebpl.2731:80|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@13 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@13 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@13)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.2737:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |RegisteredCurrenciesbaselinebpl.2787:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_AdminTransactionEvent) (v2@@14 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14)))
 :qid |RegisteredCurrenciesbaselinebpl.2793:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |RegisteredCurrenciesbaselinebpl.2843:76|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_CreateAccountEvent) (v2@@15 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.2849:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |RegisteredCurrenciesbaselinebpl.2899:78|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@16 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.2905:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |RegisteredCurrenciesbaselinebpl.2955:74|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_SentPaymentEvent) (v2@@17 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@17))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.2961:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |RegisteredCurrenciesbaselinebpl.3011:69|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@18 T@$1_DiemBlock_NewBlockEvent) (v2@@18 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@18) (|$round#$1_DiemBlock_NewBlockEvent| v2@@18)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@18) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@18))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@18) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@18) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18)))
 :qid |RegisteredCurrenciesbaselinebpl.3017:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |RegisteredCurrenciesbaselinebpl.3067:70|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@19 T@$1_DiemConfig_NewEpochEvent) (v2@@19 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19)))
 :qid |RegisteredCurrenciesbaselinebpl.3073:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |RegisteredCurrenciesbaselinebpl.3123:70|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@20 T@$1_DiemId_DiemIdDomainEvent) (v2@@20 T@$1_DiemId_DiemIdDomainEvent) ) (! (=  (and (and (= (|$removed#$1_DiemId_DiemIdDomainEvent| v1@@20) (|$removed#$1_DiemId_DiemIdDomainEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v1@@20)) (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v2@@20)))) (= (|$address#$1_DiemId_DiemIdDomainEvent| v1@@20) (|$address#$1_DiemId_DiemIdDomainEvent| v2@@20))) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@20) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@20)))
 :qid |RegisteredCurrenciesbaselinebpl.3129:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@20) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@20))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |RegisteredCurrenciesbaselinebpl.3179:60|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@21 T@$1_Diem_BurnEvent) (v2@@21 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@21) (|$amount#$1_Diem_BurnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@21) (|$currency_code#$1_Diem_BurnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@21) (|$preburn_address#$1_Diem_BurnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@21)))
 :qid |RegisteredCurrenciesbaselinebpl.3185:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@21))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |RegisteredCurrenciesbaselinebpl.3235:66|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@22 T@$1_Diem_CancelBurnEvent) (v2@@22 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@22) (|$amount#$1_Diem_CancelBurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@22) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@22) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@22)))
 :qid |RegisteredCurrenciesbaselinebpl.3241:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@22))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |RegisteredCurrenciesbaselinebpl.3291:60|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@23 T@$1_Diem_MintEvent) (v2@@23 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@23) (|$amount#$1_Diem_MintEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@23) (|$currency_code#$1_Diem_MintEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@23) (|$ToEventRep'$1_Diem_MintEvent'| v2@@23)))
 :qid |RegisteredCurrenciesbaselinebpl.3297:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@23) (|$ToEventRep'$1_Diem_MintEvent'| v2@@23))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |RegisteredCurrenciesbaselinebpl.3347:63|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@24 T@$1_Diem_PreburnEvent) (v2@@24 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@24) (|$amount#$1_Diem_PreburnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@24) (|$currency_code#$1_Diem_PreburnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@24) (|$preburn_address#$1_Diem_PreburnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@24) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@24)))
 :qid |RegisteredCurrenciesbaselinebpl.3353:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@24) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@24))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |RegisteredCurrenciesbaselinebpl.3403:79|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@25 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@25 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@25) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@25)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@25) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@25) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@25)))
 :qid |RegisteredCurrenciesbaselinebpl.3409:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@25) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@25))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |RegisteredCurrenciesbaselinebpl.3459:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@26 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@26 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@26) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@26)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@26) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@26))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@26)))
 :qid |RegisteredCurrenciesbaselinebpl.3465:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@26))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |RegisteredCurrenciesbaselinebpl.3515:88|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@27 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@27) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@27)))
 :qid |RegisteredCurrenciesbaselinebpl.3521:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@27))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |RegisteredCurrenciesbaselinebpl.3724:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |RegisteredCurrenciesbaselinebpl.4247:49|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |RegisteredCurrenciesbaselinebpl.4297:36|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |RegisteredCurrenciesbaselinebpl.4316:49|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |RegisteredCurrenciesbaselinebpl.4409:91|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |RegisteredCurrenciesbaselinebpl.4422:113|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |RegisteredCurrenciesbaselinebpl.4435:71|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |RegisteredCurrenciesbaselinebpl.4448:75|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |RegisteredCurrenciesbaselinebpl.4461:73|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |RegisteredCurrenciesbaselinebpl.4481:48|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |RegisteredCurrenciesbaselinebpl.4498:57|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |RegisteredCurrenciesbaselinebpl.4512:103|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |RegisteredCurrenciesbaselinebpl.4526:125|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |RegisteredCurrenciesbaselinebpl.4540:83|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |RegisteredCurrenciesbaselinebpl.4554:87|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |RegisteredCurrenciesbaselinebpl.4568:85|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.4582:48|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.4600:65|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.5816:45|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |RegisteredCurrenciesbaselinebpl.5829:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |RegisteredCurrenciesbaselinebpl.5842:55|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |RegisteredCurrenciesbaselinebpl.5856:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |RegisteredCurrenciesbaselinebpl.5876:38|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |RegisteredCurrenciesbaselinebpl.5898:44|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |RegisteredCurrenciesbaselinebpl.5950:53|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |RegisteredCurrenciesbaselinebpl.6023:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25) true)
 :qid |RegisteredCurrenciesbaselinebpl.6060:55|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26) true)
 :qid |RegisteredCurrenciesbaselinebpl.6074:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@27)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@27))))
 :qid |RegisteredCurrenciesbaselinebpl.6091:38|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@28)))
 :qid |RegisteredCurrenciesbaselinebpl.6105:48|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@29)))
 :qid |RegisteredCurrenciesbaselinebpl.6119:48|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@30))))
 :qid |RegisteredCurrenciesbaselinebpl.6139:41|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@31)))
 :qid |RegisteredCurrenciesbaselinebpl.6155:53|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@32)))
 :qid |RegisteredCurrenciesbaselinebpl.6168:53|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33))))
 :qid |RegisteredCurrenciesbaselinebpl.6184:60|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34))))
 :qid |RegisteredCurrenciesbaselinebpl.6201:60|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |RegisteredCurrenciesbaselinebpl.6218:57|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36) true)
 :qid |RegisteredCurrenciesbaselinebpl.8429:68|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))))
 :qid |RegisteredCurrenciesbaselinebpl.8451:66|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))))
 :qid |RegisteredCurrenciesbaselinebpl.8477:66|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@39) true)
 :qid |RegisteredCurrenciesbaselinebpl.8810:31|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@39))
)))
(assert (forall ((s@@40 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@40) true)
 :qid |RegisteredCurrenciesbaselinebpl.9154:31|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@41)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@41)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@41))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@41))))
 :qid |RegisteredCurrenciesbaselinebpl.9173:35|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@41))
)))
(assert (forall ((s@@42 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@42)))
 :qid |RegisteredCurrenciesbaselinebpl.9599:71|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@43) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@43)))
 :qid |RegisteredCurrenciesbaselinebpl.9647:46|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@44)))
 :qid |RegisteredCurrenciesbaselinebpl.9659:64|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@45)))
 :qid |RegisteredCurrenciesbaselinebpl.9671:75|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@46)))
 :qid |RegisteredCurrenciesbaselinebpl.9683:72|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46))
)))
(assert (forall ((s@@47 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@47)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@47)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@47))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@47))))
 :qid |RegisteredCurrenciesbaselinebpl.9711:46|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@48)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@48))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@48))))
 :qid |RegisteredCurrenciesbaselinebpl.9733:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |RegisteredCurrenciesbaselinebpl.9763:65|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |RegisteredCurrenciesbaselinebpl.10162:60|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |RegisteredCurrenciesbaselinebpl.10179:66|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |RegisteredCurrenciesbaselinebpl.10208:50|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |RegisteredCurrenciesbaselinebpl.10231:45|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |RegisteredCurrenciesbaselinebpl.10555:87|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@55)))
 :qid |RegisteredCurrenciesbaselinebpl.10772:43|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@56))))
 :qid |RegisteredCurrenciesbaselinebpl.10790:48|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@57)))
 :qid |RegisteredCurrenciesbaselinebpl.10806:50|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@58)))
 :qid |RegisteredCurrenciesbaselinebpl.10819:47|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@59)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@59))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@59))))
 :qid |RegisteredCurrenciesbaselinebpl.10838:58|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@60) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@60)))
 :qid |RegisteredCurrenciesbaselinebpl.10854:39|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@61))))
 :qid |RegisteredCurrenciesbaselinebpl.10876:58|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62))))
 :qid |RegisteredCurrenciesbaselinebpl.10893:58|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63) true)
 :qid |RegisteredCurrenciesbaselinebpl.10908:51|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64))))
 :qid |RegisteredCurrenciesbaselinebpl.10925:60|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@65)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@65))))
 :qid |RegisteredCurrenciesbaselinebpl.11223:47|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@66))))
 :qid |RegisteredCurrenciesbaselinebpl.11249:63|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@67)))
 :qid |RegisteredCurrenciesbaselinebpl.11264:57|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@68)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@68))))
 :qid |RegisteredCurrenciesbaselinebpl.11280:54|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@69)))
 :qid |RegisteredCurrenciesbaselinebpl.11294:55|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@70)))
 :qid |RegisteredCurrenciesbaselinebpl.11307:57|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@71)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@71))))
 :qid |RegisteredCurrenciesbaselinebpl.11329:56|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@72))))
 :qid |RegisteredCurrenciesbaselinebpl.11356:52|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@73)))
 :qid |RegisteredCurrenciesbaselinebpl.11374:54|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@74)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@74))))
 :qid |RegisteredCurrenciesbaselinebpl.12245:45|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@75)))
 :qid |RegisteredCurrenciesbaselinebpl.12259:51|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@76)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@76))))
 :qid |RegisteredCurrenciesbaselinebpl.12282:48|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |RegisteredCurrenciesbaselinebpl.12598:47|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |RegisteredCurrenciesbaselinebpl.12622:47|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |RegisteredCurrenciesbaselinebpl.12879:49|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |RegisteredCurrenciesbaselinebpl.12921:49|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |RegisteredCurrenciesbaselinebpl.12950:48|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |RegisteredCurrenciesbaselinebpl.13246:47|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 T@Vec_65612) (i@@40 Int) ) (! (= (InRangeVec_56497 v@@25 i@@40)  (and (>= i@@40 0) (< i@@40 (|l#Vec_65612| v@@25))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56497 v@@25 i@@40))
)))
(assert (forall ((v@@26 T@Vec_64282) (i@@41 Int) ) (! (= (InRangeVec_56698 v@@26 i@@41)  (and (>= i@@41 0) (< i@@41 (|l#Vec_64282| v@@26))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56698 v@@26 i@@41))
)))
(assert (forall ((v@@27 T@Vec_64321) (i@@42 Int) ) (! (= (InRangeVec_56899 v@@27 i@@42)  (and (>= i@@42 0) (< i@@42 (|l#Vec_64321| v@@27))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56899 v@@27 i@@42))
)))
(assert (forall ((v@@28 T@Vec_64584) (i@@43 Int) ) (! (= (InRangeVec_57100 v@@28 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_64584| v@@28))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57100 v@@28 i@@43))
)))
(assert (forall ((v@@29 T@Vec_64130) (i@@44 Int) ) (! (= (InRangeVec_57301 v@@29 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_64130| v@@29))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57301 v@@29 i@@44))
)))
(assert (forall ((v@@30 T@Vec_64091) (i@@45 Int) ) (! (= (InRangeVec_57502 v@@30 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_64091| v@@30))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57502 v@@30 i@@45))
)))
(assert (forall ((v@@31 T@Vec_64243) (i@@46 Int) ) (! (= (InRangeVec_57703 v@@31 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_64243| v@@31))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57703 v@@31 i@@46))
)))
(assert (forall ((v@@32 T@Vec_63926) (i@@47 Int) ) (! (= (InRangeVec_84549 v@@32 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_63926| v@@32))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_84549 v@@32 i@@47))
)))
(assert (forall ((v@@33 T@Vec_22325) (i@@48 Int) ) (! (= (InRangeVec_12164 v@@33 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_22325| v@@33))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_12164 v@@33 i@@48))
)))
(assert (forall ((v@@34 T@Vec_22325) (e@@9 Int) ) (! (let ((i@@49 (IndexOfVec_22325 v@@34 e@@9)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_12164 v@@34 i@@50) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) i@@50) e@@9))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_12164 v@@34 i@@49) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) i@@49) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@49)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) j@@9) e@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22325 v@@34 e@@9))
)))
(assert (forall ((v@@35 T@Vec_63926) (e@@10 T@Vec_22325) ) (! (let ((i@@51 (IndexOfVec_63926 v@@35 e@@10)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_84549 v@@35 i@@52) (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) i@@52) e@@10))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_84549 v@@35 i@@51) (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) i@@51) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@51)) (not (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) j@@10) e@@10)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63926 v@@35 e@@10))
)))
(assert (forall ((v@@36 T@Vec_64091) (e@@11 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@53 (IndexOfVec_64091 v@@36 e@@11)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_57502 v@@36 i@@54) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) i@@54) e@@11))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_57502 v@@36 i@@53) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) i@@53) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@53)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) j@@11) e@@11)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64091 v@@36 e@@11))
)))
(assert (forall ((v@@37 T@Vec_64130) (e@@12 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@55 (IndexOfVec_64130 v@@37 e@@12)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_57301 v@@37 i@@56) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) i@@56) e@@12))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_57301 v@@37 i@@55) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) i@@55) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@55)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) j@@12) e@@12)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64130 v@@37 e@@12))
)))
(assert (forall ((v@@38 T@Vec_64243) (e@@13 T@$1_ValidatorConfig_Config) ) (! (let ((i@@57 (IndexOfVec_64243 v@@38 e@@13)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_57703 v@@38 i@@58) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) i@@58) e@@13))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_57703 v@@38 i@@57) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) i@@57) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@57)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) j@@13) e@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64243 v@@38 e@@13))
)))
(assert (forall ((v@@39 T@Vec_64282) (e@@14 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@59 (IndexOfVec_64282 v@@39 e@@14)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_56698 v@@39 i@@60) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) i@@60) e@@14))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_56698 v@@39 i@@59) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) i@@59) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@59)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) j@@14) e@@14)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64282 v@@39 e@@14))
)))
(assert (forall ((v@@40 T@Vec_64321) (e@@15 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@61 (IndexOfVec_64321 v@@40 e@@15)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_56899 v@@40 i@@62) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) i@@62) e@@15))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_56899 v@@40 i@@61) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) i@@61) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@61)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) j@@15) e@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64321 v@@40 e@@15))
)))
(assert (forall ((v@@41 T@Vec_64584) (e@@16 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@63 (IndexOfVec_64584 v@@41 e@@16)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_57100 v@@41 i@@64) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) i@@64) e@@16))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_57100 v@@41 i@@63) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) i@@63) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@63)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) j@@16) e@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64584 v@@41 e@@16))
)))
(assert (forall ((v@@42 T@Vec_65612) (e@@17 |T@#0|) ) (! (let ((i@@65 (IndexOfVec_65612 v@@42 e@@17)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_56497 v@@42 i@@66) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) i@@66) e@@17))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_56497 v@@42 i@@65) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) i@@65) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@65)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) j@@17) e@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_65612 v@@42 e@@17))
)))
(assert (forall ((|l#0| Bool) (i@@67 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67) |l#0|)
 :qid |RegisteredCurrenciesbaselinebpl.275:54|
 :skolemid |275|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63793|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63793|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#1| handle@@0))))
(Multiset_63793 (|lambda#30| (|v#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#0@@0| handle@@0)) (|v#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |RegisteredCurrenciesbaselinebpl.2588:13|
 :skolemid |276|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@68 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68) (ite  (and (>= i@@68 |l#0@@1|) (< i@@68 |l#1@@0|)) (ite (< i@@68 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@68) (|Select__T@[Int]#0_| |l#4| (- i@@68 |l#5|))) |l#6|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@69 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69) (ite  (and (<= |l#0@@2| i@@69) (< i@@69 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@69) |l#4@@0|)) |l#5@@0|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@18 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18) (ite  (and (>= j@@18 |l#0@@3|) (< j@@18 |l#1@@2|)) (ite (< j@@18 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@18) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@18 |l#5@@1|))) |l#6@@0|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |279|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70) (ite  (and (>= i@@70 |l#0@@4|) (< i@@70 |l#1@@3|)) (ite (< i@@70 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@70) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@70 |l#5@@2|))) |l#6@@1|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |280|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71) (ite  (and (<= |l#0@@5| i@@71) (< i@@71 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@71) |l#4@@3|)) |l#5@@3|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |281|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19) (ite  (and (>= j@@19 |l#0@@6|) (< j@@19 |l#1@@5|)) (ite (< j@@19 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@19) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@19 |l#5@@4|))) |l#6@@2|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |282|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72) (ite  (and (>= i@@72 |l#0@@7|) (< i@@72 |l#1@@6|)) (ite (< i@@72 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@72) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@72 |l#5@@5|))) |l#6@@3|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@73 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73) (ite  (and (<= |l#0@@8| i@@73) (< i@@73 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@73) |l#4@@6|)) |l#5@@6|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20) (ite  (and (>= j@@20 |l#0@@9|) (< j@@20 |l#1@@8|)) (ite (< j@@20 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@20) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@20 |l#5@@7|))) |l#6@@4|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74) (ite  (and (>= i@@74 |l#0@@10|) (< i@@74 |l#1@@9|)) (ite (< i@@74 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@74) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@74 |l#5@@8|))) |l#6@@5|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75) (ite  (and (<= |l#0@@11| i@@75) (< i@@75 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@75) |l#4@@9|)) |l#5@@9|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21) (ite  (and (>= j@@21 |l#0@@12|) (< j@@21 |l#1@@11|)) (ite (< j@@21 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@21) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@21 |l#5@@10|))) |l#6@@6|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76) (ite  (and (>= i@@76 |l#0@@13|) (< i@@76 |l#1@@12|)) (ite (< i@@76 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@11| i@@76) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@11| (- i@@76 |l#5@@11|))) |l#6@@7|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77) (ite  (and (<= |l#0@@14| i@@77) (< i@@77 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@12| (- (- |l#3@@12| i@@77) |l#4@@12|)) |l#5@@12|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22) (ite  (and (>= j@@22 |l#0@@15|) (< j@@22 |l#1@@14|)) (ite (< j@@22 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@13| j@@22) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@13| (+ j@@22 |l#5@@13|))) |l#6@@8|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78) (ite  (and (>= i@@78 |l#0@@16|) (< i@@78 |l#1@@15|)) (ite (< i@@78 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@14| i@@78) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@14| (- i@@78 |l#5@@14|))) |l#6@@9|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79) (ite  (and (<= |l#0@@17| i@@79) (< i@@79 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@15| (- (- |l#3@@15| i@@79) |l#4@@15|)) |l#5@@15|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23) (ite  (and (>= j@@23 |l#0@@18|) (< j@@23 |l#1@@17|)) (ite (< j@@23 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@16| j@@23) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@16| (+ j@@23 |l#5@@16|))) |l#6@@10|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@17| Int) (|l#6@@11| T@$1_ValidatorConfig_Config) (i@@80 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80) (ite  (and (>= i@@80 |l#0@@19|) (< i@@80 |l#1@@18|)) (ite (< i@@80 |l#2@@17|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@17| i@@80) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@17| (- i@@80 |l#5@@17|))) |l#6@@11|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_ValidatorConfig_Config) (i@@81 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81) (ite  (and (<= |l#0@@20| i@@81) (< i@@81 |l#1@@19|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@18| (- (- |l#3@@18| i@@81) |l#4@@18|)) |l#5@@18|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@19| Int) (|l#6@@12| T@$1_ValidatorConfig_Config) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24) (ite  (and (>= j@@24 |l#0@@21|) (< j@@24 |l#1@@20|)) (ite (< j@@24 |l#2@@19|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@19| j@@24) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@19| (+ j@@24 |l#5@@19|))) |l#6@@12|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Vec_22325|) (|l#4@@20| |T@[Int]Vec_22325|) (|l#5@@20| Int) (|l#6@@13| T@Vec_22325) (i@@82 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82) (ite  (and (>= i@@82 |l#0@@22|) (< i@@82 |l#1@@21|)) (ite (< i@@82 |l#2@@20|) (|Select__T@[Int]Vec_22325_| |l#3@@20| i@@82) (|Select__T@[Int]Vec_22325_| |l#4@@20| (- i@@82 |l#5@@20|))) |l#6@@13|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Vec_22325|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@Vec_22325) (i@@83 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83) (ite  (and (<= |l#0@@23| i@@83) (< i@@83 |l#1@@22|)) (|Select__T@[Int]Vec_22325_| |l#2@@21| (- (- |l#3@@21| i@@83) |l#4@@21|)) |l#5@@21|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Vec_22325|) (|l#4@@22| |T@[Int]Vec_22325|) (|l#5@@22| Int) (|l#6@@14| T@Vec_22325) (j@@25 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25) (ite  (and (>= j@@25 |l#0@@24|) (< j@@25 |l#1@@23|)) (ite (< j@@25 |l#2@@22|) (|Select__T@[Int]Vec_22325_| |l#3@@22| j@@25) (|Select__T@[Int]Vec_22325_| |l#4@@22| (+ j@@25 |l#5@@22|))) |l#6@@14|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Int|) (|l#4@@23| |T@[Int]Int|) (|l#5@@23| Int) (|l#6@@15| Int) (i@@84 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84) (ite  (and (>= i@@84 |l#0@@25|) (< i@@84 |l#1@@24|)) (ite (< i@@84 |l#2@@23|) (|Select__T@[Int]Int_| |l#3@@23| i@@84) (|Select__T@[Int]Int_| |l#4@@23| (- i@@84 |l#5@@23|))) |l#6@@15|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Int|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| Int) (i@@85 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85) (ite  (and (<= |l#0@@26| i@@85) (< i@@85 |l#1@@25|)) (|Select__T@[Int]Int_| |l#2@@24| (- (- |l#3@@24| i@@85) |l#4@@24|)) |l#5@@24|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Int|) (|l#4@@25| |T@[Int]Int|) (|l#5@@25| Int) (|l#6@@16| Int) (j@@26 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26) (ite  (and (>= j@@26 |l#0@@27|) (< j@@26 |l#1@@26|)) (ite (< j@@26 |l#2@@25|) (|Select__T@[Int]Int_| |l#3@@25| j@@26) (|Select__T@[Int]Int_| |l#4@@25| (+ j@@26 |l#5@@25|))) |l#6@@16|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26))
)))
(assert (forall ((|l#0@@28| |T@[$EventRep]Int|) (|l#1@@27| |T@[$EventRep]Int|) (v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43) (- (|Select__T@[$EventRep]Int_| |l#0@@28| v@@43) (|Select__T@[$EventRep]Int_| |l#1@@27| v@@43)))
 :qid |RegisteredCurrenciesbaselinebpl.154:29|
 :skolemid |304|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@26| |T@[Int]Vec_22325|) (|l#3@@26| Int) (|l#4@@26| T@Vec_22325) (k Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@26| |l#3@@26| |l#4@@26|) k) (ite  (and (<= |l#0@@29| k) (< k |l#1@@28|)) (|Select__T@[Int]Vec_22325_| |l#2@@26| (+ |l#3@@26| k)) |l#4@@26|))
 :qid |RegisteredCurrenciesbaselinebpl.90:14|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@26| |l#3@@26| |l#4@@26|) k))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12788)
(declare-fun $t14@1 () T@$Mutation_99196)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@1 () T@$Mutation_12788)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_99196)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_98722)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_100177)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_98722)
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
(declare-fun $t14 () T@$Mutation_99196)
(declare-fun $t14@0 () T@$Mutation_99196)
(declare-fun MapConstVec_12393 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_12393 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_99196)
(declare-fun $t24 () T@$Mutation_12788)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 206897) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12788 (|l#$Mutation_99196| $t14@1) (let ((l (|l#Vec_22325| (|p#$Mutation_99196| $t14@1))))
(Vec_22325 (|Store__T@[Int]Int_| (|v#Vec_22325| (|p#$Mutation_99196| $t14@1)) l 0) (+ l 1))) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_99196| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_12788 (|l#$Mutation_12788| $t24@0) (|p#$Mutation_12788| $t24@0) _$t2)) (= $t14@2 ($Mutation_99196 (|l#$Mutation_99196| $t14@1) (|p#$Mutation_99196| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12788| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_98722 (|Store__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_99196| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_99196| $t14@2)) (|v#$Mutation_99196| $t14@2)))))) (and (=> (= (ControlFlow 0 151903) (- 0 207601)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 151903) (- 0 207626)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 151903) (- 0 207636)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 151903) (- 0 207650)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 151903) (- 0 207674)) (= $t25 _$t2)))))))))))))))
(let ((anon31_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 151961) 151903)) L5_correct)))
(let ((anon32_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 151761) 151903)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 151757) (- 0 207724)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 151757) (- 0 207761)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon31_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 151957) 151757))) L8_correct)))
(let ((anon30_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 151941) 151961) anon31_Then_correct) (=> (= (ControlFlow 0 151941) 151957) anon31_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 151641) 151757))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 151625) 151761) anon32_Then_correct) (=> (= (ControlFlow 0 151625) 151641) anon32_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 151589) 151625)) anon30_Else$1_correct)))
(let ((anon30_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 151595) 151589)) inline$$Lt$0$anon0_correct)))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= $t17@0 (= _$t1 0))) (and (=> (= (ControlFlow 0 151543) 151941) anon30_Then_correct) (=> (= (ControlFlow 0 151543) 151595) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 151975) 151757))) L8_correct)))
(let ((inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 0) (= 0 0)) (and (=> (= (ControlFlow 0 151523) 151975) anon29_Then_correct) (=> (= (ControlFlow 0 151523) 151543) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_99196| $t14@1))) (=> (and (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|) (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_99196| $t14@1)))) (and (= $t15@0 $t15@0) (= (ControlFlow 0 151529) 151523))) inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 151989) 151757))) L8_correct)))
(let ((anon27_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 152041) 151989) anon28_Then_correct) (=> (= (ControlFlow 0 152041) 151529) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 152039) 152041)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_99196 ($Global 173345816) (Vec_22325 (MapConstVec_12393 DefaultVecElem_12393) 0) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 151426) 151989) anon28_Then_correct) (=> (= (ControlFlow 0 151426) 151529) anon28_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 151404) (- 0 207242)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 151404) 152039) anon27_Then_correct) (=> (= (ControlFlow 0 151404) 151426) anon27_Else_correct)))))))
(let ((anon25_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 152085) 151757))) L8_correct))))
(let ((anon24_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 152111) 151757))) L8_correct))))
(let ((anon26_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 151384) 152055) anon26_Then_correct) (=> (= (ControlFlow 0 151384) 151404) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not $t12) (= (ControlFlow 0 151390) 151384)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct)))
(let ((anon24_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 151313) 152085) anon25_Then_correct) (=> (= (ControlFlow 0 151313) 151390) anon25_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |RegisteredCurrenciesbaselinebpl.3912:20|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 151291) 152111) anon24_Then_correct) (=> (= (ControlFlow 0 151291) 151313) anon24_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_63793| stream@@0) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63793| stream@@0) v@@44) 0)
 :qid |RegisteredCurrenciesbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2578:13|
 :skolemid |91|
))) (= (ControlFlow 0 151179) 151291)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_22325| (|p#$Mutation_99196| $t3)) 0) (= (|l#Vec_22325| (|p#$Mutation_99196| $t14)) 0)) (and (= (|l#Vec_22325| (|p#$Mutation_12788| $t24)) 0) (= (ControlFlow 0 151189) 151179))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 206897) 151189) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_91273 0)) ((($Memory_91273 (|domain#$Memory_91273| |T@[Int]Bool|) (|contents#$Memory_91273| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_65612 0)) (((Vec_65612 (|v#Vec_65612| |T@[Int]#0|) (|l#Vec_65612| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_136629 0)) ((($Memory_136629 (|domain#$Memory_136629| |T@[Int]Bool|) (|contents#$Memory_136629| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_131974 0)) ((($Memory_131974 (|domain#$Memory_131974| |T@[Int]Bool|) (|contents#$Memory_131974| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_129780 0)) ((($Memory_129780 (|domain#$Memory_129780| |T@[Int]Bool|) (|contents#$Memory_129780| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_130092 0)) ((($Memory_130092 (|domain#$Memory_130092| |T@[Int]Bool|) (|contents#$Memory_130092| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_129747 0)) ((($Memory_129747 (|domain#$Memory_129747| |T@[Int]Bool|) (|contents#$Memory_129747| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_129527 0)) ((($Memory_129527 (|domain#$Memory_129527| |T@[Int]Bool|) (|contents#$Memory_129527| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_129141 0)) ((($Memory_129141 (|domain#$Memory_129141| |T@[Int]Bool|) (|contents#$Memory_129141| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_126521 0)) ((($Memory_126521 (|domain#$Memory_126521| |T@[Int]Bool|) (|contents#$Memory_126521| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_64321 0)) (((Vec_64321 (|v#Vec_64321| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_64321| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_64321) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_64282 0)) (((Vec_64282 (|v#Vec_64282| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_64282| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_64282) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_121123 0)) ((($Memory_121123 (|domain#$Memory_121123| |T@[Int]Bool|) (|contents#$Memory_121123| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120904 0)) ((($Memory_120904 (|domain#$Memory_120904| |T@[Int]Bool|) (|contents#$Memory_120904| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_131752 0)) ((($Memory_131752 (|domain#$Memory_131752| |T@[Int]Bool|) (|contents#$Memory_131752| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113716 0)) ((($Memory_113716 (|domain#$Memory_113716| |T@[Int]Bool|) (|contents#$Memory_113716| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113629 0)) ((($Memory_113629 (|domain#$Memory_113629| |T@[Int]Bool|) (|contents#$Memory_113629| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_22325 0)) (((Vec_22325 (|v#Vec_22325| |T@[Int]Int|) (|l#Vec_22325| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22325) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22325) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_22325) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_130735 0)) ((($Memory_130735 (|domain#$Memory_130735| |T@[Int]Bool|) (|contents#$Memory_130735| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_22325) (|$base_url#$1_DualAttestation_Credential| T@Vec_22325) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_22325) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_126457 0)) ((($Memory_126457 (|domain#$Memory_126457| |T@[Int]Bool|) (|contents#$Memory_126457| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_22325) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_22325) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_64243 0)) (((Vec_64243 (|v#Vec_64243| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_64243| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_64243) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_64584 0)) (((Vec_64584 (|v#Vec_64584| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_64584| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_124863 0)) ((($Memory_124863 (|domain#$Memory_124863| |T@[Int]Bool|) (|contents#$Memory_124863| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_124274 0)) ((($Memory_124274 (|domain#$Memory_124274| |T@[Int]Bool|) (|contents#$Memory_124274| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109904 0)) ((($Memory_109904 (|domain#$Memory_109904| |T@[Int]Bool|) (|contents#$Memory_109904| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109817 0)) ((($Memory_109817 (|domain#$Memory_109817| |T@[Int]Bool|) (|contents#$Memory_109817| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113964 0)) ((($Memory_113964 (|domain#$Memory_113964| |T@[Int]Bool|) (|contents#$Memory_113964| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_122961 0)) ((($Memory_122961 (|domain#$Memory_122961| |T@[Int]Bool|) (|contents#$Memory_122961| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_64130 0)) (((Vec_64130 (|v#Vec_64130| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_64130| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_64130) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114331 0)) ((($Memory_114331 (|domain#$Memory_114331| |T@[Int]Bool|) (|contents#$Memory_114331| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113883 0)) ((($Memory_113883 (|domain#$Memory_113883| |T@[Int]Bool|) (|contents#$Memory_113883| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_125363 0)) ((($Memory_125363 (|domain#$Memory_125363| |T@[Int]Bool|) (|contents#$Memory_125363| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_64091 0)) (((Vec_64091 (|v#Vec_64091| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_64091| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_64091) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114214 0)) ((($Memory_114214 (|domain#$Memory_114214| |T@[Int]Bool|) (|contents#$Memory_114214| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]Vec_22325| 0)
(declare-datatypes ((T@Vec_63926 0)) (((Vec_63926 (|v#Vec_63926| |T@[Int]Vec_22325|) (|l#Vec_63926| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_103248 0)) ((($Memory_103248 (|domain#$Memory_103248| |T@[Int]Bool|) (|contents#$Memory_103248| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_103161 0)) ((($Memory_103161 (|domain#$Memory_103161| |T@[Int]Bool|) (|contents#$Memory_103161| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_103074 0)) ((($Memory_103074 (|domain#$Memory_103074| |T@[Int]Bool|) (|contents#$Memory_103074| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_135317 0)) ((($Memory_135317 (|domain#$Memory_135317| |T@[Int]Bool|) (|contents#$Memory_135317| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_102987 0)) ((($Memory_102987 (|domain#$Memory_102987| |T@[Int]Bool|) (|contents#$Memory_102987| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_102900 0)) ((($Memory_102900 (|domain#$Memory_102900| |T@[Int]Bool|) (|contents#$Memory_102900| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_101749 0)) ((($Memory_101749 (|domain#$Memory_101749| |T@[Int]Bool|) (|contents#$Memory_101749| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_101816 0)) ((($Memory_101816 (|domain#$Memory_101816| |T@[Int]Bool|) (|contents#$Memory_101816| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_101667 0)) ((($Memory_101667 (|domain#$Memory_101667| |T@[Int]Bool|) (|contents#$Memory_101667| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_101585 0)) ((($Memory_101585 (|domain#$Memory_101585| |T@[Int]Bool|) (|contents#$Memory_101585| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_64584) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_101503 0)) ((($Memory_101503 (|domain#$Memory_101503| |T@[Int]Bool|) (|contents#$Memory_101503| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_63926) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_101421 0)) ((($Memory_101421 (|domain#$Memory_101421| |T@[Int]Bool|) (|contents#$Memory_101421| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_63926) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_100177 0)) ((($Memory_100177 (|domain#$Memory_100177| |T@[Int]Bool|) (|contents#$Memory_100177| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_22325) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109515 0)) ((($Memory_109515 (|domain#$Memory_109515| |T@[Int]Bool|) (|contents#$Memory_109515| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_22325) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109450 0)) ((($Memory_109450 (|domain#$Memory_109450| |T@[Int]Bool|) (|contents#$Memory_109450| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_100679 0)) ((($Memory_100679 (|domain#$Memory_100679| |T@[Int]Bool|) (|contents#$Memory_100679| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_100646 0)) ((($Memory_100646 (|domain#$Memory_100646| |T@[Int]Bool|) (|contents#$Memory_100646| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_98722 0)) ((($Memory_98722 (|domain#$Memory_98722| |T@[Int]Bool|) (|contents#$Memory_98722| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_22325) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_22325) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_22325) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainEvent 0)) ((($1_DiemId_DiemIdDomainEvent (|$removed#$1_DiemId_DiemIdDomainEvent| Bool) (|$domain#$1_DiemId_DiemIdDomainEvent| T@$1_DiemId_DiemIdDomain) (|$address#$1_DiemId_DiemIdDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_22325) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_22325) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22325) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_22325) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| (|e#$ToEventRep'$1_DiemId_DiemIdDomainEvent'| T@$1_DiemId_DiemIdDomainEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_63793 0)) (((Multiset_63793 (|v#Multiset_63793| |T@[$EventRep]Int|) (|l#Multiset_63793| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63793| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63793|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_132826 0)) ((($Mutation_132826 (|l#$Mutation_132826| T@$Location) (|p#$Mutation_132826| T@Vec_22325) (|v#$Mutation_132826| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_132781 0)) ((($Mutation_132781 (|l#$Mutation_132781| T@$Location) (|p#$Mutation_132781| T@Vec_22325) (|v#$Mutation_132781| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_33792 0)) ((($Mutation_33792 (|l#$Mutation_33792| T@$Location) (|p#$Mutation_33792| T@Vec_22325) (|v#$Mutation_33792| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_119611 0)) ((($Mutation_119611 (|l#$Mutation_119611| T@$Location) (|p#$Mutation_119611| T@Vec_22325) (|v#$Mutation_119611| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_106184 0)) ((($Mutation_106184 (|l#$Mutation_106184| T@$Location) (|p#$Mutation_106184| T@Vec_22325) (|v#$Mutation_106184| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_99196 0)) ((($Mutation_99196 (|l#$Mutation_99196| T@$Location) (|p#$Mutation_99196| T@Vec_22325) (|v#$Mutation_99196| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_91901 0)) ((($Mutation_91901 (|l#$Mutation_91901| T@$Location) (|p#$Mutation_91901| T@Vec_22325) (|v#$Mutation_91901| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12788 0)) ((($Mutation_12788 (|l#$Mutation_12788| T@$Location) (|p#$Mutation_12788| T@Vec_22325) (|v#$Mutation_12788| Int) ) ) ))
(declare-datatypes ((T@$Mutation_86214 0)) ((($Mutation_86214 (|l#$Mutation_86214| T@$Location) (|p#$Mutation_86214| T@Vec_22325) (|v#$Mutation_86214| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$Mutation_85126 0)) ((($Mutation_85126 (|l#$Mutation_85126| T@$Location) (|p#$Mutation_85126| T@Vec_22325) (|v#$Mutation_85126| T@Vec_63926) ) ) ))
(declare-datatypes ((T@$Mutation_83417 0)) ((($Mutation_83417 (|l#$Mutation_83417| T@$Location) (|p#$Mutation_83417| T@Vec_22325) (|v#$Mutation_83417| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_82430 0)) ((($Mutation_82430 (|l#$Mutation_82430| T@$Location) (|p#$Mutation_82430| T@Vec_22325) (|v#$Mutation_82430| T@Vec_64243) ) ) ))
(declare-datatypes ((T@$Mutation_80775 0)) ((($Mutation_80775 (|l#$Mutation_80775| T@$Location) (|p#$Mutation_80775| T@Vec_22325) (|v#$Mutation_80775| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_79788 0)) ((($Mutation_79788 (|l#$Mutation_79788| T@$Location) (|p#$Mutation_79788| T@Vec_22325) (|v#$Mutation_79788| T@Vec_64091) ) ) ))
(declare-datatypes ((T@$Mutation_78079 0)) ((($Mutation_78079 (|l#$Mutation_78079| T@$Location) (|p#$Mutation_78079| T@Vec_22325) (|v#$Mutation_78079| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_77092 0)) ((($Mutation_77092 (|l#$Mutation_77092| T@$Location) (|p#$Mutation_77092| T@Vec_22325) (|v#$Mutation_77092| T@Vec_64130) ) ) ))
(declare-datatypes ((T@$Mutation_75383 0)) ((($Mutation_75383 (|l#$Mutation_75383| T@$Location) (|p#$Mutation_75383| T@Vec_22325) (|v#$Mutation_75383| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_74396 0)) ((($Mutation_74396 (|l#$Mutation_74396| T@$Location) (|p#$Mutation_74396| T@Vec_22325) (|v#$Mutation_74396| T@Vec_64584) ) ) ))
(declare-datatypes ((T@$Mutation_72596 0)) ((($Mutation_72596 (|l#$Mutation_72596| T@$Location) (|p#$Mutation_72596| T@Vec_22325) (|v#$Mutation_72596| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71609 0)) ((($Mutation_71609 (|l#$Mutation_71609| T@$Location) (|p#$Mutation_71609| T@Vec_22325) (|v#$Mutation_71609| T@Vec_64321) ) ) ))
(declare-datatypes ((T@$Mutation_69944 0)) ((($Mutation_69944 (|l#$Mutation_69944| T@$Location) (|p#$Mutation_69944| T@Vec_22325) (|v#$Mutation_69944| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68957 0)) ((($Mutation_68957 (|l#$Mutation_68957| T@$Location) (|p#$Mutation_68957| T@Vec_22325) (|v#$Mutation_68957| T@Vec_64282) ) ) ))
(declare-datatypes ((T@$Mutation_67244 0)) ((($Mutation_67244 (|l#$Mutation_67244| T@$Location) (|p#$Mutation_67244| T@Vec_22325) (|v#$Mutation_67244| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_66257 0)) ((($Mutation_66257 (|l#$Mutation_66257| T@$Location) (|p#$Mutation_66257| T@Vec_22325) (|v#$Mutation_66257| T@Vec_65612) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_65612 T@Vec_65612) Bool)
(declare-fun InRangeVec_56497 (T@Vec_65612 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_65612) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_65612 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_64282 T@Vec_64282) Bool)
(declare-fun InRangeVec_56698 (T@Vec_64282 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_64282) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_64282 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_64321 T@Vec_64321) Bool)
(declare-fun InRangeVec_56899 (T@Vec_64321 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_64321) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_64321 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_64584 T@Vec_64584) Bool)
(declare-fun InRangeVec_57100 (T@Vec_64584 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_22325 T@Vec_22325) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_64584) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_64584 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_64130 T@Vec_64130) Bool)
(declare-fun InRangeVec_57301 (T@Vec_64130 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_64130) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_64130 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_64091 T@Vec_64091) Bool)
(declare-fun InRangeVec_57502 (T@Vec_64091 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_64091) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_64091 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_64243 T@Vec_64243) Bool)
(declare-fun InRangeVec_57703 (T@Vec_64243 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_64243) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_64243 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_63926 T@Vec_63926) Bool)
(declare-fun InRangeVec_84549 (T@Vec_63926 Int) Bool)
(declare-fun |Select__T@[Int]Vec_22325_| (|T@[Int]Vec_22325| Int) T@Vec_22325)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_63926) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_22325) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_63926 T@Vec_22325) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_22325 T@Vec_22325) Bool)
(declare-fun InRangeVec_12164 (T@Vec_22325 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_22325) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_22325 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_22325 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_22325) T@Vec_22325)
(declare-fun $1_Hash_sha3 (T@Vec_22325) T@Vec_22325)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_22325) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_22325 T@Vec_22325 T@Vec_22325) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63793_| (|T@[$1_Event_EventHandle]Multiset_63793| T@$1_Event_EventHandle) T@Multiset_63793)
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
(declare-fun IndexOfVec_22325 (T@Vec_22325 Int) Int)
(declare-fun IndexOfVec_63926 (T@Vec_63926 T@Vec_22325) Int)
(declare-fun IndexOfVec_64091 (T@Vec_64091 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_64130 (T@Vec_64130 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_64243 (T@Vec_64243 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_64282 (T@Vec_64282 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_64321 (T@Vec_64321 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_64584 (T@Vec_64584 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_65612 (T@Vec_65612 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63793| |T@[$1_Event_EventHandle]Multiset_63793|) |T@[$1_Event_EventHandle]Multiset_63793|)
(declare-fun |lambda#30| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]Vec_22325| |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#25| (Int Int |T@[Int]Vec_22325| Int Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Vec_22325| |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#31| (Int Int |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |RegisteredCurrenciesbaselinebpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |RegisteredCurrenciesbaselinebpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |RegisteredCurrenciesbaselinebpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |RegisteredCurrenciesbaselinebpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |RegisteredCurrenciesbaselinebpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |RegisteredCurrenciesbaselinebpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |RegisteredCurrenciesbaselinebpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |RegisteredCurrenciesbaselinebpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_65612) (v2 T@Vec_65612) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_65612| v1) (|l#Vec_65612| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_56497 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_65612| v2) i@@0)))
 :qid |RegisteredCurrenciesbaselinebpl.615:13|
 :skolemid |17|
))))
 :qid |RegisteredCurrenciesbaselinebpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_65612) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_65612| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_56497 v@@4 i@@1) true)
 :qid |RegisteredCurrenciesbaselinebpl.621:13|
 :skolemid |19|
))))
 :qid |RegisteredCurrenciesbaselinebpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_65612) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_56497 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) i@@3) e))
 :qid |RegisteredCurrenciesbaselinebpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_56497 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) j) e)))
 :qid |RegisteredCurrenciesbaselinebpl.634:17|
 :skolemid |22|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_64282) (v2@@0 T@Vec_64282) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_64282| v1@@0) (|l#Vec_64282| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_56698 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v2@@0) i@@4)))
 :qid |RegisteredCurrenciesbaselinebpl.796:13|
 :skolemid |24|
))))
 :qid |RegisteredCurrenciesbaselinebpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_64282) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_64282| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_56698 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@6) i@@5)))
 :qid |RegisteredCurrenciesbaselinebpl.802:13|
 :skolemid |26|
))))
 :qid |RegisteredCurrenciesbaselinebpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_64282) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_56698 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) i@@7) e@@0))
 :qid |RegisteredCurrenciesbaselinebpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_56698 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) j@@0) e@@0)))
 :qid |RegisteredCurrenciesbaselinebpl.815:17|
 :skolemid |29|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_64321) (v2@@1 T@Vec_64321) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_64321| v1@@1) (|l#Vec_64321| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_56899 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v2@@1) i@@8)))
 :qid |RegisteredCurrenciesbaselinebpl.977:13|
 :skolemid |31|
))))
 :qid |RegisteredCurrenciesbaselinebpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_64321) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_64321| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_56899 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@8) i@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.983:13|
 :skolemid |33|
))))
 :qid |RegisteredCurrenciesbaselinebpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_64321) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_56899 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) i@@11) e@@1))
 :qid |RegisteredCurrenciesbaselinebpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_56899 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) j@@1) e@@1)))
 :qid |RegisteredCurrenciesbaselinebpl.996:17|
 :skolemid |36|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_64584) (v2@@2 T@Vec_64584) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_64584| v1@@2) (|l#Vec_64584| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_57100 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))))
 :qid |RegisteredCurrenciesbaselinebpl.1158:13|
 :skolemid |38|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_64584) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_64584| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_57100 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@10) i@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.1164:13|
 :skolemid |40|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_64584) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_57100 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |RegisteredCurrenciesbaselinebpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_57100 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |RegisteredCurrenciesbaselinebpl.1177:17|
 :skolemid |43|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_64130) (v2@@3 T@Vec_64130) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3)  (and (= (|l#Vec_64130| v1@@3) (|l#Vec_64130| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_57301 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v2@@3) i@@16)))))
 :qid |RegisteredCurrenciesbaselinebpl.1339:13|
 :skolemid |45|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1337:65|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_64130) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_64130| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_57301 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@12) i@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.1345:13|
 :skolemid |47|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1343:65|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_64130) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_57301 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3))))
 :qid |RegisteredCurrenciesbaselinebpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_57301 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))))
 :qid |RegisteredCurrenciesbaselinebpl.1358:17|
 :skolemid |50|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_64091) (v2@@4 T@Vec_64091) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4)  (and (= (|l#Vec_64091| v1@@4) (|l#Vec_64091| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_57502 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v2@@4) i@@20)))))
 :qid |RegisteredCurrenciesbaselinebpl.1520:13|
 :skolemid |52|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_64091) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_64091| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_57502 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@14) i@@21)))
 :qid |RegisteredCurrenciesbaselinebpl.1526:13|
 :skolemid |54|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_64091) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_57502 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4))))
 :qid |RegisteredCurrenciesbaselinebpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_57502 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))))
 :qid |RegisteredCurrenciesbaselinebpl.1539:17|
 :skolemid |57|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_64243) (v2@@5 T@Vec_64243) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5)  (and (= (|l#Vec_64243| v1@@5) (|l#Vec_64243| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_57703 v1@@5 i@@24) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24)))))
 :qid |RegisteredCurrenciesbaselinebpl.1701:13|
 :skolemid |59|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1699:51|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_64243) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_64243| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_57703 v@@16 i@@25) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@16) i@@25)))
 :qid |RegisteredCurrenciesbaselinebpl.1707:13|
 :skolemid |61|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1705:51|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_64243) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@26 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_57703 v@@17 i@@27)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5))))
 :qid |RegisteredCurrenciesbaselinebpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_57703 v@@17 i@@26)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))))
 :qid |RegisteredCurrenciesbaselinebpl.1720:17|
 :skolemid |64|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_63926) (v2@@6 T@Vec_63926) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6)  (and (= (|l#Vec_63926| v1@@6) (|l#Vec_63926| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_84549 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v1@@6) i@@28) (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v2@@6) i@@28)))
 :qid |RegisteredCurrenciesbaselinebpl.1882:13|
 :skolemid |66|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_63926) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_63926| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_84549 v@@18 i@@29) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@18) i@@29)))
 :qid |RegisteredCurrenciesbaselinebpl.1888:13|
 :skolemid |68|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_63926) (e@@6 T@Vec_22325) ) (! (let ((i@@30 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_84549 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) i@@31) e@@6))
 :qid |RegisteredCurrenciesbaselinebpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_84549 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) j@@6) e@@6)))
 :qid |RegisteredCurrenciesbaselinebpl.1901:17|
 :skolemid |71|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_22325) (v2@@7 T@Vec_22325) ) (! (= (|$IsEqual'vec'address''| v1@@7 v2@@7)  (and (= (|l#Vec_22325| v1@@7) (|l#Vec_22325| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_12164 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_22325| v2@@7) i@@32)))
 :qid |RegisteredCurrenciesbaselinebpl.2063:13|
 :skolemid |73|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'address''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_22325) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_22325| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_12164 v@@20 i@@33) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_22325| v@@20) i@@33)))
 :qid |RegisteredCurrenciesbaselinebpl.2069:13|
 :skolemid |75|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_22325) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_12164 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) i@@35) e@@7))
 :qid |RegisteredCurrenciesbaselinebpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_12164 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) j@@7) e@@7)))
 :qid |RegisteredCurrenciesbaselinebpl.2082:17|
 :skolemid |78|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_22325) (v2@@8 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8)  (and (= (|l#Vec_22325| v1@@8) (|l#Vec_22325| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_12164 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_22325| v2@@8) i@@36)))
 :qid |RegisteredCurrenciesbaselinebpl.2244:13|
 :skolemid |80|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2242:28|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u8''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_22325) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_22325| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_12164 v@@22 i@@37) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_22325| v@@22) i@@37)))
 :qid |RegisteredCurrenciesbaselinebpl.2250:13|
 :skolemid |82|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2248:28|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_22325) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_12164 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) i@@39) e@@8))
 :qid |RegisteredCurrenciesbaselinebpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_12164 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) j@@8) e@@8)))
 :qid |RegisteredCurrenciesbaselinebpl.2263:17|
 :skolemid |85|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_22325) (v2@@9 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.2436:15|
 :skolemid |87|
 :pattern ( ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9))
)))
(assert (forall ((v1@@10 T@Vec_22325) (v2@@10 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10)))
 :qid |RegisteredCurrenciesbaselinebpl.2452:15|
 :skolemid |88|
 :pattern ( ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10))
)))
(assert (forall ((k1 T@Vec_22325) (k2 T@Vec_22325) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |RegisteredCurrenciesbaselinebpl.2499:15|
 :skolemid |89|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_22325) (s2 T@Vec_22325) (k1@@0 T@Vec_22325) (k2@@0 T@Vec_22325) (m1 T@Vec_22325) (m2 T@Vec_22325) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |RegisteredCurrenciesbaselinebpl.2502:15|
 :skolemid |90|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63793| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63793| stream) v@@24) 0)
 :qid |RegisteredCurrenciesbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2578:13|
 :skolemid |91|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |RegisteredCurrenciesbaselinebpl.2619:80|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11)))
 :qid |RegisteredCurrenciesbaselinebpl.2625:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |RegisteredCurrenciesbaselinebpl.2675:82|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12)))
 :qid |RegisteredCurrenciesbaselinebpl.2681:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |RegisteredCurrenciesbaselinebpl.2731:80|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@13 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@13 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@13)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.2737:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |RegisteredCurrenciesbaselinebpl.2787:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_AdminTransactionEvent) (v2@@14 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14)))
 :qid |RegisteredCurrenciesbaselinebpl.2793:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |RegisteredCurrenciesbaselinebpl.2843:76|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_CreateAccountEvent) (v2@@15 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.2849:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |RegisteredCurrenciesbaselinebpl.2899:78|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@16 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.2905:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |RegisteredCurrenciesbaselinebpl.2955:74|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_SentPaymentEvent) (v2@@17 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@17))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.2961:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |RegisteredCurrenciesbaselinebpl.3011:69|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@18 T@$1_DiemBlock_NewBlockEvent) (v2@@18 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@18) (|$round#$1_DiemBlock_NewBlockEvent| v2@@18)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@18) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@18))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@18) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@18) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18)))
 :qid |RegisteredCurrenciesbaselinebpl.3017:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |RegisteredCurrenciesbaselinebpl.3067:70|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@19 T@$1_DiemConfig_NewEpochEvent) (v2@@19 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19)))
 :qid |RegisteredCurrenciesbaselinebpl.3073:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |RegisteredCurrenciesbaselinebpl.3123:70|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@20 T@$1_DiemId_DiemIdDomainEvent) (v2@@20 T@$1_DiemId_DiemIdDomainEvent) ) (! (=  (and (and (= (|$removed#$1_DiemId_DiemIdDomainEvent| v1@@20) (|$removed#$1_DiemId_DiemIdDomainEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v1@@20)) (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v2@@20)))) (= (|$address#$1_DiemId_DiemIdDomainEvent| v1@@20) (|$address#$1_DiemId_DiemIdDomainEvent| v2@@20))) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@20) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@20)))
 :qid |RegisteredCurrenciesbaselinebpl.3129:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@20) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@20))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |RegisteredCurrenciesbaselinebpl.3179:60|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@21 T@$1_Diem_BurnEvent) (v2@@21 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@21) (|$amount#$1_Diem_BurnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@21) (|$currency_code#$1_Diem_BurnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@21) (|$preburn_address#$1_Diem_BurnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@21)))
 :qid |RegisteredCurrenciesbaselinebpl.3185:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@21))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |RegisteredCurrenciesbaselinebpl.3235:66|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@22 T@$1_Diem_CancelBurnEvent) (v2@@22 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@22) (|$amount#$1_Diem_CancelBurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@22) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@22) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@22)))
 :qid |RegisteredCurrenciesbaselinebpl.3241:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@22))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |RegisteredCurrenciesbaselinebpl.3291:60|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@23 T@$1_Diem_MintEvent) (v2@@23 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@23) (|$amount#$1_Diem_MintEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@23) (|$currency_code#$1_Diem_MintEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@23) (|$ToEventRep'$1_Diem_MintEvent'| v2@@23)))
 :qid |RegisteredCurrenciesbaselinebpl.3297:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@23) (|$ToEventRep'$1_Diem_MintEvent'| v2@@23))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |RegisteredCurrenciesbaselinebpl.3347:63|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@24 T@$1_Diem_PreburnEvent) (v2@@24 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@24) (|$amount#$1_Diem_PreburnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@24) (|$currency_code#$1_Diem_PreburnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@24) (|$preburn_address#$1_Diem_PreburnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@24) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@24)))
 :qid |RegisteredCurrenciesbaselinebpl.3353:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@24) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@24))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |RegisteredCurrenciesbaselinebpl.3403:79|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@25 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@25 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@25) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@25)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@25) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@25) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@25)))
 :qid |RegisteredCurrenciesbaselinebpl.3409:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@25) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@25))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |RegisteredCurrenciesbaselinebpl.3459:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@26 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@26 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@26) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@26)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@26) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@26))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@26)))
 :qid |RegisteredCurrenciesbaselinebpl.3465:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@26))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |RegisteredCurrenciesbaselinebpl.3515:88|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@27 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@27) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@27)))
 :qid |RegisteredCurrenciesbaselinebpl.3521:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@27))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |RegisteredCurrenciesbaselinebpl.3724:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |RegisteredCurrenciesbaselinebpl.4247:49|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |RegisteredCurrenciesbaselinebpl.4297:36|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |RegisteredCurrenciesbaselinebpl.4316:49|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |RegisteredCurrenciesbaselinebpl.4409:91|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |RegisteredCurrenciesbaselinebpl.4422:113|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |RegisteredCurrenciesbaselinebpl.4435:71|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |RegisteredCurrenciesbaselinebpl.4448:75|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |RegisteredCurrenciesbaselinebpl.4461:73|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |RegisteredCurrenciesbaselinebpl.4481:48|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |RegisteredCurrenciesbaselinebpl.4498:57|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |RegisteredCurrenciesbaselinebpl.4512:103|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |RegisteredCurrenciesbaselinebpl.4526:125|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |RegisteredCurrenciesbaselinebpl.4540:83|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |RegisteredCurrenciesbaselinebpl.4554:87|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |RegisteredCurrenciesbaselinebpl.4568:85|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.4582:48|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.4600:65|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.5816:45|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |RegisteredCurrenciesbaselinebpl.5829:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |RegisteredCurrenciesbaselinebpl.5842:55|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |RegisteredCurrenciesbaselinebpl.5856:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |RegisteredCurrenciesbaselinebpl.5876:38|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |RegisteredCurrenciesbaselinebpl.5898:44|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |RegisteredCurrenciesbaselinebpl.5950:53|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |RegisteredCurrenciesbaselinebpl.6023:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25) true)
 :qid |RegisteredCurrenciesbaselinebpl.6060:55|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26) true)
 :qid |RegisteredCurrenciesbaselinebpl.6074:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@27)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@27))))
 :qid |RegisteredCurrenciesbaselinebpl.6091:38|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@28)))
 :qid |RegisteredCurrenciesbaselinebpl.6105:48|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@29)))
 :qid |RegisteredCurrenciesbaselinebpl.6119:48|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@30))))
 :qid |RegisteredCurrenciesbaselinebpl.6139:41|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@31)))
 :qid |RegisteredCurrenciesbaselinebpl.6155:53|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@32)))
 :qid |RegisteredCurrenciesbaselinebpl.6168:53|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33))))
 :qid |RegisteredCurrenciesbaselinebpl.6184:60|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34))))
 :qid |RegisteredCurrenciesbaselinebpl.6201:60|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |RegisteredCurrenciesbaselinebpl.6218:57|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36) true)
 :qid |RegisteredCurrenciesbaselinebpl.8429:68|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))))
 :qid |RegisteredCurrenciesbaselinebpl.8451:66|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))))
 :qid |RegisteredCurrenciesbaselinebpl.8477:66|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@39) true)
 :qid |RegisteredCurrenciesbaselinebpl.8810:31|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@39))
)))
(assert (forall ((s@@40 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@40) true)
 :qid |RegisteredCurrenciesbaselinebpl.9154:31|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@41)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@41)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@41))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@41))))
 :qid |RegisteredCurrenciesbaselinebpl.9173:35|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@41))
)))
(assert (forall ((s@@42 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@42)))
 :qid |RegisteredCurrenciesbaselinebpl.9599:71|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@43) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@43)))
 :qid |RegisteredCurrenciesbaselinebpl.9647:46|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@44)))
 :qid |RegisteredCurrenciesbaselinebpl.9659:64|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@45)))
 :qid |RegisteredCurrenciesbaselinebpl.9671:75|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@46)))
 :qid |RegisteredCurrenciesbaselinebpl.9683:72|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46))
)))
(assert (forall ((s@@47 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@47)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@47)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@47))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@47))))
 :qid |RegisteredCurrenciesbaselinebpl.9711:46|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@48)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@48))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@48))))
 :qid |RegisteredCurrenciesbaselinebpl.9733:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |RegisteredCurrenciesbaselinebpl.9763:65|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |RegisteredCurrenciesbaselinebpl.10162:60|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |RegisteredCurrenciesbaselinebpl.10179:66|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |RegisteredCurrenciesbaselinebpl.10208:50|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |RegisteredCurrenciesbaselinebpl.10231:45|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |RegisteredCurrenciesbaselinebpl.10555:87|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@55)))
 :qid |RegisteredCurrenciesbaselinebpl.10772:43|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@56))))
 :qid |RegisteredCurrenciesbaselinebpl.10790:48|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@57)))
 :qid |RegisteredCurrenciesbaselinebpl.10806:50|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@58)))
 :qid |RegisteredCurrenciesbaselinebpl.10819:47|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@59)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@59))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@59))))
 :qid |RegisteredCurrenciesbaselinebpl.10838:58|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@60) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@60)))
 :qid |RegisteredCurrenciesbaselinebpl.10854:39|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@61))))
 :qid |RegisteredCurrenciesbaselinebpl.10876:58|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62))))
 :qid |RegisteredCurrenciesbaselinebpl.10893:58|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63) true)
 :qid |RegisteredCurrenciesbaselinebpl.10908:51|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64))))
 :qid |RegisteredCurrenciesbaselinebpl.10925:60|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@65)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@65))))
 :qid |RegisteredCurrenciesbaselinebpl.11223:47|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@66))))
 :qid |RegisteredCurrenciesbaselinebpl.11249:63|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@67)))
 :qid |RegisteredCurrenciesbaselinebpl.11264:57|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@68)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@68))))
 :qid |RegisteredCurrenciesbaselinebpl.11280:54|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@69)))
 :qid |RegisteredCurrenciesbaselinebpl.11294:55|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@70)))
 :qid |RegisteredCurrenciesbaselinebpl.11307:57|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@71)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@71))))
 :qid |RegisteredCurrenciesbaselinebpl.11329:56|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@72))))
 :qid |RegisteredCurrenciesbaselinebpl.11356:52|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@73)))
 :qid |RegisteredCurrenciesbaselinebpl.11374:54|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@74)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@74))))
 :qid |RegisteredCurrenciesbaselinebpl.12245:45|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@75)))
 :qid |RegisteredCurrenciesbaselinebpl.12259:51|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@76)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@76))))
 :qid |RegisteredCurrenciesbaselinebpl.12282:48|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |RegisteredCurrenciesbaselinebpl.12598:47|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |RegisteredCurrenciesbaselinebpl.12622:47|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |RegisteredCurrenciesbaselinebpl.12879:49|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |RegisteredCurrenciesbaselinebpl.12921:49|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |RegisteredCurrenciesbaselinebpl.12950:48|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |RegisteredCurrenciesbaselinebpl.13246:47|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 T@Vec_65612) (i@@40 Int) ) (! (= (InRangeVec_56497 v@@25 i@@40)  (and (>= i@@40 0) (< i@@40 (|l#Vec_65612| v@@25))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56497 v@@25 i@@40))
)))
(assert (forall ((v@@26 T@Vec_64282) (i@@41 Int) ) (! (= (InRangeVec_56698 v@@26 i@@41)  (and (>= i@@41 0) (< i@@41 (|l#Vec_64282| v@@26))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56698 v@@26 i@@41))
)))
(assert (forall ((v@@27 T@Vec_64321) (i@@42 Int) ) (! (= (InRangeVec_56899 v@@27 i@@42)  (and (>= i@@42 0) (< i@@42 (|l#Vec_64321| v@@27))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56899 v@@27 i@@42))
)))
(assert (forall ((v@@28 T@Vec_64584) (i@@43 Int) ) (! (= (InRangeVec_57100 v@@28 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_64584| v@@28))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57100 v@@28 i@@43))
)))
(assert (forall ((v@@29 T@Vec_64130) (i@@44 Int) ) (! (= (InRangeVec_57301 v@@29 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_64130| v@@29))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57301 v@@29 i@@44))
)))
(assert (forall ((v@@30 T@Vec_64091) (i@@45 Int) ) (! (= (InRangeVec_57502 v@@30 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_64091| v@@30))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57502 v@@30 i@@45))
)))
(assert (forall ((v@@31 T@Vec_64243) (i@@46 Int) ) (! (= (InRangeVec_57703 v@@31 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_64243| v@@31))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57703 v@@31 i@@46))
)))
(assert (forall ((v@@32 T@Vec_63926) (i@@47 Int) ) (! (= (InRangeVec_84549 v@@32 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_63926| v@@32))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_84549 v@@32 i@@47))
)))
(assert (forall ((v@@33 T@Vec_22325) (i@@48 Int) ) (! (= (InRangeVec_12164 v@@33 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_22325| v@@33))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_12164 v@@33 i@@48))
)))
(assert (forall ((v@@34 T@Vec_22325) (e@@9 Int) ) (! (let ((i@@49 (IndexOfVec_22325 v@@34 e@@9)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_12164 v@@34 i@@50) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) i@@50) e@@9))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_12164 v@@34 i@@49) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) i@@49) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@49)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) j@@9) e@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22325 v@@34 e@@9))
)))
(assert (forall ((v@@35 T@Vec_63926) (e@@10 T@Vec_22325) ) (! (let ((i@@51 (IndexOfVec_63926 v@@35 e@@10)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_84549 v@@35 i@@52) (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) i@@52) e@@10))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_84549 v@@35 i@@51) (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) i@@51) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@51)) (not (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) j@@10) e@@10)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63926 v@@35 e@@10))
)))
(assert (forall ((v@@36 T@Vec_64091) (e@@11 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@53 (IndexOfVec_64091 v@@36 e@@11)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_57502 v@@36 i@@54) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) i@@54) e@@11))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_57502 v@@36 i@@53) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) i@@53) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@53)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) j@@11) e@@11)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64091 v@@36 e@@11))
)))
(assert (forall ((v@@37 T@Vec_64130) (e@@12 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@55 (IndexOfVec_64130 v@@37 e@@12)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_57301 v@@37 i@@56) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) i@@56) e@@12))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_57301 v@@37 i@@55) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) i@@55) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@55)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) j@@12) e@@12)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64130 v@@37 e@@12))
)))
(assert (forall ((v@@38 T@Vec_64243) (e@@13 T@$1_ValidatorConfig_Config) ) (! (let ((i@@57 (IndexOfVec_64243 v@@38 e@@13)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_57703 v@@38 i@@58) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) i@@58) e@@13))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_57703 v@@38 i@@57) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) i@@57) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@57)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) j@@13) e@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64243 v@@38 e@@13))
)))
(assert (forall ((v@@39 T@Vec_64282) (e@@14 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@59 (IndexOfVec_64282 v@@39 e@@14)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_56698 v@@39 i@@60) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) i@@60) e@@14))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_56698 v@@39 i@@59) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) i@@59) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@59)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) j@@14) e@@14)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64282 v@@39 e@@14))
)))
(assert (forall ((v@@40 T@Vec_64321) (e@@15 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@61 (IndexOfVec_64321 v@@40 e@@15)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_56899 v@@40 i@@62) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) i@@62) e@@15))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_56899 v@@40 i@@61) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) i@@61) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@61)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) j@@15) e@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64321 v@@40 e@@15))
)))
(assert (forall ((v@@41 T@Vec_64584) (e@@16 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@63 (IndexOfVec_64584 v@@41 e@@16)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_57100 v@@41 i@@64) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) i@@64) e@@16))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_57100 v@@41 i@@63) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) i@@63) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@63)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) j@@16) e@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64584 v@@41 e@@16))
)))
(assert (forall ((v@@42 T@Vec_65612) (e@@17 |T@#0|) ) (! (let ((i@@65 (IndexOfVec_65612 v@@42 e@@17)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_56497 v@@42 i@@66) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) i@@66) e@@17))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_56497 v@@42 i@@65) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) i@@65) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@65)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) j@@17) e@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_65612 v@@42 e@@17))
)))
(assert (forall ((|l#0| Bool) (i@@67 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67) |l#0|)
 :qid |RegisteredCurrenciesbaselinebpl.275:54|
 :skolemid |275|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63793|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63793|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#1| handle@@0))))
(Multiset_63793 (|lambda#30| (|v#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#0@@0| handle@@0)) (|v#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |RegisteredCurrenciesbaselinebpl.2588:13|
 :skolemid |276|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@68 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68) (ite  (and (>= i@@68 |l#0@@1|) (< i@@68 |l#1@@0|)) (ite (< i@@68 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@68) (|Select__T@[Int]#0_| |l#4| (- i@@68 |l#5|))) |l#6|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@69 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69) (ite  (and (<= |l#0@@2| i@@69) (< i@@69 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@69) |l#4@@0|)) |l#5@@0|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@18 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18) (ite  (and (>= j@@18 |l#0@@3|) (< j@@18 |l#1@@2|)) (ite (< j@@18 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@18) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@18 |l#5@@1|))) |l#6@@0|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |279|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70) (ite  (and (>= i@@70 |l#0@@4|) (< i@@70 |l#1@@3|)) (ite (< i@@70 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@70) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@70 |l#5@@2|))) |l#6@@1|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |280|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71) (ite  (and (<= |l#0@@5| i@@71) (< i@@71 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@71) |l#4@@3|)) |l#5@@3|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |281|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19) (ite  (and (>= j@@19 |l#0@@6|) (< j@@19 |l#1@@5|)) (ite (< j@@19 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@19) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@19 |l#5@@4|))) |l#6@@2|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |282|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72) (ite  (and (>= i@@72 |l#0@@7|) (< i@@72 |l#1@@6|)) (ite (< i@@72 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@72) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@72 |l#5@@5|))) |l#6@@3|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@73 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73) (ite  (and (<= |l#0@@8| i@@73) (< i@@73 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@73) |l#4@@6|)) |l#5@@6|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20) (ite  (and (>= j@@20 |l#0@@9|) (< j@@20 |l#1@@8|)) (ite (< j@@20 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@20) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@20 |l#5@@7|))) |l#6@@4|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74) (ite  (and (>= i@@74 |l#0@@10|) (< i@@74 |l#1@@9|)) (ite (< i@@74 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@74) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@74 |l#5@@8|))) |l#6@@5|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75) (ite  (and (<= |l#0@@11| i@@75) (< i@@75 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@75) |l#4@@9|)) |l#5@@9|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21) (ite  (and (>= j@@21 |l#0@@12|) (< j@@21 |l#1@@11|)) (ite (< j@@21 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@21) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@21 |l#5@@10|))) |l#6@@6|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76) (ite  (and (>= i@@76 |l#0@@13|) (< i@@76 |l#1@@12|)) (ite (< i@@76 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@11| i@@76) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@11| (- i@@76 |l#5@@11|))) |l#6@@7|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77) (ite  (and (<= |l#0@@14| i@@77) (< i@@77 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@12| (- (- |l#3@@12| i@@77) |l#4@@12|)) |l#5@@12|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22) (ite  (and (>= j@@22 |l#0@@15|) (< j@@22 |l#1@@14|)) (ite (< j@@22 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@13| j@@22) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@13| (+ j@@22 |l#5@@13|))) |l#6@@8|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78) (ite  (and (>= i@@78 |l#0@@16|) (< i@@78 |l#1@@15|)) (ite (< i@@78 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@14| i@@78) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@14| (- i@@78 |l#5@@14|))) |l#6@@9|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79) (ite  (and (<= |l#0@@17| i@@79) (< i@@79 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@15| (- (- |l#3@@15| i@@79) |l#4@@15|)) |l#5@@15|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23) (ite  (and (>= j@@23 |l#0@@18|) (< j@@23 |l#1@@17|)) (ite (< j@@23 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@16| j@@23) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@16| (+ j@@23 |l#5@@16|))) |l#6@@10|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@17| Int) (|l#6@@11| T@$1_ValidatorConfig_Config) (i@@80 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80) (ite  (and (>= i@@80 |l#0@@19|) (< i@@80 |l#1@@18|)) (ite (< i@@80 |l#2@@17|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@17| i@@80) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@17| (- i@@80 |l#5@@17|))) |l#6@@11|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_ValidatorConfig_Config) (i@@81 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81) (ite  (and (<= |l#0@@20| i@@81) (< i@@81 |l#1@@19|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@18| (- (- |l#3@@18| i@@81) |l#4@@18|)) |l#5@@18|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@19| Int) (|l#6@@12| T@$1_ValidatorConfig_Config) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24) (ite  (and (>= j@@24 |l#0@@21|) (< j@@24 |l#1@@20|)) (ite (< j@@24 |l#2@@19|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@19| j@@24) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@19| (+ j@@24 |l#5@@19|))) |l#6@@12|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Vec_22325|) (|l#4@@20| |T@[Int]Vec_22325|) (|l#5@@20| Int) (|l#6@@13| T@Vec_22325) (i@@82 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82) (ite  (and (>= i@@82 |l#0@@22|) (< i@@82 |l#1@@21|)) (ite (< i@@82 |l#2@@20|) (|Select__T@[Int]Vec_22325_| |l#3@@20| i@@82) (|Select__T@[Int]Vec_22325_| |l#4@@20| (- i@@82 |l#5@@20|))) |l#6@@13|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Vec_22325|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@Vec_22325) (i@@83 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83) (ite  (and (<= |l#0@@23| i@@83) (< i@@83 |l#1@@22|)) (|Select__T@[Int]Vec_22325_| |l#2@@21| (- (- |l#3@@21| i@@83) |l#4@@21|)) |l#5@@21|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Vec_22325|) (|l#4@@22| |T@[Int]Vec_22325|) (|l#5@@22| Int) (|l#6@@14| T@Vec_22325) (j@@25 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25) (ite  (and (>= j@@25 |l#0@@24|) (< j@@25 |l#1@@23|)) (ite (< j@@25 |l#2@@22|) (|Select__T@[Int]Vec_22325_| |l#3@@22| j@@25) (|Select__T@[Int]Vec_22325_| |l#4@@22| (+ j@@25 |l#5@@22|))) |l#6@@14|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Int|) (|l#4@@23| |T@[Int]Int|) (|l#5@@23| Int) (|l#6@@15| Int) (i@@84 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84) (ite  (and (>= i@@84 |l#0@@25|) (< i@@84 |l#1@@24|)) (ite (< i@@84 |l#2@@23|) (|Select__T@[Int]Int_| |l#3@@23| i@@84) (|Select__T@[Int]Int_| |l#4@@23| (- i@@84 |l#5@@23|))) |l#6@@15|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Int|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| Int) (i@@85 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85) (ite  (and (<= |l#0@@26| i@@85) (< i@@85 |l#1@@25|)) (|Select__T@[Int]Int_| |l#2@@24| (- (- |l#3@@24| i@@85) |l#4@@24|)) |l#5@@24|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Int|) (|l#4@@25| |T@[Int]Int|) (|l#5@@25| Int) (|l#6@@16| Int) (j@@26 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26) (ite  (and (>= j@@26 |l#0@@27|) (< j@@26 |l#1@@26|)) (ite (< j@@26 |l#2@@25|) (|Select__T@[Int]Int_| |l#3@@25| j@@26) (|Select__T@[Int]Int_| |l#4@@25| (+ j@@26 |l#5@@25|))) |l#6@@16|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26))
)))
(assert (forall ((|l#0@@28| |T@[$EventRep]Int|) (|l#1@@27| |T@[$EventRep]Int|) (v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43) (- (|Select__T@[$EventRep]Int_| |l#0@@28| v@@43) (|Select__T@[$EventRep]Int_| |l#1@@27| v@@43)))
 :qid |RegisteredCurrenciesbaselinebpl.154:29|
 :skolemid |304|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@26| |T@[Int]Vec_22325|) (|l#3@@26| Int) (|l#4@@26| T@Vec_22325) (k Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@26| |l#3@@26| |l#4@@26|) k) (ite  (and (<= |l#0@@29| k) (< k |l#1@@28|)) (|Select__T@[Int]Vec_22325_| |l#2@@26| (+ |l#3@@26| k)) |l#4@@26|))
 :qid |RegisteredCurrenciesbaselinebpl.90:14|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@26| |l#3@@26| |l#4@@26|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_98722)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_100679)
(declare-fun $t1 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_100177)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_102900)
(declare-fun $t2 () Int)
(declare-fun $t4@0 () Int)
(declare-fun $t10 () Bool)
(declare-fun $t9 () Int)
(declare-fun $t4 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t5 () Int)
(declare-fun $t3 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_102900)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_100177)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $t8@0 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_101816)
(declare-fun MapConstVec_84995 (T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun DefaultVecElem_84995 () T@Vec_22325)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_102900)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_102900)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''@0| () |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_100177)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_100177)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@0| () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_Vector_empty'vec'u8''$0$v@1| () T@Vec_63926)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_RegisteredCurrencies_initialize$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 208007) (let ((L2_correct  (and (=> (= (ControlFlow 0 153202) (- 0 208942)) (or (or (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t1)) 0))) (not (= _$t0 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t2)) 0))) (not (= _$t0 173345816)))) (=> (or (or (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t1)) 0))) (not (= _$t0 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t2)) 0))) (not (= _$t0 173345816))) (=> (= (ControlFlow 0 153202) (- 0 209030)) (or (or (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t1)) (= 5 $t4@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t1)) 0)) (= 3 $t4@0))) (and (not (= _$t0 173345816)) (= 2 $t4@0))) (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t2)) (= 5 $t4@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t2)) 0)) (= 3 $t4@0))) (and (not (= _$t0 173345816)) (= 2 $t4@0))))))))
(let ((anon19_Then_correct  (=> $t10 (=> (and (and (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t9)) (= 5 $t4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t9)) 0)) (= 3 $t4))) (and (not (= _$t0 173345816)) (= 2 $t4))) (= $t4 $t4)) (and (= $t4@0 $t4) (= (ControlFlow 0 152942) 153202))) L2_correct))))
(let ((anon17_Then_correct  (=> $t6 (=> (and (and (or (or (or (and (not (= _$t0 173345816)) (= 2 $t4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t5)) (= 5 $t4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t5)) 0)) (= 3 $t4))) (and (not (= _$t0 173345816)) (= 2 $t4))) (= $t4 $t4)) (and (= $t4@0 $t4) (= (ControlFlow 0 153308) 153202))) L2_correct))))
(let ((anon16_Then_correct  (=> $t3 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4)) (= $t4 $t4)) (and (= $t4@0 $t4) (= (ControlFlow 0 153334) 153202))) L2_correct))))
(let ((anon14_correct  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816)) (and (|$IsEqual'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr)))) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| $t8@0)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (=> (= (ControlFlow 0 152830) (- 0 208756)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 152830) (- 0 208766)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t1))) (and (=> (= (ControlFlow 0 152830) (- 0 208778)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t1)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t1)) 0))) (and (=> (= (ControlFlow 0 152830) (- 0 208796)) (not (not (= _$t0 173345816)))) (=> (not (not (= _$t0 173345816))) (and (=> (= (ControlFlow 0 152830) (- 0 208810)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 152830) (- 0 208818)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (and (=> (= (ControlFlow 0 152830) (- 0 208829)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t2))) (and (=> (= (ControlFlow 0 152830) (- 0 208841)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t2)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t2)) 0))) (and (=> (= (ControlFlow 0 152830) (- 0 208859)) (not (not (= _$t0 173345816)))) (=> (not (not (= _$t0 173345816))) (and (=> (= (ControlFlow 0 152830) (- 0 208873)) (= (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@0))))) 0)) (=> (= (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@0))))) 0) (and (=> (= (ControlFlow 0 152830) (- 0 208885)) (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) _$t0) (and (=> (= (ControlFlow 0 152830) (- 0 208894)) (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 152830) (- 0 208900)) (|$IsEqual'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1)))) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| ($1_RegisteredCurrencies_RegisteredCurrencies (Vec_63926 (MapConstVec_84995 DefaultVecElem_84995) 0))))) (=> (|$IsEqual'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1)))) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| ($1_RegisteredCurrencies_RegisteredCurrencies (Vec_63926 (MapConstVec_84995 DefaultVecElem_84995) 0)))) (=> (= (ControlFlow 0 152830) (- 0 208912)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816))))))))))))))))))))))))))))))))
(let ((anon21_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_102900 (|Store__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)))) (and (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (= (ControlFlow 0 152626) 152830))) anon14_correct)))
(let ((anon21_Then_correct  (=> (and (and |$temp_0'bool'@1| (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_102900 (|Store__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |$temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''@0|)))) (and (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|) (= (ControlFlow 0 152842) 152830))) anon14_correct)))
(let ((anon20_Else_correct  (=> (not |$temp_0'bool'@0|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_100177 (|Store__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|)) (and (=> (= (ControlFlow 0 152612) 152842) anon21_Then_correct) (=> (= (ControlFlow 0 152612) 152626) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> |$temp_0'bool'@0| (=> (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_100177 (|Store__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@0|))) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|)) (and (=> (= (ControlFlow 0 152854) 152842) anon21_Then_correct) (=> (= (ControlFlow 0 152854) 152626) anon21_Else_correct))))))
(let ((anon19_Else_correct  (=> (not $t10) (and (=> (= (ControlFlow 0 152600) 152854) anon20_Then_correct) (=> (= (ControlFlow 0 152600) 152612) anon20_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (and (not false) (= $t8@0 ($1_RegisteredCurrencies_RegisteredCurrencies |inline$$1_Vector_empty'vec'u8''$0$v@1|))) (and (= $t9 _$t0) (= $t10  (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t9))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t9)) 0))) (not (= _$t0 173345816)))))) (and (=> (= (ControlFlow 0 152592) 152942) anon19_Then_correct) (=> (= (ControlFlow 0 152592) 152600) anon19_Else_correct)))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_empty'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'vec'u8''$0$v@1| (Vec_63926 (MapConstVec_84995 DefaultVecElem_84995) 0)) (and (=> (= (ControlFlow 0 152504) 153216) anon18_Then_correct) (=> (= (ControlFlow 0 152504) 152592) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (not $t6) (= (ControlFlow 0 152510) 152504)) |inline$$1_Vector_empty'vec'u8''$0$anon0_correct|)))
(let ((anon16_Else_correct  (=> (not $t3) (=> (and (= $t5 _$t0) (= $t6  (or (or (or (not (= _$t0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100679| $1_Roles_RoleId_$memory) $t5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $t5)) 0))) (not (= _$t0 173345816))))) (and (=> (= (ControlFlow 0 152476) 153308) anon17_Then_correct) (=> (= (ControlFlow 0 152476) 152510) anon17_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (|$IsValid'address'| _$t0))) (=> (and (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |RegisteredCurrenciesbaselinebpl.4851:20|
 :skolemid |146|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |RegisteredCurrenciesbaselinebpl.4855:20|
 :skolemid |147|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100679| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@1)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@1))
 :qid |RegisteredCurrenciesbaselinebpl.4859:20|
 :skolemid |148|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@2)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@2))
 :qid |RegisteredCurrenciesbaselinebpl.4863:20|
 :skolemid |149|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@2))
)))) (and (and (= $t1 _$t0) (= $t2 _$t0)) (and (= _$t0 _$t0) (= $t3  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 152404) 153334) anon16_Then_correct) (=> (= (ControlFlow 0 152404) 152476) anon16_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_63793| stream@@0) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63793| stream@@0) v@@44) 0)
 :qid |RegisteredCurrenciesbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2578:13|
 :skolemid |91|
))) (= (ControlFlow 0 152218) 152404)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 208007) 152218) inline$$InitEventStore$0$anon0_correct)))
anon0_correct)))))))))))))))))))
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
(declare-datatypes ((T@$Memory_91273 0)) ((($Memory_91273 (|domain#$Memory_91273| |T@[Int]Bool|) (|contents#$Memory_91273| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_65612 0)) (((Vec_65612 (|v#Vec_65612| |T@[Int]#0|) (|l#Vec_65612| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_136629 0)) ((($Memory_136629 (|domain#$Memory_136629| |T@[Int]Bool|) (|contents#$Memory_136629| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_131974 0)) ((($Memory_131974 (|domain#$Memory_131974| |T@[Int]Bool|) (|contents#$Memory_131974| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_129780 0)) ((($Memory_129780 (|domain#$Memory_129780| |T@[Int]Bool|) (|contents#$Memory_129780| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_130092 0)) ((($Memory_130092 (|domain#$Memory_130092| |T@[Int]Bool|) (|contents#$Memory_130092| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_129747 0)) ((($Memory_129747 (|domain#$Memory_129747| |T@[Int]Bool|) (|contents#$Memory_129747| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_129527 0)) ((($Memory_129527 (|domain#$Memory_129527| |T@[Int]Bool|) (|contents#$Memory_129527| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_129141 0)) ((($Memory_129141 (|domain#$Memory_129141| |T@[Int]Bool|) (|contents#$Memory_129141| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_126521 0)) ((($Memory_126521 (|domain#$Memory_126521| |T@[Int]Bool|) (|contents#$Memory_126521| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_64321 0)) (((Vec_64321 (|v#Vec_64321| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_64321| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_64321) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_64282 0)) (((Vec_64282 (|v#Vec_64282| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_64282| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_64282) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_121123 0)) ((($Memory_121123 (|domain#$Memory_121123| |T@[Int]Bool|) (|contents#$Memory_121123| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120904 0)) ((($Memory_120904 (|domain#$Memory_120904| |T@[Int]Bool|) (|contents#$Memory_120904| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_131752 0)) ((($Memory_131752 (|domain#$Memory_131752| |T@[Int]Bool|) (|contents#$Memory_131752| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113716 0)) ((($Memory_113716 (|domain#$Memory_113716| |T@[Int]Bool|) (|contents#$Memory_113716| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113629 0)) ((($Memory_113629 (|domain#$Memory_113629| |T@[Int]Bool|) (|contents#$Memory_113629| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_22325 0)) (((Vec_22325 (|v#Vec_22325| |T@[Int]Int|) (|l#Vec_22325| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22325) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22325) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_22325) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_130735 0)) ((($Memory_130735 (|domain#$Memory_130735| |T@[Int]Bool|) (|contents#$Memory_130735| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_22325) (|$base_url#$1_DualAttestation_Credential| T@Vec_22325) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_22325) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_126457 0)) ((($Memory_126457 (|domain#$Memory_126457| |T@[Int]Bool|) (|contents#$Memory_126457| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_22325) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_22325) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_64243 0)) (((Vec_64243 (|v#Vec_64243| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_64243| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_64243) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_64584 0)) (((Vec_64584 (|v#Vec_64584| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_64584| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_124863 0)) ((($Memory_124863 (|domain#$Memory_124863| |T@[Int]Bool|) (|contents#$Memory_124863| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_124274 0)) ((($Memory_124274 (|domain#$Memory_124274| |T@[Int]Bool|) (|contents#$Memory_124274| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109904 0)) ((($Memory_109904 (|domain#$Memory_109904| |T@[Int]Bool|) (|contents#$Memory_109904| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109817 0)) ((($Memory_109817 (|domain#$Memory_109817| |T@[Int]Bool|) (|contents#$Memory_109817| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113964 0)) ((($Memory_113964 (|domain#$Memory_113964| |T@[Int]Bool|) (|contents#$Memory_113964| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_122961 0)) ((($Memory_122961 (|domain#$Memory_122961| |T@[Int]Bool|) (|contents#$Memory_122961| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_64130 0)) (((Vec_64130 (|v#Vec_64130| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_64130| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_64130) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114331 0)) ((($Memory_114331 (|domain#$Memory_114331| |T@[Int]Bool|) (|contents#$Memory_114331| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113883 0)) ((($Memory_113883 (|domain#$Memory_113883| |T@[Int]Bool|) (|contents#$Memory_113883| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_125363 0)) ((($Memory_125363 (|domain#$Memory_125363| |T@[Int]Bool|) (|contents#$Memory_125363| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_64091 0)) (((Vec_64091 (|v#Vec_64091| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_64091| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_64091) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114214 0)) ((($Memory_114214 (|domain#$Memory_114214| |T@[Int]Bool|) (|contents#$Memory_114214| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]Vec_22325| 0)
(declare-datatypes ((T@Vec_63926 0)) (((Vec_63926 (|v#Vec_63926| |T@[Int]Vec_22325|) (|l#Vec_63926| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_103248 0)) ((($Memory_103248 (|domain#$Memory_103248| |T@[Int]Bool|) (|contents#$Memory_103248| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_103161 0)) ((($Memory_103161 (|domain#$Memory_103161| |T@[Int]Bool|) (|contents#$Memory_103161| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_103074 0)) ((($Memory_103074 (|domain#$Memory_103074| |T@[Int]Bool|) (|contents#$Memory_103074| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_135317 0)) ((($Memory_135317 (|domain#$Memory_135317| |T@[Int]Bool|) (|contents#$Memory_135317| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_102987 0)) ((($Memory_102987 (|domain#$Memory_102987| |T@[Int]Bool|) (|contents#$Memory_102987| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_102900 0)) ((($Memory_102900 (|domain#$Memory_102900| |T@[Int]Bool|) (|contents#$Memory_102900| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_101749 0)) ((($Memory_101749 (|domain#$Memory_101749| |T@[Int]Bool|) (|contents#$Memory_101749| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_101816 0)) ((($Memory_101816 (|domain#$Memory_101816| |T@[Int]Bool|) (|contents#$Memory_101816| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_101667 0)) ((($Memory_101667 (|domain#$Memory_101667| |T@[Int]Bool|) (|contents#$Memory_101667| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_101585 0)) ((($Memory_101585 (|domain#$Memory_101585| |T@[Int]Bool|) (|contents#$Memory_101585| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_64584) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_101503 0)) ((($Memory_101503 (|domain#$Memory_101503| |T@[Int]Bool|) (|contents#$Memory_101503| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_63926) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_101421 0)) ((($Memory_101421 (|domain#$Memory_101421| |T@[Int]Bool|) (|contents#$Memory_101421| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_63926) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_100177 0)) ((($Memory_100177 (|domain#$Memory_100177| |T@[Int]Bool|) (|contents#$Memory_100177| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_22325) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109515 0)) ((($Memory_109515 (|domain#$Memory_109515| |T@[Int]Bool|) (|contents#$Memory_109515| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_22325) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109450 0)) ((($Memory_109450 (|domain#$Memory_109450| |T@[Int]Bool|) (|contents#$Memory_109450| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_100679 0)) ((($Memory_100679 (|domain#$Memory_100679| |T@[Int]Bool|) (|contents#$Memory_100679| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_100646 0)) ((($Memory_100646 (|domain#$Memory_100646| |T@[Int]Bool|) (|contents#$Memory_100646| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_98722 0)) ((($Memory_98722 (|domain#$Memory_98722| |T@[Int]Bool|) (|contents#$Memory_98722| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_22325) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_22325) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_22325) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainEvent 0)) ((($1_DiemId_DiemIdDomainEvent (|$removed#$1_DiemId_DiemIdDomainEvent| Bool) (|$domain#$1_DiemId_DiemIdDomainEvent| T@$1_DiemId_DiemIdDomain) (|$address#$1_DiemId_DiemIdDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_22325) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_22325) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22325) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_22325) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| (|e#$ToEventRep'$1_DiemId_DiemIdDomainEvent'| T@$1_DiemId_DiemIdDomainEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_63793 0)) (((Multiset_63793 (|v#Multiset_63793| |T@[$EventRep]Int|) (|l#Multiset_63793| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63793| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63793|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_132826 0)) ((($Mutation_132826 (|l#$Mutation_132826| T@$Location) (|p#$Mutation_132826| T@Vec_22325) (|v#$Mutation_132826| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_132781 0)) ((($Mutation_132781 (|l#$Mutation_132781| T@$Location) (|p#$Mutation_132781| T@Vec_22325) (|v#$Mutation_132781| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_33792 0)) ((($Mutation_33792 (|l#$Mutation_33792| T@$Location) (|p#$Mutation_33792| T@Vec_22325) (|v#$Mutation_33792| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_119611 0)) ((($Mutation_119611 (|l#$Mutation_119611| T@$Location) (|p#$Mutation_119611| T@Vec_22325) (|v#$Mutation_119611| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_106184 0)) ((($Mutation_106184 (|l#$Mutation_106184| T@$Location) (|p#$Mutation_106184| T@Vec_22325) (|v#$Mutation_106184| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_99196 0)) ((($Mutation_99196 (|l#$Mutation_99196| T@$Location) (|p#$Mutation_99196| T@Vec_22325) (|v#$Mutation_99196| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_91901 0)) ((($Mutation_91901 (|l#$Mutation_91901| T@$Location) (|p#$Mutation_91901| T@Vec_22325) (|v#$Mutation_91901| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12788 0)) ((($Mutation_12788 (|l#$Mutation_12788| T@$Location) (|p#$Mutation_12788| T@Vec_22325) (|v#$Mutation_12788| Int) ) ) ))
(declare-datatypes ((T@$Mutation_86214 0)) ((($Mutation_86214 (|l#$Mutation_86214| T@$Location) (|p#$Mutation_86214| T@Vec_22325) (|v#$Mutation_86214| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$Mutation_85126 0)) ((($Mutation_85126 (|l#$Mutation_85126| T@$Location) (|p#$Mutation_85126| T@Vec_22325) (|v#$Mutation_85126| T@Vec_63926) ) ) ))
(declare-datatypes ((T@$Mutation_83417 0)) ((($Mutation_83417 (|l#$Mutation_83417| T@$Location) (|p#$Mutation_83417| T@Vec_22325) (|v#$Mutation_83417| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_82430 0)) ((($Mutation_82430 (|l#$Mutation_82430| T@$Location) (|p#$Mutation_82430| T@Vec_22325) (|v#$Mutation_82430| T@Vec_64243) ) ) ))
(declare-datatypes ((T@$Mutation_80775 0)) ((($Mutation_80775 (|l#$Mutation_80775| T@$Location) (|p#$Mutation_80775| T@Vec_22325) (|v#$Mutation_80775| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_79788 0)) ((($Mutation_79788 (|l#$Mutation_79788| T@$Location) (|p#$Mutation_79788| T@Vec_22325) (|v#$Mutation_79788| T@Vec_64091) ) ) ))
(declare-datatypes ((T@$Mutation_78079 0)) ((($Mutation_78079 (|l#$Mutation_78079| T@$Location) (|p#$Mutation_78079| T@Vec_22325) (|v#$Mutation_78079| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_77092 0)) ((($Mutation_77092 (|l#$Mutation_77092| T@$Location) (|p#$Mutation_77092| T@Vec_22325) (|v#$Mutation_77092| T@Vec_64130) ) ) ))
(declare-datatypes ((T@$Mutation_75383 0)) ((($Mutation_75383 (|l#$Mutation_75383| T@$Location) (|p#$Mutation_75383| T@Vec_22325) (|v#$Mutation_75383| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_74396 0)) ((($Mutation_74396 (|l#$Mutation_74396| T@$Location) (|p#$Mutation_74396| T@Vec_22325) (|v#$Mutation_74396| T@Vec_64584) ) ) ))
(declare-datatypes ((T@$Mutation_72596 0)) ((($Mutation_72596 (|l#$Mutation_72596| T@$Location) (|p#$Mutation_72596| T@Vec_22325) (|v#$Mutation_72596| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71609 0)) ((($Mutation_71609 (|l#$Mutation_71609| T@$Location) (|p#$Mutation_71609| T@Vec_22325) (|v#$Mutation_71609| T@Vec_64321) ) ) ))
(declare-datatypes ((T@$Mutation_69944 0)) ((($Mutation_69944 (|l#$Mutation_69944| T@$Location) (|p#$Mutation_69944| T@Vec_22325) (|v#$Mutation_69944| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68957 0)) ((($Mutation_68957 (|l#$Mutation_68957| T@$Location) (|p#$Mutation_68957| T@Vec_22325) (|v#$Mutation_68957| T@Vec_64282) ) ) ))
(declare-datatypes ((T@$Mutation_67244 0)) ((($Mutation_67244 (|l#$Mutation_67244| T@$Location) (|p#$Mutation_67244| T@Vec_22325) (|v#$Mutation_67244| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_66257 0)) ((($Mutation_66257 (|l#$Mutation_66257| T@$Location) (|p#$Mutation_66257| T@Vec_22325) (|v#$Mutation_66257| T@Vec_65612) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_65612 T@Vec_65612) Bool)
(declare-fun InRangeVec_56497 (T@Vec_65612 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_65612) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_65612 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_64282 T@Vec_64282) Bool)
(declare-fun InRangeVec_56698 (T@Vec_64282 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_64282) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_64282 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_64321 T@Vec_64321) Bool)
(declare-fun InRangeVec_56899 (T@Vec_64321 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_64321) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_64321 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_64584 T@Vec_64584) Bool)
(declare-fun InRangeVec_57100 (T@Vec_64584 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_22325 T@Vec_22325) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_64584) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_64584 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_64130 T@Vec_64130) Bool)
(declare-fun InRangeVec_57301 (T@Vec_64130 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_64130) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_64130 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_64091 T@Vec_64091) Bool)
(declare-fun InRangeVec_57502 (T@Vec_64091 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_64091) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_64091 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_64243 T@Vec_64243) Bool)
(declare-fun InRangeVec_57703 (T@Vec_64243 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_64243) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_64243 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_63926 T@Vec_63926) Bool)
(declare-fun InRangeVec_84549 (T@Vec_63926 Int) Bool)
(declare-fun |Select__T@[Int]Vec_22325_| (|T@[Int]Vec_22325| Int) T@Vec_22325)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_63926) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_22325) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_63926 T@Vec_22325) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_22325 T@Vec_22325) Bool)
(declare-fun InRangeVec_12164 (T@Vec_22325 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_22325) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_22325 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_22325 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_22325) T@Vec_22325)
(declare-fun $1_Hash_sha3 (T@Vec_22325) T@Vec_22325)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_22325) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_22325 T@Vec_22325 T@Vec_22325) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63793_| (|T@[$1_Event_EventHandle]Multiset_63793| T@$1_Event_EventHandle) T@Multiset_63793)
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
(declare-fun IndexOfVec_22325 (T@Vec_22325 Int) Int)
(declare-fun IndexOfVec_63926 (T@Vec_63926 T@Vec_22325) Int)
(declare-fun IndexOfVec_64091 (T@Vec_64091 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_64130 (T@Vec_64130 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_64243 (T@Vec_64243 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_64282 (T@Vec_64282 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_64321 (T@Vec_64321 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_64584 (T@Vec_64584 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_65612 (T@Vec_65612 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63793| |T@[$1_Event_EventHandle]Multiset_63793|) |T@[$1_Event_EventHandle]Multiset_63793|)
(declare-fun |lambda#30| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]Vec_22325| |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#25| (Int Int |T@[Int]Vec_22325| Int Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Vec_22325| |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#31| (Int Int |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |RegisteredCurrenciesbaselinebpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |RegisteredCurrenciesbaselinebpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |RegisteredCurrenciesbaselinebpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |RegisteredCurrenciesbaselinebpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |RegisteredCurrenciesbaselinebpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |RegisteredCurrenciesbaselinebpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |RegisteredCurrenciesbaselinebpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |RegisteredCurrenciesbaselinebpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_65612) (v2 T@Vec_65612) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_65612| v1) (|l#Vec_65612| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_56497 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_65612| v2) i@@0)))
 :qid |RegisteredCurrenciesbaselinebpl.615:13|
 :skolemid |17|
))))
 :qid |RegisteredCurrenciesbaselinebpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_65612) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_65612| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_56497 v@@4 i@@1) true)
 :qid |RegisteredCurrenciesbaselinebpl.621:13|
 :skolemid |19|
))))
 :qid |RegisteredCurrenciesbaselinebpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_65612) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_56497 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) i@@3) e))
 :qid |RegisteredCurrenciesbaselinebpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_56497 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) j) e)))
 :qid |RegisteredCurrenciesbaselinebpl.634:17|
 :skolemid |22|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_64282) (v2@@0 T@Vec_64282) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_64282| v1@@0) (|l#Vec_64282| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_56698 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v2@@0) i@@4)))
 :qid |RegisteredCurrenciesbaselinebpl.796:13|
 :skolemid |24|
))))
 :qid |RegisteredCurrenciesbaselinebpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_64282) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_64282| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_56698 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@6) i@@5)))
 :qid |RegisteredCurrenciesbaselinebpl.802:13|
 :skolemid |26|
))))
 :qid |RegisteredCurrenciesbaselinebpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_64282) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_56698 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) i@@7) e@@0))
 :qid |RegisteredCurrenciesbaselinebpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_56698 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) j@@0) e@@0)))
 :qid |RegisteredCurrenciesbaselinebpl.815:17|
 :skolemid |29|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_64321) (v2@@1 T@Vec_64321) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_64321| v1@@1) (|l#Vec_64321| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_56899 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v2@@1) i@@8)))
 :qid |RegisteredCurrenciesbaselinebpl.977:13|
 :skolemid |31|
))))
 :qid |RegisteredCurrenciesbaselinebpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_64321) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_64321| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_56899 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@8) i@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.983:13|
 :skolemid |33|
))))
 :qid |RegisteredCurrenciesbaselinebpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_64321) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_56899 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) i@@11) e@@1))
 :qid |RegisteredCurrenciesbaselinebpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_56899 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) j@@1) e@@1)))
 :qid |RegisteredCurrenciesbaselinebpl.996:17|
 :skolemid |36|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_64584) (v2@@2 T@Vec_64584) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_64584| v1@@2) (|l#Vec_64584| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_57100 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))))
 :qid |RegisteredCurrenciesbaselinebpl.1158:13|
 :skolemid |38|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_64584) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_64584| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_57100 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@10) i@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.1164:13|
 :skolemid |40|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_64584) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_57100 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |RegisteredCurrenciesbaselinebpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_57100 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |RegisteredCurrenciesbaselinebpl.1177:17|
 :skolemid |43|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_64130) (v2@@3 T@Vec_64130) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3)  (and (= (|l#Vec_64130| v1@@3) (|l#Vec_64130| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_57301 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v2@@3) i@@16)))))
 :qid |RegisteredCurrenciesbaselinebpl.1339:13|
 :skolemid |45|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1337:65|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_64130) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_64130| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_57301 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@12) i@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.1345:13|
 :skolemid |47|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1343:65|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_64130) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_57301 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3))))
 :qid |RegisteredCurrenciesbaselinebpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_57301 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))))
 :qid |RegisteredCurrenciesbaselinebpl.1358:17|
 :skolemid |50|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_64091) (v2@@4 T@Vec_64091) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4)  (and (= (|l#Vec_64091| v1@@4) (|l#Vec_64091| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_57502 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v2@@4) i@@20)))))
 :qid |RegisteredCurrenciesbaselinebpl.1520:13|
 :skolemid |52|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_64091) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_64091| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_57502 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@14) i@@21)))
 :qid |RegisteredCurrenciesbaselinebpl.1526:13|
 :skolemid |54|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_64091) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_57502 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4))))
 :qid |RegisteredCurrenciesbaselinebpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_57502 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))))
 :qid |RegisteredCurrenciesbaselinebpl.1539:17|
 :skolemid |57|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_64243) (v2@@5 T@Vec_64243) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5)  (and (= (|l#Vec_64243| v1@@5) (|l#Vec_64243| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_57703 v1@@5 i@@24) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24)))))
 :qid |RegisteredCurrenciesbaselinebpl.1701:13|
 :skolemid |59|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1699:51|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_64243) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_64243| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_57703 v@@16 i@@25) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@16) i@@25)))
 :qid |RegisteredCurrenciesbaselinebpl.1707:13|
 :skolemid |61|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1705:51|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_64243) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@26 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_57703 v@@17 i@@27)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5))))
 :qid |RegisteredCurrenciesbaselinebpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_57703 v@@17 i@@26)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))))
 :qid |RegisteredCurrenciesbaselinebpl.1720:17|
 :skolemid |64|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_63926) (v2@@6 T@Vec_63926) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6)  (and (= (|l#Vec_63926| v1@@6) (|l#Vec_63926| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_84549 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v1@@6) i@@28) (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v2@@6) i@@28)))
 :qid |RegisteredCurrenciesbaselinebpl.1882:13|
 :skolemid |66|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_63926) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_63926| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_84549 v@@18 i@@29) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@18) i@@29)))
 :qid |RegisteredCurrenciesbaselinebpl.1888:13|
 :skolemid |68|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_63926) (e@@6 T@Vec_22325) ) (! (let ((i@@30 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_84549 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) i@@31) e@@6))
 :qid |RegisteredCurrenciesbaselinebpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_84549 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) j@@6) e@@6)))
 :qid |RegisteredCurrenciesbaselinebpl.1901:17|
 :skolemid |71|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_22325) (v2@@7 T@Vec_22325) ) (! (= (|$IsEqual'vec'address''| v1@@7 v2@@7)  (and (= (|l#Vec_22325| v1@@7) (|l#Vec_22325| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_12164 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_22325| v2@@7) i@@32)))
 :qid |RegisteredCurrenciesbaselinebpl.2063:13|
 :skolemid |73|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'address''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_22325) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_22325| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_12164 v@@20 i@@33) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_22325| v@@20) i@@33)))
 :qid |RegisteredCurrenciesbaselinebpl.2069:13|
 :skolemid |75|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_22325) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_12164 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) i@@35) e@@7))
 :qid |RegisteredCurrenciesbaselinebpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_12164 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) j@@7) e@@7)))
 :qid |RegisteredCurrenciesbaselinebpl.2082:17|
 :skolemid |78|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_22325) (v2@@8 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8)  (and (= (|l#Vec_22325| v1@@8) (|l#Vec_22325| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_12164 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_22325| v2@@8) i@@36)))
 :qid |RegisteredCurrenciesbaselinebpl.2244:13|
 :skolemid |80|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2242:28|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u8''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_22325) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_22325| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_12164 v@@22 i@@37) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_22325| v@@22) i@@37)))
 :qid |RegisteredCurrenciesbaselinebpl.2250:13|
 :skolemid |82|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2248:28|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_22325) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_12164 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) i@@39) e@@8))
 :qid |RegisteredCurrenciesbaselinebpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_12164 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) j@@8) e@@8)))
 :qid |RegisteredCurrenciesbaselinebpl.2263:17|
 :skolemid |85|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_22325) (v2@@9 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.2436:15|
 :skolemid |87|
 :pattern ( ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9))
)))
(assert (forall ((v1@@10 T@Vec_22325) (v2@@10 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10)))
 :qid |RegisteredCurrenciesbaselinebpl.2452:15|
 :skolemid |88|
 :pattern ( ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10))
)))
(assert (forall ((k1 T@Vec_22325) (k2 T@Vec_22325) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |RegisteredCurrenciesbaselinebpl.2499:15|
 :skolemid |89|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_22325) (s2 T@Vec_22325) (k1@@0 T@Vec_22325) (k2@@0 T@Vec_22325) (m1 T@Vec_22325) (m2 T@Vec_22325) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |RegisteredCurrenciesbaselinebpl.2502:15|
 :skolemid |90|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63793| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63793| stream) v@@24) 0)
 :qid |RegisteredCurrenciesbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2578:13|
 :skolemid |91|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |RegisteredCurrenciesbaselinebpl.2619:80|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11)))
 :qid |RegisteredCurrenciesbaselinebpl.2625:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |RegisteredCurrenciesbaselinebpl.2675:82|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12)))
 :qid |RegisteredCurrenciesbaselinebpl.2681:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |RegisteredCurrenciesbaselinebpl.2731:80|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@13 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@13 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@13)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.2737:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |RegisteredCurrenciesbaselinebpl.2787:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_AdminTransactionEvent) (v2@@14 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14)))
 :qid |RegisteredCurrenciesbaselinebpl.2793:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |RegisteredCurrenciesbaselinebpl.2843:76|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_CreateAccountEvent) (v2@@15 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.2849:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |RegisteredCurrenciesbaselinebpl.2899:78|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@16 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.2905:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |RegisteredCurrenciesbaselinebpl.2955:74|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_SentPaymentEvent) (v2@@17 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@17))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.2961:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |RegisteredCurrenciesbaselinebpl.3011:69|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@18 T@$1_DiemBlock_NewBlockEvent) (v2@@18 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@18) (|$round#$1_DiemBlock_NewBlockEvent| v2@@18)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@18) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@18))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@18) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@18) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18)))
 :qid |RegisteredCurrenciesbaselinebpl.3017:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |RegisteredCurrenciesbaselinebpl.3067:70|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@19 T@$1_DiemConfig_NewEpochEvent) (v2@@19 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19)))
 :qid |RegisteredCurrenciesbaselinebpl.3073:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |RegisteredCurrenciesbaselinebpl.3123:70|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@20 T@$1_DiemId_DiemIdDomainEvent) (v2@@20 T@$1_DiemId_DiemIdDomainEvent) ) (! (=  (and (and (= (|$removed#$1_DiemId_DiemIdDomainEvent| v1@@20) (|$removed#$1_DiemId_DiemIdDomainEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v1@@20)) (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v2@@20)))) (= (|$address#$1_DiemId_DiemIdDomainEvent| v1@@20) (|$address#$1_DiemId_DiemIdDomainEvent| v2@@20))) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@20) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@20)))
 :qid |RegisteredCurrenciesbaselinebpl.3129:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@20) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@20))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |RegisteredCurrenciesbaselinebpl.3179:60|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@21 T@$1_Diem_BurnEvent) (v2@@21 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@21) (|$amount#$1_Diem_BurnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@21) (|$currency_code#$1_Diem_BurnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@21) (|$preburn_address#$1_Diem_BurnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@21)))
 :qid |RegisteredCurrenciesbaselinebpl.3185:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@21))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |RegisteredCurrenciesbaselinebpl.3235:66|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@22 T@$1_Diem_CancelBurnEvent) (v2@@22 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@22) (|$amount#$1_Diem_CancelBurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@22) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@22) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@22)))
 :qid |RegisteredCurrenciesbaselinebpl.3241:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@22))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |RegisteredCurrenciesbaselinebpl.3291:60|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@23 T@$1_Diem_MintEvent) (v2@@23 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@23) (|$amount#$1_Diem_MintEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@23) (|$currency_code#$1_Diem_MintEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@23) (|$ToEventRep'$1_Diem_MintEvent'| v2@@23)))
 :qid |RegisteredCurrenciesbaselinebpl.3297:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@23) (|$ToEventRep'$1_Diem_MintEvent'| v2@@23))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |RegisteredCurrenciesbaselinebpl.3347:63|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@24 T@$1_Diem_PreburnEvent) (v2@@24 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@24) (|$amount#$1_Diem_PreburnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@24) (|$currency_code#$1_Diem_PreburnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@24) (|$preburn_address#$1_Diem_PreburnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@24) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@24)))
 :qid |RegisteredCurrenciesbaselinebpl.3353:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@24) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@24))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |RegisteredCurrenciesbaselinebpl.3403:79|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@25 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@25 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@25) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@25)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@25) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@25) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@25)))
 :qid |RegisteredCurrenciesbaselinebpl.3409:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@25) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@25))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |RegisteredCurrenciesbaselinebpl.3459:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@26 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@26 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@26) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@26)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@26) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@26))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@26)))
 :qid |RegisteredCurrenciesbaselinebpl.3465:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@26))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |RegisteredCurrenciesbaselinebpl.3515:88|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@27 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@27) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@27)))
 :qid |RegisteredCurrenciesbaselinebpl.3521:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@27))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |RegisteredCurrenciesbaselinebpl.3724:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |RegisteredCurrenciesbaselinebpl.4247:49|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |RegisteredCurrenciesbaselinebpl.4297:36|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |RegisteredCurrenciesbaselinebpl.4316:49|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |RegisteredCurrenciesbaselinebpl.4409:91|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |RegisteredCurrenciesbaselinebpl.4422:113|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |RegisteredCurrenciesbaselinebpl.4435:71|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |RegisteredCurrenciesbaselinebpl.4448:75|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |RegisteredCurrenciesbaselinebpl.4461:73|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |RegisteredCurrenciesbaselinebpl.4481:48|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |RegisteredCurrenciesbaselinebpl.4498:57|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |RegisteredCurrenciesbaselinebpl.4512:103|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |RegisteredCurrenciesbaselinebpl.4526:125|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |RegisteredCurrenciesbaselinebpl.4540:83|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |RegisteredCurrenciesbaselinebpl.4554:87|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |RegisteredCurrenciesbaselinebpl.4568:85|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.4582:48|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.4600:65|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.5816:45|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |RegisteredCurrenciesbaselinebpl.5829:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |RegisteredCurrenciesbaselinebpl.5842:55|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |RegisteredCurrenciesbaselinebpl.5856:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |RegisteredCurrenciesbaselinebpl.5876:38|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |RegisteredCurrenciesbaselinebpl.5898:44|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |RegisteredCurrenciesbaselinebpl.5950:53|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |RegisteredCurrenciesbaselinebpl.6023:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25) true)
 :qid |RegisteredCurrenciesbaselinebpl.6060:55|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26) true)
 :qid |RegisteredCurrenciesbaselinebpl.6074:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@27)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@27))))
 :qid |RegisteredCurrenciesbaselinebpl.6091:38|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@28)))
 :qid |RegisteredCurrenciesbaselinebpl.6105:48|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@29)))
 :qid |RegisteredCurrenciesbaselinebpl.6119:48|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@30))))
 :qid |RegisteredCurrenciesbaselinebpl.6139:41|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@31)))
 :qid |RegisteredCurrenciesbaselinebpl.6155:53|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@32)))
 :qid |RegisteredCurrenciesbaselinebpl.6168:53|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33))))
 :qid |RegisteredCurrenciesbaselinebpl.6184:60|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34))))
 :qid |RegisteredCurrenciesbaselinebpl.6201:60|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |RegisteredCurrenciesbaselinebpl.6218:57|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36) true)
 :qid |RegisteredCurrenciesbaselinebpl.8429:68|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))))
 :qid |RegisteredCurrenciesbaselinebpl.8451:66|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))))
 :qid |RegisteredCurrenciesbaselinebpl.8477:66|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@39) true)
 :qid |RegisteredCurrenciesbaselinebpl.8810:31|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@39))
)))
(assert (forall ((s@@40 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@40) true)
 :qid |RegisteredCurrenciesbaselinebpl.9154:31|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@41)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@41)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@41))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@41))))
 :qid |RegisteredCurrenciesbaselinebpl.9173:35|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@41))
)))
(assert (forall ((s@@42 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@42)))
 :qid |RegisteredCurrenciesbaselinebpl.9599:71|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@43) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@43)))
 :qid |RegisteredCurrenciesbaselinebpl.9647:46|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@44)))
 :qid |RegisteredCurrenciesbaselinebpl.9659:64|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@45)))
 :qid |RegisteredCurrenciesbaselinebpl.9671:75|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@46)))
 :qid |RegisteredCurrenciesbaselinebpl.9683:72|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46))
)))
(assert (forall ((s@@47 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@47)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@47)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@47))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@47))))
 :qid |RegisteredCurrenciesbaselinebpl.9711:46|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@48)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@48))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@48))))
 :qid |RegisteredCurrenciesbaselinebpl.9733:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |RegisteredCurrenciesbaselinebpl.9763:65|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |RegisteredCurrenciesbaselinebpl.10162:60|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |RegisteredCurrenciesbaselinebpl.10179:66|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |RegisteredCurrenciesbaselinebpl.10208:50|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |RegisteredCurrenciesbaselinebpl.10231:45|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |RegisteredCurrenciesbaselinebpl.10555:87|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@55)))
 :qid |RegisteredCurrenciesbaselinebpl.10772:43|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@56))))
 :qid |RegisteredCurrenciesbaselinebpl.10790:48|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@57)))
 :qid |RegisteredCurrenciesbaselinebpl.10806:50|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@58)))
 :qid |RegisteredCurrenciesbaselinebpl.10819:47|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@59)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@59))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@59))))
 :qid |RegisteredCurrenciesbaselinebpl.10838:58|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@60) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@60)))
 :qid |RegisteredCurrenciesbaselinebpl.10854:39|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@61))))
 :qid |RegisteredCurrenciesbaselinebpl.10876:58|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62))))
 :qid |RegisteredCurrenciesbaselinebpl.10893:58|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63) true)
 :qid |RegisteredCurrenciesbaselinebpl.10908:51|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64))))
 :qid |RegisteredCurrenciesbaselinebpl.10925:60|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@65)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@65))))
 :qid |RegisteredCurrenciesbaselinebpl.11223:47|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@66))))
 :qid |RegisteredCurrenciesbaselinebpl.11249:63|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@67)))
 :qid |RegisteredCurrenciesbaselinebpl.11264:57|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@68)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@68))))
 :qid |RegisteredCurrenciesbaselinebpl.11280:54|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@69)))
 :qid |RegisteredCurrenciesbaselinebpl.11294:55|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@70)))
 :qid |RegisteredCurrenciesbaselinebpl.11307:57|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@71)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@71))))
 :qid |RegisteredCurrenciesbaselinebpl.11329:56|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@72))))
 :qid |RegisteredCurrenciesbaselinebpl.11356:52|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@73)))
 :qid |RegisteredCurrenciesbaselinebpl.11374:54|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@74)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@74))))
 :qid |RegisteredCurrenciesbaselinebpl.12245:45|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@75)))
 :qid |RegisteredCurrenciesbaselinebpl.12259:51|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@76)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@76))))
 :qid |RegisteredCurrenciesbaselinebpl.12282:48|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |RegisteredCurrenciesbaselinebpl.12598:47|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |RegisteredCurrenciesbaselinebpl.12622:47|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |RegisteredCurrenciesbaselinebpl.12879:49|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |RegisteredCurrenciesbaselinebpl.12921:49|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |RegisteredCurrenciesbaselinebpl.12950:48|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |RegisteredCurrenciesbaselinebpl.13246:47|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 T@Vec_65612) (i@@40 Int) ) (! (= (InRangeVec_56497 v@@25 i@@40)  (and (>= i@@40 0) (< i@@40 (|l#Vec_65612| v@@25))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56497 v@@25 i@@40))
)))
(assert (forall ((v@@26 T@Vec_64282) (i@@41 Int) ) (! (= (InRangeVec_56698 v@@26 i@@41)  (and (>= i@@41 0) (< i@@41 (|l#Vec_64282| v@@26))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56698 v@@26 i@@41))
)))
(assert (forall ((v@@27 T@Vec_64321) (i@@42 Int) ) (! (= (InRangeVec_56899 v@@27 i@@42)  (and (>= i@@42 0) (< i@@42 (|l#Vec_64321| v@@27))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56899 v@@27 i@@42))
)))
(assert (forall ((v@@28 T@Vec_64584) (i@@43 Int) ) (! (= (InRangeVec_57100 v@@28 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_64584| v@@28))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57100 v@@28 i@@43))
)))
(assert (forall ((v@@29 T@Vec_64130) (i@@44 Int) ) (! (= (InRangeVec_57301 v@@29 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_64130| v@@29))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57301 v@@29 i@@44))
)))
(assert (forall ((v@@30 T@Vec_64091) (i@@45 Int) ) (! (= (InRangeVec_57502 v@@30 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_64091| v@@30))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57502 v@@30 i@@45))
)))
(assert (forall ((v@@31 T@Vec_64243) (i@@46 Int) ) (! (= (InRangeVec_57703 v@@31 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_64243| v@@31))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57703 v@@31 i@@46))
)))
(assert (forall ((v@@32 T@Vec_63926) (i@@47 Int) ) (! (= (InRangeVec_84549 v@@32 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_63926| v@@32))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_84549 v@@32 i@@47))
)))
(assert (forall ((v@@33 T@Vec_22325) (i@@48 Int) ) (! (= (InRangeVec_12164 v@@33 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_22325| v@@33))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_12164 v@@33 i@@48))
)))
(assert (forall ((v@@34 T@Vec_22325) (e@@9 Int) ) (! (let ((i@@49 (IndexOfVec_22325 v@@34 e@@9)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_12164 v@@34 i@@50) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) i@@50) e@@9))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_12164 v@@34 i@@49) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) i@@49) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@49)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) j@@9) e@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22325 v@@34 e@@9))
)))
(assert (forall ((v@@35 T@Vec_63926) (e@@10 T@Vec_22325) ) (! (let ((i@@51 (IndexOfVec_63926 v@@35 e@@10)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_84549 v@@35 i@@52) (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) i@@52) e@@10))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_84549 v@@35 i@@51) (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) i@@51) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@51)) (not (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) j@@10) e@@10)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63926 v@@35 e@@10))
)))
(assert (forall ((v@@36 T@Vec_64091) (e@@11 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@53 (IndexOfVec_64091 v@@36 e@@11)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_57502 v@@36 i@@54) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) i@@54) e@@11))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_57502 v@@36 i@@53) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) i@@53) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@53)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) j@@11) e@@11)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64091 v@@36 e@@11))
)))
(assert (forall ((v@@37 T@Vec_64130) (e@@12 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@55 (IndexOfVec_64130 v@@37 e@@12)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_57301 v@@37 i@@56) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) i@@56) e@@12))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_57301 v@@37 i@@55) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) i@@55) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@55)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) j@@12) e@@12)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64130 v@@37 e@@12))
)))
(assert (forall ((v@@38 T@Vec_64243) (e@@13 T@$1_ValidatorConfig_Config) ) (! (let ((i@@57 (IndexOfVec_64243 v@@38 e@@13)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_57703 v@@38 i@@58) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) i@@58) e@@13))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_57703 v@@38 i@@57) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) i@@57) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@57)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) j@@13) e@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64243 v@@38 e@@13))
)))
(assert (forall ((v@@39 T@Vec_64282) (e@@14 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@59 (IndexOfVec_64282 v@@39 e@@14)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_56698 v@@39 i@@60) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) i@@60) e@@14))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_56698 v@@39 i@@59) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) i@@59) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@59)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) j@@14) e@@14)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64282 v@@39 e@@14))
)))
(assert (forall ((v@@40 T@Vec_64321) (e@@15 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@61 (IndexOfVec_64321 v@@40 e@@15)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_56899 v@@40 i@@62) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) i@@62) e@@15))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_56899 v@@40 i@@61) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) i@@61) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@61)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) j@@15) e@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64321 v@@40 e@@15))
)))
(assert (forall ((v@@41 T@Vec_64584) (e@@16 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@63 (IndexOfVec_64584 v@@41 e@@16)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_57100 v@@41 i@@64) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) i@@64) e@@16))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_57100 v@@41 i@@63) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) i@@63) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@63)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) j@@16) e@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64584 v@@41 e@@16))
)))
(assert (forall ((v@@42 T@Vec_65612) (e@@17 |T@#0|) ) (! (let ((i@@65 (IndexOfVec_65612 v@@42 e@@17)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_56497 v@@42 i@@66) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) i@@66) e@@17))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_56497 v@@42 i@@65) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) i@@65) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@65)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) j@@17) e@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_65612 v@@42 e@@17))
)))
(assert (forall ((|l#0| Bool) (i@@67 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67) |l#0|)
 :qid |RegisteredCurrenciesbaselinebpl.275:54|
 :skolemid |275|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63793|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63793|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#1| handle@@0))))
(Multiset_63793 (|lambda#30| (|v#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#0@@0| handle@@0)) (|v#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |RegisteredCurrenciesbaselinebpl.2588:13|
 :skolemid |276|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@68 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68) (ite  (and (>= i@@68 |l#0@@1|) (< i@@68 |l#1@@0|)) (ite (< i@@68 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@68) (|Select__T@[Int]#0_| |l#4| (- i@@68 |l#5|))) |l#6|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@69 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69) (ite  (and (<= |l#0@@2| i@@69) (< i@@69 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@69) |l#4@@0|)) |l#5@@0|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@18 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18) (ite  (and (>= j@@18 |l#0@@3|) (< j@@18 |l#1@@2|)) (ite (< j@@18 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@18) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@18 |l#5@@1|))) |l#6@@0|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |279|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70) (ite  (and (>= i@@70 |l#0@@4|) (< i@@70 |l#1@@3|)) (ite (< i@@70 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@70) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@70 |l#5@@2|))) |l#6@@1|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |280|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71) (ite  (and (<= |l#0@@5| i@@71) (< i@@71 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@71) |l#4@@3|)) |l#5@@3|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |281|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19) (ite  (and (>= j@@19 |l#0@@6|) (< j@@19 |l#1@@5|)) (ite (< j@@19 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@19) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@19 |l#5@@4|))) |l#6@@2|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |282|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72) (ite  (and (>= i@@72 |l#0@@7|) (< i@@72 |l#1@@6|)) (ite (< i@@72 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@72) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@72 |l#5@@5|))) |l#6@@3|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@73 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73) (ite  (and (<= |l#0@@8| i@@73) (< i@@73 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@73) |l#4@@6|)) |l#5@@6|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20) (ite  (and (>= j@@20 |l#0@@9|) (< j@@20 |l#1@@8|)) (ite (< j@@20 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@20) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@20 |l#5@@7|))) |l#6@@4|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74) (ite  (and (>= i@@74 |l#0@@10|) (< i@@74 |l#1@@9|)) (ite (< i@@74 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@74) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@74 |l#5@@8|))) |l#6@@5|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75) (ite  (and (<= |l#0@@11| i@@75) (< i@@75 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@75) |l#4@@9|)) |l#5@@9|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21) (ite  (and (>= j@@21 |l#0@@12|) (< j@@21 |l#1@@11|)) (ite (< j@@21 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@21) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@21 |l#5@@10|))) |l#6@@6|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76) (ite  (and (>= i@@76 |l#0@@13|) (< i@@76 |l#1@@12|)) (ite (< i@@76 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@11| i@@76) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@11| (- i@@76 |l#5@@11|))) |l#6@@7|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77) (ite  (and (<= |l#0@@14| i@@77) (< i@@77 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@12| (- (- |l#3@@12| i@@77) |l#4@@12|)) |l#5@@12|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22) (ite  (and (>= j@@22 |l#0@@15|) (< j@@22 |l#1@@14|)) (ite (< j@@22 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@13| j@@22) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@13| (+ j@@22 |l#5@@13|))) |l#6@@8|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78) (ite  (and (>= i@@78 |l#0@@16|) (< i@@78 |l#1@@15|)) (ite (< i@@78 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@14| i@@78) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@14| (- i@@78 |l#5@@14|))) |l#6@@9|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79) (ite  (and (<= |l#0@@17| i@@79) (< i@@79 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@15| (- (- |l#3@@15| i@@79) |l#4@@15|)) |l#5@@15|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23) (ite  (and (>= j@@23 |l#0@@18|) (< j@@23 |l#1@@17|)) (ite (< j@@23 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@16| j@@23) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@16| (+ j@@23 |l#5@@16|))) |l#6@@10|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@17| Int) (|l#6@@11| T@$1_ValidatorConfig_Config) (i@@80 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80) (ite  (and (>= i@@80 |l#0@@19|) (< i@@80 |l#1@@18|)) (ite (< i@@80 |l#2@@17|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@17| i@@80) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@17| (- i@@80 |l#5@@17|))) |l#6@@11|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_ValidatorConfig_Config) (i@@81 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81) (ite  (and (<= |l#0@@20| i@@81) (< i@@81 |l#1@@19|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@18| (- (- |l#3@@18| i@@81) |l#4@@18|)) |l#5@@18|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@19| Int) (|l#6@@12| T@$1_ValidatorConfig_Config) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24) (ite  (and (>= j@@24 |l#0@@21|) (< j@@24 |l#1@@20|)) (ite (< j@@24 |l#2@@19|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@19| j@@24) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@19| (+ j@@24 |l#5@@19|))) |l#6@@12|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Vec_22325|) (|l#4@@20| |T@[Int]Vec_22325|) (|l#5@@20| Int) (|l#6@@13| T@Vec_22325) (i@@82 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82) (ite  (and (>= i@@82 |l#0@@22|) (< i@@82 |l#1@@21|)) (ite (< i@@82 |l#2@@20|) (|Select__T@[Int]Vec_22325_| |l#3@@20| i@@82) (|Select__T@[Int]Vec_22325_| |l#4@@20| (- i@@82 |l#5@@20|))) |l#6@@13|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Vec_22325|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@Vec_22325) (i@@83 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83) (ite  (and (<= |l#0@@23| i@@83) (< i@@83 |l#1@@22|)) (|Select__T@[Int]Vec_22325_| |l#2@@21| (- (- |l#3@@21| i@@83) |l#4@@21|)) |l#5@@21|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Vec_22325|) (|l#4@@22| |T@[Int]Vec_22325|) (|l#5@@22| Int) (|l#6@@14| T@Vec_22325) (j@@25 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25) (ite  (and (>= j@@25 |l#0@@24|) (< j@@25 |l#1@@23|)) (ite (< j@@25 |l#2@@22|) (|Select__T@[Int]Vec_22325_| |l#3@@22| j@@25) (|Select__T@[Int]Vec_22325_| |l#4@@22| (+ j@@25 |l#5@@22|))) |l#6@@14|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Int|) (|l#4@@23| |T@[Int]Int|) (|l#5@@23| Int) (|l#6@@15| Int) (i@@84 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84) (ite  (and (>= i@@84 |l#0@@25|) (< i@@84 |l#1@@24|)) (ite (< i@@84 |l#2@@23|) (|Select__T@[Int]Int_| |l#3@@23| i@@84) (|Select__T@[Int]Int_| |l#4@@23| (- i@@84 |l#5@@23|))) |l#6@@15|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Int|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| Int) (i@@85 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85) (ite  (and (<= |l#0@@26| i@@85) (< i@@85 |l#1@@25|)) (|Select__T@[Int]Int_| |l#2@@24| (- (- |l#3@@24| i@@85) |l#4@@24|)) |l#5@@24|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Int|) (|l#4@@25| |T@[Int]Int|) (|l#5@@25| Int) (|l#6@@16| Int) (j@@26 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26) (ite  (and (>= j@@26 |l#0@@27|) (< j@@26 |l#1@@26|)) (ite (< j@@26 |l#2@@25|) (|Select__T@[Int]Int_| |l#3@@25| j@@26) (|Select__T@[Int]Int_| |l#4@@25| (+ j@@26 |l#5@@25|))) |l#6@@16|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26))
)))
(assert (forall ((|l#0@@28| |T@[$EventRep]Int|) (|l#1@@27| |T@[$EventRep]Int|) (v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43) (- (|Select__T@[$EventRep]Int_| |l#0@@28| v@@43) (|Select__T@[$EventRep]Int_| |l#1@@27| v@@43)))
 :qid |RegisteredCurrenciesbaselinebpl.154:29|
 :skolemid |304|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@26| |T@[Int]Vec_22325|) (|l#3@@26| Int) (|l#4@@26| T@Vec_22325) (k Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@26| |l#3@@26| |l#4@@26|) k) (ite  (and (<= |l#0@@29| k) (< k |l#1@@28|)) (|Select__T@[Int]Vec_22325_| |l#2@@26| (+ |l#3@@26| k)) |l#4@@26|))
 :qid |RegisteredCurrenciesbaselinebpl.90:14|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@26| |l#3@@26| |l#4@@26|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_100177)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $t2@0 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_101816)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_101816)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_100177)
(declare-fun _$t1 () T@Vec_22325)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_102900)
(declare-fun _$t0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_98722)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_101749)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $t5 () T@$1_DiemConfig_Configuration)
(declare-fun $t6 () Int)
(declare-fun DefaultVecElem_84995 () T@Vec_22325)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_100177)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_100177)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@0| () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_101816)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_101816)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t20 () Bool)
(declare-fun $t8@0 () Int)
(declare-fun $t8 () Int)
(declare-fun $t18 () T@$1_DiemConfig_Configuration)
(declare-fun $t19 () Int)
(declare-fun $t15@1 () T@$Mutation_106184)
(declare-fun $t15@0 () T@$Mutation_106184)
(declare-fun |inline$$1_Vector_push_back'vec'u8''$0$m'@1| () T@$Mutation_85126)
(declare-fun $t16@0 () T@$Mutation_85126)
(declare-fun |Store__T@[Int]Vec_22325_| (|T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(assert (forall ( ( ?x0 |T@[Int]Vec_22325|) ( ?x1 Int) ( ?x2 T@Vec_22325)) (! (= (|Select__T@[Int]Vec_22325_| (|Store__T@[Int]Vec_22325_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Vec_22325|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@Vec_22325)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Vec_22325_| (|Store__T@[Int]Vec_22325_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Vec_22325_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun MapConstVec_12393 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_12393 () Int)
(declare-fun $t2 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t14 () Int)
(declare-fun |inline$$1_Vector_contains'vec'u8''$0$res@1| () Bool)
(declare-fun $t7 () Bool)
(declare-fun $t10@0 () T@Vec_63926)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $es () T@$EventStore)
(declare-fun $t15 () T@$Mutation_106184)
(declare-fun $t16 () T@$Mutation_85126)
(push 1)
(set-info :boogie-vc-id $1_RegisteredCurrencies_add_currency_code$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 209182) (let ((anon17_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816) (=> (and (|$IsEqual'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr)))) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| $t2@0)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (=> (= (ControlFlow 0 154487) (- 0 210275)) (not (exists ((i@@86 Int) ) (!  (and (and (|$IsValid'u64'| i@@86) (InRangeVec_84549 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))) i@@86)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0))))) i@@86) _$t1))
 :qid |RegisteredCurrenciesbaselinebpl.1893:13|
 :skolemid |70|
)))) (=> (not (exists ((i@@87 Int) ) (!  (and (and (|$IsValid'u64'| i@@87) (InRangeVec_84549 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))) i@@87)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0))))) i@@87) _$t1))
 :qid |RegisteredCurrenciesbaselinebpl.1893:13|
 :skolemid |70|
))) (and (=> (= (ControlFlow 0 154487) (- 0 210288)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0))) (and (=> (= (ControlFlow 0 154487) (- 0 210301)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 154487) (- 0 210313)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101749| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t5) 18446744073709551615)) (< $t6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t5))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101749| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t5) 18446744073709551615)) (< $t6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t5)))) (and (=> (= (ControlFlow 0 154487) (- 0 210355)) (and (and (= (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) (+ (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))) 1)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1)) _$t1)) (|$IsEqual'vec'vec'u8'''| (let ((m (|v#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1)))))))
(Vec_63926 (|lambda#31| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1)))) m (|lb#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1))) DefaultVecElem_84995) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1))))))) (let ((m@@0 (|v#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))))))
(Vec_63926 (|lambda#31| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))))) (|lb#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))))))) m@@0 (|lb#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))))) DefaultVecElem_84995) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))))) (|lb#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))))))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))))) (|lb#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))))))))))))) (=> (and (and (= (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) (+ (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))) 1)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1)) _$t1)) (|$IsEqual'vec'vec'u8'''| (let ((m (|v#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1)))))))
(Vec_63926 (|lambda#31| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1)))) m (|lb#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1))) DefaultVecElem_84995) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@1))))) 1))))))) (let ((m@@0 (|v#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))))))
(Vec_63926 (|lambda#31| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))))) (|lb#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))))))) m@@0 (|lb#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))))) DefaultVecElem_84995) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))))) (|lb#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))))))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))))) (|lb#$Range| ($Range 0 (|l#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2))))))))))))) (and (=> (= (ControlFlow 0 154487) (- 0 210367)) (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 154487) (- 0 210373)) (|$IsEqual'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@3)))) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@4)))))) (=> (|$IsEqual'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@3)))) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@4))))) (=> (= (ControlFlow 0 154487) (- 0 210384)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory@2) 173345816)))))))))))))))))))))
(let ((anon25_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_100177 (|Store__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (= (ControlFlow 0 154333) 154487))) anon17_correct)))
(let ((anon25_Then_correct  (=> (and (and |$temp_0'bool'@1| (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_100177 (|Store__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|) (= (ControlFlow 0 154499) 154487))) anon17_correct)))
(let ((anon24_Else_correct  (=> (not |$temp_0'bool'@0|) (=> (and (= $1_DiemConfig_Configuration_$memory@1 ($Memory_101816 (|Store__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_101816| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1)) (and (=> (= (ControlFlow 0 154319) 154499) anon25_Then_correct) (=> (= (ControlFlow 0 154319) 154333) anon25_Else_correct))))))
(let ((anon24_Then_correct  (=> |$temp_0'bool'@0| (=> (and (= $1_DiemConfig_Configuration_$memory@0 ($Memory_101816 (|Store__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0|))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0)) (and (=> (= (ControlFlow 0 154511) 154499) anon25_Then_correct) (=> (= (ControlFlow 0 154511) 154333) anon25_Else_correct))))))
(let ((anon23_Else_correct  (=> (not $t20) (and (=> (= (ControlFlow 0 154307) 154511) anon24_Then_correct) (=> (= (ControlFlow 0 154307) 154319) anon24_Else_correct)))))
(let ((anon22_Then_correct true))
(let ((L3_correct  (and (=> (= (ControlFlow 0 154096) (- 0 209992)) (or (or (or (exists ((i@@88 Int) ) (!  (and (and (|$IsValid'u64'| i@@88) (InRangeVec_84549 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@5)))) i@@88)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@5))))) i@@88) _$t1))
 :qid |RegisteredCurrenciesbaselinebpl.1893:13|
 :skolemid |70|
)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101749| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t5) 18446744073709551615)) (< $t6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t5))))) (=> (or (or (or (exists ((i@@89 Int) ) (!  (and (and (|$IsValid'u64'| i@@89) (InRangeVec_84549 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@5)))) i@@89)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@5))))) i@@89) _$t1))
 :qid |RegisteredCurrenciesbaselinebpl.1893:13|
 :skolemid |70|
)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101749| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t5) 18446744073709551615)) (< $t6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t5)))) (=> (= (ControlFlow 0 154096) (- 0 210058)) (or (or (or (and (exists ((i@@90 Int) ) (!  (and (and (|$IsValid'u64'| i@@90) (InRangeVec_84549 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@6)))) i@@90)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@6))))) i@@90) _$t1))
 :qid |RegisteredCurrenciesbaselinebpl.1893:13|
 :skolemid |70|
)) (= 7 $t8@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (= 4 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 $t8@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101749| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t5) 18446744073709551615)) (< $t6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t5))) (= 1 $t8@0))))))))
(let ((anon23_Then_correct  (=> $t20 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (= 4 $t8)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 $t8))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101749| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t18) 18446744073709551615)) (< $t19 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t18))) (= 1 $t8))) (= $t8 $t8)) (and (= $t8@0 $t8) (= (ControlFlow 0 154609) 154096))) L3_correct))))
(let ((anon22_Else_correct  (=> (and (not false) (= $t15@1 ($Mutation_106184 (|l#$Mutation_106184| $t15@0) (|p#$Mutation_106184| $t15@0) ($1_RegisteredCurrencies_RegisteredCurrencies (|v#$Mutation_85126| |inline$$1_Vector_push_back'vec'u8''$0$m'@1|))))) (=> (and (and (= $t2@0 (|v#$Mutation_106184| $t15@1)) (= $t18 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t19 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t20  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101749| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t18) 18446744073709551615)) (< $t19 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t18))))))) (and (=> (= (ControlFlow 0 154299) 154609) anon23_Then_correct) (=> (= (ControlFlow 0 154299) 154307) anon23_Else_correct))))))
(let ((|inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'vec'u8''$0$m'@1| ($Mutation_85126 (|l#$Mutation_85126| $t16@0) (|p#$Mutation_85126| $t16@0) (let ((l (|l#Vec_63926| (|v#$Mutation_85126| $t16@0))))
(Vec_63926 (|Store__T@[Int]Vec_22325_| (|v#Vec_63926| (|v#$Mutation_85126| $t16@0)) l _$t1) (+ l 1))))) (and (=> (= (ControlFlow 0 154173) 154623) anon22_Then_correct) (=> (= (ControlFlow 0 154173) 154299) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (and (and inline$$Not$0$dst@1 (= $t15@0 ($Mutation_106184 ($Local 2) (Vec_22325 (MapConstVec_12393 DefaultVecElem_12393) 0) $t2))) (and (= $t16@0 ($Mutation_85126 (|l#$Mutation_106184| $t15@0) (let ((l@@0 (|l#Vec_22325| (|p#$Mutation_106184| $t15@0))))
(Vec_22325 (|Store__T@[Int]Int_| (|v#Vec_22325| (|p#$Mutation_106184| $t15@0)) l@@0 0) (+ l@@0 1))) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (|v#$Mutation_106184| $t15@0)))) (= (ControlFlow 0 154179) 154173))) |inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|)))
(let ((anon21_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t14 $t14)) (and (= $t8@0 $t14) (= (ControlFlow 0 153908) 154096))) L3_correct)))
(let ((anon20_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t14) (= $t14 7)) (and (= $t14 $t14) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 153892) 154179) anon21_Then_correct) (=> (= (ControlFlow 0 153892) 153908) anon21_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Vector_contains'vec'u8''$0$res@1|)) (= (ControlFlow 0 153852) 153892)) anon20_Else$1_correct)))
(let ((anon20_Else_correct  (=> (and (not false) (= (ControlFlow 0 153858) 153852)) inline$$Not$0$anon0_correct)))
(let ((anon19_Then_correct  (=> $t7 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 $t8)) (= $t8 $t8)) (and (= $t8@0 $t8) (= (ControlFlow 0 154665) 154096))) L3_correct))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_contains'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'vec'u8''$0$res@1| (exists ((i@@91 Int) ) (!  (and (and (|$IsValid'u64'| i@@91) (InRangeVec_84549 $t10@0 i@@91)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| $t10@0) i@@91) _$t1))
 :qid |RegisteredCurrenciesbaselinebpl.1893:13|
 :skolemid |70|
))) (and (=> (= (ControlFlow 0 153808) 154637) anon20_Then_correct) (=> (= (ControlFlow 0 153808) 153858) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (not $t7) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| $t2)) (=> (and (and (|$IsEqual'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| $t2) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@7 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@7))))) (= $t2 $t2)) (and (= $t10@0 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| $t2)) (= (ControlFlow 0 153814) 153808))) |inline$$1_Vector_contains'vec'u8''$0$anon0_correct|))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (and (and (|$IsValid'address'| _$t0) (|$IsValid'vec'u8''| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |RegisteredCurrenciesbaselinebpl.5471:20|
 :skolemid |150|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101816| $1_DiemConfig_Configuration_$memory) $a_0@@0)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@0))
 :qid |RegisteredCurrenciesbaselinebpl.5475:20|
 :skolemid |151|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101816| $1_DiemConfig_Configuration_$memory) $a_0@@0))
)))) (=> (and (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_101749| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@1)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@1))
 :qid |RegisteredCurrenciesbaselinebpl.5479:20|
 :skolemid |152|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_101749| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@2)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@2))
 :qid |RegisteredCurrenciesbaselinebpl.5483:20|
 :skolemid |153|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@3))
 :qid |RegisteredCurrenciesbaselinebpl.5487:20|
 :skolemid |154|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_102900| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@3))
)) (= $t5 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_101816| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (= $t6 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98722| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_100177| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 153736) 154665) anon19_Then_correct) (=> (= (ControlFlow 0 153736) 153814) anon19_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_63793| stream@@0) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63793| stream@@0) v@@44) 0)
 :qid |RegisteredCurrenciesbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2578:13|
 :skolemid |91|
))) (= (ControlFlow 0 153512) 153736)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (|l#Vec_22325| (|p#$Mutation_106184| $t15)) 0) (=> (and (= (|l#Vec_22325| (|p#$Mutation_85126| $t16)) 0) (= (ControlFlow 0 153522) 153512)) inline$$InitEventStore$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 209182) 153522) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_91273 0)) ((($Memory_91273 (|domain#$Memory_91273| |T@[Int]Bool|) (|contents#$Memory_91273| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_65612 0)) (((Vec_65612 (|v#Vec_65612| |T@[Int]#0|) (|l#Vec_65612| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_136629 0)) ((($Memory_136629 (|domain#$Memory_136629| |T@[Int]Bool|) (|contents#$Memory_136629| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_131974 0)) ((($Memory_131974 (|domain#$Memory_131974| |T@[Int]Bool|) (|contents#$Memory_131974| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_129780 0)) ((($Memory_129780 (|domain#$Memory_129780| |T@[Int]Bool|) (|contents#$Memory_129780| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_130092 0)) ((($Memory_130092 (|domain#$Memory_130092| |T@[Int]Bool|) (|contents#$Memory_130092| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_129747 0)) ((($Memory_129747 (|domain#$Memory_129747| |T@[Int]Bool|) (|contents#$Memory_129747| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_129527 0)) ((($Memory_129527 (|domain#$Memory_129527| |T@[Int]Bool|) (|contents#$Memory_129527| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_129141 0)) ((($Memory_129141 (|domain#$Memory_129141| |T@[Int]Bool|) (|contents#$Memory_129141| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_126521 0)) ((($Memory_126521 (|domain#$Memory_126521| |T@[Int]Bool|) (|contents#$Memory_126521| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_64321 0)) (((Vec_64321 (|v#Vec_64321| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_64321| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_64321) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_64282 0)) (((Vec_64282 (|v#Vec_64282| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_64282| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_64282) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_121123 0)) ((($Memory_121123 (|domain#$Memory_121123| |T@[Int]Bool|) (|contents#$Memory_121123| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120904 0)) ((($Memory_120904 (|domain#$Memory_120904| |T@[Int]Bool|) (|contents#$Memory_120904| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_131752 0)) ((($Memory_131752 (|domain#$Memory_131752| |T@[Int]Bool|) (|contents#$Memory_131752| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113716 0)) ((($Memory_113716 (|domain#$Memory_113716| |T@[Int]Bool|) (|contents#$Memory_113716| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113629 0)) ((($Memory_113629 (|domain#$Memory_113629| |T@[Int]Bool|) (|contents#$Memory_113629| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_22325 0)) (((Vec_22325 (|v#Vec_22325| |T@[Int]Int|) (|l#Vec_22325| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22325) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22325) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_22325) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_130735 0)) ((($Memory_130735 (|domain#$Memory_130735| |T@[Int]Bool|) (|contents#$Memory_130735| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_22325) (|$base_url#$1_DualAttestation_Credential| T@Vec_22325) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_22325) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_126457 0)) ((($Memory_126457 (|domain#$Memory_126457| |T@[Int]Bool|) (|contents#$Memory_126457| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_22325) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_22325) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_64243 0)) (((Vec_64243 (|v#Vec_64243| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_64243| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_64243) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_64584 0)) (((Vec_64584 (|v#Vec_64584| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_64584| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_124863 0)) ((($Memory_124863 (|domain#$Memory_124863| |T@[Int]Bool|) (|contents#$Memory_124863| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_124274 0)) ((($Memory_124274 (|domain#$Memory_124274| |T@[Int]Bool|) (|contents#$Memory_124274| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109904 0)) ((($Memory_109904 (|domain#$Memory_109904| |T@[Int]Bool|) (|contents#$Memory_109904| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109817 0)) ((($Memory_109817 (|domain#$Memory_109817| |T@[Int]Bool|) (|contents#$Memory_109817| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113964 0)) ((($Memory_113964 (|domain#$Memory_113964| |T@[Int]Bool|) (|contents#$Memory_113964| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_122961 0)) ((($Memory_122961 (|domain#$Memory_122961| |T@[Int]Bool|) (|contents#$Memory_122961| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_64130 0)) (((Vec_64130 (|v#Vec_64130| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_64130| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_64130) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114331 0)) ((($Memory_114331 (|domain#$Memory_114331| |T@[Int]Bool|) (|contents#$Memory_114331| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113883 0)) ((($Memory_113883 (|domain#$Memory_113883| |T@[Int]Bool|) (|contents#$Memory_113883| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_125363 0)) ((($Memory_125363 (|domain#$Memory_125363| |T@[Int]Bool|) (|contents#$Memory_125363| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_22325) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_64091 0)) (((Vec_64091 (|v#Vec_64091| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_64091| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_64091) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114214 0)) ((($Memory_114214 (|domain#$Memory_114214| |T@[Int]Bool|) (|contents#$Memory_114214| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]Vec_22325| 0)
(declare-datatypes ((T@Vec_63926 0)) (((Vec_63926 (|v#Vec_63926| |T@[Int]Vec_22325|) (|l#Vec_63926| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_103248 0)) ((($Memory_103248 (|domain#$Memory_103248| |T@[Int]Bool|) (|contents#$Memory_103248| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_103161 0)) ((($Memory_103161 (|domain#$Memory_103161| |T@[Int]Bool|) (|contents#$Memory_103161| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_103074 0)) ((($Memory_103074 (|domain#$Memory_103074| |T@[Int]Bool|) (|contents#$Memory_103074| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_135317 0)) ((($Memory_135317 (|domain#$Memory_135317| |T@[Int]Bool|) (|contents#$Memory_135317| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_102987 0)) ((($Memory_102987 (|domain#$Memory_102987| |T@[Int]Bool|) (|contents#$Memory_102987| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_102900 0)) ((($Memory_102900 (|domain#$Memory_102900| |T@[Int]Bool|) (|contents#$Memory_102900| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_101749 0)) ((($Memory_101749 (|domain#$Memory_101749| |T@[Int]Bool|) (|contents#$Memory_101749| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_101816 0)) ((($Memory_101816 (|domain#$Memory_101816| |T@[Int]Bool|) (|contents#$Memory_101816| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_101667 0)) ((($Memory_101667 (|domain#$Memory_101667| |T@[Int]Bool|) (|contents#$Memory_101667| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_101585 0)) ((($Memory_101585 (|domain#$Memory_101585| |T@[Int]Bool|) (|contents#$Memory_101585| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_64584) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_101503 0)) ((($Memory_101503 (|domain#$Memory_101503| |T@[Int]Bool|) (|contents#$Memory_101503| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_63926) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_101421 0)) ((($Memory_101421 (|domain#$Memory_101421| |T@[Int]Bool|) (|contents#$Memory_101421| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_63926) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_100177 0)) ((($Memory_100177 (|domain#$Memory_100177| |T@[Int]Bool|) (|contents#$Memory_100177| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_22325) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109515 0)) ((($Memory_109515 (|domain#$Memory_109515| |T@[Int]Bool|) (|contents#$Memory_109515| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_22325) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109450 0)) ((($Memory_109450 (|domain#$Memory_109450| |T@[Int]Bool|) (|contents#$Memory_109450| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_100679 0)) ((($Memory_100679 (|domain#$Memory_100679| |T@[Int]Bool|) (|contents#$Memory_100679| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_100646 0)) ((($Memory_100646 (|domain#$Memory_100646| |T@[Int]Bool|) (|contents#$Memory_100646| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_98722 0)) ((($Memory_98722 (|domain#$Memory_98722| |T@[Int]Bool|) (|contents#$Memory_98722| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_22325) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_22325) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_22325) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_22325) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainEvent 0)) ((($1_DiemId_DiemIdDomainEvent (|$removed#$1_DiemId_DiemIdDomainEvent| Bool) (|$domain#$1_DiemId_DiemIdDomainEvent| T@$1_DiemId_DiemIdDomain) (|$address#$1_DiemId_DiemIdDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_22325) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_22325) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22325) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_22325) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| (|e#$ToEventRep'$1_DiemId_DiemIdDomainEvent'| T@$1_DiemId_DiemIdDomainEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_63793 0)) (((Multiset_63793 (|v#Multiset_63793| |T@[$EventRep]Int|) (|l#Multiset_63793| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63793| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63793|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_132826 0)) ((($Mutation_132826 (|l#$Mutation_132826| T@$Location) (|p#$Mutation_132826| T@Vec_22325) (|v#$Mutation_132826| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_132781 0)) ((($Mutation_132781 (|l#$Mutation_132781| T@$Location) (|p#$Mutation_132781| T@Vec_22325) (|v#$Mutation_132781| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_33792 0)) ((($Mutation_33792 (|l#$Mutation_33792| T@$Location) (|p#$Mutation_33792| T@Vec_22325) (|v#$Mutation_33792| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_119611 0)) ((($Mutation_119611 (|l#$Mutation_119611| T@$Location) (|p#$Mutation_119611| T@Vec_22325) (|v#$Mutation_119611| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_106184 0)) ((($Mutation_106184 (|l#$Mutation_106184| T@$Location) (|p#$Mutation_106184| T@Vec_22325) (|v#$Mutation_106184| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_99196 0)) ((($Mutation_99196 (|l#$Mutation_99196| T@$Location) (|p#$Mutation_99196| T@Vec_22325) (|v#$Mutation_99196| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_91901 0)) ((($Mutation_91901 (|l#$Mutation_91901| T@$Location) (|p#$Mutation_91901| T@Vec_22325) (|v#$Mutation_91901| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12788 0)) ((($Mutation_12788 (|l#$Mutation_12788| T@$Location) (|p#$Mutation_12788| T@Vec_22325) (|v#$Mutation_12788| Int) ) ) ))
(declare-datatypes ((T@$Mutation_86214 0)) ((($Mutation_86214 (|l#$Mutation_86214| T@$Location) (|p#$Mutation_86214| T@Vec_22325) (|v#$Mutation_86214| T@Vec_22325) ) ) ))
(declare-datatypes ((T@$Mutation_85126 0)) ((($Mutation_85126 (|l#$Mutation_85126| T@$Location) (|p#$Mutation_85126| T@Vec_22325) (|v#$Mutation_85126| T@Vec_63926) ) ) ))
(declare-datatypes ((T@$Mutation_83417 0)) ((($Mutation_83417 (|l#$Mutation_83417| T@$Location) (|p#$Mutation_83417| T@Vec_22325) (|v#$Mutation_83417| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_82430 0)) ((($Mutation_82430 (|l#$Mutation_82430| T@$Location) (|p#$Mutation_82430| T@Vec_22325) (|v#$Mutation_82430| T@Vec_64243) ) ) ))
(declare-datatypes ((T@$Mutation_80775 0)) ((($Mutation_80775 (|l#$Mutation_80775| T@$Location) (|p#$Mutation_80775| T@Vec_22325) (|v#$Mutation_80775| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_79788 0)) ((($Mutation_79788 (|l#$Mutation_79788| T@$Location) (|p#$Mutation_79788| T@Vec_22325) (|v#$Mutation_79788| T@Vec_64091) ) ) ))
(declare-datatypes ((T@$Mutation_78079 0)) ((($Mutation_78079 (|l#$Mutation_78079| T@$Location) (|p#$Mutation_78079| T@Vec_22325) (|v#$Mutation_78079| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_77092 0)) ((($Mutation_77092 (|l#$Mutation_77092| T@$Location) (|p#$Mutation_77092| T@Vec_22325) (|v#$Mutation_77092| T@Vec_64130) ) ) ))
(declare-datatypes ((T@$Mutation_75383 0)) ((($Mutation_75383 (|l#$Mutation_75383| T@$Location) (|p#$Mutation_75383| T@Vec_22325) (|v#$Mutation_75383| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_74396 0)) ((($Mutation_74396 (|l#$Mutation_74396| T@$Location) (|p#$Mutation_74396| T@Vec_22325) (|v#$Mutation_74396| T@Vec_64584) ) ) ))
(declare-datatypes ((T@$Mutation_72596 0)) ((($Mutation_72596 (|l#$Mutation_72596| T@$Location) (|p#$Mutation_72596| T@Vec_22325) (|v#$Mutation_72596| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71609 0)) ((($Mutation_71609 (|l#$Mutation_71609| T@$Location) (|p#$Mutation_71609| T@Vec_22325) (|v#$Mutation_71609| T@Vec_64321) ) ) ))
(declare-datatypes ((T@$Mutation_69944 0)) ((($Mutation_69944 (|l#$Mutation_69944| T@$Location) (|p#$Mutation_69944| T@Vec_22325) (|v#$Mutation_69944| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68957 0)) ((($Mutation_68957 (|l#$Mutation_68957| T@$Location) (|p#$Mutation_68957| T@Vec_22325) (|v#$Mutation_68957| T@Vec_64282) ) ) ))
(declare-datatypes ((T@$Mutation_67244 0)) ((($Mutation_67244 (|l#$Mutation_67244| T@$Location) (|p#$Mutation_67244| T@Vec_22325) (|v#$Mutation_67244| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_66257 0)) ((($Mutation_66257 (|l#$Mutation_66257| T@$Location) (|p#$Mutation_66257| T@Vec_22325) (|v#$Mutation_66257| T@Vec_65612) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_65612 T@Vec_65612) Bool)
(declare-fun InRangeVec_56497 (T@Vec_65612 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_65612) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_65612 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_64282 T@Vec_64282) Bool)
(declare-fun InRangeVec_56698 (T@Vec_64282 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_64282) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_64282 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_64321 T@Vec_64321) Bool)
(declare-fun InRangeVec_56899 (T@Vec_64321 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_64321) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_64321 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_64584 T@Vec_64584) Bool)
(declare-fun InRangeVec_57100 (T@Vec_64584 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_22325 T@Vec_22325) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_64584) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_64584 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_64130 T@Vec_64130) Bool)
(declare-fun InRangeVec_57301 (T@Vec_64130 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_64130) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_64130 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_64091 T@Vec_64091) Bool)
(declare-fun InRangeVec_57502 (T@Vec_64091 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_64091) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_64091 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_64243 T@Vec_64243) Bool)
(declare-fun InRangeVec_57703 (T@Vec_64243 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_64243) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_64243 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_63926 T@Vec_63926) Bool)
(declare-fun InRangeVec_84549 (T@Vec_63926 Int) Bool)
(declare-fun |Select__T@[Int]Vec_22325_| (|T@[Int]Vec_22325| Int) T@Vec_22325)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_63926) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_22325) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_63926 T@Vec_22325) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_22325 T@Vec_22325) Bool)
(declare-fun InRangeVec_12164 (T@Vec_22325 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_22325) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_22325 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_22325 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_22325) T@Vec_22325)
(declare-fun $1_Hash_sha3 (T@Vec_22325) T@Vec_22325)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_22325) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_22325 T@Vec_22325 T@Vec_22325) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63793_| (|T@[$1_Event_EventHandle]Multiset_63793| T@$1_Event_EventHandle) T@Multiset_63793)
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
(declare-fun IndexOfVec_22325 (T@Vec_22325 Int) Int)
(declare-fun IndexOfVec_63926 (T@Vec_63926 T@Vec_22325) Int)
(declare-fun IndexOfVec_64091 (T@Vec_64091 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_64130 (T@Vec_64130 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_64243 (T@Vec_64243 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_64282 (T@Vec_64282 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_64321 (T@Vec_64321 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_64584 (T@Vec_64584 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_65612 (T@Vec_65612 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63793| |T@[$1_Event_EventHandle]Multiset_63793|) |T@[$1_Event_EventHandle]Multiset_63793|)
(declare-fun |lambda#30| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]Vec_22325| |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#25| (Int Int |T@[Int]Vec_22325| Int Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Vec_22325| |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#31| (Int Int |T@[Int]Vec_22325| Int T@Vec_22325) |T@[Int]Vec_22325|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |RegisteredCurrenciesbaselinebpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |RegisteredCurrenciesbaselinebpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |RegisteredCurrenciesbaselinebpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |RegisteredCurrenciesbaselinebpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |RegisteredCurrenciesbaselinebpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |RegisteredCurrenciesbaselinebpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |RegisteredCurrenciesbaselinebpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |RegisteredCurrenciesbaselinebpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_65612) (v2 T@Vec_65612) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_65612| v1) (|l#Vec_65612| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_56497 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_65612| v2) i@@0)))
 :qid |RegisteredCurrenciesbaselinebpl.615:13|
 :skolemid |17|
))))
 :qid |RegisteredCurrenciesbaselinebpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_65612) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_65612| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_56497 v@@4 i@@1) true)
 :qid |RegisteredCurrenciesbaselinebpl.621:13|
 :skolemid |19|
))))
 :qid |RegisteredCurrenciesbaselinebpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_65612) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_56497 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) i@@3) e))
 :qid |RegisteredCurrenciesbaselinebpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_56497 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@5) j) e)))
 :qid |RegisteredCurrenciesbaselinebpl.634:17|
 :skolemid |22|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_64282) (v2@@0 T@Vec_64282) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_64282| v1@@0) (|l#Vec_64282| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_56698 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v2@@0) i@@4)))
 :qid |RegisteredCurrenciesbaselinebpl.796:13|
 :skolemid |24|
))))
 :qid |RegisteredCurrenciesbaselinebpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_64282) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_64282| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_56698 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@6) i@@5)))
 :qid |RegisteredCurrenciesbaselinebpl.802:13|
 :skolemid |26|
))))
 :qid |RegisteredCurrenciesbaselinebpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_64282) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_56698 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) i@@7) e@@0))
 :qid |RegisteredCurrenciesbaselinebpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_56698 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@7) j@@0) e@@0)))
 :qid |RegisteredCurrenciesbaselinebpl.815:17|
 :skolemid |29|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_64321) (v2@@1 T@Vec_64321) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_64321| v1@@1) (|l#Vec_64321| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_56899 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v2@@1) i@@8)))
 :qid |RegisteredCurrenciesbaselinebpl.977:13|
 :skolemid |31|
))))
 :qid |RegisteredCurrenciesbaselinebpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_64321) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_64321| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_56899 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@8) i@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.983:13|
 :skolemid |33|
))))
 :qid |RegisteredCurrenciesbaselinebpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_64321) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_56899 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) i@@11) e@@1))
 :qid |RegisteredCurrenciesbaselinebpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_56899 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@9) j@@1) e@@1)))
 :qid |RegisteredCurrenciesbaselinebpl.996:17|
 :skolemid |36|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_64584) (v2@@2 T@Vec_64584) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_64584| v1@@2) (|l#Vec_64584| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_57100 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v2@@2) i@@12)))))
 :qid |RegisteredCurrenciesbaselinebpl.1158:13|
 :skolemid |38|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_64584) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_64584| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_57100 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@10) i@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.1164:13|
 :skolemid |40|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_64584) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_57100 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |RegisteredCurrenciesbaselinebpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_57100 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |RegisteredCurrenciesbaselinebpl.1177:17|
 :skolemid |43|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_64130) (v2@@3 T@Vec_64130) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3)  (and (= (|l#Vec_64130| v1@@3) (|l#Vec_64130| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_57301 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v2@@3) i@@16)))))
 :qid |RegisteredCurrenciesbaselinebpl.1339:13|
 :skolemid |45|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1337:65|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_64130) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_64130| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_57301 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@12) i@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.1345:13|
 :skolemid |47|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1343:65|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_64130) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_57301 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3))))
 :qid |RegisteredCurrenciesbaselinebpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_57301 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))))
 :qid |RegisteredCurrenciesbaselinebpl.1358:17|
 :skolemid |50|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_64091) (v2@@4 T@Vec_64091) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4)  (and (= (|l#Vec_64091| v1@@4) (|l#Vec_64091| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_57502 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v2@@4) i@@20)))))
 :qid |RegisteredCurrenciesbaselinebpl.1520:13|
 :skolemid |52|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_64091) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_64091| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_57502 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@14) i@@21)))
 :qid |RegisteredCurrenciesbaselinebpl.1526:13|
 :skolemid |54|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_64091) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_57502 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4))))
 :qid |RegisteredCurrenciesbaselinebpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_57502 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))))
 :qid |RegisteredCurrenciesbaselinebpl.1539:17|
 :skolemid |57|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_64243) (v2@@5 T@Vec_64243) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5)  (and (= (|l#Vec_64243| v1@@5) (|l#Vec_64243| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_57703 v1@@5 i@@24) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v1@@5) i@@24)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v2@@5) i@@24)))))
 :qid |RegisteredCurrenciesbaselinebpl.1701:13|
 :skolemid |59|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1699:51|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_64243) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_64243| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_57703 v@@16 i@@25) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@16) i@@25)))
 :qid |RegisteredCurrenciesbaselinebpl.1707:13|
 :skolemid |61|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1705:51|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_64243) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@26 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_57703 v@@17 i@@27)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@27)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5))))
 :qid |RegisteredCurrenciesbaselinebpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_57703 v@@17 i@@26)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) i@@26)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@5)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@5))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@17) j@@5)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@5)))))
 :qid |RegisteredCurrenciesbaselinebpl.1720:17|
 :skolemid |64|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_63926) (v2@@6 T@Vec_63926) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6)  (and (= (|l#Vec_63926| v1@@6) (|l#Vec_63926| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_84549 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v1@@6) i@@28) (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v2@@6) i@@28)))
 :qid |RegisteredCurrenciesbaselinebpl.1882:13|
 :skolemid |66|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_63926) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_63926| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_84549 v@@18 i@@29) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@18) i@@29)))
 :qid |RegisteredCurrenciesbaselinebpl.1888:13|
 :skolemid |68|
))))
 :qid |RegisteredCurrenciesbaselinebpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_63926) (e@@6 T@Vec_22325) ) (! (let ((i@@30 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_84549 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) i@@31) e@@6))
 :qid |RegisteredCurrenciesbaselinebpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_84549 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@19) j@@6) e@@6)))
 :qid |RegisteredCurrenciesbaselinebpl.1901:17|
 :skolemid |71|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_22325) (v2@@7 T@Vec_22325) ) (! (= (|$IsEqual'vec'address''| v1@@7 v2@@7)  (and (= (|l#Vec_22325| v1@@7) (|l#Vec_22325| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_12164 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_22325| v2@@7) i@@32)))
 :qid |RegisteredCurrenciesbaselinebpl.2063:13|
 :skolemid |73|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'address''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_22325) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_22325| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_12164 v@@20 i@@33) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_22325| v@@20) i@@33)))
 :qid |RegisteredCurrenciesbaselinebpl.2069:13|
 :skolemid |75|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_22325) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_12164 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) i@@35) e@@7))
 :qid |RegisteredCurrenciesbaselinebpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_12164 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@21) j@@7) e@@7)))
 :qid |RegisteredCurrenciesbaselinebpl.2082:17|
 :skolemid |78|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_22325) (v2@@8 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8)  (and (= (|l#Vec_22325| v1@@8) (|l#Vec_22325| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_12164 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_22325| v2@@8) i@@36)))
 :qid |RegisteredCurrenciesbaselinebpl.2244:13|
 :skolemid |80|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2242:28|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u8''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_22325) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_22325| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_12164 v@@22 i@@37) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_22325| v@@22) i@@37)))
 :qid |RegisteredCurrenciesbaselinebpl.2250:13|
 :skolemid |82|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2248:28|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_22325) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_12164 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) i@@39) e@@8))
 :qid |RegisteredCurrenciesbaselinebpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_12164 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@23) j@@8) e@@8)))
 :qid |RegisteredCurrenciesbaselinebpl.2263:17|
 :skolemid |85|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_22325) (v2@@9 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.2436:15|
 :skolemid |87|
 :pattern ( ($1_Hash_sha2 v1@@9) ($1_Hash_sha2 v2@@9))
)))
(assert (forall ((v1@@10 T@Vec_22325) (v2@@10 T@Vec_22325) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10)))
 :qid |RegisteredCurrenciesbaselinebpl.2452:15|
 :skolemid |88|
 :pattern ( ($1_Hash_sha3 v1@@10) ($1_Hash_sha3 v2@@10))
)))
(assert (forall ((k1 T@Vec_22325) (k2 T@Vec_22325) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |RegisteredCurrenciesbaselinebpl.2499:15|
 :skolemid |89|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_22325) (s2 T@Vec_22325) (k1@@0 T@Vec_22325) (k2@@0 T@Vec_22325) (m1 T@Vec_22325) (m2 T@Vec_22325) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |RegisteredCurrenciesbaselinebpl.2502:15|
 :skolemid |90|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63793| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63793| stream) v@@24) 0)
 :qid |RegisteredCurrenciesbaselinebpl.159:13|
 :skolemid |4|
))))
 :qid |RegisteredCurrenciesbaselinebpl.2578:13|
 :skolemid |91|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |RegisteredCurrenciesbaselinebpl.2619:80|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11)))
 :qid |RegisteredCurrenciesbaselinebpl.2625:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |RegisteredCurrenciesbaselinebpl.2675:82|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@12 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12)))
 :qid |RegisteredCurrenciesbaselinebpl.2681:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@12) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@12))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |RegisteredCurrenciesbaselinebpl.2731:80|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@13 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@13 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@13)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@13) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@13))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.2737:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@13) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@13))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |RegisteredCurrenciesbaselinebpl.2787:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_AdminTransactionEvent) (v2@@14 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14)))
 :qid |RegisteredCurrenciesbaselinebpl.2793:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@14))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |RegisteredCurrenciesbaselinebpl.2843:76|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_CreateAccountEvent) (v2@@15 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.2849:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@15))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |RegisteredCurrenciesbaselinebpl.2899:78|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@16 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.2905:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |RegisteredCurrenciesbaselinebpl.2955:74|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_SentPaymentEvent) (v2@@17 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@17))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@17) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@17))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.2961:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@17))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |RegisteredCurrenciesbaselinebpl.3011:69|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@18 T@$1_DiemBlock_NewBlockEvent) (v2@@18 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@18) (|$round#$1_DiemBlock_NewBlockEvent| v2@@18)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@18) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@18))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@18) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@18) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@18))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18)))
 :qid |RegisteredCurrenciesbaselinebpl.3017:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@18) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@18))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |RegisteredCurrenciesbaselinebpl.3067:70|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@19 T@$1_DiemConfig_NewEpochEvent) (v2@@19 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19)))
 :qid |RegisteredCurrenciesbaselinebpl.3073:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@19))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |RegisteredCurrenciesbaselinebpl.3123:70|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@20 T@$1_DiemId_DiemIdDomainEvent) (v2@@20 T@$1_DiemId_DiemIdDomainEvent) ) (! (=  (and (and (= (|$removed#$1_DiemId_DiemIdDomainEvent| v1@@20) (|$removed#$1_DiemId_DiemIdDomainEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v1@@20)) (|$domain#$1_DiemId_DiemIdDomain| (|$domain#$1_DiemId_DiemIdDomainEvent| v2@@20)))) (= (|$address#$1_DiemId_DiemIdDomainEvent| v1@@20) (|$address#$1_DiemId_DiemIdDomainEvent| v2@@20))) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@20) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@20)))
 :qid |RegisteredCurrenciesbaselinebpl.3129:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@20) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@20))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |RegisteredCurrenciesbaselinebpl.3179:60|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@21 T@$1_Diem_BurnEvent) (v2@@21 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@21) (|$amount#$1_Diem_BurnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@21) (|$currency_code#$1_Diem_BurnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@21) (|$preburn_address#$1_Diem_BurnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@21)))
 :qid |RegisteredCurrenciesbaselinebpl.3185:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@21) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@21))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |RegisteredCurrenciesbaselinebpl.3235:66|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@22 T@$1_Diem_CancelBurnEvent) (v2@@22 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@22) (|$amount#$1_Diem_CancelBurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@22) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@22) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@22)))
 :qid |RegisteredCurrenciesbaselinebpl.3241:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@22))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |RegisteredCurrenciesbaselinebpl.3291:60|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@23 T@$1_Diem_MintEvent) (v2@@23 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@23) (|$amount#$1_Diem_MintEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@23) (|$currency_code#$1_Diem_MintEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@23) (|$ToEventRep'$1_Diem_MintEvent'| v2@@23)))
 :qid |RegisteredCurrenciesbaselinebpl.3297:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@23) (|$ToEventRep'$1_Diem_MintEvent'| v2@@23))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |RegisteredCurrenciesbaselinebpl.3347:63|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@24 T@$1_Diem_PreburnEvent) (v2@@24 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@24) (|$amount#$1_Diem_PreburnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@24) (|$currency_code#$1_Diem_PreburnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@24) (|$preburn_address#$1_Diem_PreburnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@24) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@24)))
 :qid |RegisteredCurrenciesbaselinebpl.3353:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@24) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@24))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |RegisteredCurrenciesbaselinebpl.3403:79|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@25 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@25 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@25) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@25)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@25) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@25) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@25)))
 :qid |RegisteredCurrenciesbaselinebpl.3409:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@25) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@25))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |RegisteredCurrenciesbaselinebpl.3459:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@26 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@26 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@26) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@26)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@26) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@26))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@26)))
 :qid |RegisteredCurrenciesbaselinebpl.3465:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@26))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |RegisteredCurrenciesbaselinebpl.3515:88|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@27 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@27) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@27)))
 :qid |RegisteredCurrenciesbaselinebpl.3521:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@27))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |RegisteredCurrenciesbaselinebpl.3724:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |RegisteredCurrenciesbaselinebpl.4247:49|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |RegisteredCurrenciesbaselinebpl.4297:36|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |RegisteredCurrenciesbaselinebpl.4316:49|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |RegisteredCurrenciesbaselinebpl.4409:91|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |RegisteredCurrenciesbaselinebpl.4422:113|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |RegisteredCurrenciesbaselinebpl.4435:71|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |RegisteredCurrenciesbaselinebpl.4448:75|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |RegisteredCurrenciesbaselinebpl.4461:73|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |RegisteredCurrenciesbaselinebpl.4481:48|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |RegisteredCurrenciesbaselinebpl.4498:57|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |RegisteredCurrenciesbaselinebpl.4512:103|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |RegisteredCurrenciesbaselinebpl.4526:125|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |RegisteredCurrenciesbaselinebpl.4540:83|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |RegisteredCurrenciesbaselinebpl.4554:87|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |RegisteredCurrenciesbaselinebpl.4568:85|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.4582:48|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.4600:65|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.5816:45|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |RegisteredCurrenciesbaselinebpl.5829:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |RegisteredCurrenciesbaselinebpl.5842:55|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |RegisteredCurrenciesbaselinebpl.5856:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |RegisteredCurrenciesbaselinebpl.5876:38|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |RegisteredCurrenciesbaselinebpl.5898:44|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |RegisteredCurrenciesbaselinebpl.5950:53|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |RegisteredCurrenciesbaselinebpl.6023:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25) true)
 :qid |RegisteredCurrenciesbaselinebpl.6060:55|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26) true)
 :qid |RegisteredCurrenciesbaselinebpl.6074:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@27)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@27))))
 :qid |RegisteredCurrenciesbaselinebpl.6091:38|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@28)))
 :qid |RegisteredCurrenciesbaselinebpl.6105:48|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@29)))
 :qid |RegisteredCurrenciesbaselinebpl.6119:48|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@30))))
 :qid |RegisteredCurrenciesbaselinebpl.6139:41|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@31)))
 :qid |RegisteredCurrenciesbaselinebpl.6155:53|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@32)))
 :qid |RegisteredCurrenciesbaselinebpl.6168:53|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33))))
 :qid |RegisteredCurrenciesbaselinebpl.6184:60|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34))))
 :qid |RegisteredCurrenciesbaselinebpl.6201:60|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |RegisteredCurrenciesbaselinebpl.6218:57|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36) true)
 :qid |RegisteredCurrenciesbaselinebpl.8429:68|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))))
 :qid |RegisteredCurrenciesbaselinebpl.8451:66|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))))
 :qid |RegisteredCurrenciesbaselinebpl.8477:66|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@39) true)
 :qid |RegisteredCurrenciesbaselinebpl.8810:31|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@39))
)))
(assert (forall ((s@@40 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@40) true)
 :qid |RegisteredCurrenciesbaselinebpl.9154:31|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@41)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@41)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@41))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@41))))
 :qid |RegisteredCurrenciesbaselinebpl.9173:35|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@41))
)))
(assert (forall ((s@@42 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@42)))
 :qid |RegisteredCurrenciesbaselinebpl.9599:71|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@43) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@43)))
 :qid |RegisteredCurrenciesbaselinebpl.9647:46|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@44)))
 :qid |RegisteredCurrenciesbaselinebpl.9659:64|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@45)))
 :qid |RegisteredCurrenciesbaselinebpl.9671:75|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@46)))
 :qid |RegisteredCurrenciesbaselinebpl.9683:72|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46))
)))
(assert (forall ((s@@47 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@47)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@47)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@47))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@47))))
 :qid |RegisteredCurrenciesbaselinebpl.9711:46|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@48)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@48))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@48))))
 :qid |RegisteredCurrenciesbaselinebpl.9733:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |RegisteredCurrenciesbaselinebpl.9763:65|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |RegisteredCurrenciesbaselinebpl.10162:60|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |RegisteredCurrenciesbaselinebpl.10179:66|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |RegisteredCurrenciesbaselinebpl.10208:50|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |RegisteredCurrenciesbaselinebpl.10231:45|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |RegisteredCurrenciesbaselinebpl.10555:87|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@55)))
 :qid |RegisteredCurrenciesbaselinebpl.10772:43|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@56))))
 :qid |RegisteredCurrenciesbaselinebpl.10790:48|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@57)))
 :qid |RegisteredCurrenciesbaselinebpl.10806:50|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@58)))
 :qid |RegisteredCurrenciesbaselinebpl.10819:47|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@59)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@59))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@59))))
 :qid |RegisteredCurrenciesbaselinebpl.10838:58|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@60) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@60)))
 :qid |RegisteredCurrenciesbaselinebpl.10854:39|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@61))))
 :qid |RegisteredCurrenciesbaselinebpl.10876:58|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62))))
 :qid |RegisteredCurrenciesbaselinebpl.10893:58|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63) true)
 :qid |RegisteredCurrenciesbaselinebpl.10908:51|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64))))
 :qid |RegisteredCurrenciesbaselinebpl.10925:60|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@65)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@65))))
 :qid |RegisteredCurrenciesbaselinebpl.11223:47|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@66))))
 :qid |RegisteredCurrenciesbaselinebpl.11249:63|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@67)))
 :qid |RegisteredCurrenciesbaselinebpl.11264:57|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@68)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@68))))
 :qid |RegisteredCurrenciesbaselinebpl.11280:54|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@69)))
 :qid |RegisteredCurrenciesbaselinebpl.11294:55|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@70)))
 :qid |RegisteredCurrenciesbaselinebpl.11307:57|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@71)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@71))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@71))))
 :qid |RegisteredCurrenciesbaselinebpl.11329:56|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@72))))
 :qid |RegisteredCurrenciesbaselinebpl.11356:52|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@73)))
 :qid |RegisteredCurrenciesbaselinebpl.11374:54|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@74)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@74))))
 :qid |RegisteredCurrenciesbaselinebpl.12245:45|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@75)))
 :qid |RegisteredCurrenciesbaselinebpl.12259:51|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@76)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@76))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@76))))
 :qid |RegisteredCurrenciesbaselinebpl.12282:48|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |RegisteredCurrenciesbaselinebpl.12598:47|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |RegisteredCurrenciesbaselinebpl.12622:47|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |RegisteredCurrenciesbaselinebpl.12879:49|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |RegisteredCurrenciesbaselinebpl.12921:49|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |RegisteredCurrenciesbaselinebpl.12950:48|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |RegisteredCurrenciesbaselinebpl.13246:47|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@25 T@Vec_65612) (i@@40 Int) ) (! (= (InRangeVec_56497 v@@25 i@@40)  (and (>= i@@40 0) (< i@@40 (|l#Vec_65612| v@@25))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56497 v@@25 i@@40))
)))
(assert (forall ((v@@26 T@Vec_64282) (i@@41 Int) ) (! (= (InRangeVec_56698 v@@26 i@@41)  (and (>= i@@41 0) (< i@@41 (|l#Vec_64282| v@@26))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56698 v@@26 i@@41))
)))
(assert (forall ((v@@27 T@Vec_64321) (i@@42 Int) ) (! (= (InRangeVec_56899 v@@27 i@@42)  (and (>= i@@42 0) (< i@@42 (|l#Vec_64321| v@@27))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_56899 v@@27 i@@42))
)))
(assert (forall ((v@@28 T@Vec_64584) (i@@43 Int) ) (! (= (InRangeVec_57100 v@@28 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_64584| v@@28))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57100 v@@28 i@@43))
)))
(assert (forall ((v@@29 T@Vec_64130) (i@@44 Int) ) (! (= (InRangeVec_57301 v@@29 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_64130| v@@29))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57301 v@@29 i@@44))
)))
(assert (forall ((v@@30 T@Vec_64091) (i@@45 Int) ) (! (= (InRangeVec_57502 v@@30 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_64091| v@@30))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57502 v@@30 i@@45))
)))
(assert (forall ((v@@31 T@Vec_64243) (i@@46 Int) ) (! (= (InRangeVec_57703 v@@31 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_64243| v@@31))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_57703 v@@31 i@@46))
)))
(assert (forall ((v@@32 T@Vec_63926) (i@@47 Int) ) (! (= (InRangeVec_84549 v@@32 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_63926| v@@32))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_84549 v@@32 i@@47))
)))
(assert (forall ((v@@33 T@Vec_22325) (i@@48 Int) ) (! (= (InRangeVec_12164 v@@33 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_22325| v@@33))))
 :qid |RegisteredCurrenciesbaselinebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_12164 v@@33 i@@48))
)))
(assert (forall ((v@@34 T@Vec_22325) (e@@9 Int) ) (! (let ((i@@49 (IndexOfVec_22325 v@@34 e@@9)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_12164 v@@34 i@@50) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) i@@50) e@@9))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_12164 v@@34 i@@49) (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) i@@49) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@49)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22325| v@@34) j@@9) e@@9)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22325 v@@34 e@@9))
)))
(assert (forall ((v@@35 T@Vec_63926) (e@@10 T@Vec_22325) ) (! (let ((i@@51 (IndexOfVec_63926 v@@35 e@@10)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_84549 v@@35 i@@52) (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) i@@52) e@@10))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_84549 v@@35 i@@51) (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) i@@51) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@51)) (not (= (|Select__T@[Int]Vec_22325_| (|v#Vec_63926| v@@35) j@@10) e@@10)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_63926 v@@35 e@@10))
)))
(assert (forall ((v@@36 T@Vec_64091) (e@@11 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@53 (IndexOfVec_64091 v@@36 e@@11)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_57502 v@@36 i@@54) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) i@@54) e@@11))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_57502 v@@36 i@@53) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) i@@53) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@53)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_64091| v@@36) j@@11) e@@11)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64091 v@@36 e@@11))
)))
(assert (forall ((v@@37 T@Vec_64130) (e@@12 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@55 (IndexOfVec_64130 v@@37 e@@12)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_57301 v@@37 i@@56) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) i@@56) e@@12))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_57301 v@@37 i@@55) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) i@@55) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@55)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_64130| v@@37) j@@12) e@@12)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64130 v@@37 e@@12))
)))
(assert (forall ((v@@38 T@Vec_64243) (e@@13 T@$1_ValidatorConfig_Config) ) (! (let ((i@@57 (IndexOfVec_64243 v@@38 e@@13)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_57703 v@@38 i@@58) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) i@@58) e@@13))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_57703 v@@38 i@@57) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) i@@57) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@57)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_64243| v@@38) j@@13) e@@13)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64243 v@@38 e@@13))
)))
(assert (forall ((v@@39 T@Vec_64282) (e@@14 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@59 (IndexOfVec_64282 v@@39 e@@14)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_56698 v@@39 i@@60) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) i@@60) e@@14))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_56698 v@@39 i@@59) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) i@@59) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@59)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_64282| v@@39) j@@14) e@@14)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64282 v@@39 e@@14))
)))
(assert (forall ((v@@40 T@Vec_64321) (e@@15 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@61 (IndexOfVec_64321 v@@40 e@@15)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_56899 v@@40 i@@62) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) i@@62) e@@15))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_56899 v@@40 i@@61) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) i@@61) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@61)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_64321| v@@40) j@@15) e@@15)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64321 v@@40 e@@15))
)))
(assert (forall ((v@@41 T@Vec_64584) (e@@16 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@63 (IndexOfVec_64584 v@@41 e@@16)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_57100 v@@41 i@@64) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) i@@64) e@@16))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_57100 v@@41 i@@63) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) i@@63) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@63)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_64584| v@@41) j@@16) e@@16)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_64584 v@@41 e@@16))
)))
(assert (forall ((v@@42 T@Vec_65612) (e@@17 |T@#0|) ) (! (let ((i@@65 (IndexOfVec_65612 v@@42 e@@17)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_56497 v@@42 i@@66) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) i@@66) e@@17))
 :qid |RegisteredCurrenciesbaselinebpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_56497 v@@42 i@@65) (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) i@@65) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@65)) (not (= (|Select__T@[Int]#0_| (|v#Vec_65612| v@@42) j@@17) e@@17)))
 :qid |RegisteredCurrenciesbaselinebpl.117:17|
 :skolemid |1|
)))))
 :qid |RegisteredCurrenciesbaselinebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_65612 v@@42 e@@17))
)))
(assert (forall ((|l#0| Bool) (i@@67 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67) |l#0|)
 :qid |RegisteredCurrenciesbaselinebpl.275:54|
 :skolemid |275|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@67))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63793|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63793|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#1| handle@@0))))
(Multiset_63793 (|lambda#30| (|v#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#0@@0| handle@@0)) (|v#Multiset_63793| (|Select__T@[$1_Event_EventHandle]Multiset_63793_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |RegisteredCurrenciesbaselinebpl.2588:13|
 :skolemid |276|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63793_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@68 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68) (ite  (and (>= i@@68 |l#0@@1|) (< i@@68 |l#1@@0|)) (ite (< i@@68 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@68) (|Select__T@[Int]#0_| |l#4| (- i@@68 |l#5|))) |l#6|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@68))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@69 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69) (ite  (and (<= |l#0@@2| i@@69) (< i@@69 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@69) |l#4@@0|)) |l#5@@0|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@69))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@18 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18) (ite  (and (>= j@@18 |l#0@@3|) (< j@@18 |l#1@@2|)) (ite (< j@@18 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@18) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@18 |l#5@@1|))) |l#6@@0|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |279|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@18))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70) (ite  (and (>= i@@70 |l#0@@4|) (< i@@70 |l#1@@3|)) (ite (< i@@70 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@70) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@70 |l#5@@2|))) |l#6@@1|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |280|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@70))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71) (ite  (and (<= |l#0@@5| i@@71) (< i@@71 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@71) |l#4@@3|)) |l#5@@3|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |281|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@71))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19) (ite  (and (>= j@@19 |l#0@@6|) (< j@@19 |l#1@@5|)) (ite (< j@@19 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@19) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@19 |l#5@@4|))) |l#6@@2|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |282|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@19))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72) (ite  (and (>= i@@72 |l#0@@7|) (< i@@72 |l#1@@6|)) (ite (< i@@72 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@72) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@72 |l#5@@5|))) |l#6@@3|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@72))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@73 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73) (ite  (and (<= |l#0@@8| i@@73) (< i@@73 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@73) |l#4@@6|)) |l#5@@6|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@73))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20) (ite  (and (>= j@@20 |l#0@@9|) (< j@@20 |l#1@@8|)) (ite (< j@@20 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@20) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@20 |l#5@@7|))) |l#6@@4|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@20))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74) (ite  (and (>= i@@74 |l#0@@10|) (< i@@74 |l#1@@9|)) (ite (< i@@74 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@74) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@74 |l#5@@8|))) |l#6@@5|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@74))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75) (ite  (and (<= |l#0@@11| i@@75) (< i@@75 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@75) |l#4@@9|)) |l#5@@9|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@75))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21) (ite  (and (>= j@@21 |l#0@@12|) (< j@@21 |l#1@@11|)) (ite (< j@@21 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@21) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@21 |l#5@@10|))) |l#6@@6|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@21))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76) (ite  (and (>= i@@76 |l#0@@13|) (< i@@76 |l#1@@12|)) (ite (< i@@76 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@11| i@@76) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@11| (- i@@76 |l#5@@11|))) |l#6@@7|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@76))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77) (ite  (and (<= |l#0@@14| i@@77) (< i@@77 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@12| (- (- |l#3@@12| i@@77) |l#4@@12|)) |l#5@@12|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@77))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22) (ite  (and (>= j@@22 |l#0@@15|) (< j@@22 |l#1@@14|)) (ite (< j@@22 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@13| j@@22) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@13| (+ j@@22 |l#5@@13|))) |l#6@@8|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@22))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78) (ite  (and (>= i@@78 |l#0@@16|) (< i@@78 |l#1@@15|)) (ite (< i@@78 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@14| i@@78) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@14| (- i@@78 |l#5@@14|))) |l#6@@9|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@78))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79) (ite  (and (<= |l#0@@17| i@@79) (< i@@79 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@15| (- (- |l#3@@15| i@@79) |l#4@@15|)) |l#5@@15|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@79))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23) (ite  (and (>= j@@23 |l#0@@18|) (< j@@23 |l#1@@17|)) (ite (< j@@23 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@16| j@@23) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@16| (+ j@@23 |l#5@@16|))) |l#6@@10|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@23))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@17| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@17| Int) (|l#6@@11| T@$1_ValidatorConfig_Config) (i@@80 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80) (ite  (and (>= i@@80 |l#0@@19|) (< i@@80 |l#1@@18|)) (ite (< i@@80 |l#2@@17|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@17| i@@80) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@17| (- i@@80 |l#5@@17|))) |l#6@@11|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@80))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_ValidatorConfig_Config) (i@@81 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81) (ite  (and (<= |l#0@@20| i@@81) (< i@@81 |l#1@@19|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@18| (- (- |l#3@@18| i@@81) |l#4@@18|)) |l#5@@18|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@81))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@19| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@19| Int) (|l#6@@12| T@$1_ValidatorConfig_Config) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24) (ite  (and (>= j@@24 |l#0@@21|) (< j@@24 |l#1@@20|)) (ite (< j@@24 |l#2@@19|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@19| j@@24) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@19| (+ j@@24 |l#5@@19|))) |l#6@@12|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@24))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Vec_22325|) (|l#4@@20| |T@[Int]Vec_22325|) (|l#5@@20| Int) (|l#6@@13| T@Vec_22325) (i@@82 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82) (ite  (and (>= i@@82 |l#0@@22|) (< i@@82 |l#1@@21|)) (ite (< i@@82 |l#2@@20|) (|Select__T@[Int]Vec_22325_| |l#3@@20| i@@82) (|Select__T@[Int]Vec_22325_| |l#4@@20| (- i@@82 |l#5@@20|))) |l#6@@13|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@82))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Vec_22325|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@Vec_22325) (i@@83 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83) (ite  (and (<= |l#0@@23| i@@83) (< i@@83 |l#1@@22|)) (|Select__T@[Int]Vec_22325_| |l#2@@21| (- (- |l#3@@21| i@@83) |l#4@@21|)) |l#5@@21|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@83))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Vec_22325|) (|l#4@@22| |T@[Int]Vec_22325|) (|l#5@@22| Int) (|l#6@@14| T@Vec_22325) (j@@25 Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25) (ite  (and (>= j@@25 |l#0@@24|) (< j@@25 |l#1@@23|)) (ite (< j@@25 |l#2@@22|) (|Select__T@[Int]Vec_22325_| |l#3@@22| j@@25) (|Select__T@[Int]Vec_22325_| |l#4@@22| (+ j@@25 |l#5@@22|))) |l#6@@14|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@25))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Int|) (|l#4@@23| |T@[Int]Int|) (|l#5@@23| Int) (|l#6@@15| Int) (i@@84 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84) (ite  (and (>= i@@84 |l#0@@25|) (< i@@84 |l#1@@24|)) (ite (< i@@84 |l#2@@23|) (|Select__T@[Int]Int_| |l#3@@23| i@@84) (|Select__T@[Int]Int_| |l#4@@23| (- i@@84 |l#5@@23|))) |l#6@@15|))
 :qid |RegisteredCurrenciesbaselinebpl.73:19|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@84))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Int|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| Int) (i@@85 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85) (ite  (and (<= |l#0@@26| i@@85) (< i@@85 |l#1@@25|)) (|Select__T@[Int]Int_| |l#2@@24| (- (- |l#3@@24| i@@85) |l#4@@24|)) |l#5@@24|))
 :qid |RegisteredCurrenciesbaselinebpl.82:30|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@85))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Int|) (|l#4@@25| |T@[Int]Int|) (|l#5@@25| Int) (|l#6@@16| Int) (j@@26 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26) (ite  (and (>= j@@26 |l#0@@27|) (< j@@26 |l#1@@26|)) (ite (< j@@26 |l#2@@25|) (|Select__T@[Int]Int_| |l#3@@25| j@@26) (|Select__T@[Int]Int_| |l#4@@25| (+ j@@26 |l#5@@25|))) |l#6@@16|))
 :qid |RegisteredCurrenciesbaselinebpl.63:20|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@26))
)))
(assert (forall ((|l#0@@28| |T@[$EventRep]Int|) (|l#1@@27| |T@[$EventRep]Int|) (v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43) (- (|Select__T@[$EventRep]Int_| |l#0@@28| v@@43) (|Select__T@[$EventRep]Int_| |l#1@@27| v@@43)))
 :qid |RegisteredCurrenciesbaselinebpl.154:29|
 :skolemid |304|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@43))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@26| |T@[Int]Vec_22325|) (|l#3@@26| Int) (|l#4@@26| T@Vec_22325) (k Int) ) (! (= (|Select__T@[Int]Vec_22325_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@26| |l#3@@26| |l#4@@26|) k) (ite  (and (<= |l#0@@29| k) (< k |l#1@@28|)) (|Select__T@[Int]Vec_22325_| |l#2@@26| (+ |l#3@@26| k)) |l#4@@26|))
 :qid |RegisteredCurrenciesbaselinebpl.90:14|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]Vec_22325_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@26| |l#3@@26| |l#4@@26|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 210411) true)
))
(check-sat)
(pop 1)
; Valid
