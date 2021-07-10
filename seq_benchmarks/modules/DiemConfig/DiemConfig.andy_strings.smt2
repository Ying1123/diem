(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_89265 0)) ((($Memory_89265 (|domain#$Memory_89265| |T@[Int]Bool|) (|contents#$Memory_89265| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_138549 0)) ((($Memory_138549 (|domain#$Memory_138549| |T@[Int]Bool|) (|contents#$Memory_138549| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_133954 0)) ((($Memory_133954 (|domain#$Memory_133954| |T@[Int]Bool|) (|contents#$Memory_133954| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_131957 0)) ((($Memory_131957 (|domain#$Memory_131957| |T@[Int]Bool|) (|contents#$Memory_131957| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_132237 0)) ((($Memory_132237 (|domain#$Memory_132237| |T@[Int]Bool|) (|contents#$Memory_132237| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_131924 0)) ((($Memory_131924 (|domain#$Memory_131924| |T@[Int]Bool|) (|contents#$Memory_131924| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_131709 0)) ((($Memory_131709 (|domain#$Memory_131709| |T@[Int]Bool|) (|contents#$Memory_131709| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_131338 0)) ((($Memory_131338 (|domain#$Memory_131338| |T@[Int]Bool|) (|contents#$Memory_131338| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_128878 0)) ((($Memory_128878 (|domain#$Memory_128878| |T@[Int]Bool|) (|contents#$Memory_128878| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_128814 0)) ((($Memory_128814 (|domain#$Memory_128814| |T@[Int]Bool|) (|contents#$Memory_128814| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_132880 0)) ((($Memory_132880 (|domain#$Memory_132880| |T@[Int]Bool|) (|contents#$Memory_132880| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_127295 0)) ((($Memory_127295 (|domain#$Memory_127295| |T@[Int]Bool|) (|contents#$Memory_127295| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_126785 0)) ((($Memory_126785 (|domain#$Memory_126785| |T@[Int]Bool|) (|contents#$Memory_126785| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_123636 0)) ((($Memory_123636 (|domain#$Memory_123636| |T@[Int]Bool|) (|contents#$Memory_123636| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_123417 0)) ((($Memory_123417 (|domain#$Memory_123417| |T@[Int]Bool|) (|contents#$Memory_123417| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_133743 0)) ((($Memory_133743 (|domain#$Memory_133743| |T@[Int]Bool|) (|contents#$Memory_133743| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_116308 0)) ((($Memory_116308 (|domain#$Memory_116308| |T@[Int]Bool|) (|contents#$Memory_116308| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_116221 0)) ((($Memory_116221 (|domain#$Memory_116221| |T@[Int]Bool|) (|contents#$Memory_116221| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113018 0)) ((($Memory_113018 (|domain#$Memory_113018| |T@[Int]Bool|) (|contents#$Memory_113018| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112931 0)) ((($Memory_112931 (|domain#$Memory_112931| |T@[Int]Bool|) (|contents#$Memory_112931| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_116572 0)) ((($Memory_116572 (|domain#$Memory_116572| |T@[Int]Bool|) (|contents#$Memory_116572| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_125477 0)) ((($Memory_125477 (|domain#$Memory_125477| |T@[Int]Bool|) (|contents#$Memory_125477| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_116898 0)) ((($Memory_116898 (|domain#$Memory_116898| |T@[Int]Bool|) (|contents#$Memory_116898| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_116481 0)) ((($Memory_116481 (|domain#$Memory_116481| |T@[Int]Bool|) (|contents#$Memory_116481| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_127720 0)) ((($Memory_127720 (|domain#$Memory_127720| |T@[Int]Bool|) (|contents#$Memory_127720| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_116799 0)) ((($Memory_116799 (|domain#$Memory_116799| |T@[Int]Bool|) (|contents#$Memory_116799| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_100671 0)) ((($Memory_100671 (|domain#$Memory_100671| |T@[Int]Bool|) (|contents#$Memory_100671| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_100584 0)) ((($Memory_100584 (|domain#$Memory_100584| |T@[Int]Bool|) (|contents#$Memory_100584| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_100497 0)) ((($Memory_100497 (|domain#$Memory_100497| |T@[Int]Bool|) (|contents#$Memory_100497| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_100410 0)) ((($Memory_100410 (|domain#$Memory_100410| |T@[Int]Bool|) (|contents#$Memory_100410| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_137240 0)) ((($Memory_137240 (|domain#$Memory_137240| |T@[Int]Bool|) (|contents#$Memory_137240| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_100323 0)) ((($Memory_100323 (|domain#$Memory_100323| |T@[Int]Bool|) (|contents#$Memory_100323| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_100236 0)) ((($Memory_100236 (|domain#$Memory_100236| |T@[Int]Bool|) (|contents#$Memory_100236| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_99492 0)) ((($Memory_99492 (|domain#$Memory_99492| |T@[Int]Bool|) (|contents#$Memory_99492| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_97844 0)) ((($Memory_97844 (|domain#$Memory_97844| |T@[Int]Bool|) (|contents#$Memory_97844| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_96890 0)) ((($Memory_96890 (|domain#$Memory_96890| |T@[Int]Bool|) (|contents#$Memory_96890| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_96857 0)) ((($Memory_96857 (|domain#$Memory_96857| |T@[Int]Bool|) (|contents#$Memory_96857| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_96824 0)) ((($Memory_96824 (|domain#$Memory_96824| |T@[Int]Bool|) (|contents#$Memory_96824| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_96791 0)) ((($Memory_96791 (|domain#$Memory_96791| |T@[Int]Bool|) (|contents#$Memory_96791| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96758 0)) ((($Memory_96758 (|domain#$Memory_96758| |T@[Int]Bool|) (|contents#$Memory_96758| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_96725 0)) ((($Memory_96725 (|domain#$Memory_96725| |T@[Int]Bool|) (|contents#$Memory_96725| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112629 0)) ((($Memory_112629 (|domain#$Memory_112629| |T@[Int]Bool|) (|contents#$Memory_112629| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112564 0)) ((($Memory_112564 (|domain#$Memory_112564| |T@[Int]Bool|) (|contents#$Memory_112564| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_98777 0)) ((($Memory_98777 (|domain#$Memory_98777| |T@[Int]Bool|) (|contents#$Memory_98777| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_98744 0)) ((($Memory_98744 (|domain#$Memory_98744| |T@[Int]Bool|) (|contents#$Memory_98744| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_96133 0)) ((($Memory_96133 (|domain#$Memory_96133| |T@[Int]Bool|) (|contents#$Memory_96133| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_67195 0)) (((Multiset_67195 (|v#Multiset_67195| |T@[$EventRep]Int|) (|l#Multiset_67195| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_67195| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_67195|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_134781 0)) ((($Mutation_134781 (|l#$Mutation_134781| T@$Location) (|p#$Mutation_134781| (Seq Int)) (|v#$Mutation_134781| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_134737 0)) ((($Mutation_134737 (|l#$Mutation_134737| T@$Location) (|p#$Mutation_134737| (Seq Int)) (|v#$Mutation_134737| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_37567 0)) ((($Mutation_37567 (|l#$Mutation_37567| T@$Location) (|p#$Mutation_37567| (Seq Int)) (|v#$Mutation_37567| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_122134 0)) ((($Mutation_122134 (|l#$Mutation_122134| T@$Location) (|p#$Mutation_122134| (Seq Int)) (|v#$Mutation_122134| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_111424 0)) ((($Mutation_111424 (|l#$Mutation_111424| T@$Location) (|p#$Mutation_111424| (Seq Int)) (|v#$Mutation_111424| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_102344 0)) ((($Mutation_102344 (|l#$Mutation_102344| T@$Location) (|p#$Mutation_102344| (Seq Int)) (|v#$Mutation_102344| T@$1_DiemConfig_Configuration) ) ) ))
(declare-datatypes ((T@$Mutation_96674 0)) ((($Mutation_96674 (|l#$Mutation_96674| T@$Location) (|p#$Mutation_96674| (Seq Int)) (|v#$Mutation_96674| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_89893 0)) ((($Mutation_89893 (|l#$Mutation_89893| T@$Location) (|p#$Mutation_89893| (Seq Int)) (|v#$Mutation_89893| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_85261 0)) ((($Mutation_85261 (|l#$Mutation_85261| T@$Location) (|p#$Mutation_85261| (Seq Int)) (|v#$Mutation_85261| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_84515 0)) ((($Mutation_84515 (|l#$Mutation_84515| T@$Location) (|p#$Mutation_84515| (Seq Int)) (|v#$Mutation_84515| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_83075 0)) ((($Mutation_83075 (|l#$Mutation_83075| T@$Location) (|p#$Mutation_83075| (Seq Int)) (|v#$Mutation_83075| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_82329 0)) ((($Mutation_82329 (|l#$Mutation_82329| T@$Location) (|p#$Mutation_82329| (Seq Int)) (|v#$Mutation_82329| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_80889 0)) ((($Mutation_80889 (|l#$Mutation_80889| T@$Location) (|p#$Mutation_80889| (Seq Int)) (|v#$Mutation_80889| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_80143 0)) ((($Mutation_80143 (|l#$Mutation_80143| T@$Location) (|p#$Mutation_80143| (Seq Int)) (|v#$Mutation_80143| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_78703 0)) ((($Mutation_78703 (|l#$Mutation_78703| T@$Location) (|p#$Mutation_78703| (Seq Int)) (|v#$Mutation_78703| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_77957 0)) ((($Mutation_77957 (|l#$Mutation_77957| T@$Location) (|p#$Mutation_77957| (Seq Int)) (|v#$Mutation_77957| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_76517 0)) ((($Mutation_76517 (|l#$Mutation_76517| T@$Location) (|p#$Mutation_76517| (Seq Int)) (|v#$Mutation_76517| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_75771 0)) ((($Mutation_75771 (|l#$Mutation_75771| T@$Location) (|p#$Mutation_75771| (Seq Int)) (|v#$Mutation_75771| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_74331 0)) ((($Mutation_74331 (|l#$Mutation_74331| T@$Location) (|p#$Mutation_74331| (Seq Int)) (|v#$Mutation_74331| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_73585 0)) ((($Mutation_73585 (|l#$Mutation_73585| T@$Location) (|p#$Mutation_73585| (Seq Int)) (|v#$Mutation_73585| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_72145 0)) ((($Mutation_72145 (|l#$Mutation_72145| T@$Location) (|p#$Mutation_72145| (Seq Int)) (|v#$Mutation_72145| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71399 0)) ((($Mutation_71399 (|l#$Mutation_71399| T@$Location) (|p#$Mutation_71399| (Seq Int)) (|v#$Mutation_71399| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_69921 0)) ((($Mutation_69921 (|l#$Mutation_69921| T@$Location) (|p#$Mutation_69921| (Seq Int)) (|v#$Mutation_69921| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_69175 0)) ((($Mutation_69175 (|l#$Mutation_69175| T@$Location) (|p#$Mutation_69175| (Seq Int)) (|v#$Mutation_69175| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_67195_| (|T@[$1_Event_EventHandle]Multiset_67195| T@$1_Event_EventHandle) T@Multiset_67195)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'#0''| (|T@$1_DiemConfig_DiemConfig'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| (|T@$1_DiemConfig_ModifyConfigCapability'#0'|) Bool)
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
(declare-fun ReverseVec_61264 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_60870 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_60673 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_61067 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_60082 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_60279 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_60476 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_59885 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_67195| |T@[$1_Event_EventHandle]Multiset_67195|) |T@[$1_Event_EventHandle]Multiset_67195|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemConfigandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemConfigandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemConfigandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemConfigandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemConfigandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemConfigandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemConfigandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemConfigandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemConfigandybpl.590:13|
 :skolemid |15|
))))
 :qid |DiemConfigandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemConfigandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemConfigandybpl.603:17|
 :skolemid |18|
)))))
 :qid |DiemConfigandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemConfigandybpl.770:13|
 :skolemid |20|
))))
 :qid |DiemConfigandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemConfigandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemConfigandybpl.783:17|
 :skolemid |23|
)))))
 :qid |DiemConfigandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemConfigandybpl.950:13|
 :skolemid |25|
))))
 :qid |DiemConfigandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemConfigandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemConfigandybpl.963:17|
 :skolemid |28|
)))))
 :qid |DiemConfigandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemConfigandybpl.1130:13|
 :skolemid |30|
))))
 :qid |DiemConfigandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemConfigandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemConfigandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |DiemConfigandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |DiemConfigandybpl.1310:13|
 :skolemid |35|
))))
 :qid |DiemConfigandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemConfigandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemConfigandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DiemConfigandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |DiemConfigandybpl.1490:13|
 :skolemid |40|
))))
 :qid |DiemConfigandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemConfigandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemConfigandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DiemConfigandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |DiemConfigandybpl.1670:13|
 :skolemid |45|
))))
 :qid |DiemConfigandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemConfigandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemConfigandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DiemConfigandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |DiemConfigandybpl.1850:13|
 :skolemid |50|
))))
 :qid |DiemConfigandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemConfigandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemConfigandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DiemConfigandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |DiemConfigandybpl.2030:13|
 :skolemid |55|
))))
 :qid |DiemConfigandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemConfigandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemConfigandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DiemConfigandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |DiemConfigandybpl.2210:13|
 :skolemid |60|
))))
 :qid |DiemConfigandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemConfigandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemConfigandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DiemConfigandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemConfigandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemConfigandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemConfigandybpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemConfigandybpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_67195| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream) v@@24) 0)
 :qid |DiemConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemConfigandybpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemConfigandybpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemConfigandybpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemConfigandybpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemConfigandybpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemConfigandybpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemConfigandybpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemConfigandybpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemConfigandybpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemConfigandybpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemConfigandybpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemConfigandybpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemConfigandybpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemConfigandybpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemConfigandybpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemConfigandybpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemConfigandybpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemConfigandybpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemConfigandybpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |DiemConfigandybpl.3083:70|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |DiemConfigandybpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |DiemConfigandybpl.3139:60|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |DiemConfigandybpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |DiemConfigandybpl.3195:66|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |DiemConfigandybpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |DiemConfigandybpl.3251:60|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |DiemConfigandybpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |DiemConfigandybpl.3307:63|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |DiemConfigandybpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |DiemConfigandybpl.3363:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |DiemConfigandybpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |DiemConfigandybpl.3419:82|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |DiemConfigandybpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |DiemConfigandybpl.3475:88|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |DiemConfigandybpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemConfigandybpl.3684:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |DiemConfigandybpl.4291:49|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemConfigandybpl.4341:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |DiemConfigandybpl.4360:49|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |DiemConfigandybpl.4463:91|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |DiemConfigandybpl.4477:113|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |DiemConfigandybpl.4491:71|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |DiemConfigandybpl.4505:75|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |DiemConfigandybpl.4519:73|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@8) true)
 :qid |DiemConfigandybpl.4533:49|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@9)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@9)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@9))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@9))))
 :qid |DiemConfigandybpl.4553:48|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@10) true)
 :qid |DiemConfigandybpl.4569:57|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) true)
 :qid |DiemConfigandybpl.4583:103|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) true)
 :qid |DiemConfigandybpl.4597:125|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@13) true)
 :qid |DiemConfigandybpl.4611:83|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@14) true)
 :qid |DiemConfigandybpl.4625:87|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@15) true)
 :qid |DiemConfigandybpl.4639:85|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@16) true)
 :qid |DiemConfigandybpl.4653:61|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@17) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@17)))
 :qid |DiemConfigandybpl.4667:48|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@17))
)))
(assert (forall ((s@@18 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@18) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@18)))
 :qid |DiemConfigandybpl.7285:65|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@19) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@19)))
 :qid |DiemConfigandybpl.7789:45|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@20) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@20)))
 :qid |DiemConfigandybpl.7802:45|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@21) true)
 :qid |DiemConfigandybpl.7815:55|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@22) true)
 :qid |DiemConfigandybpl.7829:55|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@22))
)))
(assert (forall ((s@@23 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@23)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@23)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@23))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@23))))
 :qid |DiemConfigandybpl.7849:38|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@24)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@24)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@24))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@24))))
 :qid |DiemConfigandybpl.7870:44|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@25)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))))
 :qid |DiemConfigandybpl.7921:53|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@26)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))))
 :qid |DiemConfigandybpl.7983:53|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@27) true)
 :qid |DiemConfigandybpl.8009:55|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@28) true)
 :qid |DiemConfigandybpl.8023:55|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@29)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@29)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@29))))
 :qid |DiemConfigandybpl.8040:38|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@30) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@30)))
 :qid |DiemConfigandybpl.8054:48|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@31) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@31)))
 :qid |DiemConfigandybpl.8068:48|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@32))))
 :qid |DiemConfigandybpl.8088:41|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@33) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@33)))
 :qid |DiemConfigandybpl.8103:53|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@34) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@34)))
 :qid |DiemConfigandybpl.8117:53|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@35)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@35)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@35))))
 :qid |DiemConfigandybpl.8134:60|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@36)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@36)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@36))))
 :qid |DiemConfigandybpl.8151:60|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@37)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@37)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@37))))
 :qid |DiemConfigandybpl.8168:57|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@37))
)))
(assert (forall ((s@@38 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@38) true)
 :qid |DiemConfigandybpl.10379:68|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@39)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@39)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@39))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@39))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@39))))
 :qid |DiemConfigandybpl.10401:66|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@40)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@40)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@40))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@40))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@40))))
 :qid |DiemConfigandybpl.10427:66|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@41) true)
 :qid |DiemConfigandybpl.10760:31|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@41))
)))
(assert (forall ((s@@42 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@42) true)
 :qid |DiemConfigandybpl.11104:31|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@42))
)))
(assert (forall ((s@@43 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@43)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@43)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@43))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@43))))
 :qid |DiemConfigandybpl.11123:35|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@43))
)))
(assert (forall ((s@@44 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@44) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@44)))
 :qid |DiemConfigandybpl.11549:71|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@45) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@45)))
 :qid |DiemConfigandybpl.11598:46|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@46) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@46)))
 :qid |DiemConfigandybpl.11611:64|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@47) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@47)))
 :qid |DiemConfigandybpl.11624:75|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@48) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@48)))
 :qid |DiemConfigandybpl.11637:72|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@48))
)))
(assert (forall ((s@@49 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@49)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@49)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@49))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@49))))
 :qid |DiemConfigandybpl.11666:46|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@49))
)))
(assert (forall ((s@@50 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@50)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@50)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@50))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@50))))
 :qid |DiemConfigandybpl.11687:55|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@50))
)))
(assert (forall ((s@@51 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@51)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@51))))
 :qid |DiemConfigandybpl.11716:65|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@52)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@52))))
 :qid |DiemConfigandybpl.12115:60|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@53)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@53))))
 :qid |DiemConfigandybpl.12132:66|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@54)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@54)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@54))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@54))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@54))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@54))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@54))))
 :qid |DiemConfigandybpl.12161:50|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@55) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@55)))
 :qid |DiemConfigandybpl.12180:45|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@56)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@56)) true))
 :qid |DiemConfigandybpl.12504:87|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@57) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@57)))
 :qid |DiemConfigandybpl.12721:43|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@58)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@58))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@58))))
 :qid |DiemConfigandybpl.12740:48|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@59) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@59)))
 :qid |DiemConfigandybpl.12755:50|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@60) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@60)))
 :qid |DiemConfigandybpl.12769:47|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@61)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@61)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@61))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@61))))
 :qid |DiemConfigandybpl.12789:58|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@62) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@62)))
 :qid |DiemConfigandybpl.12804:39|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@63)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@63)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@63))))
 :qid |DiemConfigandybpl.12826:58|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@64)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@64)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@64))))
 :qid |DiemConfigandybpl.12843:58|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@65) true)
 :qid |DiemConfigandybpl.12858:51|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@66)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@66)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@66))))
 :qid |DiemConfigandybpl.12875:60|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@67)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@67)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@67))))
 :qid |DiemConfigandybpl.13173:47|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@68)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@68)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@68))))
 :qid |DiemConfigandybpl.13195:63|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@69) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@69)))
 :qid |DiemConfigandybpl.13210:57|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@70)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@70))))
 :qid |DiemConfigandybpl.13226:54|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@71) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@71)))
 :qid |DiemConfigandybpl.13240:55|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@72) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@72)))
 :qid |DiemConfigandybpl.13254:57|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@73)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@73)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@73))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@73))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@73))))
 :qid |DiemConfigandybpl.13276:56|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@74))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@74))))
 :qid |DiemConfigandybpl.13301:52|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@75) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@75)))
 :qid |DiemConfigandybpl.13317:54|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@76)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@76)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@76))))
 :qid |DiemConfigandybpl.14188:45|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@77) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@77)))
 :qid |DiemConfigandybpl.14202:51|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@78)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@78)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@78))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@78))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@78))))
 :qid |DiemConfigandybpl.14225:48|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@79)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@79))))
 :qid |DiemConfigandybpl.14539:47|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@80)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@80)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@80))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@80))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@80))))
 :qid |DiemConfigandybpl.14563:47|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@81) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@81)))
 :qid |DiemConfigandybpl.14818:49|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@82)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@82)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@82))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@82))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@82))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@82))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@82))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@82))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@82))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@82))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@82))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@82))))
 :qid |DiemConfigandybpl.14861:49|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@83)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@83)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@83))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@83))))
 :qid |DiemConfigandybpl.14890:48|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@84) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@84)))
 :qid |DiemConfigandybpl.15185:47|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@84))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |DiemConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |DiemConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_61264 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |DiemConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |DiemConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61264 v@@26))
)))
(assert (forall ((v@@27 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_60870 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |DiemConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |DiemConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60870 v@@27))
)))
(assert (forall ((v@@28 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_60673 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |DiemConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |DiemConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60673 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@4 (ReverseVec_61067 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |DiemConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |DiemConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61067 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@5 (ReverseVec_60082 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |DiemConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |DiemConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60082 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@6 (ReverseVec_60279 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |DiemConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |DiemConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60279 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@7 (ReverseVec_60476 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |DiemConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |DiemConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60476 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_59885 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |DiemConfigandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |DiemConfigandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59885 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |DiemConfigandybpl.245:54|
 :skolemid |265|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_67195|) (|l#1| |T@[$1_Event_EventHandle]Multiset_67195|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| |l#1| handle@@0))))
(Multiset_67195 (|lambda#3| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| |l#0@@0| handle@@0)) (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemConfigandybpl.2548:13|
 :skolemid |266|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |DiemConfigandybpl.124:29|
 :skolemid |267|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_96674)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_96674)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_96133)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_97844)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_96133)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_96725)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_96758)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_96791)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_96824)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_96857)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory| () T@$Memory_96890)
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
(declare-fun $t14 () T@$Mutation_96674)
(declare-fun $t14@0 () T@$Mutation_96674)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_96674)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 210368) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12329 (|l#$Mutation_96674| $t14@1) (seq.++ (|p#$Mutation_96674| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_96674| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2)) (= $t14@2 ($Mutation_96674 (|l#$Mutation_96674| $t14@1) (|p#$Mutation_96674| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_96133 (|Store__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_96674| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_96674| $t14@2)) (|v#$Mutation_96674| $t14@2)))))) (and (=> (= (ControlFlow 0 153443) (- 0 211102)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (and (=> (= (ControlFlow 0 153443) (- 0 211114)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96725| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96725| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96758| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96758| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96791| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96791| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96824| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96824| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96857| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96857| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96725| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96725| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96758| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96758| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96791| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96791| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96824| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96824| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96857| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96857| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)))) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 153443) (- 0 211199)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 153443) (- 0 211209)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 153443) (- 0 211223)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 153443) (- 0 211247)) (= $t25 _$t2)))))))))))))))))
(let ((anon31_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 153501) 153443)) L5_correct)))
(let ((anon32_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 153211) 153443)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 153207) (- 0 211297)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 153207) (- 0 211334)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon31_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 153497) 153207))) L8_correct)))
(let ((anon30_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 153481) 153501) anon31_Then_correct) (=> (= (ControlFlow 0 153481) 153497) anon31_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 153091) 153207))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 153075) 153211) anon32_Then_correct) (=> (= (ControlFlow 0 153075) 153091) anon32_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 153039) 153075)) anon30_Else$1_correct)))
(let ((anon30_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 153045) 153039)) inline$$Lt$0$anon0_correct)))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= $t17@0 (= _$t1 0))) (and (=> (= (ControlFlow 0 152993) 153481) anon30_Then_correct) (=> (= (ControlFlow 0 152993) 153045) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 153515) 153207))) L8_correct)))
(let ((inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 0) (= 0 0)) (and (=> (= (ControlFlow 0 152973) 153515) anon29_Then_correct) (=> (= (ControlFlow 0 152973) 152993) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_96674| $t14@1))) (=> (and (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|) (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_96674| $t14@1)))) (and (= $t15@0 $t15@0) (= (ControlFlow 0 152979) 152973))) inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 153529) 153207))) L8_correct)))
(let ((anon27_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 153581) 153529) anon28_Then_correct) (=> (= (ControlFlow 0 153581) 152979) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 153579) 153581)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_96674 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 152876) 153529) anon28_Then_correct) (=> (= (ControlFlow 0 152876) 152979) anon28_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 152854) (- 0 210725)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 152854) 153579) anon27_Then_correct) (=> (= (ControlFlow 0 152854) 152876) anon27_Else_correct)))))))
(let ((anon25_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 153625) 153207))) L8_correct))))
(let ((anon24_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 153651) 153207))) L8_correct))))
(let ((anon26_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 152834) 153595) anon26_Then_correct) (=> (= (ControlFlow 0 152834) 152854) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not $t12) (= (ControlFlow 0 152840) 152834)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct)))
(let ((anon24_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 152763) 153625) anon25_Then_correct) (=> (= (ControlFlow 0 152763) 152840) anon25_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemConfigandybpl.3926:20|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 152741) 153651) anon24_Then_correct) (=> (= (ControlFlow 0 152741) 152763) anon24_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_67195| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@0) v@@35) 0)
 :qid |DiemConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 152629) 152741)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_96674| $t3)) 0) (= (seq.len (|p#$Mutation_96674| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 152639) 152629))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 210368) 152639) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_97844)
(declare-fun $t15 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun _$t0@@0 () Int)
(declare-fun $t4@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_97844)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun $t14@0@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DiemConfig_Configuration_$modifies () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t10@@0 () Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t5 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t3@@0 () Bool)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 211576) (let ((anon24_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 154420) (- 0 212235)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory@1) 173345816)) (=> (= $t15 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 154420) (- 0 212262)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (and (=> (= (ControlFlow 0 154420) (- 0 212270)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 154420) (- 0 212280)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 154420) (- 0 212294)) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory@1) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory@1) 173345816) (and (=> (= (ControlFlow 0 154420) (- 0 212300)) (= (|$epoch#$1_DiemConfig_Configuration| $t15) 0)) (=> (= (|$epoch#$1_DiemConfig_Configuration| $t15) 0) (=> (= (ControlFlow 0 154420) (- 0 212311)) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t15) 0))))))))))))))))))
(let ((anon22_Then_correct true))
(let ((L3_correct  (and (=> (= (ControlFlow 0 154190) (- 0 212161)) (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (= _$t0@@0 173345816)))) (=> (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (= _$t0@@0 173345816))) (=> (= (ControlFlow 0 154190) (- 0 212182)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816) (= 6 $t4@0)) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t4@0))))))))
(let ((anon24_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t4@0 $abort_code@1@@0) (= (ControlFlow 0 154434) 154190))) L3_correct)))
(let ((anon23_Then$1_correct  (=> (= $1_DiemConfig_Configuration_$memory@1 $1_DiemConfig_Configuration_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 154484) 154434) anon24_Then_correct@@0) (=> (= (ControlFlow 0 154484) 154420) anon24_Else_correct@@0))))))
(let ((anon23_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) _$t0@@0) (= (ControlFlow 0 154482) 154484)) anon23_Then$1_correct)))
(let ((anon23_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) _$t0@@0)) (=> (and (and (= $1_DiemConfig_Configuration_$memory@0 ($Memory_97844 (|Store__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) _$t0@@0 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) _$t0@@0 $t14@0@@0))) (= $1_DiemConfig_Configuration_$memory@1 $1_DiemConfig_Configuration_$memory@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 154328) 154434) anon24_Then_correct@@0) (=> (= (ControlFlow 0 154328) 154420) anon24_Else_correct@@0))))))
(let ((anon22_Else_correct  (=> (and (not false) (= $t14@0@@0 ($1_DiemConfig_Configuration 0 0 |inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 154310) (- 0 212057)) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies _$t0@@0)) (=> (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies _$t0@@0) (and (=> (= (ControlFlow 0 154310) 154482) anon23_Then_correct) (=> (= (ControlFlow 0 154310) 154328) anon23_Else_correct)))))))
(let ((|inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 154278) 154498) anon22_Then_correct) (=> (= (ControlFlow 0 154278) 154310) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (and (and inline$$Not$0$dst@1 (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 154284) 154278))) |inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$anon0_correct|)))
(let ((anon21_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t10@@0 $t10@@0)) (and (= $t4@0 $t10@@0) (= (ControlFlow 0 154110) 154190))) L3_correct)))
(let ((anon20_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t10@@0) (= $t10@@0 6)) (and (= $t10@@0 $t10@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 154094) 154284) anon21_Then_correct) (=> (= (ControlFlow 0 154094) 154110) anon21_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t7@0)) (= (ControlFlow 0 154058) 154094)) anon20_Else$1_correct)))
(let ((anon20_Else_correct  (=> (not false) (=> (and (= $t7@0 (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= (ControlFlow 0 154064) 154058)) inline$$Not$0$anon0_correct))))
(let ((anon19_Then_correct  (=> $t5 (=> (and (and (and (not (= _$t0@@0 173345816)) (= 2 $t4)) (= $t4 $t4)) (and (= $t4@0 $t4) (= (ControlFlow 0 154542) 154190))) L3_correct))))
(let ((anon18_Then_correct  (=> $t3@@0 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4)) (= $t4 $t4)) (and (= $t4@0 $t4) (= (ControlFlow 0 154568) 154190))) L3_correct))))
(let ((anon20_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@0  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 154008) 154512) anon20_Then_correct) (=> (= (ControlFlow 0 154008) 154064) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (not $t5) (= (ControlFlow 0 154014) 154008)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@0)))
(let ((anon18_Else_correct  (=> (and (not $t3@@0) (= $t5  (not (= _$t0@@0 173345816)))) (and (=> (= (ControlFlow 0 153937) 154542) anon19_Then_correct) (=> (= (ControlFlow 0 153937) 154014) anon19_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (|$IsValid'address'| _$t0@@0)) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |DiemConfigandybpl.4720:20|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) $a_0@@1)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@1))
 :qid |DiemConfigandybpl.4724:20|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) $a_0@@1))
)))) (and (and (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies 173345816) (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= $t3@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 153915) 154568) anon18_Then_correct) (=> (= (ControlFlow 0 153915) 153937) anon18_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_67195| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@1) v@@36) 0)
 :qid |DiemConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 153789) 153915)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 211576) 153789) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_disable_reconfiguration$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 212329) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@0 () T@$Memory_97844)
(declare-fun $t12@2 () T@$Mutation_102344)
(declare-fun $t27 () T@$1_DiemConfig_Configuration)
(declare-fun $t28 () T@$1_Event_EventHandle)
(declare-fun $t29 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_67195_| (|T@[$1_Event_EventHandle]Multiset_67195| T@$1_Event_EventHandle T@Multiset_67195) |T@[$1_Event_EventHandle]Multiset_67195|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_67195|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_67195)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|Store__T@[$1_Event_EventHandle]Multiset_67195_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_67195|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_67195)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|Store__T@[$1_Event_EventHandle]Multiset_67195_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_67195_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t24@0@@0 () T@$Mutation_89893)
(declare-fun $t26@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t5@0 () Bool)
(declare-fun $t23@0 () T@$Mutation_12329)
(declare-fun $t12@1 () T@$Mutation_102344)
(declare-fun $t23@1 () T@$Mutation_12329)
(declare-fun $t25@0 () Int)
(declare-fun $t21 () Int)
(declare-fun $t15@0@@0 () Bool)
(declare-fun $t16@0 () Int)
(declare-fun $t18@0@@0 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t13@0 () Int)
(declare-fun $t12@@0 () T@$Mutation_102344)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t12@0 () T@$Mutation_102344)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t8@0 () Bool)
(declare-fun $t10@@1 () Int)
(declare-fun $t0 () T@$Mutation_102344)
(declare-fun $t23@@0 () T@$Mutation_12329)
(declare-fun $t24@@0 () T@$Mutation_89893)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_emit_genesis_reconfiguration_event$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 213040) (let ((anon28_Else_correct@@0  (=> (and (not $abort_flag@0@@1) (= $1_DiemConfig_Configuration_$memory@0@@0 ($Memory_97844 (|Store__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) (|a#$Global| (|l#$Mutation_102344| $t12@2)) true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) (|a#$Global| (|l#$Mutation_102344| $t12@2)) (|v#$Mutation_102344| $t12@2))))) (and (=> (= (ControlFlow 0 156285) (- 0 213762)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory@0@@0) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory@0@@0) 173345816)) (=> (= $t27 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory@0@@0) 173345816)) (=> (and (= $t28 (|$events#$1_DiemConfig_Configuration| $t27)) (= $t29 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t27)))) (and (=> (= (ControlFlow 0 156285) (- 0 213813)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t28)))
(let ((stream_new (let ((len (|l#Multiset_67195| stream@@2)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29))))
(Multiset_67195 (|Store__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t28 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected) handle@@3)) (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual) handle@@3))) (forall ((v@@37 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected) handle@@3)) v@@37) (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual) handle@@3)) v@@37))
 :qid |DiemConfigandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemConfigandybpl.2554:13|
 :skolemid |70|
)))))) (=> (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t28)))
(let ((stream_new (let ((len (|l#Multiset_67195| stream@@2)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29))))
(Multiset_67195 (|Store__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t28 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected) handle@@4)) (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual) handle@@4))) (forall ((v@@38 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected) handle@@4)) v@@38) (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual) handle@@4)) v@@38))
 :qid |DiemConfigandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemConfigandybpl.2554:13|
 :skolemid |70|
))))) (=> (= (ControlFlow 0 156285) (- 0 213838)) (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t28)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_67195| stream@@3)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29))))
(Multiset_67195 (|Store__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t28 stream_new@@0))))))
 (and (<= (|counter#$EventStore| actual@@0) (|counter#$EventStore| expected@@0)) (forall ((handle@@5 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual@@0) handle@@5)) (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected@@0) handle@@5))) (forall ((v@@39 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual@@0) handle@@5)) v@@39) (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected@@0) handle@@5)) v@@39))
 :qid |DiemConfigandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemConfigandybpl.2554:13|
 :skolemid |70|
)))))))))))))))
(let ((anon28_Then_correct@@0 true))
(let ((|inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1| (|v#$Mutation_89893| $t24@0@@0)) (= $es@0 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1|)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_67195| stream@@4)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@4) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t26@0))))
(Multiset_67195 (|Store__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@4) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t26@0) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1| stream_new@@1)))))) (and (=> (= (ControlFlow 0 156155) 156299) anon28_Then_correct@@0) (=> (= (ControlFlow 0 156155) 156285) anon28_Else_correct@@0)))))
(let ((anon27_Then_correct@@0  (=> $t5@0 (=> (and (and (and (|$IsValid'u64'| 1) (= $t23@0 ($Mutation_12329 (|l#$Mutation_102344| $t12@1) (seq.++ (|p#$Mutation_102344| $t12@1) (seq.unit 0)) (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t12@1))))) (and (= $t23@1 ($Mutation_12329 (|l#$Mutation_12329| $t23@0) (|p#$Mutation_12329| $t23@0) 1)) (= $t12@2 ($Mutation_102344 (|l#$Mutation_102344| $t12@1) (|p#$Mutation_102344| $t12@1) ($1_DiemConfig_Configuration (|v#$Mutation_12329| $t23@1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t12@1)) (|$events#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t12@1))))))) (and (and (= $t24@0@@0 ($Mutation_89893 (|l#$Mutation_102344| $t12@2) (seq.++ (|p#$Mutation_102344| $t12@2) (seq.unit 2)) (|$events#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t12@2)))) (= $t25@0 (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t12@2)))) (and (= $t26@0 ($1_DiemConfig_NewEpochEvent $t25@0)) (= (ControlFlow 0 156161) 156155)))) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$anon0_correct|))))
(let ((anon27_Else_correct@@0 true))
(let ((L5_correct@@0  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t21) (= $t21 1)) (and (= $t21 $t21) (= $t5@0 $t5@0))) (and (=> (= (ControlFlow 0 155998) 156161) anon27_Then_correct@@0) (=> (= (ControlFlow 0 155998) 156014) anon27_Else_correct@@0))))))
(let ((anon26_Else_correct@@0  (=> (and (and (not $t15@0@@0) (= false false)) (and (= $t5@0 false) (= (ControlFlow 0 155968) 155998))) L5_correct@@0)))
(let ((anon26_Then_correct@@0  (=> $t15@0@@0 (=> (and (= $t16@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t12@1))) (|$IsValid'u64'| 0)) (=> (and (and (= $t18@0@@0 (= $t16@0 0)) (= $t18@0@@0 $t18@0@@0)) (and (= $t5@0 $t18@0@@0) (= (ControlFlow 0 156329) 155998))) L5_correct@@0)))))
(let ((anon25_Else_correct@@0  (=> (and (not $abort_flag@0@@1) (= |$temp_0'$1_DiemConfig_Configuration'@0| (|v#$Mutation_102344| $t12@1))) (=> (and (and (= |$temp_0'$1_DiemConfig_Configuration'@0| |$temp_0'$1_DiemConfig_Configuration'@0|) (= $t13@0 (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t12@1)))) (and (|$IsValid'u64'| 0) (= $t15@0@@0 (= $t13@0 0)))) (and (=> (= (ControlFlow 0 155948) 156329) anon26_Then_correct@@0) (=> (= (ControlFlow 0 155948) 155968) anon26_Else_correct@@0))))))
(let ((anon25_Then_correct@@0 true))
(let ((anon24_Then$1_correct  (=> (= $t12@1 $t12@@0) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 156395) 156343) anon25_Then_correct@@0) (=> (= (ControlFlow 0 156395) 155948) anon25_Else_correct@@0))))))
(let ((anon24_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= (ControlFlow 0 156393) 156395)) anon24_Then$1_correct)))
(let ((anon24_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816) (=> (and (and (= $t12@0 ($Mutation_102344 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816))) (= $t12@1 $t12@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 155910) 156343) anon25_Then_correct@@0) (=> (= (ControlFlow 0 155910) 155948) anon25_Else_correct@@0))))))
(let ((anon23_Else_correct@@0  (=> (not false) (and (=> (= (ControlFlow 0 155888) 156393) anon24_Then_correct@@1) (=> (= (ControlFlow 0 155888) 155910) anon24_Else_correct@@1)))))
(let ((anon23_Then_correct@@0 true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 155874) 156409) anon23_Then_correct@@0) (=> (= (ControlFlow 0 155874) 155888) anon23_Else_correct@@0)))))
(let ((anon22_Then_correct@@0  (=> (and $t8@0 (= (ControlFlow 0 155880) 155874)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct)))
(let ((anon22_Else_correct@@0 true))
(let ((anon21_Else_correct@@0  (=> (not false) (=> (and (= $t8@0 (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t10@@1) (= $t10@@1 5)) (and (= $t10@@1 $t10@@1) (= $t8@0 $t8@0))) (and (=> (= (ControlFlow 0 155785) 155880) anon22_Then_correct@@0) (=> (= (ControlFlow 0 155785) 155801) anon22_Else_correct@@0)))))))
(let ((anon21_Then_correct@@0 true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@1  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 155737) 156423) anon21_Then_correct@@0) (=> (= (ControlFlow 0 155737) 155785) anon21_Else_correct@@0)))))
(let ((anon0$1_correct@@1  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) $a_0@@2)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@2))
 :qid |DiemConfigandybpl.5272:20|
 :skolemid |129|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) $a_0@@2))
)) (= (ControlFlow 0 155743) 155737)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@1))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_67195| stream@@5) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@5) v@@40) 0)
 :qid |DiemConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 155626) 155743)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (seq.len (|p#$Mutation_102344| $t0)) 0) (=> (and (and (= (seq.len (|p#$Mutation_102344| $t12@@0)) 0) (= (seq.len (|p#$Mutation_12329| $t23@@0)) 0)) (and (= (seq.len (|p#$Mutation_89893| $t24@@0)) 0) (= (ControlFlow 0 155636) 155626))) inline$$InitEventStore$0$anon0_correct@@1))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 213040) 155636) anon0_correct@@1)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_enable_reconfiguration$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 213870) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t9@0 () |T@#0|)
(declare-fun $t8@1 () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|T@[Int]$1_DiemConfig_DiemConfig'#0'| Int) |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t4@0@@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t8 () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t8@0@@0 () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t5@0@@0 () Bool)
(declare-fun $t7 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_get$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 214624) (let ((anon15_Else_correct  (=> (not $abort_flag@0@@2) (=> (and (= $t9@0 (|$payload#$1_DiemConfig_DiemConfig'#0'| $t8@1)) (= $t9@0 $t9@0)) (and (=> (= (ControlFlow 0 157808) (- 0 214958)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 157808) (- 0 214970)) (= $t9@0 (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'#0'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) addr)))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 157746) (- 0 214909)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (=> (= (ControlFlow 0 157746) (- 0 214916)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (= 5 $t4@0@@0)))))))
(let ((anon15_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t4@0@@0 $abort_code@1@@2) (= (ControlFlow 0 157822) 157746))) L3_correct@@0)))
(let ((anon14_Then$1_correct  (=> (= $t8@1 $t8) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 157874) 157822) anon15_Then_correct) (=> (= (ControlFlow 0 157874) 157808) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (= (ControlFlow 0 157872) 157874)) anon14_Then$1_correct)))
(let ((anon14_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (=> (and (and (= $t8@0@@0 (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (= $t8@1 $t8@0@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 157764) 157822) anon15_Then_correct) (=> (= (ControlFlow 0 157764) 157808) anon15_Else_correct))))))
(let ((anon13_Then_correct  (=> $t5@0@@0 (and (=> (= (ControlFlow 0 157750) 157872) anon14_Then_correct) (=> (= (ControlFlow 0 157750) 157764) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (and (and (not $t5@0@@0) (= $t7 $t7)) (and (= $t4@0@@0 $t7) (= (ControlFlow 0 157714) 157746))) L3_correct@@0)))
(let ((anon12_Else_correct  (=> (and (and (and (not false) (= 173345816 173345816)) (and (= $t5@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t7) (= $t7 5)) (and (= $t7 $t7) (= $t5@0@@0 $t5@0@@0)))) (and (=> (= (ControlFlow 0 157698) 157750) anon13_Then_correct) (=> (= (ControlFlow 0 157698) 157714) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@2  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 157642) 157888) anon12_Then_correct) (=> (= (ControlFlow 0 157642) 157698) anon12_Else_correct)))))
(let ((anon0$1_correct@@2  (=> (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemConfig_DiemConfig'#0''| $rsc@@3))
 :qid |DiemConfigandybpl.5833:20|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) $a_0@@3))
)) (= (ControlFlow 0 157648) 157642)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@2)))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_67195| stream@@6) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@6) v@@41) 0)
 :qid |DiemConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 157537) 157648)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 214624) 157537) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory| () T@$Memory_100671)
(declare-fun _$t0@@1 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_98777)
(declare-fun $t5@@0 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1| () T@$Memory_100671)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@2| () T@$Memory_96890)
(declare-fun _$t1@@0 () |T@#0|)
(declare-fun $t9@0@@0 () Int)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@0| () T@$Memory_100671)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| Int |T@$1_DiemConfig_ModifyConfigCapability'#0'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| Int) |T@$1_DiemConfig_ModifyConfigCapability'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'#0'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@0 () |T@$1_DiemConfig_ModifyConfigCapability'#0'|)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@0 () Int)
(declare-fun $t11@0@@0 () Bool)
(declare-fun $t10@@2 () Int)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@1| () T@$Memory_96890)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@0| () T@$Memory_96890)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|T@[Int]$1_DiemConfig_DiemConfig'#0'| Int |T@$1_DiemConfig_DiemConfig'#0'|) |T@[Int]$1_DiemConfig_DiemConfig'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'#0'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'#0''@0| () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t8@@0 () Bool)
(declare-fun $t6 () Int)
(declare-fun $t9@@0 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$modifies| () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_publish_new_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 214989) (let ((anon19_Else_correct@@0  (=> (not $abort_flag@0@@3) (and (=> (= (ControlFlow 0 158611) (- 0 215743)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 158611) (- 0 215751)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) _$t0@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) _$t0@@1)) (and (=> (= (ControlFlow 0 158611) (- 0 215762)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t5@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 158611) (- 0 215774)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t5@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t5@@0)) 0))) (and (=> (= (ControlFlow 0 158611) (- 0 215792)) (not (not (= _$t0@@1 173345816)))) (=> (not (not (= _$t0@@1 173345816))) (and (=> (= (ControlFlow 0 158611) (- 0 215806)) (|Select__T@[Int]Bool_| (|domain#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1|) _$t0@@1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1|) _$t0@@1) (and (=> (= (ControlFlow 0 158611) (- 0 215815)) (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 158611) (- 0 215821)) (= (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'#0'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) addr@@0))) _$t1@@0)) (=> (= (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'#0'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) addr@@0))) _$t1@@0) (=> (= (ControlFlow 0 158611) (- 0 215830)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816))))))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 158471) (- 0 215616)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) _$t0@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t5@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t5@@0)) 0))) (not (= _$t0@@1 173345816)))) (=> (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) _$t0@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t5@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t5@@0)) 0))) (not (= _$t0@@1 173345816))) (=> (= (ControlFlow 0 158471) (- 0 215662)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) _$t0@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t5@@0)) (= 5 $t9@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t5@@0)) 0)) (= 3 $t9@0@@0))) (and (not (= _$t0@@1 173345816)) (= 2 $t9@0@@0))))))))
(let ((anon19_Then_correct@@0  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t9@0@@0 $abort_code@1@@3) (= (ControlFlow 0 158625) 158471))) L3_correct@@1)))
(let ((anon18_Then$1_correct  (=> (= |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 158675) 158625) anon19_Then_correct@@0) (=> (= (ControlFlow 0 158675) 158611) anon19_Else_correct@@0))))))
(let ((anon18_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) _$t0@@1) (= (ControlFlow 0 158673) 158675)) anon18_Then$1_correct)))
(let ((anon18_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) _$t0@@1)) (=> (and (and (= |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@0| ($Memory_100671 (|Store__T@[Int]Bool_| (|domain#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) _$t0@@1 true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|contents#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) _$t0@@1 $t7@@0))) (= |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@0|)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 158499) 158625) anon19_Then_correct@@0) (=> (= (ControlFlow 0 158499) 158611) anon19_Else_correct@@0))))))
(let ((anon17_Then_correct  (=> inline$$Not$0$dst@1@@0 (and (=> (= (ControlFlow 0 158481) (- 0 215505)) (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'#0'_$modifies| _$t0@@1)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'#0'_$modifies| _$t0@@1) (and (=> (= (ControlFlow 0 158481) 158673) anon18_Then_correct@@0) (=> (= (ControlFlow 0 158481) 158499) anon18_Else_correct@@0)))))))
(let ((anon17_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t14@@0 $t14@@0)) (and (= $t9@0@@0 $t14@@0) (= (ControlFlow 0 158335) 158471))) L3_correct@@1)))
(let ((anon5$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t14@@0) (= $t14@@0 6)) (and (= $t14@@0 $t14@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 158319) 158481) anon17_Then_correct) (=> (= (ControlFlow 0 158319) 158335) anon17_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t11@0@@0)) (= (ControlFlow 0 158279) 158319)) anon5$1_correct)))
(let ((anon5_correct  (=> (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| $t7@@0) (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) 173345816) (= (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'#0'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) addr@@1))) _$t1@@0)) (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t7@@0 $t7@@0))) (and (and (|$IsValid'address'| $t10@@2) (= $t10@@2 _$t0@@1)) (and (= $t11@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) $t10@@2)) (= (ControlFlow 0 158285) 158279)))) inline$$Not$0$anon0_correct@@0))))
(let ((anon16_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= |$1_DiemConfig_DiemConfig'#0'_$memory@1| ($Memory_96890 (|Store__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816 false) (|contents#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'#0'_$memory@2| |$1_DiemConfig_DiemConfig'#0'_$memory@1|) (= (ControlFlow 0 158195) 158285))) anon5_correct)))
(let ((anon16_Then_correct  (=> (and (and |$temp_0'bool'@0| (= |$1_DiemConfig_DiemConfig'#0'_$memory@0| ($Memory_96890 (|Store__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'#0''@0|)))) (and (= |$1_DiemConfig_DiemConfig'#0'_$memory@2| |$1_DiemConfig_DiemConfig'#0'_$memory@0|) (= (ControlFlow 0 158687) 158285))) anon5_correct)))
(let ((anon15_Else_correct@@0  (=> (not $t8@@0) (and (=> (= (ControlFlow 0 158183) 158687) anon16_Then_correct) (=> (= (ControlFlow 0 158183) 158195) anon16_Else_correct)))))
(let ((anon15_Then_correct@@0  (=> $t8@@0 (=> (and (and (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t6)) (= 5 $t9@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t6)) 0)) (= 3 $t9@@0))) (and (not (= _$t0@@1 173345816)) (= 2 $t9@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (= 6 $t9@@0))) (= $t9@@0 $t9@@0)) (and (= $t9@0@@0 $t9@@0) (= (ControlFlow 0 158775) 158471))) L3_correct@@1))))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'address'| _$t0@@1) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |DiemConfigandybpl.6004:20|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $a_0@@4))
))) (=> (and (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) $a_0@@5)))
(|$IsValid'$1_DiemConfig_DiemConfig'#0''| $rsc@@5))
 :qid |DiemConfigandybpl.6008:20|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|contents#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) $a_0@@6)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| $rsc@@6))
 :qid |DiemConfigandybpl.6012:20|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|contents#$Memory_100671| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) $a_0@@6))
))) (and (= $t5@@0 _$t0@@1) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'#0'_$modifies| 173345816))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'#0'_$modifies| 173345816) (= _$t0@@1 _$t0@@1)) (and (= _$t1@@0 _$t1@@0) (= $t6 _$t0@@1)))) (and (=> (= (ControlFlow 0 158175) (- 0 215208)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'#0'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'#0'_$modifies| 173345816) (=> (= $t8@@0  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= _$t0@@1 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_96890| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 158175) 158775) anon15_Then_correct@@0) (=> (= (ControlFlow 0 158175) 158183) anon15_Else_correct@@0)))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_67195| stream@@7) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@7) v@@42) 0)
 :qid |DiemConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 157971) 158175)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 214989) 157971) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_reconfiguration_enabled$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 215847) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t1 () Int)
(declare-fun _$t0@@2 () Int)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_99492)
(declare-fun $t2 () T@$1_DiemConfig_Configuration)
(declare-fun $t3@@1 () Int)
(declare-fun $t6@@0 () Int)
(declare-fun $t15@@0 () Bool)
(declare-fun $t11@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t8@@1 () Int)
(declare-fun $t12@@1 () Int)
(declare-fun $t5@@1 () Bool)
(declare-fun $t4@@0 () Int)
(declare-fun $t16 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_97844)
(declare-fun $t17 () Int)
(declare-fun $t18 () T@$1_DiemConfig_Configuration)
(declare-fun $t19 () Int)
(declare-fun $t20@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t7@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t21@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t22 () T@$1_Event_EventHandle)
(declare-fun $t14@@1 () T@$1_Event_EventHandle)
(declare-fun $t23@@1 () Bool)
(declare-fun $t13 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@0 () T@$Memory_97844)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@1 () T@$Memory_97844)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@3 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@0 () |T@[Int]Bool|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_reconfigure$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 216012) (let ((L2_correct  (and (=> (= (ControlFlow 0 160157) (- 0 216978)) (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t1)) 0))) (not (= _$t0@@2 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t2) 18446744073709551615)) (< $t3@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t2))))) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t1)) 0))) (not (= _$t0@@2 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t2) 18446744073709551615)) (< $t3@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t2)))) (=> (= (ControlFlow 0 160157) (- 0 217050)) (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t1)) (= 5 $t6@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t1)) 0)) (= 3 $t6@@0))) (and (not (= _$t0@@2 173345816)) (= 2 $t6@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t2) 18446744073709551615)) (< $t3@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t2))) (= 1 $t6@@0))))))))
(let ((anon10_Then_correct  (=> $t15@@0 (=> (and (and (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@0) $t8@@1)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t11@@0) 18446744073709551615)) (< $t12@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@0)))) (= 1 $t6@@0)) (and (= $t6@@0 $t6@@0) (= (ControlFlow 0 159961) 160157))) L2_correct))))
(let ((anon9_Then_correct  (=> (and (and $t5@@1 (or (or (or (and (not (= _$t0@@2 173345816)) (= 2 $t6@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t4@@0)) (= 5 $t6@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t4@@0)) 0)) (= 3 $t6@@0))) (and (not (= _$t0@@2 173345816)) (= 2 $t6@@0)))) (and (= $t6@@0 $t6@@0) (= (ControlFlow 0 160249) 160157))) L2_correct)))
(let ((anon7_correct  (=> (and (and (= $t16 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory@2) 173345816)) (= $t17 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t18 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory@2) 173345816)) (= $t19 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (and (and (and (= $t20@@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t18))) (= (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@1) $t8@@1)) (= $t16 $t7@@1)) (=> (not (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@1) $t8@@1))) (= $t16 ($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t7@@1) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@1) (|$events#$1_DiemConfig_Configuration| $t7@@1))) $t17 (|$events#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t7@@1) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@1) (|$events#$1_DiemConfig_Configuration| $t7@@1)))))))) (and (and (= $t21@@0 $t20@@0) (= $t22 $t14@@1)) (and (= $t23@@1  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t19 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t13))))) (= $es@0@@0 (ite $t23@@1 (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) $t22)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_67195| stream@@8)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@8) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t21@@0))))
(Multiset_67195 (|Store__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@8) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t21@@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) $t22 stream_new@@2)))) $es))))) (and (=> (= (ControlFlow 0 159869) (- 0 216892)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t1))) (and (=> (= (ControlFlow 0 159869) (- 0 216904)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t1)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t1)) 0))) (and (=> (= (ControlFlow 0 159869) (- 0 216922)) (not (not (= _$t0@@2 173345816)))) (=> (not (not (= _$t0@@2 173345816))) (=> (= (ControlFlow 0 159869) (- 0 216936)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t2) 18446744073709551615)) (< $t3@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t2)))))))))))))))
(let ((anon11_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_DiemConfig_Configuration_$memory@1@@0 ($Memory_97844 (|Store__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1@@0) (= (ControlFlow 0 159597) 159869))) anon7_correct)))
(let ((anon11_Then_correct  (=> (and (and |$temp_0'bool'@0@@0| (= $1_DiemConfig_Configuration_$memory@0@@1 ($Memory_97844 (|Store__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0@@0|)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0@@1) (= (ControlFlow 0 159881) 159869))) anon7_correct)))
(let ((anon10_Else_correct  (=> (not $t15@@0) (and (=> (= (ControlFlow 0 159585) 159881) anon11_Then_correct) (=> (= (ControlFlow 0 159585) 159597) anon11_Else_correct)))))
(let ((anon9_Else_correct  (=> (not $t5@@1) (=> (and (and (and (= $t7@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t8@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t9@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t10@@3 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (and (= $t11@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t12@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t13 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t14@@1 (|$events#$1_DiemConfig_Configuration| $t13))))) (and (=> (= (ControlFlow 0 159577) (- 0 216496)) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@0 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@0 173345816) (=> (= $t15@@0  (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@0) $t8@@1)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t11@@0) 18446744073709551615)) (< $t12@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@0))))) (and (=> (= (ControlFlow 0 159577) 159961) anon10_Then_correct) (=> (= (ControlFlow 0 159577) 159585) anon10_Else_correct)))))))))
(let ((anon0$1_correct@@4  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (|$IsValid'address'| _$t0@@2) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@7)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@7))
 :qid |DiemConfigandybpl.6427:20|
 :skolemid |137|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@7))
))) (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |DiemConfigandybpl.6431:20|
 :skolemid |138|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) $a_0@@9)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@9))
 :qid |DiemConfigandybpl.6435:20|
 :skolemid |139|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) $a_0@@9))
)))) (=> (and (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@10)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@10))
 :qid |DiemConfigandybpl.6439:20|
 :skolemid |140|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@10))
)) (= $t1 _$t0@@2)) (and (= $t2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t3@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (and (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@0 173345816) (= _$t0@@2 _$t0@@2)) (and (= $t4@@0 _$t0@@2) (= $t5@@1  (or (or (or (not (= _$t0@@2 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_98777| $1_Roles_RoleId_$memory) $t4@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_98777| $1_Roles_RoleId_$memory) $t4@@0)) 0))) (not (= _$t0@@2 173345816))))))) (and (=> (= (ControlFlow 0 159409) 160249) anon9_Then_correct) (=> (= (ControlFlow 0 159409) 159577) anon9_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_67195| stream@@9) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@9) v@@43) 0)
 :qid |DiemConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 159161) 159409)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 216012) 159161) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t42 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@1 () T@$Memory_97844)
(declare-fun $t43 () Int)
(declare-fun $t44 () T@$1_DiemConfig_Configuration)
(declare-fun $t45 () Int)
(declare-fun $t46 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t8@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t7@@2 () Int)
(declare-fun $t9@@2 () Int)
(declare-fun $t10@@4 () T@$1_DiemConfig_Configuration)
(declare-fun $t11@@1 () Int)
(declare-fun $t6@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $t12@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t13@@0 () T@$1_Event_EventHandle)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@2 () T@$Memory_97844)
(declare-fun $t25@3 () T@$Mutation_102344)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun $t29@0 () Bool)
(declare-fun $t3@0 () Bool)
(declare-fun $t15@0@@1 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t39@0 () T@$Mutation_89893)
(declare-fun $t41@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t38@0 () T@$Mutation_12329)
(declare-fun $t25@2 () T@$Mutation_102344)
(declare-fun $t38@1 () T@$Mutation_12329)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t40@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t35@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t34@0 () T@$Mutation_12329)
(declare-fun $t25@1 () T@$Mutation_102344)
(declare-fun $t34@1 () T@$Mutation_12329)
(declare-fun $t26 () Int)
(declare-fun $t33 () Int)
(declare-fun $t30@0 () Int)
(declare-fun $t27@@0 () Bool)
(declare-fun $t28@0 () Int)
(declare-fun $t15@@1 () Int)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@1| () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@0 () T@$Mutation_102344)
(declare-fun $t25@0@@0 () T@$Mutation_102344)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $1_DiemConfig_Configuration_$modifies@@1 () |T@[Int]Bool|)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$1_DiemConfig_reconfiguration_enabled$0$$ret0@1 () Bool)
(declare-fun $t2@0 () Bool)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun inline$$1_DiemConfig_reconfiguration_enabled$0$$t2@1 () Bool)
(declare-fun inline$$1_DiemConfig_reconfiguration_enabled$0$$ret0@0 () Bool)
(declare-fun $t18@@0 () Bool)
(declare-fun $t17@@0 () Int)
(declare-fun $t20@0 () Bool)
(declare-fun inline$$1_DiemTimestamp_is_genesis$0$$ret0@1 () Bool)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun inline$$1_DiemTimestamp_is_genesis$0$$t2@1 () Bool)
(declare-fun $t0@@0 () T@$Mutation_102344)
(declare-fun $t34 () T@$Mutation_12329)
(declare-fun $t38 () T@$Mutation_12329)
(declare-fun $t39 () T@$Mutation_89893)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_reconfigure_$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 217167) (let ((L16_correct  (=> (= $t42 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory@1@@1) 173345816)) (=> (and (and (= $t43 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t44 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory@1@@1) 173345816))) (and (= $t45 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t46 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t44))))) (and (=> (= (ControlFlow 0 162678) (- 0 219100)) (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2) $t7@@2)) (< $t9@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2))))) (=> (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2) $t7@@2)) (< $t9@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2)))) (and (=> (= (ControlFlow 0 162678) (- 0 219131)) (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2) $t7@@2)) (and (= (|$epoch#$1_DiemConfig_Configuration| $t8@@2) 18446744073709551615) (not (= $t9@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2))))))) (=> (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2) $t7@@2)) (and (= (|$epoch#$1_DiemConfig_Configuration| $t8@@2) 18446744073709551615) (not (= $t9@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2)))))) (and (=> (= (ControlFlow 0 162678) (- 0 219174)) (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@4) $t7@@2)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t10@@4) 18446744073709551615)) (< $t11@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@4)))))) (=> (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@4) $t7@@2)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t10@@4) 18446744073709551615)) (< $t11@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@4))))) (and (=> (= (ControlFlow 0 162678) (- 0 219234)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory@1@@1) 173345816))) (=> (= (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory@1@@1) 173345816)) (and (=> (= (ControlFlow 0 162678) (- 0 219245)) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@1) $t7@@2)) (= $t42 $t6@@1))) (=> (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@1) $t7@@2)) (= $t42 $t6@@1)) (and (=> (= (ControlFlow 0 162678) (- 0 219272)) (=> (not (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@1) $t7@@2))) (= $t42 ($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t6@@1) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@1) (|$events#$1_DiemConfig_Configuration| $t6@@1))) $t43 (|$events#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t6@@1) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@1) (|$events#$1_DiemConfig_Configuration| $t6@@1))))))) (=> (=> (not (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@1) $t7@@2))) (= $t42 ($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t6@@1) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@1) (|$events#$1_DiemConfig_Configuration| $t6@@1))) $t43 (|$events#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t6@@1) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@1) (|$events#$1_DiemConfig_Configuration| $t6@@1)))))) (and (=> (= (ControlFlow 0 162678) (- 0 219315)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t12@@2)))) (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_67195| stream@@10)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46))))
(Multiset_67195 (|Store__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@3)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@10 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected@@1) handle@@10)) (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual@@1) handle@@10))) (forall ((v@@44 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected@@1) handle@@10)) v@@44) (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual@@1) handle@@10)) v@@44))
 :qid |DiemConfigandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemConfigandybpl.2554:13|
 :skolemid |70|
)))))) (=> (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t12@@2)))) (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_67195| stream@@10)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46))))
(Multiset_67195 (|Store__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@3)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@11 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected@@1) handle@@11)) (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual@@1) handle@@11))) (forall ((v@@45 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected@@1) handle@@11)) v@@45) (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual@@1) handle@@11)) v@@45))
 :qid |DiemConfigandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemConfigandybpl.2554:13|
 :skolemid |70|
))))) (=> (= (ControlFlow 0 162678) (- 0 219360)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t12@@2)))) (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_67195| stream@@11)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46))))
(Multiset_67195 (|Store__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@4)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@2) (|counter#$EventStore| expected@@2)) (forall ((handle@@12 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual@@2) handle@@12)) (|l#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected@@2) handle@@12))) (forall ((v@@46 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| actual@@2) handle@@12)) v@@46) (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| expected@@2) handle@@12)) v@@46))
 :qid |DiemConfigandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemConfigandybpl.2554:13|
 :skolemid |70|
))))))))))))))))))))))))
(let ((anon50_Else_correct  (=> (and (not $abort_flag@4) (= $1_DiemConfig_Configuration_$memory@0@@2 ($Memory_97844 (|Store__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) (|a#$Global| (|l#$Mutation_102344| $t25@3)) true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) (|a#$Global| (|l#$Mutation_102344| $t25@3)) (|v#$Mutation_102344| $t25@3))))) (and (=> (= (ControlFlow 0 162304) (- 0 218998)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory@0@@2) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory@0@@2) 173345816)) (=> (= $es@1 $es@0@@1) (=> (and (= $1_DiemConfig_Configuration_$memory@1@@1 $1_DiemConfig_Configuration_$memory@0@@2) (= (ControlFlow 0 162304) 162678)) L16_correct)))))))
(let ((anon47_Then_correct  (=> (and (and $t29@0 (= $es@1 $es)) (and (= $1_DiemConfig_Configuration_$memory@1@@1 $1_DiemConfig_Configuration_$memory) (= (ControlFlow 0 162710) 162678))) L16_correct)))
(let ((anon42_Then_correct  (=> (and (and $t3@0 (= $es@1 $es)) (and (= $1_DiemConfig_Configuration_$memory@1@@1 $1_DiemConfig_Configuration_$memory) (= (ControlFlow 0 162820) 162678))) L16_correct)))
(let ((L17_correct  (and (=> (= (ControlFlow 0 161922) (- 0 218702)) (or (or (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2) $t7@@2)) (< $t9@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2))) (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2) $t7@@2)) (and (= (|$epoch#$1_DiemConfig_Configuration| $t8@@2) 18446744073709551615) (not (= $t9@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2)))))) (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@4) $t7@@2)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t10@@4) 18446744073709551615)) (< $t11@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@4)))))) (=> (or (or (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2) $t7@@2)) (< $t9@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2))) (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2) $t7@@2)) (and (= (|$epoch#$1_DiemConfig_Configuration| $t8@@2) 18446744073709551615) (not (= $t9@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2)))))) (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@4) $t7@@2)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t10@@4) 18446744073709551615)) (< $t11@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@4))))) (=> (= (ControlFlow 0 161922) (- 0 218825)) (or (or (and (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2) $t7@@2)) (< $t9@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2))) (= 1 $t15@0@@1)) (and (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2) $t7@@2)) (and (= (|$epoch#$1_DiemConfig_Configuration| $t8@@2) 18446744073709551615) (not (= $t9@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@2))))) (= (- 0 1) $t15@0@@1))) (and (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@4) $t7@@2)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t10@@4) 18446744073709551615)) (< $t11@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@4)))) (= 1 $t15@0@@1))))))))
(let ((anon50_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@2 $abort_code@2)) (and (= $t15@0@@1 $abort_code@2) (= (ControlFlow 0 162692) 161922))) L17_correct)))
(let ((|inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$anon0_correct@@0|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1@@0| (|v#$Mutation_89893| $t39@0)) (= $es@0@@1 (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1@@0|)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_67195| stream@@12)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@12) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t41@0))))
(Multiset_67195 (|Store__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@12) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t41@0) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1@@0| stream_new@@5)))))) (and (=> (= (ControlFlow 0 162264) 162692) anon50_Then_correct) (=> (= (ControlFlow 0 162264) 162304) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (and (and (and (not $abort_flag@4) (= $t38@0 ($Mutation_12329 (|l#$Mutation_102344| $t25@2) (seq.++ (|p#$Mutation_102344| $t25@2) (seq.unit 0)) (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t25@2))))) (and (= $t38@1 ($Mutation_12329 (|l#$Mutation_12329| $t38@0) (|p#$Mutation_12329| $t38@0) inline$$AddU64$0$dst@2)) (= $t25@3 ($Mutation_102344 (|l#$Mutation_102344| $t25@2) (|p#$Mutation_102344| $t25@2) ($1_DiemConfig_Configuration (|v#$Mutation_12329| $t38@1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t25@2)) (|$events#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t25@2))))))) (and (and (= $t39@0 ($Mutation_89893 (|l#$Mutation_102344| $t25@3) (seq.++ (|p#$Mutation_102344| $t25@3) (seq.unit 2)) (|$events#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t25@3)))) (= $t40@0 (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t25@3)))) (and (= $t41@0 ($1_DiemConfig_NewEpochEvent $t40@0)) (= (ControlFlow 0 162270) 162264)))) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$anon0_correct@@0|)))
(let ((anon49_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@2 $abort_code@2)) (and (= $t15@0@@1 $abort_code@2) (= (ControlFlow 0 162706) 161922))) L17_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@4 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 162119) 162706) anon49_Then_correct) (=> (= (ControlFlow 0 162119) 162270) anon49_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t35@0 1) $MAX_U64) (= (ControlFlow 0 162117) 162119)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t35@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t35@0 1)) (= $abort_code@2 $abort_code@1@@4)) (and (= $abort_flag@4 $abort_flag@3) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 162065) 162706) anon49_Then_correct) (=> (= (ControlFlow 0 162065) 162270) anon49_Else_correct))))))
(let ((anon48_Then_correct  (=> (and inline$$Gt$0$dst@1 (= $t34@0 ($Mutation_12329 (|l#$Mutation_102344| $t25@1) (seq.++ (|p#$Mutation_102344| $t25@1) (seq.unit 1)) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t25@1))))) (=> (and (and (= $t34@1 ($Mutation_12329 (|l#$Mutation_12329| $t34@0) (|p#$Mutation_12329| $t34@0) $t26)) (= $t25@2 ($Mutation_102344 (|l#$Mutation_102344| $t25@1) (|p#$Mutation_102344| $t25@1) ($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t25@1)) (|v#$Mutation_12329| $t34@1) (|$events#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t25@1)))))) (and (= $t35@0 (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t25@2))) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 162125) 162117) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 162125) 162065) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon48_Else_correct  (=> (and (and (not inline$$Gt$0$dst@1) (= $t33 $t33)) (and (= $t15@0@@1 $t33) (= (ControlFlow 0 161624) 161922))) L17_correct)))
(let ((anon47_Else$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (and (|$IsValid'u64'| $t33) (= $t33 1)) (and (= $t33 $t33) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 161608) 162125) anon48_Then_correct) (=> (= (ControlFlow 0 161608) 161624) anon48_Else_correct))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> $t26 $t30@0)) (= (ControlFlow 0 161572) 161608)) anon47_Else$1_correct)))
(let ((anon47_Else_correct  (=> (not $t29@0) (=> (and (= $t30@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t25@1))) (= (ControlFlow 0 161578) 161572)) inline$$Gt$0$anon0_correct))))
(let ((anon46_Else_correct  (=> (and (not $t27@@0) (|$IsValid'u64'| $t26)) (=> (and (and (= $t26 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t26 $t26)) (and (= $t28@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_102344| $t25@1))) (= $t29@0 (= $t26 $t28@0)))) (and (=> (= (ControlFlow 0 161520) 162710) anon47_Then_correct) (=> (= (ControlFlow 0 161520) 161578) anon47_Else_correct))))))
(let ((anon46_Then_correct  (=> $t27@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@1)) (= $t15@@1 $t15@@1)) (and (= $t15@0@@1 $t15@@1) (= (ControlFlow 0 162736) 161922))) L17_correct))))
(let ((anon45_Else_correct  (=> (and (and (not $abort_flag@3) (= |$temp_0'$1_DiemConfig_Configuration'@0@@1| (|v#$Mutation_102344| $t25@1))) (and (= |$temp_0'$1_DiemConfig_Configuration'@0@@1| |$temp_0'$1_DiemConfig_Configuration'@0@@1|) (= $t27@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 161482) 162736) anon46_Then_correct) (=> (= (ControlFlow 0 161482) 161520) anon46_Else_correct)))))
(let ((anon45_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t15@0@@1 $abort_code@1@@4) (= (ControlFlow 0 162750) 161922))) L17_correct)))
(let ((anon44_Then$1_correct  (=> (= $t25@1 $t25@@0) (=> (and (= $abort_code@1@@4 $EXEC_FAILURE_CODE) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 162802) 162750) anon45_Then_correct) (=> (= (ControlFlow 0 162802) 161482) anon45_Else_correct))))))
(let ((anon44_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= (ControlFlow 0 162800) 162802)) anon44_Then$1_correct)))
(let ((anon44_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816) (=> (and (and (= $t25@0@@0 ($Mutation_102344 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816))) (= $t25@1 $t25@0@@0)) (and (= $abort_code@1@@4 $abort_code@0@@4) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 161452) 162750) anon45_Then_correct) (=> (= (ControlFlow 0 161452) 161482) anon45_Else_correct))))))
(let ((anon43_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 161430) (- 0 218105)) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@1 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@1 173345816) (and (=> (= (ControlFlow 0 161430) 162800) anon44_Then_correct) (=> (= (ControlFlow 0 161430) 161452) anon44_Else_correct)))))))
(let ((anon43_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@0@@4 $abort_code@0@@4)) (and (= $t15@0@@1 $abort_code@0@@4) (= (ControlFlow 0 162816) 161922))) L17_correct)))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$2$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 161410) 162816) anon43_Then_correct) (=> (= (ControlFlow 0 161410) 161430) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (and (not $t3@0) (= (ControlFlow 0 161416) 161410)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$2$anon0_correct)))
(let ((anon41_Else$1_correct  (=> (= inline$$Not$2$dst@1 inline$$Not$2$dst@1) (=> (and (= $abort_flag@2 $abort_flag@1) (= $t3@0 inline$$Not$2$dst@1)) (and (=> (= (ControlFlow 0 161339) 162820) anon42_Then_correct) (=> (= (ControlFlow 0 161339) 161416) anon42_Else_correct))))))
(let ((inline$$Not$2$anon0_correct  (=> (and (= inline$$Not$2$dst@1  (not inline$$1_DiemConfig_reconfiguration_enabled$0$$ret0@1)) (= (ControlFlow 0 161323) 161339)) anon41_Else$1_correct)))
(let ((anon41_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 161329) 161323)) inline$$Not$2$anon0_correct)))
(let ((anon40_Then_correct  (=> (and (and $t2@0 (= true true)) (and (= $abort_flag@2 $abort_flag@0@@4) (= $t3@0 true))) (and (=> (= (ControlFlow 0 162852) 162820) anon42_Then_correct) (=> (= (ControlFlow 0 162852) 161416) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@0@@4 $abort_code@0@@4)) (and (= $t15@0@@1 $abort_code@0@@4) (= (ControlFlow 0 162834) 161922))) L17_correct)))
(let ((inline$$1_DiemConfig_reconfiguration_enabled$0$anon3_Else$1_correct  (=> (= inline$$Not$1$dst@1 inline$$Not$1$dst@1) (=> (and (= $abort_flag@1 $abort_flag@0@@4) (= inline$$1_DiemConfig_reconfiguration_enabled$0$$ret0@1 inline$$Not$1$dst@1)) (and (=> (= (ControlFlow 0 161261) 162834) anon41_Then_correct) (=> (= (ControlFlow 0 161261) 161329) anon41_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not inline$$1_DiemConfig_reconfiguration_enabled$0$$t2@1)) (= (ControlFlow 0 161243) 161261)) inline$$1_DiemConfig_reconfiguration_enabled$0$anon3_Else$1_correct)))
(let ((inline$$1_DiemConfig_reconfiguration_enabled$0$anon3_Else_correct  (=> (not $abort_flag@0@@4) (=> (and (= inline$$1_DiemConfig_reconfiguration_enabled$0$$t2@1 (|Select__T@[Int]Bool_| (|domain#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)) (= (ControlFlow 0 161249) 161243)) inline$$Not$1$anon0_correct))))
(let ((inline$$1_DiemConfig_reconfiguration_enabled$0$anon3_Then_correct  (=> (and (and $abort_flag@0@@4 (= $abort_code@0@@4 $abort_code@0@@4)) (and (= $abort_flag@1 true) (= inline$$1_DiemConfig_reconfiguration_enabled$0$$ret0@1 inline$$1_DiemConfig_reconfiguration_enabled$0$$ret0@0))) (and (=> (= (ControlFlow 0 161279) 162834) anon41_Then_correct) (=> (= (ControlFlow 0 161279) 161329) anon41_Else_correct)))))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct@@0  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 161193) 161279) inline$$1_DiemConfig_reconfiguration_enabled$0$anon3_Then_correct) (=> (= (ControlFlow 0 161193) 161249) inline$$1_DiemConfig_reconfiguration_enabled$0$anon3_Else_correct)))))
(let ((inline$$1_DiemConfig_reconfiguration_enabled$0$anon0_correct  (=> (= (ControlFlow 0 161199) 161193) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct@@0)))
(let ((anon40_Else_correct  (=> (and (not $t2@0) (= (ControlFlow 0 161285) 161199)) inline$$1_DiemConfig_reconfiguration_enabled$0$anon0_correct)))
(let ((anon39_Else_correct  (=> (not $t18@@0) (=> (and (|$IsValid'u64'| $t17@@0) (= $t17@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (|$IsValid'u64'| 0) (= $t20@0 (= $t17@@0 0))) (and (= $t20@0 $t20@0) (= $t2@0 $t20@0))) (and (=> (= (ControlFlow 0 161009) 162852) anon40_Then_correct) (=> (= (ControlFlow 0 161009) 161285) anon40_Else_correct)))))))
(let ((anon38_Then_correct  (=> inline$$1_DiemTimestamp_is_genesis$0$$ret0@1 (=> (and (= true true) (= $t2@0 true)) (and (=> (= (ControlFlow 0 162896) 162852) anon40_Then_correct) (=> (= (ControlFlow 0 162896) 161285) anon40_Else_correct))))))
(let ((anon39_Then_correct  (=> $t18@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@1)) (= $t15@@1 $t15@@1)) (and (= $t15@0@@1 $t15@@1) (= (ControlFlow 0 162878) 161922))) L17_correct))))
(let ((anon38_Else_correct  (=> (and (not inline$$1_DiemTimestamp_is_genesis$0$$ret0@1) (= $t18@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 160971) 162878) anon39_Then_correct) (=> (= (ControlFlow 0 160971) 161009) anon39_Else_correct)))))
(let ((anon37_Else_correct  (=> (not $abort_flag@0@@4) (and (=> (= (ControlFlow 0 160955) 162896) anon38_Then_correct) (=> (= (ControlFlow 0 160955) 160971) anon38_Else_correct)))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@0@@4 (= $abort_code@0@@4 $abort_code@0@@4)) (and (= $t15@0@@1 $abort_code@0@@4) (= (ControlFlow 0 162910) 161922))) L17_correct)))
(let ((inline$$1_DiemTimestamp_is_genesis$0$anon3_Else$1_correct  (=> (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1) (=> (and (= $abort_flag@0@@4 false) (= inline$$1_DiemTimestamp_is_genesis$0$$ret0@1 inline$$Not$0$dst@1@@1)) (and (=> (= (ControlFlow 0 160923) 162910) anon37_Then_correct) (=> (= (ControlFlow 0 160923) 160955) anon37_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not inline$$1_DiemTimestamp_is_genesis$0$$t2@1)) (= (ControlFlow 0 160905) 160923)) inline$$1_DiemTimestamp_is_genesis$0$anon3_Else$1_correct)))
(let ((inline$$1_DiemTimestamp_is_genesis$0$anon3_Else_correct  (=> (not false) (=> (and (= inline$$1_DiemTimestamp_is_genesis$0$$t2@1 (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 160911) 160905)) inline$$Not$0$anon0_correct@@1))))
(let ((inline$$1_DiemTimestamp_is_genesis$0$anon3_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@3  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 160855) 160941) inline$$1_DiemTimestamp_is_genesis$0$anon3_Then_correct) (=> (= (ControlFlow 0 160855) 160911) inline$$1_DiemTimestamp_is_genesis$0$anon3_Else_correct)))))
(let ((inline$$1_DiemTimestamp_is_genesis$0$anon0_correct  (=> (= (ControlFlow 0 160861) 160855) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@3)))
(let ((anon0$1_correct@@5  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@11))
 :qid |DiemConfigandybpl.6753:20|
 :skolemid |141|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11))
))) (=> (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) $a_0@@12)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@12))
 :qid |DiemConfigandybpl.6757:20|
 :skolemid |142|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@13)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@13))
 :qid |DiemConfigandybpl.6761:20|
 :skolemid |143|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_99492| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@13))
))) (and (= $t6@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t7@@2 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (and (and (and (= $t8@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t9@@2 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t10@@4 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t11@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_96133| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (and (= $t12@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_97844| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t13@@0 (|$events#$1_DiemConfig_Configuration| $t12@@2))) (and (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@1 173345816) (= (ControlFlow 0 160947) 160861)))) inline$$1_DiemTimestamp_is_genesis$0$anon0_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_67195_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_67195| stream@@13) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67195| stream@@13) v@@47) 0)
 :qid |DiemConfigandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemConfigandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 160473) 160947)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (and (= (seq.len (|p#$Mutation_102344| $t0@@0)) 0) (= (seq.len (|p#$Mutation_102344| $t25@@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_12329| $t34)) 0) (= (seq.len (|p#$Mutation_12329| $t38)) 0)) (and (= (seq.len (|p#$Mutation_89893| $t39)) 0) (= (ControlFlow 0 160483) 160473))) inline$$InitEventStore$0$anon0_correct@@5))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 217167) 160483) anon0_correct@@5)))
PreconditionGeneratedEntry_correct@@1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 219420) true)
))
(check-sat)
(pop 1)
; Valid
