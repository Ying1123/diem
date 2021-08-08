(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_96936 0)) ((($Memory_96936 (|domain#$Memory_96936| |T@[Int]Bool|) (|contents#$Memory_96936| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_152203 0)) ((($Memory_152203 (|domain#$Memory_152203| |T@[Int]Bool|) (|contents#$Memory_152203| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_147608 0)) ((($Memory_147608 (|domain#$Memory_147608| |T@[Int]Bool|) (|contents#$Memory_147608| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_145611 0)) ((($Memory_145611 (|domain#$Memory_145611| |T@[Int]Bool|) (|contents#$Memory_145611| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_145891 0)) ((($Memory_145891 (|domain#$Memory_145891| |T@[Int]Bool|) (|contents#$Memory_145891| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_145578 0)) ((($Memory_145578 (|domain#$Memory_145578| |T@[Int]Bool|) (|contents#$Memory_145578| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_145363 0)) ((($Memory_145363 (|domain#$Memory_145363| |T@[Int]Bool|) (|contents#$Memory_145363| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_144992 0)) ((($Memory_144992 (|domain#$Memory_144992| |T@[Int]Bool|) (|contents#$Memory_144992| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_142532 0)) ((($Memory_142532 (|domain#$Memory_142532| |T@[Int]Bool|) (|contents#$Memory_142532| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_142468 0)) ((($Memory_142468 (|domain#$Memory_142468| |T@[Int]Bool|) (|contents#$Memory_142468| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_146534 0)) ((($Memory_146534 (|domain#$Memory_146534| |T@[Int]Bool|) (|contents#$Memory_146534| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_132749 0)) ((($Memory_132749 (|domain#$Memory_132749| |T@[Int]Bool|) (|contents#$Memory_132749| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_132239 0)) ((($Memory_132239 (|domain#$Memory_132239| |T@[Int]Bool|) (|contents#$Memory_132239| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_129035 0)) ((($Memory_129035 (|domain#$Memory_129035| |T@[Int]Bool|) (|contents#$Memory_129035| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_128816 0)) ((($Memory_128816 (|domain#$Memory_128816| |T@[Int]Bool|) (|contents#$Memory_128816| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_147397 0)) ((($Memory_147397 (|domain#$Memory_147397| |T@[Int]Bool|) (|contents#$Memory_147397| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_115699 0)) ((($Memory_115699 (|domain#$Memory_115699| |T@[Int]Bool|) (|contents#$Memory_115699| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_115612 0)) ((($Memory_115612 (|domain#$Memory_115612| |T@[Int]Bool|) (|contents#$Memory_115612| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_110979 0)) ((($Memory_110979 (|domain#$Memory_110979| |T@[Int]Bool|) (|contents#$Memory_110979| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_110892 0)) ((($Memory_110892 (|domain#$Memory_110892| |T@[Int]Bool|) (|contents#$Memory_110892| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_110805 0)) ((($Memory_110805 (|domain#$Memory_110805| |T@[Int]Bool|) (|contents#$Memory_110805| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_116054 0)) ((($Memory_116054 (|domain#$Memory_116054| |T@[Int]Bool|) (|contents#$Memory_116054| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_133174 0)) ((($Memory_133174 (|domain#$Memory_133174| |T@[Int]Bool|) (|contents#$Memory_133174| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_116479 0)) ((($Memory_116479 (|domain#$Memory_116479| |T@[Int]Bool|) (|contents#$Memory_116479| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_115963 0)) ((($Memory_115963 (|domain#$Memory_115963| |T@[Int]Bool|) (|contents#$Memory_115963| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_130931 0)) ((($Memory_130931 (|domain#$Memory_130931| |T@[Int]Bool|) (|contents#$Memory_130931| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_116380 0)) ((($Memory_116380 (|domain#$Memory_116380| |T@[Int]Bool|) (|contents#$Memory_116380| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_115872 0)) ((($Memory_115872 (|domain#$Memory_115872| |T@[Int]Bool|) (|contents#$Memory_115872| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_105250 0)) ((($Memory_105250 (|domain#$Memory_105250| |T@[Int]Bool|) (|contents#$Memory_105250| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_116281 0)) ((($Memory_116281 (|domain#$Memory_116281| |T@[Int]Bool|) (|contents#$Memory_116281| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_107801 0)) ((($Memory_107801 (|domain#$Memory_107801| |T@[Int]Bool|) (|contents#$Memory_107801| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_107714 0)) ((($Memory_107714 (|domain#$Memory_107714| |T@[Int]Bool|) (|contents#$Memory_107714| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_107627 0)) ((($Memory_107627 (|domain#$Memory_107627| |T@[Int]Bool|) (|contents#$Memory_107627| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_150894 0)) ((($Memory_150894 (|domain#$Memory_150894| |T@[Int]Bool|) (|contents#$Memory_150894| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_107540 0)) ((($Memory_107540 (|domain#$Memory_107540| |T@[Int]Bool|) (|contents#$Memory_107540| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_107453 0)) ((($Memory_107453 (|domain#$Memory_107453| |T@[Int]Bool|) (|contents#$Memory_107453| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_106572 0)) ((($Memory_106572 (|domain#$Memory_106572| |T@[Int]Bool|) (|contents#$Memory_106572| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_106639 0)) ((($Memory_106639 (|domain#$Memory_106639| |T@[Int]Bool|) (|contents#$Memory_106639| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_106490 0)) ((($Memory_106490 (|domain#$Memory_106490| |T@[Int]Bool|) (|contents#$Memory_106490| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_106408 0)) ((($Memory_106408 (|domain#$Memory_106408| |T@[Int]Bool|) (|contents#$Memory_106408| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_106326 0)) ((($Memory_106326 (|domain#$Memory_106326| |T@[Int]Bool|) (|contents#$Memory_106326| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_106244 0)) ((($Memory_106244 (|domain#$Memory_106244| |T@[Int]Bool|) (|contents#$Memory_106244| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_106162 0)) ((($Memory_106162 (|domain#$Memory_106162| |T@[Int]Bool|) (|contents#$Memory_106162| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_110326 0)) ((($Memory_110326 (|domain#$Memory_110326| |T@[Int]Bool|) (|contents#$Memory_110326| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_110261 0)) ((($Memory_110261 (|domain#$Memory_110261| |T@[Int]Bool|) (|contents#$Memory_110261| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_110196 0)) ((($Memory_110196 (|domain#$Memory_110196| |T@[Int]Bool|) (|contents#$Memory_110196| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_105765 0)) ((($Memory_105765 (|domain#$Memory_105765| |T@[Int]Bool|) (|contents#$Memory_105765| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_105732 0)) ((($Memory_105732 (|domain#$Memory_105732| |T@[Int]Bool|) (|contents#$Memory_105732| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_103804 0)) ((($Memory_103804 (|domain#$Memory_103804| |T@[Int]Bool|) (|contents#$Memory_103804| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_72623 0)) (((Multiset_72623 (|v#Multiset_72623| |T@[$EventRep]Int|) (|l#Multiset_72623| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_72623| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_72623|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_148435 0)) ((($Mutation_148435 (|l#$Mutation_148435| T@$Location) (|p#$Mutation_148435| (Seq Int)) (|v#$Mutation_148435| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_148391 0)) ((($Mutation_148391 (|l#$Mutation_148391| T@$Location) (|p#$Mutation_148391| (Seq Int)) (|v#$Mutation_148391| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_137091 0)) ((($Mutation_137091 (|l#$Mutation_137091| T@$Location) (|p#$Mutation_137091| (Seq Int)) (|v#$Mutation_137091| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_37046 0)) ((($Mutation_37046 (|l#$Mutation_37046| T@$Location) (|p#$Mutation_37046| (Seq Int)) (|v#$Mutation_37046| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_127422 0)) ((($Mutation_127422 (|l#$Mutation_127422| T@$Location) (|p#$Mutation_127422| (Seq Int)) (|v#$Mutation_127422| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_117946 0)) ((($Mutation_117946 (|l#$Mutation_117946| T@$Location) (|p#$Mutation_117946| (Seq Int)) (|v#$Mutation_117946| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_117899 0)) ((($Mutation_117899 (|l#$Mutation_117899| T@$Location) (|p#$Mutation_117899| (Seq Int)) (|v#$Mutation_117899| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_117115 0)) ((($Mutation_117115 (|l#$Mutation_117115| T@$Location) (|p#$Mutation_117115| (Seq Int)) (|v#$Mutation_117115| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_108939 0)) ((($Mutation_108939 (|l#$Mutation_108939| T@$Location) (|p#$Mutation_108939| (Seq Int)) (|v#$Mutation_108939| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_104278 0)) ((($Mutation_104278 (|l#$Mutation_104278| T@$Location) (|p#$Mutation_104278| (Seq Int)) (|v#$Mutation_104278| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_97564 0)) ((($Mutation_97564 (|l#$Mutation_97564| T@$Location) (|p#$Mutation_97564| (Seq Int)) (|v#$Mutation_97564| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13434 0)) ((($Mutation_13434 (|l#$Mutation_13434| T@$Location) (|p#$Mutation_13434| (Seq Int)) (|v#$Mutation_13434| Int) ) ) ))
(declare-datatypes ((T@$Mutation_92932 0)) ((($Mutation_92932 (|l#$Mutation_92932| T@$Location) (|p#$Mutation_92932| (Seq Int)) (|v#$Mutation_92932| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_92186 0)) ((($Mutation_92186 (|l#$Mutation_92186| T@$Location) (|p#$Mutation_92186| (Seq Int)) (|v#$Mutation_92186| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_90746 0)) ((($Mutation_90746 (|l#$Mutation_90746| T@$Location) (|p#$Mutation_90746| (Seq Int)) (|v#$Mutation_90746| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_90000 0)) ((($Mutation_90000 (|l#$Mutation_90000| T@$Location) (|p#$Mutation_90000| (Seq Int)) (|v#$Mutation_90000| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_88560 0)) ((($Mutation_88560 (|l#$Mutation_88560| T@$Location) (|p#$Mutation_88560| (Seq Int)) (|v#$Mutation_88560| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_87814 0)) ((($Mutation_87814 (|l#$Mutation_87814| T@$Location) (|p#$Mutation_87814| (Seq Int)) (|v#$Mutation_87814| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_86374 0)) ((($Mutation_86374 (|l#$Mutation_86374| T@$Location) (|p#$Mutation_86374| (Seq Int)) (|v#$Mutation_86374| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_85628 0)) ((($Mutation_85628 (|l#$Mutation_85628| T@$Location) (|p#$Mutation_85628| (Seq Int)) (|v#$Mutation_85628| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_84188 0)) ((($Mutation_84188 (|l#$Mutation_84188| T@$Location) (|p#$Mutation_84188| (Seq Int)) (|v#$Mutation_84188| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_83442 0)) ((($Mutation_83442 (|l#$Mutation_83442| T@$Location) (|p#$Mutation_83442| (Seq Int)) (|v#$Mutation_83442| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_82002 0)) ((($Mutation_82002 (|l#$Mutation_82002| T@$Location) (|p#$Mutation_82002| (Seq Int)) (|v#$Mutation_82002| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_81256 0)) ((($Mutation_81256 (|l#$Mutation_81256| T@$Location) (|p#$Mutation_81256| (Seq Int)) (|v#$Mutation_81256| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_79816 0)) ((($Mutation_79816 (|l#$Mutation_79816| T@$Location) (|p#$Mutation_79816| (Seq Int)) (|v#$Mutation_79816| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_79070 0)) ((($Mutation_79070 (|l#$Mutation_79070| T@$Location) (|p#$Mutation_79070| (Seq Int)) (|v#$Mutation_79070| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_77630 0)) ((($Mutation_77630 (|l#$Mutation_77630| T@$Location) (|p#$Mutation_77630| (Seq Int)) (|v#$Mutation_77630| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_76884 0)) ((($Mutation_76884 (|l#$Mutation_76884| T@$Location) (|p#$Mutation_76884| (Seq Int)) (|v#$Mutation_76884| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_75406 0)) ((($Mutation_75406 (|l#$Mutation_75406| T@$Location) (|p#$Mutation_75406| (Seq Int)) (|v#$Mutation_75406| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_74660 0)) ((($Mutation_74660 (|l#$Mutation_74660| T@$Location) (|p#$Mutation_74660| (Seq Int)) (|v#$Mutation_74660| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_72623_| (|T@[$1_Event_EventHandle]Multiset_72623| T@$1_Event_EventHandle) T@Multiset_72623)
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
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'#0''| (|T@$1_TransactionFee_TransactionFee'#0'|) Bool)
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
(declare-fun ReverseVec_66093 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_65699 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_65502 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_65305 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_65896 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_64714 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_64911 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_65108 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_64517 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_72623| |T@[$1_Event_EventHandle]Multiset_72623|) |T@[$1_Event_EventHandle]Multiset_72623|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |TransactionFeecvc5bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |TransactionFeecvc5bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |TransactionFeecvc5bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |TransactionFeecvc5bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |TransactionFeecvc5bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |TransactionFeecvc5bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |TransactionFeecvc5bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |TransactionFeecvc5bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |TransactionFeecvc5bpl.590:13|
 :skolemid |15|
))))
 :qid |TransactionFeecvc5bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |TransactionFeecvc5bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |TransactionFeecvc5bpl.603:17|
 :skolemid |18|
)))))
 :qid |TransactionFeecvc5bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |TransactionFeecvc5bpl.770:13|
 :skolemid |20|
))))
 :qid |TransactionFeecvc5bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |TransactionFeecvc5bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |TransactionFeecvc5bpl.783:17|
 :skolemid |23|
)))))
 :qid |TransactionFeecvc5bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |TransactionFeecvc5bpl.950:13|
 :skolemid |25|
))))
 :qid |TransactionFeecvc5bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |TransactionFeecvc5bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |TransactionFeecvc5bpl.963:17|
 :skolemid |28|
)))))
 :qid |TransactionFeecvc5bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |TransactionFeecvc5bpl.1130:13|
 :skolemid |30|
))))
 :qid |TransactionFeecvc5bpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |TransactionFeecvc5bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |TransactionFeecvc5bpl.1143:17|
 :skolemid |33|
)))))
 :qid |TransactionFeecvc5bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |TransactionFeecvc5bpl.1310:13|
 :skolemid |35|
))))
 :qid |TransactionFeecvc5bpl.1308:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |TransactionFeecvc5bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |TransactionFeecvc5bpl.1323:17|
 :skolemid |38|
)))))
 :qid |TransactionFeecvc5bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |TransactionFeecvc5bpl.1490:13|
 :skolemid |40|
))))
 :qid |TransactionFeecvc5bpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |TransactionFeecvc5bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |TransactionFeecvc5bpl.1503:17|
 :skolemid |43|
)))))
 :qid |TransactionFeecvc5bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |TransactionFeecvc5bpl.1670:13|
 :skolemid |45|
))))
 :qid |TransactionFeecvc5bpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |TransactionFeecvc5bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |TransactionFeecvc5bpl.1683:17|
 :skolemid |48|
)))))
 :qid |TransactionFeecvc5bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |TransactionFeecvc5bpl.1850:13|
 :skolemid |50|
))))
 :qid |TransactionFeecvc5bpl.1848:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |TransactionFeecvc5bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |TransactionFeecvc5bpl.1863:17|
 :skolemid |53|
)))))
 :qid |TransactionFeecvc5bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |TransactionFeecvc5bpl.2030:13|
 :skolemid |55|
))))
 :qid |TransactionFeecvc5bpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |TransactionFeecvc5bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |TransactionFeecvc5bpl.2043:17|
 :skolemid |58|
)))))
 :qid |TransactionFeecvc5bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |TransactionFeecvc5bpl.2210:13|
 :skolemid |60|
))))
 :qid |TransactionFeecvc5bpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |TransactionFeecvc5bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |TransactionFeecvc5bpl.2223:17|
 :skolemid |63|
)))))
 :qid |TransactionFeecvc5bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |TransactionFeecvc5bpl.2390:13|
 :skolemid |65|
))))
 :qid |TransactionFeecvc5bpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |TransactionFeecvc5bpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |TransactionFeecvc5bpl.2403:17|
 :skolemid |68|
)))))
 :qid |TransactionFeecvc5bpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |TransactionFeecvc5bpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |TransactionFeecvc5bpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |TransactionFeecvc5bpl.2639:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |TransactionFeecvc5bpl.2642:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_72623_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_72623| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_72623| stream) v@@26) 0)
 :qid |TransactionFeecvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |TransactionFeecvc5bpl.2718:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |TransactionFeecvc5bpl.2759:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |TransactionFeecvc5bpl.2765:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |TransactionFeecvc5bpl.2815:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |TransactionFeecvc5bpl.2821:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |TransactionFeecvc5bpl.2871:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |TransactionFeecvc5bpl.2877:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |TransactionFeecvc5bpl.2927:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |TransactionFeecvc5bpl.2933:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |TransactionFeecvc5bpl.2983:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |TransactionFeecvc5bpl.2989:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |TransactionFeecvc5bpl.3039:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |TransactionFeecvc5bpl.3045:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |TransactionFeecvc5bpl.3095:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |TransactionFeecvc5bpl.3101:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |TransactionFeecvc5bpl.3151:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |TransactionFeecvc5bpl.3157:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |TransactionFeecvc5bpl.3207:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |TransactionFeecvc5bpl.3213:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |TransactionFeecvc5bpl.3263:70|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |TransactionFeecvc5bpl.3269:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |TransactionFeecvc5bpl.3319:60|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |TransactionFeecvc5bpl.3325:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |TransactionFeecvc5bpl.3375:66|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |TransactionFeecvc5bpl.3381:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |TransactionFeecvc5bpl.3431:60|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |TransactionFeecvc5bpl.3437:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |TransactionFeecvc5bpl.3487:63|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |TransactionFeecvc5bpl.3493:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |TransactionFeecvc5bpl.3543:79|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |TransactionFeecvc5bpl.3549:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |TransactionFeecvc5bpl.3599:82|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |TransactionFeecvc5bpl.3605:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |TransactionFeecvc5bpl.3655:88|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |TransactionFeecvc5bpl.3661:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |TransactionFeecvc5bpl.3864:61|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |TransactionFeecvc5bpl.4387:49|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |TransactionFeecvc5bpl.4437:36|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |TransactionFeecvc5bpl.4456:49|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |TransactionFeecvc5bpl.4544:91|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |TransactionFeecvc5bpl.4558:113|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |TransactionFeecvc5bpl.4572:71|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |TransactionFeecvc5bpl.4586:75|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |TransactionFeecvc5bpl.4600:73|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |TransactionFeecvc5bpl.4620:48|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |TransactionFeecvc5bpl.4636:57|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |TransactionFeecvc5bpl.4650:103|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |TransactionFeecvc5bpl.4664:125|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |TransactionFeecvc5bpl.4678:83|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |TransactionFeecvc5bpl.4692:87|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |TransactionFeecvc5bpl.4706:85|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |TransactionFeecvc5bpl.4720:48|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |TransactionFeecvc5bpl.4733:65|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |TransactionFeecvc5bpl.5267:45|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |TransactionFeecvc5bpl.5280:45|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@19) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@19)))
 :qid |TransactionFeecvc5bpl.5293:37|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@20) true)
 :qid |TransactionFeecvc5bpl.5306:55|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@21) true)
 :qid |TransactionFeecvc5bpl.5320:55|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@22) true)
 :qid |TransactionFeecvc5bpl.5334:47|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@22))
)))
(assert (forall ((s@@23 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@23)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@23)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@23))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@23))))
 :qid |TransactionFeecvc5bpl.5354:38|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@24)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@24)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@24))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@24))))
 :qid |TransactionFeecvc5bpl.5375:44|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@25)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@25))))
 :qid |TransactionFeecvc5bpl.5426:53|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@26)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@26))))
 :qid |TransactionFeecvc5bpl.5488:53|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@27)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@27)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@27))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@27))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@27))))
 :qid |TransactionFeecvc5bpl.5550:45|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@28) true)
 :qid |TransactionFeecvc5bpl.5576:55|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29) true)
 :qid |TransactionFeecvc5bpl.5590:55|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@30)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@30))))
 :qid |TransactionFeecvc5bpl.5607:38|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@31)))
 :qid |TransactionFeecvc5bpl.5621:48|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@32)))
 :qid |TransactionFeecvc5bpl.5635:48|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@33) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@33)))
 :qid |TransactionFeecvc5bpl.5649:40|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@34))))
 :qid |TransactionFeecvc5bpl.5669:41|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@35) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@35)))
 :qid |TransactionFeecvc5bpl.5684:53|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@36) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@36)))
 :qid |TransactionFeecvc5bpl.5698:53|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@37) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@37)))
 :qid |TransactionFeecvc5bpl.5712:45|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@38)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@38)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@38))))
 :qid |TransactionFeecvc5bpl.5729:60|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@39)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@39)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@39))))
 :qid |TransactionFeecvc5bpl.5746:60|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@40)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@40)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@40))))
 :qid |TransactionFeecvc5bpl.5763:52|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@41)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@41)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@41))))
 :qid |TransactionFeecvc5bpl.5780:57|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@41))
)))
(assert (forall ((s@@42 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@42) true)
 :qid |TransactionFeecvc5bpl.9873:68|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@43)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@43)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@43))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@43))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@43))))
 :qid |TransactionFeecvc5bpl.9895:66|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@44)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@44)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@44))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@44))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@44))))
 :qid |TransactionFeecvc5bpl.9921:66|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@45) true)
 :qid |TransactionFeecvc5bpl.10254:31|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@45))
)))
(assert (forall ((s@@46 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@46) true)
 :qid |TransactionFeecvc5bpl.10603:31|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@46))
)))
(assert (forall ((s@@47 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@47)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@47)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@47))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@47))))
 :qid |TransactionFeecvc5bpl.10622:35|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@48) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@48)))
 :qid |TransactionFeecvc5bpl.11048:71|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@49) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@49)))
 :qid |TransactionFeecvc5bpl.11097:46|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@50) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@50)))
 :qid |TransactionFeecvc5bpl.11110:64|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@51) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@51)))
 :qid |TransactionFeecvc5bpl.11123:75|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@52) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@52)))
 :qid |TransactionFeecvc5bpl.11136:72|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@52))
)))
(assert (forall ((s@@53 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@53)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@53)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@53))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@53))))
 :qid |TransactionFeecvc5bpl.11165:46|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@53))
)))
(assert (forall ((s@@54 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@54)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@54)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@54))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@54))))
 :qid |TransactionFeecvc5bpl.11186:55|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55))))
 :qid |TransactionFeecvc5bpl.11230:65|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@56)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@56)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@56))))
 :qid |TransactionFeecvc5bpl.11248:57|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@57))))
 :qid |TransactionFeecvc5bpl.13250:60|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@58)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@58)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@58))))
 :qid |TransactionFeecvc5bpl.13267:66|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@59)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@59)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@59))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@59))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@59))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@59))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@59))))
 :qid |TransactionFeecvc5bpl.13296:50|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@60) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@60)))
 :qid |TransactionFeecvc5bpl.13315:45|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@61)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@61)) true))
 :qid |TransactionFeecvc5bpl.13639:87|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@62) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@62)))
 :qid |TransactionFeecvc5bpl.13856:43|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@63)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@63))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@63))))
 :qid |TransactionFeecvc5bpl.13875:48|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@64)))
 :qid |TransactionFeecvc5bpl.13890:50|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@65) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@65)))
 :qid |TransactionFeecvc5bpl.13904:47|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@66)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@66)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@66))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@66))))
 :qid |TransactionFeecvc5bpl.13924:58|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@67) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@67)))
 :qid |TransactionFeecvc5bpl.13939:39|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@68)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@68))))
 :qid |TransactionFeecvc5bpl.13961:58|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@69)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@69))))
 :qid |TransactionFeecvc5bpl.13978:58|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@70) true)
 :qid |TransactionFeecvc5bpl.13993:51|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@71)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@71))))
 :qid |TransactionFeecvc5bpl.14010:60|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@72)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@72)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@72))))
 :qid |TransactionFeecvc5bpl.14308:47|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@73)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@73)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@73))))
 :qid |TransactionFeecvc5bpl.14330:63|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@74) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@74)))
 :qid |TransactionFeecvc5bpl.14345:57|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@75)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@75)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@75))))
 :qid |TransactionFeecvc5bpl.14361:54|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@76) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@76)))
 :qid |TransactionFeecvc5bpl.14375:55|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@77) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@77)))
 :qid |TransactionFeecvc5bpl.14389:57|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@78)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@78))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@78))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@78))))
 :qid |TransactionFeecvc5bpl.14411:56|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@79)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@79))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@79))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@79))))
 :qid |TransactionFeecvc5bpl.14436:52|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@80) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@80)))
 :qid |TransactionFeecvc5bpl.14452:54|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@81)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@81)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@81))))
 :qid |TransactionFeecvc5bpl.15323:45|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@82) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@82)))
 :qid |TransactionFeecvc5bpl.15337:51|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@83)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@83)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@83))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@83))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@83))))
 :qid |TransactionFeecvc5bpl.15360:48|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@84))))
 :qid |TransactionFeecvc5bpl.15674:47|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@85)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@85))))
 :qid |TransactionFeecvc5bpl.15698:47|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@86)))
 :qid |TransactionFeecvc5bpl.15953:49|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@87)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@87))))
 :qid |TransactionFeecvc5bpl.15996:49|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@88)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@88))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@88))))
 :qid |TransactionFeecvc5bpl.16025:48|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@89)))
 :qid |TransactionFeecvc5bpl.16320:47|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_13287 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |TransactionFeecvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |TransactionFeecvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13287 v@@27))
)))
(assert (forall ((v@@28 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_66093 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |TransactionFeecvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |TransactionFeecvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_66093 v@@28))
)))
(assert (forall ((v@@29 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_65699 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |TransactionFeecvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |TransactionFeecvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65699 v@@29))
)))
(assert (forall ((v@@30 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_65502 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |TransactionFeecvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |TransactionFeecvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65502 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@4 (ReverseVec_65305 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |TransactionFeecvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |TransactionFeecvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65305 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@5 (ReverseVec_65896 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |TransactionFeecvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |TransactionFeecvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65896 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@6 (ReverseVec_64714 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |TransactionFeecvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |TransactionFeecvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_64714 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@7 (ReverseVec_64911 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |TransactionFeecvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |TransactionFeecvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_64911 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@8 (ReverseVec_65108 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |TransactionFeecvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |TransactionFeecvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65108 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@#0|)) ) (! (let ((r@@9 (ReverseVec_64517 v@@36)))
 (and (= (seq.len r@@9) (seq.len v@@36)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@9))) (= (seq.nth r@@9 i@@42) (seq.nth v@@36 (- (- (seq.len v@@36) i@@42) 1))))
 :qid |TransactionFeecvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@42))
))))
 :qid |TransactionFeecvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_64517 v@@36))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |TransactionFeecvc5bpl.245:54|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_72623|) (|l#1| |T@[$1_Event_EventHandle]Multiset_72623|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_72623_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_72623| (|Select__T@[$1_Event_EventHandle]Multiset_72623_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_72623| (|Select__T@[$1_Event_EventHandle]Multiset_72623_| |l#1| handle@@0))))
(Multiset_72623 (|lambda#3| (|v#Multiset_72623| (|Select__T@[$1_Event_EventHandle]Multiset_72623_| |l#0@@0| handle@@0)) (|v#Multiset_72623| (|Select__T@[$1_Event_EventHandle]Multiset_72623_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |TransactionFeecvc5bpl.2728:13|
 :skolemid |300|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_72623_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@37) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@37)))
 :qid |TransactionFeecvc5bpl.124:29|
 :skolemid |301|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_13434)
(declare-fun $t14@1 () T@$Mutation_104278)
(declare-fun $t24@1 () T@$Mutation_13434)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_104278)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_103804)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_105250)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_103804)
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
(declare-fun $t14 () T@$Mutation_104278)
(declare-fun $t14@0 () T@$Mutation_104278)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_104278)
(declare-fun $t24 () T@$Mutation_13434)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 233728) (let ((L5_correct  (=> (= $t24@0 ($Mutation_13434 (|l#$Mutation_104278| $t14@1) (seq.++ (|p#$Mutation_104278| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_104278| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_13434 (|l#$Mutation_13434| $t24@0) (|p#$Mutation_13434| $t24@0) _$t2)) (= $t14@2 ($Mutation_104278 (|l#$Mutation_104278| $t14@1) (|p#$Mutation_104278| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_13434| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_103804 (|Store__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_104278| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_104278| $t14@2)) (|v#$Mutation_104278| $t14@2)))))) (and (=> (= (ControlFlow 0 167111) (- 0 234432)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 167111) (- 0 234457)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 167111) (- 0 234467)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 167111) (- 0 234481)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 167111) (- 0 234505)) (= $t25 _$t2)))))))))))))))
(let ((anon31_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 167169) 167111)) L5_correct)))
(let ((anon32_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 166969) 167111)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 166965) (- 0 234555)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 166965) (- 0 234592)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon31_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 167165) 166965))) L8_correct)))
(let ((anon30_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 167149) 167169) anon31_Then_correct) (=> (= (ControlFlow 0 167149) 167165) anon31_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 166849) 166965))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 166833) 166969) anon32_Then_correct) (=> (= (ControlFlow 0 166833) 166849) anon32_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 166797) 166833)) anon30_Else$1_correct)))
(let ((anon30_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 166803) 166797)) inline$$Lt$0$anon0_correct)))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= $t17@0 (= _$t1 0))) (and (=> (= (ControlFlow 0 166751) 167149) anon30_Then_correct) (=> (= (ControlFlow 0 166751) 166803) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 167183) 166965))) L8_correct)))
(let ((inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 0) (= 0 0)) (and (=> (= (ControlFlow 0 166731) 167183) anon29_Then_correct) (=> (= (ControlFlow 0 166731) 166751) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_104278| $t14@1))) (=> (and (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|) (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_104278| $t14@1)))) (and (= $t15@0 $t15@0) (= (ControlFlow 0 166737) 166731))) inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 167197) 166965))) L8_correct)))
(let ((anon27_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 167249) 167197) anon28_Then_correct) (=> (= (ControlFlow 0 167249) 166737) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 167247) 167249)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_104278 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 166634) 167197) anon28_Then_correct) (=> (= (ControlFlow 0 166634) 166737) anon28_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 166612) (- 0 234073)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 166612) 167247) anon27_Then_correct) (=> (= (ControlFlow 0 166612) 166634) anon27_Else_correct)))))))
(let ((anon25_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 167293) 166965))) L8_correct))))
(let ((anon24_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 167319) 166965))) L8_correct))))
(let ((anon26_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 166592) 167263) anon26_Then_correct) (=> (= (ControlFlow 0 166592) 166612) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not $t12) (= (ControlFlow 0 166598) 166592)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct)))
(let ((anon24_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 166521) 167293) anon25_Then_correct) (=> (= (ControlFlow 0 166521) 166598) anon25_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |TransactionFeecvc5bpl.4052:20|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 166499) 167319) anon24_Then_correct) (=> (= (ControlFlow 0 166499) 166521) anon24_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_72623_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_72623| stream@@0) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_72623| stream@@0) v@@38) 0)
 :qid |TransactionFeecvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |TransactionFeecvc5bpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 166387) 166499)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_104278| $t3)) 0) (= (seq.len (|p#$Mutation_104278| $t14)) 0)) (and (= (seq.len (|p#$Mutation_13434| $t24)) 0) (= (ControlFlow 0 166397) 166387))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 233728) 166397) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_105765)
(declare-fun $t1 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0@@0 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_110196)
(declare-fun $t3@0 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun $t5 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t3@@0 () Int)
(declare-fun $t2 () Bool)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@3| () T@$Memory_105250)
(declare-fun |Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| Int) |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)
(declare-fun $abort_flag@4 () Bool)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@1| () T@$Memory_105250)
(declare-fun $abort_code@4 () Int)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@2| () T@$Memory_105250)
(declare-fun |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@1| () Int)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@0| () T@$Memory_105250)
(declare-fun |Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| Int |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t14@1| () |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@1| () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t5@0| () Bool)
(declare-fun |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@0| () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t3@0| () Bool)
(declare-fun |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t2@0| () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t7@1| () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t3@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t1@0| () Int)
(declare-fun |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t12@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t10@0| () Int)
(declare-fun |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$ret0@1| () Bool)
(declare-fun |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t2@1| () Bool)
(declare-fun |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t6@0| () Bool)
(declare-fun |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@0| () Int)
(declare-fun |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t4@0| () Bool)
(declare-fun |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t3@0| () Int)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_106639)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_106162)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_115612)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_115699)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_110805)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_110892)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory| () T@$Memory_110979)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_116281)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_115872)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_116380)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_115963)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_116479)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_116054)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_128816)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_130931)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_110261)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_129035)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(push 1)
(set-info :boogie-vc-id $1_TransactionFee_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 234847) (let ((L2_correct  (and (=> (= (ControlFlow 0 170569) (- 0 236914)) (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t1)) 1))) (not (= _$t0@@0 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t1)) 1))) (not (= _$t0@@0 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (= (ControlFlow 0 170569) (- 0 236968)) (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t3@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t1)) (= 5 $t3@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t1)) 1)) (= 3 $t3@0))) (and (not (= _$t0@@0 186537453)) (= 2 $t3@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453) (= 6 $t3@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t3@0))))))))
(let ((anon10_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@5 $abort_code@5)) (and (= $t3@0 $abort_code@5) (= (ControlFlow 0 170393) 170569))) L2_correct)))
(let ((anon9_Then_correct  (=> $t5 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t4)) (= 5 $t3@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t4)) 1)) (= 3 $t3@@0))) (and (not (= _$t0@@0 186537453)) (= 2 $t3@@0))) (= $t3@@0 $t3@@0)) (and (= $t3@0 $t3@@0) (= (ControlFlow 0 170641) 170569))) L2_correct))))
(let ((anon8_Then_correct  (=> $t2 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t3@@0)) (= $t3@@0 $t3@@0)) (and (= $t3@0 $t3@@0) (= (ControlFlow 0 170667) 170569))) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@5) (and (=> (= (ControlFlow 0 170379) (- 0 236806)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 170379) (- 0 236816)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t1))) (and (=> (= (ControlFlow 0 170379) (- 0 236828)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t1)) 1))) (and (=> (= (ControlFlow 0 170379) (- 0 236846)) (not (not (= _$t0@@0 186537453)))) (=> (not (not (= _$t0@@0 186537453))) (and (=> (= (ControlFlow 0 170379) (- 0 236860)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (and (=> (= (ControlFlow 0 170379) (- 0 236870)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 170379) (- 0 236880)) (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@3|) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@3|) 186537453) (=> (= (ControlFlow 0 170379) (- 0 236886)) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@3|) 186537453))) 0)))))))))))))))))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon26_Else_correct|  (=> (and (and (not $abort_flag@4) (= $abort_flag@5 $abort_flag@4)) (and (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@3| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@1|) (= $abort_code@5 $abort_code@4))) (and (=> (= (ControlFlow 0 170067) 170393) anon10_Then_correct) (=> (= (ControlFlow 0 170067) 170379) anon10_Else_correct)))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$L3_correct|  (=> (= $abort_flag@5 true) (=> (and (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@3| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@2|) (= $abort_code@5 |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@1|)) (and (=> (= (ControlFlow 0 168973) 170393) anon10_Then_correct) (=> (= (ControlFlow 0 168973) 170379) anon10_Else_correct))))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon26_Then_correct|  (=> $abort_flag@4 (=> (and (and (= $abort_code@4 $abort_code@4) (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@1| $abort_code@4)) (and (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@2| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 170081) 168973))) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon25_Then$1_correct|  (=> (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@1| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) (=> (and (= $abort_flag@4 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 170131) 170081) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 170131) 170067) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon26_Else_correct|))))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon25_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) _$t0@@0) (= (ControlFlow 0 170129) 170131)) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon25_Then$1_correct|)))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon25_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) _$t0@@0)) (=> (and (and (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@0| ($Memory_105250 (|Store__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) _$t0@@0 true) (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) _$t0@@0 |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t14@1|))) (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@1| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@0|)) (and (= $abort_flag@4 $abort_flag@3) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 170057) 170081) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 170057) 170067) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon26_Else_correct|))))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon24_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t14@1| (|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 170039) 170129) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 170039) 170057) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon25_Else_correct|)))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon24_Then_correct|  (=> $abort_flag@3 (=> (and (and (= $abort_code@3 $abort_code@3) (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@1| $abort_code@3)) (and (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@2| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 170145) 168973))) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$L2_correct|  (=> (= $abort_code@3 |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@1|) (=> (and (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$ret0@0|) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 169917) 170145) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 169917) 170039) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon24_Else_correct|))))))
(let ((|inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon9_Then_correct|  (=> (and (and $abort_flag@2 (= $abort_code@2 $abort_code@2)) (and (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@1| $abort_code@2) (= (ControlFlow 0 169911) 169917))) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$L2_correct|)))
(let ((|inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon8_Then_correct|  (=> |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t5@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@0|)) (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@0| |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@0|)) (and (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@1| |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@0|) (= (ControlFlow 0 169943) 169917))) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$L2_correct|))))
(let ((|inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon7_Then_correct|  (=> |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t3@0| (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t2@0|)) (= 5 |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t2@0|)) 1)) (= 3 |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@0|))) (and (not (= _$t0@@0 186537453)) (= 2 |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@0|))) (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@0| |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@0|)) (and (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@1| |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t4@0|) (= (ControlFlow 0 170015) 169917))) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$L2_correct|))))
(let ((|inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon9_Else_correct|  (=> (and (not $abort_flag@2) (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t7@1| (|$1_Diem_Preburn'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@1|))) (=> (and (and (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t7@1| |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t7@1|) (= $abort_code@3 $abort_code@2)) (and (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t7@1|) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 169897) 170145) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 169897) 170039) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon24_Else_correct|))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$1$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t3@1|) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@2 $abort_code@1@@0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t3@1|))) (and (=> (= (ControlFlow 0 169839) 169911) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 169839) 169897) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon9_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$1$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t1@0|) (= $abort_flag@2 true)) (and (= $abort_code@2 |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t1@0|) (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$1$$ret0@0|))) (and (=> (= (ControlFlow 0 169869) 169911) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 169869) 169897) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon9_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$1$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$1$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 169811) 169869) |inline$$1_Diem_zero'$1_XUS_XUS'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 169811) 169839) |inline$$1_Diem_zero'$1_XUS_XUS'$1$anon3_Else_correct|)))))
(let ((|inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon8_Else_correct|  (=> (and (not |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t5@0|) (= (ControlFlow 0 169875) 169811)) |inline$$1_Diem_zero'$1_XUS_XUS'$1$anon0_correct|)))
(let ((|inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon7_Else_correct|  (=> (and (not |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t3@0|) (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t5@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 169654) 169943) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon8_Then_correct|) (=> (= (ControlFlow 0 169654) 169875) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon8_Else_correct|)))))
(let ((|inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t1@0| _$t0@@0) (= _$t0@@0 _$t0@@0)) (and (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t2@0| _$t0@@0) (= |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t3@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t2@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$$t2@0|)) 1))) (not (= _$t0@@0 186537453)))))) (and (=> (= (ControlFlow 0 169636) 170015) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon7_Then_correct|) (=> (= (ControlFlow 0 169636) 169654) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon7_Else_correct|)))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (not $abort_flag@1) (=> (and (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t12@0| _$t0@@0) (= (ControlFlow 0 170021) 169636)) |inline$$1_Diem_create_preburn'$1_XUS_XUS'$0$anon0_correct|))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> $abort_flag@1 (=> (and (and (= $abort_code@1@@0 $abort_code@1@@0) (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@1| $abort_code@1@@0)) (and (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@2| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 170159) 168973))) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|) (= $abort_code@1@@0 $abort_code@0@@0)) (and (= $abort_flag@1 $abort_flag@0@@0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|))) (and (=> (= (ControlFlow 0 169156) 170159) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 169156) 170021) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon23_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= $abort_code@1@@0 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|)) (and (= $abort_flag@1 true) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 169186) 170159) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 169186) 170021) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon23_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 169128) 169186) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 169128) 169156) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|)))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon22_Then_correct|  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 169192) 169128)) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon22_Else_correct|  (=> (not inline$$Not$0$dst@1) (=> (and (and (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t10@0| |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t10@0|) (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@1| |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t10@0|)) (and (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@2| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 168967) 168973))) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon21_Else$1_correct|  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t10@0|) (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t10@0| 6)) (and (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t10@0| |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t10@0|) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 168951) 169192) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 168951) 168967) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon22_Else_correct|))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$ret0@1|)) (= (ControlFlow 0 168911) 168951)) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon21_Else$1_correct|)))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon21_Else_correct|  (=> (and (not $abort_flag@0@@0) (= (ControlFlow 0 168917) 168911)) inline$$Not$0$anon0_correct)))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon21_Then_correct|  (=> $abort_flag@0@@0 (=> (and (and (= $abort_code@0@@0 $abort_code@0@@0) (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@1| $abort_code@0@@0)) (and (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@2| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 170173) 168973))) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$anon3_Else_correct|  (=> (not false) (=> (and (and (= |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t2@1| (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (= |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t2@1| |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t2@1|)) (and (= $abort_flag@0@@0 false) (= |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$ret0@1| |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$$t2@1|))) (and (=> (= (ControlFlow 0 168849) 170173) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 168849) 168917) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon21_Else_correct|))))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon20_Then_correct|  (=> |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t6@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@0|)) (=> (and (and (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@0| |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@0|) (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@1| |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@0|)) (and (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@2| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 170199) 168973))) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$L3_correct|)))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon19_Then_correct|  (=> (and |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t4@0| (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t3@0|)) (= 5 |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t3@0|)) 1)) (= 3 |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@0|))) (and (not (= _$t0@@0 186537453)) (= 2 |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@0|)))) (=> (and (and (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@0| |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@0|) (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@1| |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t5@0|)) (and (= |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory@2| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 170271) 168973))) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$anon3_Then_correct| true))
(let ((inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 186537453) (= 186537453 186537453)) (and (=> (= (ControlFlow 0 168819) 168867) |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 168819) 168849) |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$anon3_Else_correct|)))))
(let ((|inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$anon0_correct|  (=> (= (ControlFlow 0 168825) 168819) inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct)))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon20_Else_correct|  (=> (and (not |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t6@0|) (= (ControlFlow 0 168873) 168825)) |inline$$1_TransactionFee_is_coin_initialized'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon19_Else_correct|  (=> (and (not |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t4@0|) (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t6@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 168640) 170199) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 168640) 168873) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon20_Else_correct|)))))
(let ((|inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (= _$t0@@0 _$t0@@0) (=> (and (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t3@0| _$t0@@0) (= |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t4@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t3@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$$t3@0|)) 1))) (not (= _$t0@@0 186537453))))) (and (=> (= (ControlFlow 0 168622) 170271) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 168622) 168640) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon19_Else_correct|))))))
(let ((anon9_Else_correct  (=> (and (not $t5) (= (ControlFlow 0 170275) 168622)) |inline$$1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'$0$anon0_correct|)))
(let ((anon8_Else_correct  (=> (not $t2) (=> (and (= $t4 _$t0@@0) (= $t5  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t4)) 1))) (not (= _$t0@@0 186537453))))) (and (=> (= (ControlFlow 0 167966) 170641) anon9_Then_correct) (=> (= (ControlFlow 0 167966) 170275) anon9_Else_correct))))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106639| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106162| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115612| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |TransactionFeecvc5bpl.11407:21|
 :skolemid |169|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115699| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |TransactionFeecvc5bpl.11407:268|
 :skolemid |170|
)))) (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110805| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |TransactionFeecvc5bpl.11411:22|
 :skolemid |171|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110892| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |TransactionFeecvc5bpl.11411:232|
 :skolemid |172|
))) (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@1)) 1))))
 :qid |TransactionFeecvc5bpl.11411:443|
 :skolemid |173|
)))) (=> (and (and (and (and (and (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_116281| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_115872| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |TransactionFeecvc5bpl.11415:22|
 :skolemid |174|
)) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_116380| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_115963| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@3)) 2))))
 :qid |TransactionFeecvc5bpl.11415:293|
 :skolemid |175|
))) (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_116479| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_116054| |$1_Diem_Preburn'#0'_$memory|) addr1@@4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@4)) 2))))
 :qid |TransactionFeecvc5bpl.11415:565|
 :skolemid |176|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_128816| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_130931| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_129035| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))))) (and (and (and (|$IsValid'address'| _$t0@@0) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |TransactionFeecvc5bpl.11449:20|
 :skolemid |177|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |TransactionFeecvc5bpl.11453:20|
 :skolemid |178|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@2)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@2) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@2)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@2) 10000000000))))
 :qid |TransactionFeecvc5bpl.11457:20|
 :skolemid |179|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@2))
)))) (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) $a_0@@3)))
(|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| $rsc@@3))
 :qid |TransactionFeecvc5bpl.11461:20|
 :skolemid |180|
 :pattern ( (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'_| (|contents#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) $a_0@@3))
)) (= $t1 _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= $t2  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 167906) 170667) anon8_Then_correct) (=> (= (ControlFlow 0 167906) 167966) anon8_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_72623_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_72623| stream@@1) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_72623| stream@@1) v@@39) 0)
 :qid |TransactionFeecvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |TransactionFeecvc5bpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 167426) 167906)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 234847) 167426) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_TransactionFee_add_txn_fee_currency$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 237078) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@16 () Bool)
(declare-fun $t7 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun |$1_TransactionFee_TransactionFee'#0'_$memory| () T@$Memory_133174)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_110326)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t8 () |T@$1_TransactionFee_TransactionFee'#0'|)
(declare-fun $t9@@0 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@11| () T@$Memory_110326)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory@7| () T@$Memory_110979)
(declare-fun |Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|T@[Int]$1_TransactionFee_TransactionFee'#0'| Int) |T@$1_TransactionFee_TransactionFee'#0'|)
(declare-fun |$1_TransactionFee_TransactionFee'#0'_$memory@0| () T@$Memory_133174)
(declare-fun $t11@0@@0 () Int)
(declare-fun $abort_code@16 () Int)
(declare-fun $abort_flag@15 () Bool)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory@5| () T@$Memory_110979)
(declare-fun $abort_code@15 () Int)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory@6| () T@$Memory_110979)
(declare-fun |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@1| () Int)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory@3| () T@$Memory_110979)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory@4| () T@$Memory_110979)
(declare-fun |Store__T@[Int]$1_Diem_BurnCapability'#0'_| (|T@[Int]$1_Diem_BurnCapability'#0'| Int |T@$1_Diem_BurnCapability'#0'|) |T@[Int]$1_Diem_BurnCapability'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_BurnCapability'#0'_| (|T@[Int]$1_Diem_BurnCapability'#0'| Int) |T@$1_Diem_BurnCapability'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_BurnCapability'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_BurnCapability'#0'|)) (! (= (|Select__T@[Int]$1_Diem_BurnCapability'#0'_| (|Store__T@[Int]$1_Diem_BurnCapability'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_BurnCapability'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_BurnCapability'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_BurnCapability'#0'_| (|Store__T@[Int]$1_Diem_BurnCapability'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_BurnCapability'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1| () |T@$1_Diem_BurnCapability'#0'|)
(declare-fun $abort_code@14 () Int)
(declare-fun $abort_flag@14 () Bool)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'#0'$0$$t13@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'#0'$0$$t10@1| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'#0'$0$$t8@0| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'#0'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'#0'$0$$t6@0| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'#0'$0$$t5@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'#0'$0$$t4@0| () Int)
(declare-fun $t22@3 () T@$Mutation_137091)
(declare-fun $t22@2 () T@$Mutation_137091)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$ret0@1| () T@$Mutation_117115)
(declare-fun |Store__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|T@[Int]$1_TransactionFee_TransactionFee'#0'| Int |T@$1_TransactionFee_TransactionFee'#0'|) |T@[Int]$1_TransactionFee_TransactionFee'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ( ?x1 Int) ( ?x2 |T@$1_TransactionFee_TransactionFee'#0'|)) (! (= (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|Store__T@[Int]$1_TransactionFee_TransactionFee'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_TransactionFee_TransactionFee'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|Store__T@[Int]$1_TransactionFee_TransactionFee'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t37 () Int)
(declare-fun $abort_flag@13 () Bool)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2| () |T@$1_Diem_Preburn'#0'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$ret0@1| () T@$Mutation_117115)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@9| () T@$Memory_110326)
(declare-fun $abort_code@13 () Int)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$ret0@0| () T@$Mutation_117115)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@10| () T@$Memory_110326)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t20@1| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2| () |T@$1_Diem_Preburn'#0'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t0@1| () T@$Mutation_117115)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@8| () T@$Memory_110326)
(declare-fun $abort_flag@12 () Bool)
(declare-fun $abort_code@12 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@7| () T@$Memory_110326)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@3| () T@$Memory_110326)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4| () T@$Mutation_117899)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int |T@$1_Diem_CurrencyInfo'#0'|) |T@[Int]$1_Diem_CurrencyInfo'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@5| () T@$Memory_110326)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@6| () T@$Memory_110326)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$ret0@0| () T@$Mutation_117115)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t52@1| () T@$Mutation_97564)
(declare-fun $es@1 () T@$EventStore)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t53@1| () T@$1_Diem_BurnEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_72623_| (|T@[$1_Event_EventHandle]Multiset_72623| T@$1_Event_EventHandle T@Multiset_72623) |T@[$1_Event_EventHandle]Multiset_72623|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_72623|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_72623)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_72623_| (|Store__T@[$1_Event_EventHandle]Multiset_72623_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_72623|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_72623)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_72623_| (|Store__T@[$1_Event_EventHandle]Multiset_72623_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_72623_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t18@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t50@1| () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t49@1| () T@$Mutation_13434)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3| () T@$Mutation_117899)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t49@2| () T@$Mutation_13434)
(declare-fun inline$$Sub$2$dst@2 () Int)
(declare-fun inline$$Sub$2$dst@0 () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t47@1| () Int)
(declare-fun inline$$Sub$2$dst@1 () Int)
(declare-fun $abort_code@11 () Int)
(declare-fun $abort_flag@11 () Bool)
(declare-fun inline$$Ge$2$dst@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@4| () T@$Memory_110326)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t46@0| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t43@1| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t42@1| () T@$Mutation_13434)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2| () T@$Mutation_117899)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t42@2| () T@$Mutation_13434)
(declare-fun inline$$Sub$1$dst@2 () Int)
(declare-fun inline$$Sub$1$dst@0 () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t39@1| () Int)
(declare-fun inline$$CastU128$1$dst@1 () Int)
(declare-fun inline$$Sub$1$dst@1 () Int)
(declare-fun $abort_flag@10 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun inline$$CastU128$1$dst@0 () Int)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@9 () Bool)
(declare-fun inline$$Ge$1$dst@1 () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t38@0| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t34@1| () Int)
(declare-fun inline$$CastU128$0$dst@1 () Int)
(declare-fun inline$$CastU128$0$dst@0 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@0| () T@$Mutation_117899)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@1| () T@$Mutation_117899)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t31@0| () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@0| () Int)
(declare-fun inline$$Gt$1$dst@1 () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@1| () T@$Mutation_117946)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1| () T@$Mutation_117115)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t29@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@2| () T@$Mutation_117946)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_Diem'#0''@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t28@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t26@0| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t22@1| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t19@0| () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t21@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t4@0| () T@$Mutation_117899)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@0| () T@$Mutation_117946)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t42@0| () T@$Mutation_13434)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t49@0| () T@$Mutation_13434)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t52@0| () T@$Mutation_97564)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t12@0| () |T@$1_Diem_Preburn'#0'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t13@0| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t14@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t15@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t16@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t17@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1| () |T@$1_Diem_Preburn'#0'|)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t26@0| () |T@$1_Diem_Preburn'#0'|)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t27@0| () Int)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t28@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t29@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t30@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t31@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2| () |T@$1_Diem_Preburn'#0'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t1@1| () T@$Mutation_117115)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2| () T@$Memory_110326)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1| () T@$Memory_110326)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3| () T@$Mutation_117899)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_110326)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@0| () T@$Mutation_117115)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t41@1| () T@$Mutation_97564)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t42@1| () T@$1_Diem_PreburnEvent)
(declare-fun |inline$$1_Diem_value'#0'$0$$t1@1| () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t26@0| () (Seq Int))
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t39@1| () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t38@1| () T@$Mutation_13434)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2| () T@$Mutation_117899)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t38@2| () T@$Mutation_13434)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t36@1| () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@5@@0 () Int)
(declare-fun $abort_flag@5@@0 () Bool)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t35@0| () Int)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t31@1| () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_flag@4@@0 () Bool)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@0| () T@$Mutation_117899)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@1| () T@$Mutation_117899)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t27@0| () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@0| () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t25@0| () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@2| () T@$Mutation_117946)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@1| () T@$Mutation_117946)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_Diem'#0''@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t24@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t24@@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t27@0 () T@$Mutation_117115)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t20@1| () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t22@0| () Int)
(declare-fun |inline$$1_Diem_value'#0'$1$$t1@1| () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t17@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t5@0| () T@$Mutation_117899)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@0| () T@$Mutation_117946)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t38@0| () T@$Mutation_13434)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t41@0| () T@$Mutation_97564)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t10@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t11@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t12@0| () (Seq Int))
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t13@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$t14@0| () T@$1_Diem_PreburnEvent)
(declare-fun |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1| () |T@$1_Diem_Preburn'#0'|)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t21@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t22@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t23@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t24@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t25@0| () T@$1_Diem_PreburnEvent)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t19@0| () Int)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t15@1| () Int)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t6@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t7@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t8@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t9@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t10@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t11@0| () T@$1_Diem_PreburnEvent)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t13@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_burn_now'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1| () |T@$1_Diem_Preburn'#0'|)
(declare-fun $t28 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t29 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t30 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t31 () (Seq Int))
(declare-fun $t32 () T@$1_Event_EventHandle)
(declare-fun $t33 () T@$1_Diem_PreburnEvent)
(declare-fun $t34 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t35 () (Seq Int))
(declare-fun $t36 () T@$1_Event_EventHandle)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun |inline$$1_Diem_remove_burn_capability'#0'$0$$t9@2| () |T@$1_Diem_BurnCapability'#0'|)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory@1| () T@$Memory_110979)
(declare-fun |inline$$1_Diem_remove_burn_capability'#0'$0$$t8@1| () Int)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory@2| () T@$Memory_110979)
(declare-fun |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@0| () |T@$1_Diem_BurnCapability'#0'|)
(declare-fun |inline$$1_Diem_remove_burn_capability'#0'$0$$t9@0| () |T@$1_Diem_BurnCapability'#0'|)
(declare-fun |inline$$1_Diem_remove_burn_capability'#0'$0$$t4@0| () Int)
(declare-fun |inline$$1_Diem_remove_burn_capability'#0'$0$$t9@1| () |T@$1_Diem_BurnCapability'#0'|)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory@0| () T@$Memory_110979)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun |inline$$1_Diem_remove_burn_capability'#0'$0$$t5@1| () Bool)
(declare-fun |inline$$1_Diem_remove_burn_capability'#0'$0$$t7@0| () Int)
(declare-fun |$temp_0'$1_TransactionFee_TransactionFee'#0''@0| () |T@$1_TransactionFee_TransactionFee'#0'|)
(declare-fun $t22@1 () T@$Mutation_137091)
(declare-fun $t23@0 () T@$Mutation_117946)
(declare-fun $t25@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t23@1 () T@$Mutation_117946)
(declare-fun |$temp_0'$1_Diem_Diem'#0''@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t22 () T@$Mutation_137091)
(declare-fun $t22@0 () T@$Mutation_137091)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t18 () Bool)
(declare-fun $t21 () Int)
(declare-fun $t19 () Bool)
(declare-fun $t11@@0 () Int)
(declare-fun |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1| () Bool)
(declare-fun $t16 () Int)
(declare-fun |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$t2@1| () Bool)
(declare-fun $t13 () Bool)
(declare-fun $t12@@0 () Int)
(declare-fun $t10@@0 () Bool)
(declare-fun $t3@@1 () T@$Mutation_137091)
(declare-fun $t23@@0 () T@$Mutation_117946)
(declare-fun $t27 () T@$Mutation_117115)
(push 1)
(set-info :boogie-vc-id $1_TransactionFee_burn_fees$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 238546) (let ((anon41_Else_correct  (=> (not $abort_flag@16) (and (=> (= (ControlFlow 0 183511) (- 0 245389)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 183511) (- 0 245401)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t7)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t7)) 1))) (and (=> (= (ControlFlow 0 183511) (- 0 245419)) (not (not (= _$t0@@1 186537453)))) (=> (not (not (= _$t0@@1 186537453))) (and (=> (= (ControlFlow 0 183511) (- 0 245433)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 183511) (- 0 245443)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453))) (and (=> (= (ControlFlow 0 183511) (- 0 245453)) (not (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) true))) (=> (not (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) true)) (and (=> (= (ControlFlow 0 183511) (- 0 245466)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) _$t0@@1))))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) _$t0@@1)))) (and (=> (= (ControlFlow 0 183511) (- 0 245487)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (= (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8)) 0)))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (= (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8)) 0))) (and (=> (= (ControlFlow 0 183511) (- 0 245510)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (< (|$total_value#$1_Diem_CurrencyInfo'#0'| $t9@@0) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8)))))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (< (|$total_value#$1_Diem_CurrencyInfo'#0'| $t9@@0) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8))))) (and (=> (= (ControlFlow 0 183511) (- 0 245535)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_TransactionFee_TransactionFee'#0'| $t8))) 0)))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_TransactionFee_TransactionFee'#0'| $t8))) 0))) (and (=> (= (ControlFlow 0 183511) (- 0 245560)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8))) 18446744073709551615)))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8))) 18446744073709551615))) (and (=> (= (ControlFlow 0 183511) (- 0 245590)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 183511) (- 0 245608)) (=> (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@11|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@11|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory@7|) _$t0@@1))) (=> (=> (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@11|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@11|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory@7|) _$t0@@1)) (and (=> (= (ControlFlow 0 183511) (- 0 245626)) (= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@11|) 173345816)) (- (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453)))))) (=> (= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@11|) 173345816)) (- (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453))))) (=> (= (ControlFlow 0 183511) (- 0 245646)) (= (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory@0|) 186537453))) 0)))))))))))))))))))))))))))))))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 174520) (- 0 244929)) (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= _$t0@@1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453))) (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) true)) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) _$t0@@1)))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (= (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8)) 0))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (< (|$total_value#$1_Diem_CurrencyInfo'#0'| $t9@@0) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8))))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_TransactionFee_TransactionFee'#0'| $t8))) 0))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8))) 18446744073709551615))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= _$t0@@1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453))) (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) true)) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) _$t0@@1)))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (= (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8)) 0))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (< (|$total_value#$1_Diem_CurrencyInfo'#0'| $t9@@0) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8))))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_TransactionFee_TransactionFee'#0'| $t8))) 0))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8))) 18446744073709551615))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 174520) (- 0 245110)) (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t7)) (= 5 $t11@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t7)) 1)) (= 3 $t11@0@@0))) (and (not (= _$t0@@1 186537453)) (= 2 $t11@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453)) (= 5 $t11@0@@0))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) true) (= 1 $t11@0@@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) _$t0@@1))) (= 4 $t11@0@@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (= (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8)) 0)) (= 7 $t11@0@@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (< (|$total_value#$1_Diem_CurrencyInfo'#0'| $t9@@0) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8)))) (= 8 $t11@0@@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_TransactionFee_TransactionFee'#0'| $t8))) 0)) (= 1 $t11@0@@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$value#$1_Diem_Diem'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| $t8))) 18446744073709551615)) (= 8 $t11@0@@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t11@0@@0))))))))
(let ((anon41_Then_correct  (=> (and (and $abort_flag@16 (= $abort_code@16 $abort_code@16)) (and (= $t11@0@@0 $abort_code@16) (= (ControlFlow 0 183525) 174520))) L6_correct)))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon17_Else_correct|  (=> (and (and (not $abort_flag@15) (= $abort_flag@16 $abort_flag@15)) (and (= |$1_Diem_BurnCapability'#0'_$memory@7| |$1_Diem_BurnCapability'#0'_$memory@5|) (= $abort_code@16 $abort_code@15))) (and (=> (= (ControlFlow 0 183049) 183525) anon41_Then_correct) (=> (= (ControlFlow 0 183049) 183511) anon41_Else_correct)))))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$L3_correct|  (=> (= $abort_flag@16 true) (=> (and (= |$1_Diem_BurnCapability'#0'_$memory@7| |$1_Diem_BurnCapability'#0'_$memory@6|) (= $abort_code@16 |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@1|)) (and (=> (= (ControlFlow 0 183017) 183525) anon41_Then_correct) (=> (= (ControlFlow 0 183017) 183511) anon41_Else_correct))))))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon17_Then_correct|  (=> $abort_flag@15 (=> (and (and (= $abort_code@15 $abort_code@15) (= |$1_Diem_BurnCapability'#0'_$memory@6| |$1_Diem_BurnCapability'#0'_$memory@5|)) (and (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@1| $abort_code@15) (= (ControlFlow 0 183063) 183017))) |inline$$1_Diem_publish_burn_capability'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon16_Then$1_correct|  (=> (= $abort_code@15 $EXEC_FAILURE_CODE) (=> (and (= |$1_Diem_BurnCapability'#0'_$memory@5| |$1_Diem_BurnCapability'#0'_$memory@3|) (= $abort_flag@15 true)) (and (=> (= (ControlFlow 0 183113) 183063) |inline$$1_Diem_publish_burn_capability'#0'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 183113) 183049) |inline$$1_Diem_publish_burn_capability'#0'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon16_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory@3|) _$t0@@1) (= (ControlFlow 0 183111) 183113)) |inline$$1_Diem_publish_burn_capability'#0'$0$anon16_Then$1_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon16_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory@3|) _$t0@@1)) (=> (and (and (= |$1_Diem_BurnCapability'#0'_$memory@4| ($Memory_110979 (|Store__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory@3|) _$t0@@1 true) (|Store__T@[Int]$1_Diem_BurnCapability'#0'_| (|contents#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory@3|) _$t0@@1 |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1|))) (= $abort_code@15 $abort_code@14)) (and (= |$1_Diem_BurnCapability'#0'_$memory@5| |$1_Diem_BurnCapability'#0'_$memory@4|) (= $abort_flag@15 $abort_flag@14))) (and (=> (= (ControlFlow 0 183039) 183063) |inline$$1_Diem_publish_burn_capability'#0'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 183039) 183049) |inline$$1_Diem_publish_burn_capability'#0'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon15_Then_correct|  (=> inline$$Not$2$dst@1 (and (=> (= (ControlFlow 0 183021) 183111) |inline$$1_Diem_publish_burn_capability'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 183021) 183039) |inline$$1_Diem_publish_burn_capability'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon15_Else_correct|  (=> (not inline$$Not$2$dst@1) (=> (and (and (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t13@0| |inline$$1_Diem_publish_burn_capability'#0'$0$$t13@0|) (= |$1_Diem_BurnCapability'#0'_$memory@6| |$1_Diem_BurnCapability'#0'_$memory@3|)) (and (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'#0'$0$$t13@0|) (= (ControlFlow 0 183011) 183017))) |inline$$1_Diem_publish_burn_capability'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon14_Else$1_correct|  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_publish_burn_capability'#0'$0$$t13@0|) (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t13@0| 6)) (and (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t13@0| |inline$$1_Diem_publish_burn_capability'#0'$0$$t13@0|) (= inline$$Not$2$dst@1 inline$$Not$2$dst@1))) (and (=> (= (ControlFlow 0 182995) 183021) |inline$$1_Diem_publish_burn_capability'#0'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 182995) 183011) |inline$$1_Diem_publish_burn_capability'#0'$0$anon15_Else_correct|))))))
(let ((inline$$Not$2$anon0_correct  (=> (and (= inline$$Not$2$dst@1  (not |inline$$1_Diem_publish_burn_capability'#0'$0$$t10@1|)) (= (ControlFlow 0 182955) 182995)) |inline$$1_Diem_publish_burn_capability'#0'$0$anon14_Else$1_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon14_Else_correct|  (=> (not |inline$$1_Diem_publish_burn_capability'#0'$0$$t8@0|) (=> (and (and (|$IsValid'address'| |inline$$1_Diem_publish_burn_capability'#0'$0$$t9@0|) (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t9@0| _$t0@@1)) (and (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t10@1| (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory@3|) |inline$$1_Diem_publish_burn_capability'#0'$0$$t9@0|)) (= (ControlFlow 0 182961) 182955))) inline$$Not$2$anon0_correct))))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon14_Then_correct|  (=> |inline$$1_Diem_publish_burn_capability'#0'$0$$t8@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@11|) 173345816)) (= 5 |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@0|)) (=> (and (and (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@0| |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@0|) (= |$1_Diem_BurnCapability'#0'_$memory@6| |$1_Diem_BurnCapability'#0'_$memory@3|)) (and (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@0|) (= (ControlFlow 0 183139) 183017))) |inline$$1_Diem_publish_burn_capability'#0'$0$L3_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon13_Else_correct|  (=> (and (not |inline$$1_Diem_publish_burn_capability'#0'$0$$t6@0|) (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t8@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@11|) 173345816)))) (and (=> (= (ControlFlow 0 182899) 183139) |inline$$1_Diem_publish_burn_capability'#0'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 182899) 182961) |inline$$1_Diem_publish_burn_capability'#0'$0$anon14_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon13_Then_correct|  (=> (and |inline$$1_Diem_publish_burn_capability'#0'$0$$t6@0| (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'#0'$0$$t5@0|)) (= 5 |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'#0'$0$$t5@0|)) 1)) (= 3 |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@0|))) (and (not (= _$t0@@1 186537453)) (= 2 |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@0|)))) (=> (and (and (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@0| |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@0|) (= |$1_Diem_BurnCapability'#0'_$memory@6| |$1_Diem_BurnCapability'#0'_$memory@3|)) (and (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'#0'$0$$t7@0|) (= (ControlFlow 0 183211) 183017))) |inline$$1_Diem_publish_burn_capability'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'#0'$0$anon0_correct|  (=> (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t4@0| _$t0@@1) (=> (and (and (= _$t0@@1 _$t0@@1) (= |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1|)) (and (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t5@0| _$t0@@1) (= |inline$$1_Diem_publish_burn_capability'#0'$0$$t6@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'#0'$0$$t5@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'#0'$0$$t5@0|)) 1))) (not (= _$t0@@1 186537453)))))) (and (=> (= (ControlFlow 0 182881) 183211) |inline$$1_Diem_publish_burn_capability'#0'$0$anon13_Then_correct|) (=> (= (ControlFlow 0 182881) 182899) |inline$$1_Diem_publish_burn_capability'#0'$0$anon13_Else_correct|))))))
(let ((anon40_Else_correct  (=> (not $abort_flag@14) (=> (and (and (= $t22@3 ($Mutation_137091 (|l#$Mutation_137091| $t22@2) (|p#$Mutation_137091| $t22@2) (|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| (|v#$Mutation_137091| $t22@2)) (|v#$Mutation_117115| |inline$$1_Diem_burn_now'#0'$0$$ret0@1|)))) (= |$1_TransactionFee_TransactionFee'#0'_$memory@0| ($Memory_133174 (|Store__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) (|a#$Global| (|l#$Mutation_137091| $t22@3)) true) (|Store__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) (|a#$Global| (|l#$Mutation_137091| $t22@3)) (|v#$Mutation_137091| $t22@3))))) (and (= $t37 _$t0@@1) (= (ControlFlow 0 183215) 182881))) |inline$$1_Diem_publish_burn_capability'#0'$0$anon0_correct|))))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@14 (= $abort_code@14 $abort_code@14)) (and (= $t11@0@@0 $abort_code@14) (= (ControlFlow 0 183539) 174520))) L6_correct)))
(let ((|inline$$1_Diem_burn_now'#0'$0$anon10_Else_correct|  (=> (not $abort_flag@13) (=> (and (= |inline$$1_Diem_burn_now'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2| (|v#$Mutation_117115| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$ret0@1|)) (= |inline$$1_Diem_burn_now'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2| |inline$$1_Diem_burn_now'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2|)) (=> (and (and (= |inline$$1_Diem_burn_now'#0'$0$$ret0@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$ret0@1|) (= |$1_Diem_CurrencyInfo'#0'_$memory@11| |$1_Diem_CurrencyInfo'#0'_$memory@9|)) (and (= $abort_code@14 $abort_code@13) (= $abort_flag@14 $abort_flag@13))) (and (=> (= (ControlFlow 0 182229) 183539) anon40_Then_correct) (=> (= (ControlFlow 0 182229) 183215) anon40_Else_correct)))))))
(let ((|inline$$1_Diem_burn_now'#0'$0$L3_correct|  (=> (and (and (= |inline$$1_Diem_burn_now'#0'$0$$ret0@1| |inline$$1_Diem_burn_now'#0'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@11| |$1_Diem_CurrencyInfo'#0'_$memory@10|)) (and (= $abort_code@14 |inline$$1_Diem_burn_now'#0'$0$$t20@1|) (= $abort_flag@14 true))) (and (=> (= (ControlFlow 0 176287) 183539) anon40_Then_correct) (=> (= (ControlFlow 0 176287) 183215) anon40_Else_correct)))))
(let ((|inline$$1_Diem_burn_now'#0'$0$anon10_Then_correct|  (=> $abort_flag@13 (=> (and (and (= $abort_code@13 $abort_code@13) (= |inline$$1_Diem_burn_now'#0'$0$$t20@1| $abort_code@13)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@10| |$1_Diem_CurrencyInfo'#0'_$memory@9|) (= (ControlFlow 0 182243) 176287))) |inline$$1_Diem_burn_now'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$L9_correct|  (=> (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2| (|v#$Mutation_117115| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t0@1|)) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2|)) (=> (and (and (= |$1_Diem_CurrencyInfo'#0'_$memory@9| |$1_Diem_CurrencyInfo'#0'_$memory@8|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$ret0@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t0@1|)) (and (= $abort_flag@13 $abort_flag@12) (= $abort_code@13 $abort_code@12))) (and (=> (= (ControlFlow 0 181874) 182243) |inline$$1_Diem_burn_now'#0'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 181874) 182229) |inline$$1_Diem_burn_now'#0'$0$anon10_Else_correct|))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon51_Else_correct|  (=> (and (and (not $abort_flag@12) (= |$1_Diem_CurrencyInfo'#0'_$memory@7| ($Memory_110326 (|Store__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (|a#$Global| (|l#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (|a#$Global| (|l#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4|)) (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4|))))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@8| |$1_Diem_CurrencyInfo'#0'_$memory@7|) (= (ControlFlow 0 181999) 181874))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L9_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon50_Else_correct|  (=> (and (and (not inline$$Not$1$dst@1) (= |$1_Diem_CurrencyInfo'#0'_$memory@5| ($Memory_110326 (|Store__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (|a#$Global| (|l#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (|a#$Global| (|l#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4|)) (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4|))))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@8| |$1_Diem_CurrencyInfo'#0'_$memory@5|) (= (ControlFlow 0 181860) 181874))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L9_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|  (=> (and (and (= |$1_Diem_CurrencyInfo'#0'_$memory@9| |$1_Diem_CurrencyInfo'#0'_$memory@6|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$ret0@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$ret0@0|)) (and (= $abort_flag@13 true) (= $abort_code@13 |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1|))) (and (=> (= (ControlFlow 0 180719) 182243) |inline$$1_Diem_burn_now'#0'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 180719) 182229) |inline$$1_Diem_burn_now'#0'$0$anon10_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon51_Then_correct|  (=> $abort_flag@12 (=> (and (and (= $abort_code@12 $abort_code@12) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| $abort_code@12)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 182013) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|))))
(let ((|inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1| (|v#$Mutation_97564| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t52@1|)) (= $es@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_72623_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1|)))
(let ((stream_new (let ((len (|l#Multiset_72623| stream@@2)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_72623| stream@@2) (|$ToEventRep'$1_Diem_BurnEvent'| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t53@1|))))
(Multiset_72623 (|Store__T@[$EventRep]Int_| (|v#Multiset_72623| stream@@2) (|$ToEventRep'$1_Diem_BurnEvent'| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t53@1|) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_72623_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1| stream_new)))))) (and (=> (= (ControlFlow 0 181971) 182013) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon51_Then_correct|) (=> (= (ControlFlow 0 181971) 181999) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon51_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon50_Then_correct|  (=> (and (and inline$$Not$1$dst@1 (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t52@1| ($Mutation_97564 (|l#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4|) (seq.++ (|p#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4|) (seq.unit 9)) (|$burn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4|))))) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t53@1| ($1_Diem_BurnEvent |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t18@0| 186537453)) (= (ControlFlow 0 181977) 181971))) |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$anon0_correct|)))
(let ((inline$$Not$1$anon0_correct  (=> (= inline$$Not$1$dst@1  (not |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t50@1|)) (and (=> (= (ControlFlow 0 181832) 181977) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon50_Then_correct|) (=> (= (ControlFlow 0 181832) 181860) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon50_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon49_Else_correct|  (=> (and (not $abort_flag@12) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t49@1| ($Mutation_13434 (|l#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|) (seq.++ (|p#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|) (seq.unit 1)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|))))) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t49@2| ($Mutation_13434 (|l#$Mutation_13434| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t49@1|) (|p#$Mutation_13434| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t49@1|) inline$$Sub$2$dst@2)) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4| ($Mutation_117899 (|l#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|) (|p#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|) (|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|v#$Mutation_13434| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t49@2|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|$mint_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|$burn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)))))) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t50@1| (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@4|))) (= (ControlFlow 0 181838) 181832))) inline$$Not$1$anon0_correct))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon49_Then_correct|  (=> $abort_flag@12 (=> (and (and (= $abort_code@12 $abort_code@12) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| $abort_code@12)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 182027) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|))))
(let ((inline$$Sub$2$anon3_Then$1_correct  (=> (= $abort_code@12 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@12 true) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@0)) (and (=> (= (ControlFlow 0 181748) 182027) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon49_Then_correct|) (=> (= (ControlFlow 0 181748) 181838) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon49_Else_correct|))))))
(let ((inline$$Sub$2$anon3_Then_correct  (=> (and (< |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t47@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1|) (= (ControlFlow 0 181746) 181748)) inline$$Sub$2$anon3_Then$1_correct)))
(let ((inline$$Sub$2$anon3_Else_correct  (=> (<= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t47@1|) (=> (and (and (= inline$$Sub$2$dst@1 (- |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t47@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1|)) (= $abort_code@12 $abort_code@11)) (and (= $abort_flag@12 $abort_flag@11) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@1))) (and (=> (= (ControlFlow 0 181698) 182027) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon49_Then_correct|) (=> (= (ControlFlow 0 181698) 181838) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon49_Else_correct|))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon48_Then_correct|  (=> (and inline$$Ge$2$dst@1 (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t47@1| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)))) (and (=> (= (ControlFlow 0 181754) 181746) inline$$Sub$2$anon3_Then_correct) (=> (= (ControlFlow 0 181754) 181698) inline$$Sub$2$anon3_Else_correct)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon48_Else_correct|  (=> (and (not inline$$Ge$2$dst@1) (= |$1_Diem_CurrencyInfo'#0'_$memory@4| ($Memory_110326 (|Store__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (|a#$Global| (|l#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (|a#$Global| (|l#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|)) (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|))))) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t46@0| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t46@0|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t46@0|)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@4|) (= (ControlFlow 0 181607) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon47_Else$1_correct|  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t46@0|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t46@0| 8)) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t46@0| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t46@0|) (= inline$$Ge$2$dst@1 inline$$Ge$2$dst@1))) (and (=> (= (ControlFlow 0 181579) 181754) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon48_Then_correct|) (=> (= (ControlFlow 0 181579) 181607) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon48_Else_correct|))))))
(let ((inline$$Ge$2$anon0_correct  (=> (and (= inline$$Ge$2$dst@1 (>= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t43@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1|)) (= (ControlFlow 0 181543) 181579)) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon47_Else$1_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon47_Else_correct|  (=> (and (not $abort_flag@11) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t42@1| ($Mutation_13434 (|l#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|) (seq.++ (|p#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|) (seq.unit 0)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|))))) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t42@2| ($Mutation_13434 (|l#$Mutation_13434| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t42@1|) (|p#$Mutation_13434| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t42@1|) inline$$Sub$1$dst@2)) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3| ($Mutation_117899 (|l#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|) (|p#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|) (|$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_13434| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t42@2|) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)) (|$mint_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)) (|$burn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)))))) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t43@1| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@3|))) (= (ControlFlow 0 181549) 181543))) inline$$Ge$2$anon0_correct))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon47_Then_correct|  (=> $abort_flag@11 (=> (and (and (= $abort_code@11 $abort_code@11) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| $abort_code@11)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 182041) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|))))
(let ((inline$$Sub$1$anon3_Then$1_correct  (=> (= $abort_flag@11 true) (=> (and (= $abort_code@11 $EXEC_FAILURE_CODE) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@0)) (and (=> (= (ControlFlow 0 181449) 182041) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon47_Then_correct|) (=> (= (ControlFlow 0 181449) 181549) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon47_Else_correct|))))))
(let ((inline$$Sub$1$anon3_Then_correct  (=> (and (< |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t39@1| inline$$CastU128$1$dst@1) (= (ControlFlow 0 181447) 181449)) inline$$Sub$1$anon3_Then$1_correct)))
(let ((inline$$Sub$1$anon3_Else_correct  (=> (<= inline$$CastU128$1$dst@1 |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t39@1|) (=> (and (and (= inline$$Sub$1$dst@1 (- |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t39@1| inline$$CastU128$1$dst@1)) (= $abort_flag@11 $abort_flag@10)) (and (= $abort_code@11 $abort_code@10) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@1))) (and (=> (= (ControlFlow 0 181399) 182041) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon47_Then_correct|) (=> (= (ControlFlow 0 181399) 181549) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon47_Else_correct|))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon46_Else_correct|  (=> (not $abort_flag@10) (and (=> (= (ControlFlow 0 181455) 181447) inline$$Sub$1$anon3_Then_correct) (=> (= (ControlFlow 0 181455) 181399) inline$$Sub$1$anon3_Else_correct)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon46_Then_correct|  (=> $abort_flag@10 (=> (and (and (= $abort_code@10 $abort_code@10) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| $abort_code@10)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 182055) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|))))
(let ((inline$$CastU128$1$anon3_Then$1_correct  (=> (= $abort_code@10 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@10 true) (= inline$$CastU128$1$dst@1 inline$$CastU128$1$dst@0)) (and (=> (= (ControlFlow 0 181304) 182055) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon46_Then_correct|) (=> (= (ControlFlow 0 181304) 181455) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon46_Else_correct|))))))
(let ((inline$$CastU128$1$anon3_Then_correct  (=> (and (> |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1| $MAX_U128) (= (ControlFlow 0 181302) 181304)) inline$$CastU128$1$anon3_Then$1_correct)))
(let ((inline$$CastU128$1$anon3_Else_correct  (=> (and (and (>= $MAX_U128 |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1|) (= $abort_code@10 $abort_code@9)) (and (= $abort_flag@10 $abort_flag@9) (= inline$$CastU128$1$dst@1 |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1|))) (and (=> (= (ControlFlow 0 181254) 182055) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon46_Then_correct|) (=> (= (ControlFlow 0 181254) 181455) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon46_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon45_Then_correct|  (=> (and inline$$Ge$1$dst@1 (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t39@1| (|$total_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|)))) (and (=> (= (ControlFlow 0 181310) 181302) inline$$CastU128$1$anon3_Then_correct) (=> (= (ControlFlow 0 181310) 181254) inline$$CastU128$1$anon3_Else_correct)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon45_Else_correct|  (=> (not inline$$Ge$1$dst@1) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t38@0| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t38@0|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t38@0|)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 181175) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon44_Else$1_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t38@0|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t38@0| 8)) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t38@0| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t38@0|) (= inline$$Ge$1$dst@1 inline$$Ge$1$dst@1))) (and (=> (= (ControlFlow 0 181159) 181310) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon45_Then_correct|) (=> (= (ControlFlow 0 181159) 181175) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon45_Else_correct|))))))
(let ((inline$$Ge$1$anon0_correct  (=> (and (= inline$$Ge$1$dst@1 (>= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t34@1| inline$$CastU128$0$dst@1)) (= (ControlFlow 0 181123) 181159)) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon44_Else$1_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon44_Else_correct|  (=> (and (not $abort_flag@9) (= (ControlFlow 0 181129) 181123)) inline$$Ge$1$anon0_correct)))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon44_Then_correct|  (=> $abort_flag@9 (=> (and (and (= $abort_code@9 $abort_code@9) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| $abort_code@9)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 182069) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|))))
(let ((inline$$CastU128$0$anon3_Then$1_correct  (=> (= $abort_flag@9 true) (=> (and (= $abort_code@9 $EXEC_FAILURE_CODE) (= inline$$CastU128$0$dst@1 inline$$CastU128$0$dst@0)) (and (=> (= (ControlFlow 0 181069) 182069) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon44_Then_correct|) (=> (= (ControlFlow 0 181069) 181129) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon44_Else_correct|))))))
(let ((inline$$CastU128$0$anon3_Then_correct  (=> (and (> |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1| $MAX_U128) (= (ControlFlow 0 181067) 181069)) inline$$CastU128$0$anon3_Then$1_correct)))
(let ((inline$$CastU128$0$anon3_Else_correct  (=> (and (and (>= $MAX_U128 |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1|) (= $abort_flag@9 $abort_flag@8)) (and (= $abort_code@9 $abort_code@8) (= inline$$CastU128$0$dst@1 |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1|))) (and (=> (= (ControlFlow 0 181019) 182069) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon44_Then_correct|) (=> (= (ControlFlow 0 181019) 181129) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon44_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon43_Else_correct|  (=> (and (and (not $abort_flag@8) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|))) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t34@1| (|$total_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2|))))) (and (=> (= (ControlFlow 0 181075) 181067) inline$$CastU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 181075) 181019) inline$$CastU128$0$anon3_Else_correct)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon43_Then_correct|  (=> $abort_flag@8 (=> (and (and (= $abort_code@8 $abort_code@8) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| $abort_code@8)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 182083) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon42_Then$1_correct|  (=> (= $abort_code@8 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@8 true) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@0|)) (and (=> (= (ControlFlow 0 182135) 182083) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon43_Then_correct|) (=> (= (ControlFlow 0 182135) 181075) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon43_Else_correct|))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon42_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (= (ControlFlow 0 182133) 182135)) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon42_Then$1_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon42_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@1| ($Mutation_117899 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816))) (= $abort_code@8 $abort_code@7)) (and (= $abort_flag@8 $abort_flag@7) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@2| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@1|))) (and (=> (= (ControlFlow 0 180924) 182083) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon43_Then_correct|) (=> (= (ControlFlow 0 180924) 181075) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon43_Else_correct|))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon41_Else_correct|  (=> (not $abort_flag@7) (and (=> (= (ControlFlow 0 180902) 182133) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 180902) 180924) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon42_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon41_Then_correct|  (=> $abort_flag@7 (=> (and (and (= $abort_code@7 $abort_code@7) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| $abort_code@7)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 182149) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|))))
(let ((inline$$1_CoreAddresses_CURRENCY_INFO_ADDRESS$1$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 180888) 182149) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 180888) 180902) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon41_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon40_Else_correct|  (=> (and (not |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t31@0|) (= (ControlFlow 0 180894) 180888)) inline$$1_CoreAddresses_CURRENCY_INFO_ADDRESS$1$anon0_correct)))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon40_Then_correct|  (=> |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t31@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (= 5 |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@0|)) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@0| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@0|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@0|)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 182175) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon39_Then_correct|  (=> inline$$Gt$1$dst@1 (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@1| ($Mutation_117946 (|l#$Mutation_117115| |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1|) (seq.++ (|p#$Mutation_117115| |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1|) (seq.unit 0)) (|$to_burn#$1_Diem_Preburn'#0'| (|v#$Mutation_117115| |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1|)))) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t29@1| (|v#$Mutation_117946| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@1|))) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@2| ($Mutation_117946 (|l#$Mutation_117946| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@1|) (|p#$Mutation_117946| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@1|) |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_Diem'#0''@1|)) (|$IsValid'$1_Diem_Diem'#0''| (|v#$Mutation_117946| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@2|)))) (=> (and (and (and (|$IsValid'$1_Diem_Diem'#0''| (|v#$Mutation_117946| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@2|)) (|$IsValid'$1_Diem_Diem'#0''| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t28@0|)) (and (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t28@0|) (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t29@1|)) (= (|$value#$1_Diem_Diem'#0'| (|v#$Mutation_117946| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@2|)) 0))) (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t0@1| ($Mutation_117115 (|l#$Mutation_117115| |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1|) (|p#$Mutation_117115| |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1|) (|$1_Diem_Preburn'#0'| (|v#$Mutation_117946| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@2|)))) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1| (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t28@0|))) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t30@1|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t31@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)))))) (and (=> (= (ControlFlow 0 180817) 182175) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon40_Then_correct|) (=> (= (ControlFlow 0 180817) 180894) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon40_Else_correct|)))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon39_Else_correct|  (=> (not inline$$Gt$1$dst@1) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t26@0| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t26@0|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t26@0|)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 180713) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon38_Else$1_correct|  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t26@0|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t26@0| 1)) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t26@0| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t26@0|) (= inline$$Gt$1$dst@1 inline$$Gt$1$dst@1))) (and (=> (= (ControlFlow 0 180697) 180817) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon39_Then_correct|) (=> (= (ControlFlow 0 180697) 180713) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon39_Else_correct|))))))
(let ((inline$$Gt$1$anon0_correct  (=> (and (= inline$$Gt$1$dst@1 (> |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t22@1| 0)) (= (ControlFlow 0 180661) 180697)) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon38_Else$1_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon38_Else_correct|  (=> (and (and (and (not |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t19@0|) (|$IsValid'vec'u8''| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t18@0|)) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t18@0| (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816))) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t18@0| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t18@0|))) (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t21@1| (|$to_burn#$1_Diem_Preburn'#0'| (|v#$Mutation_117115| |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1|))) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t22@1| (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t21@1|))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 180667) 180661)))) inline$$Gt$1$anon0_correct)))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon38_Then_correct|  (=> |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t19@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (= 5 |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@0|)) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@0| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@0|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t20@0|)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@6| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 182201) 180719))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$L13_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'#0'$0$anon0_correct|  (=> (= (seq.len (|p#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t4@0|)) 0) (=> (and (and (and (and (= (seq.len (|p#$Mutation_117946| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t27@0|)) 0) (= (seq.len (|p#$Mutation_117899| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t33@0|)) 0)) (and (= (seq.len (|p#$Mutation_13434| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t42@0|)) 0) (= (seq.len (|p#$Mutation_13434| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t49@0|)) 0))) (and (and (= (seq.len (|p#$Mutation_97564| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t52@0|)) 0) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t12@0| (|v#$Mutation_117115| |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1|))) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t13@0| (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t12@0|))) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t14@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816))))) (and (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t15@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t16@0| (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)))) (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t17@0| (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t15@0|)) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1| (|v#$Mutation_117115| |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1|)))) (and (and (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1| |inline$$1_Diem_burn_with_resource_cap'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1|) (= 186537453 186537453)) (and (= |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1|) (= |inline$$1_Diem_burn_with_resource_cap'#0'$0$$t19@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816))))))) (and (=> (= (ControlFlow 0 180579) 182201) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon38_Then_correct|) (=> (= (ControlFlow 0 180579) 180667) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon38_Else_correct|))))))
(let ((|inline$$1_Diem_burn_now'#0'$0$anon9_Else_correct|  (=> (and (and (and (not $abort_flag@7) (= |inline$$1_Diem_burn_now'#0'$0$$t26@0| (|v#$Mutation_117115| |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1|))) (and (= |inline$$1_Diem_burn_now'#0'$0$$t27@0| (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |inline$$1_Diem_burn_now'#0'$0$$t26@0|))) (= |inline$$1_Diem_burn_now'#0'$0$$t28@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)))) (and (and (= |inline$$1_Diem_burn_now'#0'$0$$t29@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (= |inline$$1_Diem_burn_now'#0'$0$$t30@0| (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)))) (and (= |inline$$1_Diem_burn_now'#0'$0$$t31@0| (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_burn_now'#0'$0$$t29@0|)) (= (ControlFlow 0 182207) 180579)))) |inline$$1_Diem_burn_with_resource_cap'#0'$0$anon0_correct|)))
(let ((|inline$$1_Diem_burn_now'#0'$0$anon9_Then_correct|  (=> $abort_flag@7 (=> (and (and (= $abort_code@7 $abort_code@7) (= |inline$$1_Diem_burn_now'#0'$0$$t20@1| $abort_code@7)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@10| |$1_Diem_CurrencyInfo'#0'_$memory@3|) (= (ControlFlow 0 182257) 176287))) |inline$$1_Diem_burn_now'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$L7_correct|  (=> (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2| (|v#$Mutation_117115| |inline$$1_Diem_preburn_with_resource'#0'$0$$t1@1|)) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2| |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_Preburn'#0''@2|)) (=> (and (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1| |inline$$1_Diem_preburn_with_resource'#0'$0$$t1@1|) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@7 $abort_code@6) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory@2|))) (and (=> (= (ControlFlow 0 178703) 182257) |inline$$1_Diem_burn_now'#0'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 178703) 182207) |inline$$1_Diem_burn_now'#0'$0$anon9_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon47_Else_correct|  (=> (and (and (not $abort_flag@6) (= |$1_Diem_CurrencyInfo'#0'_$memory@1| ($Memory_110326 (|Store__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) (|a#$Global| (|l#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) (|a#$Global| (|l#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3|)) (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3|))))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@1|) (= (ControlFlow 0 178828) 178703))) |inline$$1_Diem_preburn_with_resource'#0'$0$L7_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon46_Else_correct|  (=> (and (and (not inline$$Not$0$dst@1@@0) (= |$1_Diem_CurrencyInfo'#0'_$memory@0| ($Memory_110326 (|Store__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) (|a#$Global| (|l#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) (|a#$Global| (|l#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3|)) (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3|))))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@0|) (= (ControlFlow 0 178689) 178703))) |inline$$1_Diem_preburn_with_resource'#0'$0$L7_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|  (=> (and (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@1| |inline$$1_Diem_preburn_with_resource'#0'$0$$ret0@0|) (= $abort_flag@7 true)) (and (= $abort_code@7 |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory|))) (and (=> (= (ControlFlow 0 177918) 182257) |inline$$1_Diem_burn_now'#0'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 177918) 182207) |inline$$1_Diem_burn_now'#0'$0$anon9_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon47_Then_correct|  (=> (and (and $abort_flag@6 (= $abort_code@6 $abort_code@6)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| $abort_code@6) (= (ControlFlow 0 178842) 177918))) |inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|)))
(let ((|inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1| (|v#$Mutation_97564| |inline$$1_Diem_preburn_with_resource'#0'$0$$t41@1|)) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_72623_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1|)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_72623| stream@@3)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_72623| stream@@3) (|$ToEventRep'$1_Diem_PreburnEvent'| |inline$$1_Diem_preburn_with_resource'#0'$0$$t42@1|))))
(Multiset_72623 (|Store__T@[$EventRep]Int_| (|v#Multiset_72623| stream@@3) (|$ToEventRep'$1_Diem_PreburnEvent'| |inline$$1_Diem_preburn_with_resource'#0'$0$$t42@1|) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_72623_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1| stream_new@@0)))))) (and (=> (= (ControlFlow 0 178800) 178842) |inline$$1_Diem_preburn_with_resource'#0'$0$anon47_Then_correct|) (=> (= (ControlFlow 0 178800) 178828) |inline$$1_Diem_preburn_with_resource'#0'$0$anon47_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon46_Then_correct|  (=> (and (and inline$$Not$0$dst@1@@0 (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t41@1| ($Mutation_97564 (|l#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3|) (seq.++ (|p#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3|) (seq.unit 10)) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3|))))) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t42@1| ($1_Diem_PreburnEvent |inline$$1_Diem_value'#0'$0$$t1@1| |inline$$1_Diem_preburn_with_resource'#0'$0$$t26@0| 186537453)) (= (ControlFlow 0 178806) 178800))) |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$anon0_correct|)))
(let ((inline$$Not$0$anon0_correct@@0  (=> (= inline$$Not$0$dst@1@@0  (not |inline$$1_Diem_preburn_with_resource'#0'$0$$t39@1|)) (and (=> (= (ControlFlow 0 178661) 178806) |inline$$1_Diem_preburn_with_resource'#0'$0$anon46_Then_correct|) (=> (= (ControlFlow 0 178661) 178689) |inline$$1_Diem_preburn_with_resource'#0'$0$anon46_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon45_Else_correct|  (=> (and (not $abort_flag@6) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t38@1| ($Mutation_13434 (|l#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|) (seq.++ (|p#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|) (seq.unit 1)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|))))) (=> (and (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t38@2| ($Mutation_13434 (|l#$Mutation_13434| |inline$$1_Diem_preburn_with_resource'#0'$0$$t38@1|) (|p#$Mutation_13434| |inline$$1_Diem_preburn_with_resource'#0'$0$$t38@1|) inline$$AddU64$0$dst@2)) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3| ($Mutation_117899 (|l#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|) (|p#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|) (|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (|v#$Mutation_13434| |inline$$1_Diem_preburn_with_resource'#0'$0$$t38@2|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (|$mint_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (|$burn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)))))) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t39@1| (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@3|))) (= (ControlFlow 0 178667) 178661))) inline$$Not$0$anon0_correct@@0))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon45_Then_correct|  (=> (and (and $abort_flag@6 (= $abort_code@6 $abort_code@6)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| $abort_code@6) (= (ControlFlow 0 178856) 177918))) |inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@6 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@6 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 178577) 178856) |inline$$1_Diem_preburn_with_resource'#0'$0$anon45_Then_correct|) (=> (= (ControlFlow 0 178577) 178667) |inline$$1_Diem_preburn_with_resource'#0'$0$anon45_Else_correct|))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ |inline$$1_Diem_preburn_with_resource'#0'$0$$t36@1| |inline$$1_Diem_value'#0'$0$$t1@1|) $MAX_U64) (= (ControlFlow 0 178575) 178577)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ |inline$$1_Diem_preburn_with_resource'#0'$0$$t36@1| |inline$$1_Diem_value'#0'$0$$t1@1|)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ |inline$$1_Diem_preburn_with_resource'#0'$0$$t36@1| |inline$$1_Diem_value'#0'$0$$t1@1|)) (= $abort_code@6 $abort_code@5@@0)) (and (= $abort_flag@6 $abort_flag@5@@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 178523) 178856) |inline$$1_Diem_preburn_with_resource'#0'$0$anon45_Then_correct|) (=> (= (ControlFlow 0 178523) 178667) |inline$$1_Diem_preburn_with_resource'#0'$0$anon45_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon44_Then_correct|  (=> (and inline$$Ge$0$dst@1 (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t36@1| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)))) (and (=> (= (ControlFlow 0 178583) 178575) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 178583) 178523) inline$$AddU64$0$anon3_Else_correct)))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon44_Else_correct|  (=> (and (and (not inline$$Ge$0$dst@1) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t35@0| |inline$$1_Diem_preburn_with_resource'#0'$0$$t35@0|)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| |inline$$1_Diem_preburn_with_resource'#0'$0$$t35@0|) (= (ControlFlow 0 178420) 177918))) |inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon43_Else$1_correct|  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_preburn_with_resource'#0'$0$$t35@0|) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t35@0| 8)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t35@0| |inline$$1_Diem_preburn_with_resource'#0'$0$$t35@0|) (= inline$$Ge$0$dst@1 inline$$Ge$0$dst@1))) (and (=> (= (ControlFlow 0 178404) 178583) |inline$$1_Diem_preburn_with_resource'#0'$0$anon44_Then_correct|) (=> (= (ControlFlow 0 178404) 178420) |inline$$1_Diem_preburn_with_resource'#0'$0$anon44_Else_correct|))))))
(let ((inline$$Ge$0$anon0_correct  (=> (and (= inline$$Ge$0$dst@1 (>= inline$$Sub$0$dst@2 |inline$$1_Diem_value'#0'$0$$t1@1|)) (= (ControlFlow 0 178368) 178404)) |inline$$1_Diem_preburn_with_resource'#0'$0$anon43_Else$1_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon43_Else_correct|  (=> (and (not $abort_flag@5@@0) (= (ControlFlow 0 178374) 178368)) inline$$Ge$0$anon0_correct)))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon43_Then_correct|  (=> (and (and $abort_flag@5@@0 (= $abort_code@5@@0 $abort_code@5@@0)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| $abort_code@5@@0) (= (ControlFlow 0 178870) 177918))) |inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|)))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@5@@0 true) (=> (and (= $abort_code@5@@0 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 178314) 178870) |inline$$1_Diem_preburn_with_resource'#0'$0$anon43_Then_correct|) (=> (= (ControlFlow 0 178314) 178374) |inline$$1_Diem_preburn_with_resource'#0'$0$anon43_Else_correct|))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< 18446744073709551615 |inline$$1_Diem_preburn_with_resource'#0'$0$$t31@1|) (= (ControlFlow 0 178312) 178314)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= |inline$$1_Diem_preburn_with_resource'#0'$0$$t31@1| 18446744073709551615) (=> (and (and (= inline$$Sub$0$dst@1 (- 18446744073709551615 |inline$$1_Diem_preburn_with_resource'#0'$0$$t31@1|)) (= $abort_flag@5@@0 $abort_flag@4@@0)) (and (= $abort_code@5@@0 $abort_code@4@@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 178264) 178870) |inline$$1_Diem_preburn_with_resource'#0'$0$anon43_Then_correct|) (=> (= (ControlFlow 0 178264) 178374) |inline$$1_Diem_preburn_with_resource'#0'$0$anon43_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon42_Else_correct|  (=> (not $abort_flag@4@@0) (=> (and (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|)) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1| |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1|)) (and (|$IsValid'u64'| 18446744073709551615) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t31@1| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2|))))) (and (=> (= (ControlFlow 0 178320) 178312) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 178320) 178264) inline$$Sub$0$anon3_Else_correct))))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon42_Then_correct|  (=> (and (and $abort_flag@4@@0 (= $abort_code@4@@0 $abort_code@4@@0)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| $abort_code@4@@0) (= (ControlFlow 0 178884) 177918))) |inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon41_Then$1_correct|  (=> (= $abort_code@4@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@4@@0 true) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@0|)) (and (=> (= (ControlFlow 0 178936) 178884) |inline$$1_Diem_preburn_with_resource'#0'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 178936) 178320) |inline$$1_Diem_preburn_with_resource'#0'$0$anon42_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon41_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= (ControlFlow 0 178934) 178936)) |inline$$1_Diem_preburn_with_resource'#0'$0$anon41_Then$1_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon41_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (and (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@1| ($Mutation_117899 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $abort_code@4@@0 $abort_code@3@@0)) (and (= $abort_flag@4@@0 $abort_flag@3@@0) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@2| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@1|))) (and (=> (= (ControlFlow 0 178151) 178884) |inline$$1_Diem_preburn_with_resource'#0'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 178151) 178320) |inline$$1_Diem_preburn_with_resource'#0'$0$anon42_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon40_Else_correct|  (=> (not $abort_flag@3@@0) (and (=> (= (ControlFlow 0 178129) 178934) |inline$$1_Diem_preburn_with_resource'#0'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 178129) 178151) |inline$$1_Diem_preburn_with_resource'#0'$0$anon41_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon40_Then_correct|  (=> (and (and $abort_flag@3@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| $abort_code@3@@0) (= (ControlFlow 0 178950) 177918))) |inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|)))
(let ((inline$$1_CoreAddresses_CURRENCY_INFO_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 178115) 178950) |inline$$1_Diem_preburn_with_resource'#0'$0$anon40_Then_correct|) (=> (= (ControlFlow 0 178115) 178129) |inline$$1_Diem_preburn_with_resource'#0'$0$anon40_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon39_Else_correct|  (=> (not |inline$$1_Diem_preburn_with_resource'#0'$0$$t27@0|) (=> (and (and (|$IsValid'vec'u8''| |inline$$1_Diem_preburn_with_resource'#0'$0$$t26@0|) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t26@0| (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t26@0| |inline$$1_Diem_preburn_with_resource'#0'$0$$t26@0|) (= (ControlFlow 0 178121) 178115))) inline$$1_CoreAddresses_CURRENCY_INFO_ADDRESS$0$anon0_correct))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon39_Then_correct|  (=> |inline$$1_Diem_preburn_with_resource'#0'$0$$t27@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@0|)) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@0| |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@0|)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@0|) (= (ControlFlow 0 178976) 177918))) |inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon38_Else_correct|  (=> (not |inline$$1_Diem_preburn_with_resource'#0'$0$$t25@0|) (=> (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@2| ($Mutation_117946 (|l#$Mutation_117946| |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@1|) (|p#$Mutation_117946| |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@1|) |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_Diem'#0''@1|)) (|$IsValid'$1_Diem_Diem'#0''| (|v#$Mutation_117946| |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@2|))) (=> (and (and (|$IsValid'$1_Diem_Diem'#0''| (|v#$Mutation_117946| |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@2|)) (= (|$value#$1_Diem_Diem'#0'| (|v#$Mutation_117946| |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@2|)) (+ (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_preburn_with_resource'#0'$0$$t24@1|) (|$value#$1_Diem_Diem'#0'| $t24@@0)))) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t1@1| ($Mutation_117115 (|l#$Mutation_117115| $t27@0) (|p#$Mutation_117115| $t27@0) (|$1_Diem_Preburn'#0'| (|v#$Mutation_117946| |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@2|)))) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t27@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 178026) 178976) |inline$$1_Diem_preburn_with_resource'#0'$0$anon39_Then_correct|) (=> (= (ControlFlow 0 178026) 178121) |inline$$1_Diem_preburn_with_resource'#0'$0$anon39_Else_correct|)))))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon38_Then_correct|  (=> |inline$$1_Diem_preburn_with_resource'#0'$0$$t25@0| (=> (and (and (and (> (+ (|$value#$1_Diem_Diem'#0'| (|v#$Mutation_117946| |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@1|)) (|$value#$1_Diem_Diem'#0'| $t24@@0)) 18446744073709551615) (= 8 |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@0|)) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@0| |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@0|)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@0|) (= (ControlFlow 0 179012) 177918))) |inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon37_Then_correct|  (=> (and (and |inline$$1_Diem_preburn_with_resource'#0'$0$$t20@1| (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@1| ($Mutation_117946 (|l#$Mutation_117115| $t27@0) (seq.++ (|p#$Mutation_117115| $t27@0) (seq.unit 0)) (|$to_burn#$1_Diem_Preburn'#0'| (|v#$Mutation_117115| $t27@0))))) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t24@1| (|v#$Mutation_117946| |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@1|)) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t25@0| (> (+ (|$value#$1_Diem_Diem'#0'| (|v#$Mutation_117946| |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@1|)) (|$value#$1_Diem_Diem'#0'| $t24@@0)) 18446744073709551615)))) (and (=> (= (ControlFlow 0 177958) 179012) |inline$$1_Diem_preburn_with_resource'#0'$0$anon38_Then_correct|) (=> (= (ControlFlow 0 177958) 178026) |inline$$1_Diem_preburn_with_resource'#0'$0$anon38_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon37_Else_correct|  (=> (and (and (not |inline$$1_Diem_preburn_with_resource'#0'$0$$t20@1|) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t22@0| |inline$$1_Diem_preburn_with_resource'#0'$0$$t22@0|)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| |inline$$1_Diem_preburn_with_resource'#0'$0$$t22@0|) (= (ControlFlow 0 177912) 177918))) |inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon36_Else_correct|  (=> (and (and (and (not $abort_flag@3@@0) (|$IsValid'u64'| 0)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t20@1| (= |inline$$1_Diem_value'#0'$1$$t1@1| 0)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| |inline$$1_Diem_preburn_with_resource'#0'$0$$t22@0|) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t22@0| 1)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t22@0| |inline$$1_Diem_preburn_with_resource'#0'$0$$t22@0|) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t20@1| |inline$$1_Diem_preburn_with_resource'#0'$0$$t20@1|)))) (and (=> (= (ControlFlow 0 177896) 177958) |inline$$1_Diem_preburn_with_resource'#0'$0$anon37_Then_correct|) (=> (= (ControlFlow 0 177896) 177912) |inline$$1_Diem_preburn_with_resource'#0'$0$anon37_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon36_Then_correct|  (=> (and (and $abort_flag@3@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| $abort_code@3@@0) (= (ControlFlow 0 179026) 177918))) |inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|)))
(let ((|inline$$1_Diem_value'#0'$1$anon0_correct|  (=> (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t17@1| |inline$$1_Diem_preburn_with_resource'#0'$0$$t17@1|) (=> (and (= |inline$$1_Diem_value'#0'$1$$t1@1| (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_preburn_with_resource'#0'$0$$t17@1|)) (= |inline$$1_Diem_value'#0'$1$$t1@1| |inline$$1_Diem_value'#0'$1$$t1@1|)) (and (=> (= (ControlFlow 0 177842) 179026) |inline$$1_Diem_preburn_with_resource'#0'$0$anon36_Then_correct|) (=> (= (ControlFlow 0 177842) 177896) |inline$$1_Diem_preburn_with_resource'#0'$0$anon36_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon35_Else_correct|  (=> (and (and (not $abort_flag@3@@0) (= |inline$$1_Diem_value'#0'$0$$t1@1| |inline$$1_Diem_value'#0'$0$$t1@1|)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t17@1| (|$to_burn#$1_Diem_Preburn'#0'| (|v#$Mutation_117115| $t27@0))) (= (ControlFlow 0 177848) 177842))) |inline$$1_Diem_value'#0'$1$anon0_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon35_Then_correct|  (=> (and (and $abort_flag@3@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t16@1| $abort_code@3@@0) (= (ControlFlow 0 179040) 177918))) |inline$$1_Diem_preburn_with_resource'#0'$0$L10_correct|)))
(let ((|inline$$1_Diem_value'#0'$0$anon0_correct|  (=> (= $t24@@0 $t24@@0) (=> (and (= |inline$$1_Diem_value'#0'$0$$t1@1| (|$value#$1_Diem_Diem'#0'| $t24@@0)) (= |inline$$1_Diem_value'#0'$0$$t1@1| |inline$$1_Diem_value'#0'$0$$t1@1|)) (and (=> (= (ControlFlow 0 177721) 179040) |inline$$1_Diem_preburn_with_resource'#0'$0$anon35_Then_correct|) (=> (= (ControlFlow 0 177721) 177848) |inline$$1_Diem_preburn_with_resource'#0'$0$anon35_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'#0'$0$anon0_correct|  (=> (= (seq.len (|p#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t5@0|)) 0) (=> (and (= (seq.len (|p#$Mutation_117946| |inline$$1_Diem_preburn_with_resource'#0'$0$$t23@0|)) 0) (= (seq.len (|p#$Mutation_117899| |inline$$1_Diem_preburn_with_resource'#0'$0$$t29@0|)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_13434| |inline$$1_Diem_preburn_with_resource'#0'$0$$t38@0|)) 0) (= (seq.len (|p#$Mutation_97564| |inline$$1_Diem_preburn_with_resource'#0'$0$$t41@0|)) 0)) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t10@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t11@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (and (and (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t12@0| (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t13@0| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_preburn_with_resource'#0'$0$$t11@0|))) (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$t14@0| ($1_Diem_PreburnEvent (|$value#$1_Diem_Diem'#0'| $t24@@0) |inline$$1_Diem_preburn_with_resource'#0'$0$$t12@0| 186537453)) (= $t24@@0 $t24@@0))) (and (and (= |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1| (|v#$Mutation_117115| $t27@0)) (= |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1| |inline$$1_Diem_preburn_with_resource'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1|)) (and (= 186537453 186537453) (= (ControlFlow 0 177727) 177721)))) |inline$$1_Diem_value'#0'$0$anon0_correct|))))))
(let ((|inline$$1_Diem_burn_now'#0'$0$anon8_Then_correct|  (=> inline$$Gt$0$dst@1 (=> (and (= |inline$$1_Diem_burn_now'#0'$0$$t21@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_burn_now'#0'$0$$t22@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_burn_now'#0'$0$$t23@0| (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= |inline$$1_Diem_burn_now'#0'$0$$t24@0| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_burn_now'#0'$0$$t22@0|))) (and (= |inline$$1_Diem_burn_now'#0'$0$$t25@0| ($1_Diem_PreburnEvent (|$value#$1_Diem_Diem'#0'| $t24@@0) |inline$$1_Diem_burn_now'#0'$0$$t23@0| 186537453)) (= (ControlFlow 0 179046) 177727))) |inline$$1_Diem_preburn_with_resource'#0'$0$anon0_correct|)))))
(let ((|inline$$1_Diem_burn_now'#0'$0$anon8_Else_correct|  (=> (not inline$$Gt$0$dst@1) (=> (and (and (= |inline$$1_Diem_burn_now'#0'$0$$t19@0| |inline$$1_Diem_burn_now'#0'$0$$t19@0|) (= |inline$$1_Diem_burn_now'#0'$0$$t20@1| |inline$$1_Diem_burn_now'#0'$0$$t19@0|)) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@10| |$1_Diem_CurrencyInfo'#0'_$memory|) (= (ControlFlow 0 176281) 176287))) |inline$$1_Diem_burn_now'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_burn_now'#0'$0$anon0$1_correct|  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_burn_now'#0'$0$$t19@0|) (= |inline$$1_Diem_burn_now'#0'$0$$t19@0| 7)) (and (= |inline$$1_Diem_burn_now'#0'$0$$t19@0| |inline$$1_Diem_burn_now'#0'$0$$t19@0|) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 176265) 179046) |inline$$1_Diem_burn_now'#0'$0$anon8_Then_correct|) (=> (= (ControlFlow 0 176265) 176281) |inline$$1_Diem_burn_now'#0'$0$anon8_Else_correct|))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> |inline$$1_Diem_burn_now'#0'$0$$t15@1| 0)) (= (ControlFlow 0 176229) 176265)) |inline$$1_Diem_burn_now'#0'$0$anon0$1_correct|)))
(let ((|inline$$1_Diem_burn_now'#0'$0$anon0_correct|  (=> (= |inline$$1_Diem_burn_now'#0'$0$$t6@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (=> (and (and (and (and (= |inline$$1_Diem_burn_now'#0'$0$$t7@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_burn_now'#0'$0$$t8@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (= |inline$$1_Diem_burn_now'#0'$0$$t9@0| (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= |inline$$1_Diem_burn_now'#0'$0$$t10@0| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_burn_now'#0'$0$$t8@0|)))) (and (and (= |inline$$1_Diem_burn_now'#0'$0$$t11@0| ($1_Diem_PreburnEvent (|$value#$1_Diem_Diem'#0'| $t24@@0) |inline$$1_Diem_burn_now'#0'$0$$t9@0| 186537453)) (= |inline$$1_Diem_burn_now'#0'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (= |inline$$1_Diem_burn_now'#0'$0$$t13@0| (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= |inline$$1_Diem_burn_now'#0'$0$$t14@0| (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_burn_now'#0'$0$$t12@0|))))) (and (and (and (= $t24@@0 $t24@@0) (= |inline$$1_Diem_burn_now'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1| (|v#$Mutation_117115| $t27@0))) (and (= |inline$$1_Diem_burn_now'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1| |inline$$1_Diem_burn_now'#0'$0$$temp_0'$1_Diem_Preburn'#0''@1|) (= 186537453 186537453))) (and (and (= |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1|) (= |inline$$1_Diem_burn_now'#0'$0$$t15@1| (|$value#$1_Diem_Diem'#0'| $t24@@0))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 176235) 176229))))) inline$$Gt$0$anon0_correct))))
(let ((anon39_Else_correct  (=> (not $abort_flag@3@@0) (=> (and (and (= |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1|) (= $t27@0 ($Mutation_117115 (|l#$Mutation_137091| $t22@2) (seq.++ (|p#$Mutation_137091| $t22@2) (seq.unit 1)) (|$preburn#$1_TransactionFee_TransactionFee'#0'| (|v#$Mutation_137091| $t22@2))))) (and (= $t28 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t29 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (and (and (and (= $t30 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t31 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= $t32 (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t30)) (= $t33 ($1_Diem_PreburnEvent (|$value#$1_Diem_Diem'#0'| $t24@@0) $t31 186537453)))) (and (and (= $t34 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t35 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= $t36 (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t34)) (= (ControlFlow 0 182263) 176235)))) |inline$$1_Diem_burn_now'#0'$0$anon0_correct|)))))
(let ((anon39_Then_correct  (=> (and (and $abort_flag@3@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t11@0@@0 $abort_code@3@@0) (= (ControlFlow 0 183553) 174520))) L6_correct)))
(let ((|inline$$1_Diem_remove_burn_capability'#0'$0$anon11_Else_correct|  (=> (and (not $abort_flag@2@@0) (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t9@2| |inline$$1_Diem_remove_burn_capability'#0'$0$$t9@2|)) (=> (and (and (= $abort_flag@3@@0 $abort_flag@2@@0) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= |$1_Diem_BurnCapability'#0'_$memory@3| |$1_Diem_BurnCapability'#0'_$memory@1|) (= |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'#0'$0$$t9@2|))) (and (=> (= (ControlFlow 0 175175) 183553) anon39_Then_correct) (=> (= (ControlFlow 0 175175) 182263) anon39_Else_correct))))))
(let ((|inline$$1_Diem_remove_burn_capability'#0'$0$L3_correct|  (=> (and (and (= $abort_flag@3@@0 true) (= $abort_code@3@@0 |inline$$1_Diem_remove_burn_capability'#0'$0$$t8@1|)) (and (= |$1_Diem_BurnCapability'#0'_$memory@3| |$1_Diem_BurnCapability'#0'_$memory@2|) (= |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'#0'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 175133) 183553) anon39_Then_correct) (=> (= (ControlFlow 0 175133) 182263) anon39_Else_correct)))))
(let ((|inline$$1_Diem_remove_burn_capability'#0'$0$anon11_Then_correct|  (=> $abort_flag@2@@0 (=> (and (and (= $abort_code@2@@0 $abort_code@2@@0) (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t8@1| $abort_code@2@@0)) (and (= |$1_Diem_BurnCapability'#0'_$memory@2| |$1_Diem_BurnCapability'#0'_$memory@1|) (= (ControlFlow 0 175189) 175133))) |inline$$1_Diem_remove_burn_capability'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_remove_burn_capability'#0'$0$anon10_Then$1_correct|  (=> (and (and (= |$1_Diem_BurnCapability'#0'_$memory@1| |$1_Diem_BurnCapability'#0'_$memory|) (= $abort_code@2@@0 $EXEC_FAILURE_CODE)) (and (= $abort_flag@2@@0 true) (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t9@2| |inline$$1_Diem_remove_burn_capability'#0'$0$$t9@0|))) (and (=> (= (ControlFlow 0 175241) 175189) |inline$$1_Diem_remove_burn_capability'#0'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 175241) 175175) |inline$$1_Diem_remove_burn_capability'#0'$0$anon11_Else_correct|)))))
(let ((|inline$$1_Diem_remove_burn_capability'#0'$0$anon10_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) |inline$$1_Diem_remove_burn_capability'#0'$0$$t4@0|)) (= (ControlFlow 0 175239) 175241)) |inline$$1_Diem_remove_burn_capability'#0'$0$anon10_Then$1_correct|)))
(let ((|inline$$1_Diem_remove_burn_capability'#0'$0$anon10_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) |inline$$1_Diem_remove_burn_capability'#0'$0$$t4@0|) (=> (and (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t9@1| (|Select__T@[Int]$1_Diem_BurnCapability'#0'_| (|contents#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) |inline$$1_Diem_remove_burn_capability'#0'$0$$t4@0|)) (= |$1_Diem_BurnCapability'#0'_$memory@0| ($Memory_110979 (|Store__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) |inline$$1_Diem_remove_burn_capability'#0'$0$$t4@0| false) (|contents#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|)))) (=> (and (and (= |$1_Diem_BurnCapability'#0'_$memory@1| |$1_Diem_BurnCapability'#0'_$memory@0|) (= $abort_code@2@@0 $abort_code@1@@1)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t9@2| |inline$$1_Diem_remove_burn_capability'#0'$0$$t9@1|))) (and (=> (= (ControlFlow 0 175157) 175189) |inline$$1_Diem_remove_burn_capability'#0'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 175157) 175175) |inline$$1_Diem_remove_burn_capability'#0'$0$anon11_Else_correct|)))))))
(let ((|inline$$1_Diem_remove_burn_capability'#0'$0$anon9_Then_correct|  (=> |inline$$1_Diem_remove_burn_capability'#0'$0$$t5@1| (and (=> (= (ControlFlow 0 175137) 175239) |inline$$1_Diem_remove_burn_capability'#0'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 175137) 175157) |inline$$1_Diem_remove_burn_capability'#0'$0$anon10_Else_correct|)))))
(let ((|inline$$1_Diem_remove_burn_capability'#0'$0$anon9_Else_correct|  (=> (not |inline$$1_Diem_remove_burn_capability'#0'$0$$t5@1|) (=> (and (and (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t7@0| |inline$$1_Diem_remove_burn_capability'#0'$0$$t7@0|) (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t8@1| |inline$$1_Diem_remove_burn_capability'#0'$0$$t7@0|)) (and (= |$1_Diem_BurnCapability'#0'_$memory@2| |$1_Diem_BurnCapability'#0'_$memory|) (= (ControlFlow 0 175127) 175133))) |inline$$1_Diem_remove_burn_capability'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_remove_burn_capability'#0'$0$anon0_correct|  (=> (and (= _$t0@@1 _$t0@@1) (|$IsValid'address'| |inline$$1_Diem_remove_burn_capability'#0'$0$$t4@0|)) (=> (and (and (and (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t4@0| _$t0@@1) (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t4@0| |inline$$1_Diem_remove_burn_capability'#0'$0$$t4@0|)) (and (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t5@1| (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) |inline$$1_Diem_remove_burn_capability'#0'$0$$t4@0|)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| |inline$$1_Diem_remove_burn_capability'#0'$0$$t7@0|) (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t7@0| 4)) (and (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t7@0| |inline$$1_Diem_remove_burn_capability'#0'$0$$t7@0|) (= |inline$$1_Diem_remove_burn_capability'#0'$0$$t5@1| |inline$$1_Diem_remove_burn_capability'#0'$0$$t5@1|)))) (and (=> (= (ControlFlow 0 175111) 175137) |inline$$1_Diem_remove_burn_capability'#0'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 175111) 175127) |inline$$1_Diem_remove_burn_capability'#0'$0$anon9_Else_correct|))))))
(let ((anon38_Else_correct  (=> (and (not $abort_flag@1@@0) (= |$temp_0'$1_TransactionFee_TransactionFee'#0''@0| (|v#$Mutation_137091| $t22@1))) (=> (and (and (= |$temp_0'$1_TransactionFee_TransactionFee'#0''@0| |$temp_0'$1_TransactionFee_TransactionFee'#0''@0|) (= $t23@0 ($Mutation_117946 (|l#$Mutation_137091| $t22@1) (seq.++ (|p#$Mutation_137091| $t22@1) (seq.unit 0)) (|$balance#$1_TransactionFee_TransactionFee'#0'| (|v#$Mutation_137091| $t22@1))))) (and (= $t25@0 (|v#$Mutation_117946| $t23@0)) (= $t23@1 ($Mutation_117946 (|l#$Mutation_117946| $t23@0) (|p#$Mutation_117946| $t23@0) |$temp_0'$1_Diem_Diem'#0''@0|)))) (=> (and (and (and (|$IsValid'$1_Diem_Diem'#0''| (|v#$Mutation_117946| $t23@1)) (|$IsValid'$1_Diem_Diem'#0''| (|v#$Mutation_117946| $t23@1))) (and (|$IsValid'$1_Diem_Diem'#0''| $t24@@0) (= (|$value#$1_Diem_Diem'#0'| $t24@@0) (|$value#$1_Diem_Diem'#0'| $t25@0)))) (and (and (= (|$value#$1_Diem_Diem'#0'| (|v#$Mutation_117946| $t23@1)) 0) (= $t22@2 ($Mutation_137091 (|l#$Mutation_137091| $t22@1) (|p#$Mutation_137091| $t22@1) (|$1_TransactionFee_TransactionFee'#0'| (|v#$Mutation_117946| $t23@1) (|$preburn#$1_TransactionFee_TransactionFee'#0'| (|v#$Mutation_137091| $t22@1)))))) (and (= $t24@@0 $t24@@0) (= (ControlFlow 0 175247) 175111)))) |inline$$1_Diem_remove_burn_capability'#0'$0$anon0_correct|)))))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t11@0@@0 $abort_code@1@@1) (= (ControlFlow 0 183567) 174520))) L6_correct)))
(let ((anon37_Then$1_correct  (=> (= $t22@1 $t22) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= $abort_flag@1@@0 true)) (and (=> (= (ControlFlow 0 183619) 183567) anon38_Then_correct) (=> (= (ControlFlow 0 183619) 175247) anon38_Else_correct))))))
(let ((anon37_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453)) (= (ControlFlow 0 183617) 183619)) anon37_Then$1_correct)))
(let ((anon37_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453) (=> (and (and (= $t22@0 ($Mutation_137091 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453))) (= $t22@1 $t22@0)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= $abort_flag@1@@0 $abort_flag@0@@1))) (and (=> (= (ControlFlow 0 174673) 183567) anon38_Then_correct) (=> (= (ControlFlow 0 174673) 175247) anon38_Else_correct))))))
(let ((anon36_Else_correct  (=> (not $t18) (and (=> (= (ControlFlow 0 174651) 183617) anon37_Then_correct) (=> (= (ControlFlow 0 174651) 174673) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> $t18 (=> (and (|$IsValid'u64'| 0) (|$IsValid'u64'| $t21)) (=> (and (and (= $t21 1) (= $t21 $t21)) (and (= $t11@0@@0 $t21) (= (ControlFlow 0 183649) 174520))) L6_correct)))))
(let ((anon35_Else_correct  (=> (and (not $t19) (= $t18  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 174645) 183649) anon36_Then_correct) (=> (= (ControlFlow 0 174645) 174651) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> $t19 (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t11@@0)) (= $t11@@0 $t11@@0)) (and (= $t11@0@@0 $t11@@0) (= (ControlFlow 0 183681) 174520))) L6_correct))))
(let ((anon34_Else_correct  (=> (not $abort_flag@0@@1) (=> (and (= 186537453 186537453) (= $t19  (and (|Select__T@[Int]Bool_| (|domain#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 174625) 183681) anon35_Then_correct) (=> (= (ControlFlow 0 174625) 174645) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@0@@1 $abort_code@0@@1)) (and (= $t11@0@@0 $abort_code@0@@1) (= (ControlFlow 0 183695) 174520))) L6_correct)))
(let ((inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$1$anon0_correct  (=> (and (|$IsValid'address'| 186537453) (= 186537453 186537453)) (and (=> (= (ControlFlow 0 174587) 183695) anon34_Then_correct) (=> (= (ControlFlow 0 174587) 174625) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (and |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1| (= (ControlFlow 0 174593) 174587)) inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$1$anon0_correct)))
(let ((anon33_Else_correct  (=> (and (and (not |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1|) (= $t16 $t16)) (and (= $t11@0@@0 $t16) (= (ControlFlow 0 174008) 174520))) L6_correct)))
(let ((anon32_Else_correct@@0  (=> (and (not $abort_flag@0@@1) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t16) (= $t16 5)) (and (= $t16 $t16) (= |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1| |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 173992) 174593) anon33_Then_correct) (=> (= (ControlFlow 0 173992) 174008) anon33_Else_correct))))))
(let ((anon32_Then_correct@@0  (=> (and (and $abort_flag@0@@1 (= $abort_code@0@@1 $abort_code@0@@1)) (and (= $t11@0@@0 $abort_code@0@@1) (= (ControlFlow 0 183709) 174520))) L6_correct)))
(let ((|inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon3_Else_correct|  (=> (not false) (=> (and (and (= |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$t2@1| (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453)) (= |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$t2@1| |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$t2@1|)) (and (= $abort_flag@0@@1 false) (= |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1| |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$t2@1|))) (and (=> (= (ControlFlow 0 173932) 183709) anon32_Then_correct@@0) (=> (= (ControlFlow 0 173932) 173992) anon32_Else_correct@@0))))))
(let ((anon31_Then_correct@@0  (=> $t13 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t12@@0)) (= 5 $t11@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t12@@0)) 1)) (= 3 $t11@@0))) (and (not (= _$t0@@1 186537453)) (= 2 $t11@@0))) (= $t11@@0 $t11@@0)) (and (= $t11@0@@0 $t11@@0) (= (ControlFlow 0 183781) 174520))) L6_correct))))
(let ((anon30_Then_correct@@0  (=> $t10@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@@0)) (= $t11@@0 $t11@@0)) (and (= $t11@0@@0 $t11@@0) (= (ControlFlow 0 183807) 174520))) L6_correct))))
(let ((|inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon3_Then_correct| true))
(let ((inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct@@0  (=> (and (|$IsValid'address'| 186537453) (= 186537453 186537453)) (and (=> (= (ControlFlow 0 173902) 173950) |inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 173902) 173932) |inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon3_Else_correct|)))))
(let ((|inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon0_correct|  (=> (= (ControlFlow 0 173908) 173902) inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct@@0)))
(let ((anon31_Else_correct@@0  (=> (and (not $t13) (= (ControlFlow 0 173956) 173908)) |inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon0_correct|)))
(let ((anon30_Else_correct@@0  (=> (not $t10@@0) (=> (and (= $t12@@0 _$t0@@1) (= $t13  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) $t12@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $t12@@0)) 1))) (not (= _$t0@@1 186537453))))) (and (=> (= (ControlFlow 0 173723) 183781) anon31_Then_correct@@0) (=> (= (ControlFlow 0 173723) 173956) anon31_Else_correct@@0))))))
(let ((anon0$1_correct@@1  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106639| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106162| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115612| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |TransactionFeecvc5bpl.12165:21|
 :skolemid |192|
)) (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115699| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |TransactionFeecvc5bpl.12165:268|
 :skolemid |193|
)))) (and (and (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110805| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@5)) 1))))
 :qid |TransactionFeecvc5bpl.12169:22|
 :skolemid |194|
)) (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110892| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@6)) 1))))
 :qid |TransactionFeecvc5bpl.12169:232|
 :skolemid |195|
))) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@7)) 1))))
 :qid |TransactionFeecvc5bpl.12169:443|
 :skolemid |196|
)))) (and (and (and (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_116281| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_115872| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@8)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@8)) 2))))
 :qid |TransactionFeecvc5bpl.12173:22|
 :skolemid |197|
)) (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_116380| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_115963| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@9)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@9)) 2))))
 :qid |TransactionFeecvc5bpl.12173:293|
 :skolemid |198|
))) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_116479| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_116054| |$1_Diem_Preburn'#0'_$memory|) addr1@@10)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) addr1@@10)) 2))))
 :qid |TransactionFeecvc5bpl.12173:565|
 :skolemid |199|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_128816| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_130931| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_129035| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)))) (and (and (|$IsValid'address'| _$t0@@1) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@4)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@4))
 :qid |TransactionFeecvc5bpl.12207:20|
 :skolemid |200|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@4))
))) (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |TransactionFeecvc5bpl.12211:20|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105765| $1_Roles_RoleId_$memory) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@6)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@6) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@6)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@6) 10000000000))))
 :qid |TransactionFeecvc5bpl.12215:20|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@6))
))))) (and (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Diem_BurnCapability'#0'_| (|contents#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) $a_0@@7)))
(|$IsValid'$1_Diem_BurnCapability'#0''| $rsc@@7))
 :qid |TransactionFeecvc5bpl.12219:20|
 :skolemid |203|
 :pattern ( (|Select__T@[Int]$1_Diem_BurnCapability'#0'_| (|contents#$Memory_110979| |$1_Diem_BurnCapability'#0'_$memory|) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@8)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@8) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@8)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@8) 10000000000))))
 :qid |TransactionFeecvc5bpl.12223:20|
 :skolemid |204|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@8))
))) (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) $a_0@@9)))
(|$IsValid'$1_TransactionFee_TransactionFee'#0''| $rsc@@9))
 :qid |TransactionFeecvc5bpl.12227:20|
 :skolemid |205|
 :pattern ( (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) $a_0@@9))
)) (= $t7 _$t0@@1))) (and (and (= $t8 (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453)) (= $t9@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_110326| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (= _$t0@@1 _$t0@@1) (= $t10@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 173663) 183807) anon30_Then_correct@@0) (=> (= (ControlFlow 0 173663) 173723) anon30_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_72623_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_72623| stream@@4) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_72623| stream@@4) v@@40) 0)
 :qid |TransactionFeecvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |TransactionFeecvc5bpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 173095) 173663)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (seq.len (|p#$Mutation_137091| $t3@@1)) 0) (=> (and (and (= (seq.len (|p#$Mutation_137091| $t22)) 0) (= (seq.len (|p#$Mutation_117946| $t23@@0)) 0)) (and (= (seq.len (|p#$Mutation_117115| $t27)) 0) (= (ControlFlow 0 173105) 173095))) inline$$InitEventStore$0$anon0_correct@@1))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 238546) 173105) anon0_correct@@1)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_TransactionFee_is_coin_initialized$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 245666) true)
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_TransactionFee_is_initialized$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 245809) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t14@@0 () Bool)
(declare-fun $t12@1 () T@$Mutation_117946)
(declare-fun $t12@0 () T@$Mutation_117946)
(declare-fun |$temp_0'$1_Diem_Diem'#0''@0@@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t13@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun _$t0@@2 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t11@2 () T@$Mutation_137091)
(declare-fun $t11@1 () T@$Mutation_137091)
(declare-fun |$1_TransactionFee_TransactionFee'#0'_$memory@0@@0| () T@$Memory_133174)
(declare-fun $t15 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t4@@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t6@0 () Int)
(declare-fun $t6 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun |$temp_0'$1_TransactionFee_TransactionFee'#0''@0@@0| () |T@$1_TransactionFee_TransactionFee'#0'|)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t11@@1 () T@$Mutation_137091)
(declare-fun $t11@0@@1 () T@$Mutation_137091)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1@@0| () Bool)
(declare-fun $t9@@1 () Int)
(declare-fun |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$t2@1@@0| () Bool)
(declare-fun $t5@@0 () Bool)
(declare-fun $t1@@0 () T@$Mutation_137091)
(declare-fun $t12@@1 () T@$Mutation_117946)
(push 1)
(set-info :boogie-vc-id $1_TransactionFee_pay_fee$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 246044) (let ((anon25_Else_correct@@0  (=> (and (and (and (not $t14@@0) (= $t12@1 ($Mutation_117946 (|l#$Mutation_117946| $t12@0) (|p#$Mutation_117946| $t12@0) |$temp_0'$1_Diem_Diem'#0''@0@@0|))) (and (|$IsValid'$1_Diem_Diem'#0''| (|v#$Mutation_117946| $t12@1)) (|$IsValid'$1_Diem_Diem'#0''| (|v#$Mutation_117946| $t12@1)))) (and (and (= (|$value#$1_Diem_Diem'#0'| (|v#$Mutation_117946| $t12@1)) (+ (|$value#$1_Diem_Diem'#0'| $t13@0) (|$value#$1_Diem_Diem'#0'| _$t0@@2))) (= $t11@2 ($Mutation_137091 (|l#$Mutation_137091| $t11@1) (|p#$Mutation_137091| $t11@1) (|$1_TransactionFee_TransactionFee'#0'| (|v#$Mutation_117946| $t12@1) (|$preburn#$1_TransactionFee_TransactionFee'#0'| (|v#$Mutation_137091| $t11@1)))))) (and (= |$1_TransactionFee_TransactionFee'#0'_$memory@0@@0| ($Memory_133174 (|Store__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) (|a#$Global| (|l#$Mutation_137091| $t11@2)) true) (|Store__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) (|a#$Global| (|l#$Mutation_137091| $t11@2)) (|v#$Mutation_137091| $t11@2)))) (= $t15 (|$balance#$1_TransactionFee_TransactionFee'#0'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory@0@@0|) 186537453)))))) (and (=> (= (ControlFlow 0 186172) (- 0 246961)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 186172) (- 0 246971)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453))) (and (=> (= (ControlFlow 0 186172) (- 0 246981)) (not (> (+ (|$value#$1_Diem_Diem'#0'| $t4@@0) (|$value#$1_Diem_Diem'#0'| _$t0@@2)) 18446744073709551615))) (=> (not (> (+ (|$value#$1_Diem_Diem'#0'| $t4@@0) (|$value#$1_Diem_Diem'#0'| _$t0@@2)) 18446744073709551615)) (=> (= (ControlFlow 0 186172) (- 0 246999)) (= (|$value#$1_Diem_Diem'#0'| $t15) (+ (|$value#$1_Diem_Diem'#0'| $t4@@0) (|$value#$1_Diem_Diem'#0'| _$t0@@2)))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 185873) (- 0 246788)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453))) (> (+ (|$value#$1_Diem_Diem'#0'| $t4@@0) (|$value#$1_Diem_Diem'#0'| _$t0@@2)) 18446744073709551615))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453))) (> (+ (|$value#$1_Diem_Diem'#0'| $t4@@0) (|$value#$1_Diem_Diem'#0'| _$t0@@2)) 18446744073709551615)) (=> (= (ControlFlow 0 185873) (- 0 246815)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t6@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453)) (= 5 $t6@0))) (and (> (+ (|$value#$1_Diem_Diem'#0'| $t4@@0) (|$value#$1_Diem_Diem'#0'| _$t0@@2)) 18446744073709551615) (= 8 $t6@0))))))))
(let ((anon25_Then_correct@@0  (=> $t14@@0 (=> (and (and (and (> (+ (|$value#$1_Diem_Diem'#0'| (|v#$Mutation_117946| $t12@0)) (|$value#$1_Diem_Diem'#0'| _$t0@@2)) 18446744073709551615) (= 8 $t6)) (= $t6 $t6)) (and (= $t6@0 $t6) (= (ControlFlow 0 186208) 185873))) L3_correct))))
(let ((anon24_Else_correct@@0  (=> (and (not $abort_flag@1@@1) (= |$temp_0'$1_TransactionFee_TransactionFee'#0''@0@@0| (|v#$Mutation_137091| $t11@1))) (=> (and (and (= |$temp_0'$1_TransactionFee_TransactionFee'#0''@0@@0| |$temp_0'$1_TransactionFee_TransactionFee'#0''@0@@0|) (= $t12@0 ($Mutation_117946 (|l#$Mutation_137091| $t11@1) (seq.++ (|p#$Mutation_137091| $t11@1) (seq.unit 0)) (|$balance#$1_TransactionFee_TransactionFee'#0'| (|v#$Mutation_137091| $t11@1))))) (and (= $t13@0 (|v#$Mutation_117946| $t12@0)) (= $t14@@0 (> (+ (|$value#$1_Diem_Diem'#0'| (|v#$Mutation_117946| $t12@0)) (|$value#$1_Diem_Diem'#0'| _$t0@@2)) 18446744073709551615)))) (and (=> (= (ControlFlow 0 186034) 186208) anon25_Then_correct@@0) (=> (= (ControlFlow 0 186034) 186172) anon25_Else_correct@@0))))))
(let ((anon24_Then_correct@@0  (=> (and (and $abort_flag@1@@1 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t6@0 $abort_code@1@@2) (= (ControlFlow 0 186222) 185873))) L3_correct)))
(let ((anon23_Then$1_correct  (=> (= $t11@1 $t11@@1) (=> (and (= $abort_code@1@@2 $EXEC_FAILURE_CODE) (= $abort_flag@1@@1 true)) (and (=> (= (ControlFlow 0 186274) 186222) anon24_Then_correct@@0) (=> (= (ControlFlow 0 186274) 186034) anon24_Else_correct@@0))))))
(let ((anon23_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453)) (= (ControlFlow 0 186272) 186274)) anon23_Then$1_correct)))
(let ((anon23_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453) (=> (and (and (= $t11@0@@1 ($Mutation_137091 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453))) (= $t11@1 $t11@0@@1)) (and (= $abort_code@1@@2 $abort_code@0@@2) (= $abort_flag@1@@1 $abort_flag@0@@2))) (and (=> (= (ControlFlow 0 185978) 186222) anon24_Then_correct@@0) (=> (= (ControlFlow 0 185978) 186034) anon24_Else_correct@@0))))))
(let ((anon22_Else_correct  (=> (not $abort_flag@0@@2) (and (=> (= (ControlFlow 0 185956) 186272) anon23_Then_correct) (=> (= (ControlFlow 0 185956) 185978) anon23_Else_correct)))))
(let ((anon22_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@0@@2 $abort_code@0@@2)) (and (= $t6@0 $abort_code@0@@2) (= (ControlFlow 0 186288) 185873))) L3_correct)))
(let ((inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$1$anon0_correct@@0  (=> (and (|$IsValid'address'| 186537453) (= 186537453 186537453)) (and (=> (= (ControlFlow 0 185940) 186288) anon22_Then_correct) (=> (= (ControlFlow 0 185940) 185956) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (and |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1@@0| (= (ControlFlow 0 185946) 185940)) inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$1$anon0_correct@@0)))
(let ((anon21_Else_correct  (=> (and (and (not |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1@@0|) (= $t9@@1 $t9@@1)) (and (= $t6@0 $t9@@1) (= (ControlFlow 0 185781) 185873))) L3_correct)))
(let ((anon20_Else_correct  (=> (and (not $abort_flag@0@@2) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t9@@1) (= $t9@@1 5)) (and (= $t9@@1 $t9@@1) (= |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1@@0| |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1@@0|))) (and (=> (= (ControlFlow 0 185765) 185946) anon21_Then_correct) (=> (= (ControlFlow 0 185765) 185781) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@0@@2 $abort_code@0@@2)) (and (= $t6@0 $abort_code@0@@2) (= (ControlFlow 0 186302) 185873))) L3_correct)))
(let ((|inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon3_Else_correct@@0|  (=> (not false) (=> (and (and (= |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$t2@1@@0| (|Select__T@[Int]Bool_| (|domain#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453)) (= |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$t2@1@@0| |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$t2@1@@0|)) (and (= $abort_flag@0@@2 false) (= |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$ret0@1@@0| |inline$$1_TransactionFee_is_coin_initialized'#0'$0$$t2@1@@0|))) (and (=> (= (ControlFlow 0 185705) 186302) anon20_Then_correct) (=> (= (ControlFlow 0 185705) 185765) anon20_Else_correct))))))
(let ((anon19_Then_correct  (=> $t5@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t6)) (= $t6 $t6)) (and (= $t6@0 $t6) (= (ControlFlow 0 186328) 185873))) L3_correct))))
(let ((|inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon3_Then_correct@@0| true))
(let ((inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct@@1  (=> (and (|$IsValid'address'| 186537453) (= 186537453 186537453)) (and (=> (= (ControlFlow 0 185675) 185723) |inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon3_Then_correct@@0|) (=> (= (ControlFlow 0 185675) 185705) |inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon3_Else_correct@@0|)))))
(let ((|inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon0_correct@@0|  (=> (= (ControlFlow 0 185681) 185675) inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct@@1)))
(let ((anon19_Else_correct  (=> (and (not $t5@@0) (= (ControlFlow 0 185729) 185681)) |inline$$1_TransactionFee_is_coin_initialized'#0'$0$anon0_correct@@0|)))
(let ((anon0$1_correct@@2  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106639| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106162| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110196| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_128816| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_130931| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110261| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_129035| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105250| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (and (|$IsValid'$1_Diem_Diem'#0''| _$t0@@2) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@10))
 :qid |TransactionFeecvc5bpl.12986:20|
 :skolemid |208|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10))
)))) (and (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) $a_0@@11)))
(|$IsValid'$1_TransactionFee_TransactionFee'#0''| $rsc@@11))
 :qid |TransactionFeecvc5bpl.12990:20|
 :skolemid |209|
 :pattern ( (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) $a_0@@11))
)) (= $t4@@0 (|$balance#$1_TransactionFee_TransactionFee'#0'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'#0'_| (|contents#$Memory_133174| |$1_TransactionFee_TransactionFee'#0'_$memory|) 186537453)))) (and (= _$t0@@2 _$t0@@2) (= $t5@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_103804| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 185496) 186328) anon19_Then_correct) (=> (= (ControlFlow 0 185496) 185729) anon19_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_72623_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_72623| stream@@5) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_72623| stream@@5) v@@41) 0)
 :qid |TransactionFeecvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |TransactionFeecvc5bpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 185302) 185496)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (and (and (= (seq.len (|p#$Mutation_137091| $t1@@0)) 0) (= (seq.len (|p#$Mutation_137091| $t11@@1)) 0)) (and (= (seq.len (|p#$Mutation_117946| $t12@@1)) 0) (= (ControlFlow 0 185312) 185302))) inline$$InitEventStore$0$anon0_correct@@2)))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 246044) 185312) anon0_correct@@2)))
PreconditionGeneratedEntry_correct@@1))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 247032) true)
))
(check-sat)
(pop 1)
; Valid
