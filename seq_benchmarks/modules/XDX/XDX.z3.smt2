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
(declare-datatypes ((T@$Memory_86017 0)) ((($Memory_86017 (|domain#$Memory_86017| |T@[Int]Bool|) (|contents#$Memory_86017| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_131373 0)) ((($Memory_131373 (|domain#$Memory_131373| |T@[Int]Bool|) (|contents#$Memory_131373| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_126778 0)) ((($Memory_126778 (|domain#$Memory_126778| |T@[Int]Bool|) (|contents#$Memory_126778| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_124781 0)) ((($Memory_124781 (|domain#$Memory_124781| |T@[Int]Bool|) (|contents#$Memory_124781| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_125061 0)) ((($Memory_125061 (|domain#$Memory_125061| |T@[Int]Bool|) (|contents#$Memory_125061| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_124748 0)) ((($Memory_124748 (|domain#$Memory_124748| |T@[Int]Bool|) (|contents#$Memory_124748| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_124533 0)) ((($Memory_124533 (|domain#$Memory_124533| |T@[Int]Bool|) (|contents#$Memory_124533| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_124162 0)) ((($Memory_124162 (|domain#$Memory_124162| |T@[Int]Bool|) (|contents#$Memory_124162| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_121702 0)) ((($Memory_121702 (|domain#$Memory_121702| |T@[Int]Bool|) (|contents#$Memory_121702| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_121638 0)) ((($Memory_121638 (|domain#$Memory_121638| |T@[Int]Bool|) (|contents#$Memory_121638| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_125704 0)) ((($Memory_125704 (|domain#$Memory_125704| |T@[Int]Bool|) (|contents#$Memory_125704| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_120119 0)) ((($Memory_120119 (|domain#$Memory_120119| |T@[Int]Bool|) (|contents#$Memory_120119| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_119609 0)) ((($Memory_119609 (|domain#$Memory_119609| |T@[Int]Bool|) (|contents#$Memory_119609| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_94501 0)) ((($Memory_94501 (|domain#$Memory_94501| |T@[Int]Bool|) (|contents#$Memory_94501| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111916 0)) ((($Memory_111916 (|domain#$Memory_111916| |T@[Int]Bool|) (|contents#$Memory_111916| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_126567 0)) ((($Memory_126567 (|domain#$Memory_126567| |T@[Int]Bool|) (|contents#$Memory_126567| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104744 0)) ((($Memory_104744 (|domain#$Memory_104744| |T@[Int]Bool|) (|contents#$Memory_104744| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104657 0)) ((($Memory_104657 (|domain#$Memory_104657| |T@[Int]Bool|) (|contents#$Memory_104657| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100024 0)) ((($Memory_100024 (|domain#$Memory_100024| |T@[Int]Bool|) (|contents#$Memory_100024| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_99937 0)) ((($Memory_99937 (|domain#$Memory_99937| |T@[Int]Bool|) (|contents#$Memory_99937| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105008 0)) ((($Memory_105008 (|domain#$Memory_105008| |T@[Int]Bool|) (|contents#$Memory_105008| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_94331 0)) ((($Memory_94331 (|domain#$Memory_94331| |T@[Int]Bool|) (|contents#$Memory_94331| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105334 0)) ((($Memory_105334 (|domain#$Memory_105334| |T@[Int]Bool|) (|contents#$Memory_105334| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104917 0)) ((($Memory_104917 (|domain#$Memory_104917| |T@[Int]Bool|) (|contents#$Memory_104917| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120544 0)) ((($Memory_120544 (|domain#$Memory_120544| |T@[Int]Bool|) (|contents#$Memory_120544| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_105235 0)) ((($Memory_105235 (|domain#$Memory_105235| |T@[Int]Bool|) (|contents#$Memory_105235| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_97073 0)) ((($Memory_97073 (|domain#$Memory_97073| |T@[Int]Bool|) (|contents#$Memory_97073| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_96986 0)) ((($Memory_96986 (|domain#$Memory_96986| |T@[Int]Bool|) (|contents#$Memory_96986| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_96899 0)) ((($Memory_96899 (|domain#$Memory_96899| |T@[Int]Bool|) (|contents#$Memory_96899| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_130064 0)) ((($Memory_130064 (|domain#$Memory_130064| |T@[Int]Bool|) (|contents#$Memory_130064| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96812 0)) ((($Memory_96812 (|domain#$Memory_96812| |T@[Int]Bool|) (|contents#$Memory_96812| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_96725 0)) ((($Memory_96725 (|domain#$Memory_96725| |T@[Int]Bool|) (|contents#$Memory_96725| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_95844 0)) ((($Memory_95844 (|domain#$Memory_95844| |T@[Int]Bool|) (|contents#$Memory_95844| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_95911 0)) ((($Memory_95911 (|domain#$Memory_95911| |T@[Int]Bool|) (|contents#$Memory_95911| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_95762 0)) ((($Memory_95762 (|domain#$Memory_95762| |T@[Int]Bool|) (|contents#$Memory_95762| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_95680 0)) ((($Memory_95680 (|domain#$Memory_95680| |T@[Int]Bool|) (|contents#$Memory_95680| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_95598 0)) ((($Memory_95598 (|domain#$Memory_95598| |T@[Int]Bool|) (|contents#$Memory_95598| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_95516 0)) ((($Memory_95516 (|domain#$Memory_95516| |T@[Int]Bool|) (|contents#$Memory_95516| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_95434 0)) ((($Memory_95434 (|domain#$Memory_95434| |T@[Int]Bool|) (|contents#$Memory_95434| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_99616 0)) ((($Memory_99616 (|domain#$Memory_99616| |T@[Int]Bool|) (|contents#$Memory_99616| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_94416 0)) ((($Memory_94416 (|domain#$Memory_94416| |T@[Int]Bool|) (|contents#$Memory_94416| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_99468 0)) ((($Memory_99468 (|domain#$Memory_99468| |T@[Int]Bool|) (|contents#$Memory_99468| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_95037 0)) ((($Memory_95037 (|domain#$Memory_95037| |T@[Int]Bool|) (|contents#$Memory_95037| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_95004 0)) ((($Memory_95004 (|domain#$Memory_95004| |T@[Int]Bool|) (|contents#$Memory_95004| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_92885 0)) ((($Memory_92885 (|domain#$Memory_92885| |T@[Int]Bool|) (|contents#$Memory_92885| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_63926 0)) (((Multiset_63926 (|v#Multiset_63926| |T@[$EventRep]Int|) (|l#Multiset_63926| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63926| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63926|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_127605 0)) ((($Mutation_127605 (|l#$Mutation_127605| T@$Location) (|p#$Mutation_127605| (Seq Int)) (|v#$Mutation_127605| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_127561 0)) ((($Mutation_127561 (|l#$Mutation_127561| T@$Location) (|p#$Mutation_127561| (Seq Int)) (|v#$Mutation_127561| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_31714 0)) ((($Mutation_31714 (|l#$Mutation_31714| T@$Location) (|p#$Mutation_31714| (Seq Int)) (|v#$Mutation_31714| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_110633 0)) ((($Mutation_110633 (|l#$Mutation_110633| T@$Location) (|p#$Mutation_110633| (Seq Int)) (|v#$Mutation_110633| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_98211 0)) ((($Mutation_98211 (|l#$Mutation_98211| T@$Location) (|p#$Mutation_98211| (Seq Int)) (|v#$Mutation_98211| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_93359 0)) ((($Mutation_93359 (|l#$Mutation_93359| T@$Location) (|p#$Mutation_93359| (Seq Int)) (|v#$Mutation_93359| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_86645 0)) ((($Mutation_86645 (|l#$Mutation_86645| T@$Location) (|p#$Mutation_86645| (Seq Int)) (|v#$Mutation_86645| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_82013 0)) ((($Mutation_82013 (|l#$Mutation_82013| T@$Location) (|p#$Mutation_82013| (Seq Int)) (|v#$Mutation_82013| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_81267 0)) ((($Mutation_81267 (|l#$Mutation_81267| T@$Location) (|p#$Mutation_81267| (Seq Int)) (|v#$Mutation_81267| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_79827 0)) ((($Mutation_79827 (|l#$Mutation_79827| T@$Location) (|p#$Mutation_79827| (Seq Int)) (|v#$Mutation_79827| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_79081 0)) ((($Mutation_79081 (|l#$Mutation_79081| T@$Location) (|p#$Mutation_79081| (Seq Int)) (|v#$Mutation_79081| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_77641 0)) ((($Mutation_77641 (|l#$Mutation_77641| T@$Location) (|p#$Mutation_77641| (Seq Int)) (|v#$Mutation_77641| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_76895 0)) ((($Mutation_76895 (|l#$Mutation_76895| T@$Location) (|p#$Mutation_76895| (Seq Int)) (|v#$Mutation_76895| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_75455 0)) ((($Mutation_75455 (|l#$Mutation_75455| T@$Location) (|p#$Mutation_75455| (Seq Int)) (|v#$Mutation_75455| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_74709 0)) ((($Mutation_74709 (|l#$Mutation_74709| T@$Location) (|p#$Mutation_74709| (Seq Int)) (|v#$Mutation_74709| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_73269 0)) ((($Mutation_73269 (|l#$Mutation_73269| T@$Location) (|p#$Mutation_73269| (Seq Int)) (|v#$Mutation_73269| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_72523 0)) ((($Mutation_72523 (|l#$Mutation_72523| T@$Location) (|p#$Mutation_72523| (Seq Int)) (|v#$Mutation_72523| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_71083 0)) ((($Mutation_71083 (|l#$Mutation_71083| T@$Location) (|p#$Mutation_71083| (Seq Int)) (|v#$Mutation_71083| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_70337 0)) ((($Mutation_70337 (|l#$Mutation_70337| T@$Location) (|p#$Mutation_70337| (Seq Int)) (|v#$Mutation_70337| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_68897 0)) ((($Mutation_68897 (|l#$Mutation_68897| T@$Location) (|p#$Mutation_68897| (Seq Int)) (|v#$Mutation_68897| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68151 0)) ((($Mutation_68151 (|l#$Mutation_68151| T@$Location) (|p#$Mutation_68151| (Seq Int)) (|v#$Mutation_68151| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_66673 0)) ((($Mutation_66673 (|l#$Mutation_66673| T@$Location) (|p#$Mutation_66673| (Seq Int)) (|v#$Mutation_66673| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_65927 0)) ((($Mutation_65927 (|l#$Mutation_65927| T@$Location) (|p#$Mutation_65927| (Seq Int)) (|v#$Mutation_65927| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63926_| (|T@[$1_Event_EventHandle]Multiset_63926| T@$1_Event_EventHandle) T@Multiset_63926)
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
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'#0''| (|T@$1_Diem_CurrencyInfo'#0'|) Bool)
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
(declare-fun ReverseVec_58273 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_57879 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_57682 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_58076 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_57091 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_57288 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_57485 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_56894 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63926| |T@[$1_Event_EventHandle]Multiset_63926|) |T@[$1_Event_EventHandle]Multiset_63926|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XDXz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XDXz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XDXz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XDXz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XDXz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XDXz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XDXz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XDXz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |XDXz3bpl.590:13|
 :skolemid |15|
))))
 :qid |XDXz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |XDXz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |XDXz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |XDXz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |XDXz3bpl.770:13|
 :skolemid |20|
))))
 :qid |XDXz3bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |XDXz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |XDXz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |XDXz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |XDXz3bpl.950:13|
 :skolemid |25|
))))
 :qid |XDXz3bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |XDXz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |XDXz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |XDXz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |XDXz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |XDXz3bpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |XDXz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |XDXz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |XDXz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |XDXz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |XDXz3bpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |XDXz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |XDXz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |XDXz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |XDXz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |XDXz3bpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |XDXz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |XDXz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |XDXz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |XDXz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |XDXz3bpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |XDXz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |XDXz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |XDXz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |XDXz3bpl.1850:13|
 :skolemid |50|
))))
 :qid |XDXz3bpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |XDXz3bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |XDXz3bpl.1863:17|
 :skolemid |53|
)))))
 :qid |XDXz3bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |XDXz3bpl.2030:13|
 :skolemid |55|
))))
 :qid |XDXz3bpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |XDXz3bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |XDXz3bpl.2043:17|
 :skolemid |58|
)))))
 :qid |XDXz3bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |XDXz3bpl.2210:13|
 :skolemid |60|
))))
 :qid |XDXz3bpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |XDXz3bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |XDXz3bpl.2223:17|
 :skolemid |63|
)))))
 :qid |XDXz3bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |XDXz3bpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |XDXz3bpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XDXz3bpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XDXz3bpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63926_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63926| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63926| stream) v@@24) 0)
 :qid |XDXz3bpl.129:13|
 :skolemid |2|
))))
 :qid |XDXz3bpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XDXz3bpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |XDXz3bpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XDXz3bpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |XDXz3bpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XDXz3bpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |XDXz3bpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XDXz3bpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |XDXz3bpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XDXz3bpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |XDXz3bpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XDXz3bpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |XDXz3bpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XDXz3bpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |XDXz3bpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XDXz3bpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |XDXz3bpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XDXz3bpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |XDXz3bpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |XDXz3bpl.3083:70|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |XDXz3bpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |XDXz3bpl.3139:60|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |XDXz3bpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |XDXz3bpl.3195:66|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |XDXz3bpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |XDXz3bpl.3251:60|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |XDXz3bpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |XDXz3bpl.3307:63|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |XDXz3bpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |XDXz3bpl.3363:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |XDXz3bpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |XDXz3bpl.3419:82|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |XDXz3bpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |XDXz3bpl.3475:88|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |XDXz3bpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XDXz3bpl.3684:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |XDXz3bpl.4227:49|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |XDXz3bpl.4277:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |XDXz3bpl.4296:49|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |XDXz3bpl.4384:91|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |XDXz3bpl.4398:113|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |XDXz3bpl.4412:71|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |XDXz3bpl.4426:75|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |XDXz3bpl.4440:73|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |XDXz3bpl.4460:48|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |XDXz3bpl.4476:57|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |XDXz3bpl.4490:103|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |XDXz3bpl.4504:125|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |XDXz3bpl.4518:83|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |XDXz3bpl.4532:87|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |XDXz3bpl.4546:85|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |XDXz3bpl.4560:48|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |XDXz3bpl.4573:65|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |XDXz3bpl.5102:45|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |XDXz3bpl.5115:45|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |XDXz3bpl.5128:55|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |XDXz3bpl.5142:55|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |XDXz3bpl.5162:38|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |XDXz3bpl.5183:44|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |XDXz3bpl.5234:53|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |XDXz3bpl.5296:53|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@25)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@25)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@25))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@25))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@25))))
 :qid |XDXz3bpl.5358:45|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@26) true)
 :qid |XDXz3bpl.5384:55|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@27) true)
 :qid |XDXz3bpl.5398:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@27))
)))
(assert (forall ((s@@28 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@28)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@28))))
 :qid |XDXz3bpl.5415:38|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@29)))
 :qid |XDXz3bpl.5429:48|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@30) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@30)))
 :qid |XDXz3bpl.5443:48|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@31))))
 :qid |XDXz3bpl.5463:41|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@32)))
 :qid |XDXz3bpl.5478:53|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@33) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@33)))
 :qid |XDXz3bpl.5492:53|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@34))))
 :qid |XDXz3bpl.5509:60|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@35)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@35)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@35))))
 :qid |XDXz3bpl.5526:60|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36))))
 :qid |XDXz3bpl.5543:57|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37) true)
 :qid |XDXz3bpl.7798:68|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))))
 :qid |XDXz3bpl.7820:66|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))))
 :qid |XDXz3bpl.7846:66|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@40) true)
 :qid |XDXz3bpl.8179:31|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@41) true)
 :qid |XDXz3bpl.8533:31|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@41))
)))
(assert (forall ((s@@42 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@42)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@42)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@42))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@42))))
 :qid |XDXz3bpl.8552:35|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@42))
)))
(assert (forall ((s@@43 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@43) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@43)))
 :qid |XDXz3bpl.9907:71|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@44) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@44)))
 :qid |XDXz3bpl.9956:46|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@45) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@45)))
 :qid |XDXz3bpl.9969:64|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@46)))
 :qid |XDXz3bpl.9982:75|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@47) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@47)))
 :qid |XDXz3bpl.9995:72|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@48)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@48)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@48))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@48))))
 :qid |XDXz3bpl.10024:46|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@48))
)))
(assert (forall ((s@@49 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@49)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@49)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@49))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@49))))
 :qid |XDXz3bpl.10045:55|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@49))
)))
(assert (forall ((s@@50 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@50)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@50)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@50))))
 :qid |XDXz3bpl.10074:65|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@51))))
 :qid |XDXz3bpl.10473:60|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@52)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@52))))
 :qid |XDXz3bpl.10490:66|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@53)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@53)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@53))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@53))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@53))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@53))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@53))))
 :qid |XDXz3bpl.10519:50|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@54) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@54)))
 :qid |XDXz3bpl.10538:45|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@55)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@55)) true))
 :qid |XDXz3bpl.10862:87|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@56) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@56)))
 :qid |XDXz3bpl.11079:43|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@57)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@57))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@57))))
 :qid |XDXz3bpl.11098:48|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@58)))
 :qid |XDXz3bpl.11113:50|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@59) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@59)))
 :qid |XDXz3bpl.11127:47|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@60)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@60)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@60))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@60))))
 :qid |XDXz3bpl.11147:58|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@61) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@61)))
 :qid |XDXz3bpl.11162:39|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@62)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@62)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@62))))
 :qid |XDXz3bpl.11184:58|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@63)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@63)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@63))))
 :qid |XDXz3bpl.11201:58|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@64) true)
 :qid |XDXz3bpl.11216:51|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@65)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@65)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@65))))
 :qid |XDXz3bpl.11233:60|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@66)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@66)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@66))))
 :qid |XDXz3bpl.11531:47|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@67)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@67)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@67))))
 :qid |XDXz3bpl.11553:63|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@68) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@68)))
 :qid |XDXz3bpl.11568:57|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@69)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@69))))
 :qid |XDXz3bpl.11584:54|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@70)))
 :qid |XDXz3bpl.11598:55|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@71)))
 :qid |XDXz3bpl.11612:57|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@72))))
 :qid |XDXz3bpl.11634:56|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@73)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@73))))
 :qid |XDXz3bpl.11659:52|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@74)))
 :qid |XDXz3bpl.11675:54|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@75)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@75)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@75))))
 :qid |XDXz3bpl.12546:45|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@76) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@76)))
 :qid |XDXz3bpl.12560:51|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@77)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@77)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@77))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@77))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@77))))
 :qid |XDXz3bpl.12583:48|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@78))))
 :qid |XDXz3bpl.12897:47|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@79)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@79))))
 :qid |XDXz3bpl.12921:47|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@80)))
 :qid |XDXz3bpl.13176:49|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@81)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@81))))
 :qid |XDXz3bpl.13219:49|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@82)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@82))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@82))))
 :qid |XDXz3bpl.13248:48|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@83)))
 :qid |XDXz3bpl.13543:47|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_58273 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58273 v@@26))
)))
(assert (forall ((v@@27 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_57879 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57879 v@@27))
)))
(assert (forall ((v@@28 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_57682 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57682 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@4 (ReverseVec_58076 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58076 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@5 (ReverseVec_57091 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57091 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@6 (ReverseVec_57288 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57288 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@7 (ReverseVec_57485 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57485 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_56894 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56894 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |XDXz3bpl.245:54|
 :skolemid |263|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63926|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63926|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63926_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63926| (|Select__T@[$1_Event_EventHandle]Multiset_63926_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63926| (|Select__T@[$1_Event_EventHandle]Multiset_63926_| |l#1| handle@@0))))
(Multiset_63926 (|lambda#3| (|v#Multiset_63926| (|Select__T@[$1_Event_EventHandle]Multiset_63926_| |l#0@@0| handle@@0)) (|v#Multiset_63926| (|Select__T@[$1_Event_EventHandle]Multiset_63926_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XDXz3bpl.2548:13|
 :skolemid |264|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63926_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |XDXz3bpl.124:29|
 :skolemid |265|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_93359)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_93359)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_92885)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_94331)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_94416)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_94501)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_92885)
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
(declare-fun $t14 () T@$Mutation_93359)
(declare-fun $t14@0 () T@$Mutation_93359)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_93359)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 204020) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12329 (|l#$Mutation_93359| $t14@1) (seq.++ (|p#$Mutation_93359| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_93359| $t14@1)))) (=> (and (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2)) (= $t14@2 ($Mutation_93359 (|l#$Mutation_93359| $t14@1) (|p#$Mutation_93359| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1))))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_92885 (|Store__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_93359| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_93359| $t14@2)) (|v#$Mutation_93359| $t14@2)))))) (and (=> (= (ControlFlow 0 146019) (- 0 204746)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816)) (and (=> (= (ControlFlow 0 146019) (- 0 204758)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 146019) (- 0 204770)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 146019) (- 0 204797)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 146019) (- 0 204807)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 146019) (- 0 204821)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 146019) (- 0 204845)) (= $t25 _$t2))))))))))))))))))))
(let ((anon31_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 146077) 146019)) L5_correct)))
(let ((anon32_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 145829) 146019)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 145825) (- 0 204895)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 145825) (- 0 204932)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon31_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 146073) 145825))) L8_correct)))
(let ((anon30_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 146057) 146077) anon31_Then_correct) (=> (= (ControlFlow 0 146057) 146073) anon31_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 145709) 145825))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 145693) 145829) anon32_Then_correct) (=> (= (ControlFlow 0 145693) 145709) anon32_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 145657) 145693)) anon30_Else$1_correct)))
(let ((anon30_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 145663) 145657)) inline$$Lt$0$anon0_correct)))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= $t17@0 (= _$t1 0))) (and (=> (= (ControlFlow 0 145611) 146057) anon30_Then_correct) (=> (= (ControlFlow 0 145611) 145663) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 146091) 145825))) L8_correct)))
(let ((inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 0) (= 0 0)) (and (=> (= (ControlFlow 0 145591) 146091) anon29_Then_correct) (=> (= (ControlFlow 0 145591) 145611) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_93359| $t14@1))) (=> (and (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|) (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_93359| $t14@1)))) (and (= $t15@0 $t15@0) (= (ControlFlow 0 145597) 145591))) inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 146105) 145825))) L8_correct)))
(let ((anon27_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 146157) 146105) anon28_Then_correct) (=> (= (ControlFlow 0 146157) 145597) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 146155) 146157)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_93359 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 145494) 146105) anon28_Then_correct) (=> (= (ControlFlow 0 145494) 145597) anon28_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 145472) (- 0 204365)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 145472) 146155) anon27_Then_correct) (=> (= (ControlFlow 0 145472) 145494) anon27_Else_correct)))))))
(let ((anon25_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 146201) 145825))) L8_correct))))
(let ((anon24_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 146227) 145825))) L8_correct))))
(let ((anon26_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 145452) 146171) anon26_Then_correct) (=> (= (ControlFlow 0 145452) 145472) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not $t12) (= (ControlFlow 0 145458) 145452)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct)))
(let ((anon24_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 145381) 146201) anon25_Then_correct) (=> (= (ControlFlow 0 145381) 145458) anon25_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |XDXz3bpl.3872:20|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 145359) 146227) anon24_Then_correct) (=> (= (ControlFlow 0 145359) 145381) anon24_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_63926_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_63926| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63926| stream@@0) v@@35) 0)
 :qid |XDXz3bpl.129:13|
 :skolemid |2|
))))
 :qid |XDXz3bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 145247) 145359)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_93359| $t3)) 0) (= (seq.len (|p#$Mutation_93359| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 145257) 145247))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 204020) 145257) anon0_correct)))
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
(declare-datatypes ((T@$Memory_86017 0)) ((($Memory_86017 (|domain#$Memory_86017| |T@[Int]Bool|) (|contents#$Memory_86017| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_131373 0)) ((($Memory_131373 (|domain#$Memory_131373| |T@[Int]Bool|) (|contents#$Memory_131373| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_126778 0)) ((($Memory_126778 (|domain#$Memory_126778| |T@[Int]Bool|) (|contents#$Memory_126778| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_124781 0)) ((($Memory_124781 (|domain#$Memory_124781| |T@[Int]Bool|) (|contents#$Memory_124781| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_125061 0)) ((($Memory_125061 (|domain#$Memory_125061| |T@[Int]Bool|) (|contents#$Memory_125061| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_124748 0)) ((($Memory_124748 (|domain#$Memory_124748| |T@[Int]Bool|) (|contents#$Memory_124748| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_124533 0)) ((($Memory_124533 (|domain#$Memory_124533| |T@[Int]Bool|) (|contents#$Memory_124533| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_124162 0)) ((($Memory_124162 (|domain#$Memory_124162| |T@[Int]Bool|) (|contents#$Memory_124162| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_121702 0)) ((($Memory_121702 (|domain#$Memory_121702| |T@[Int]Bool|) (|contents#$Memory_121702| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_121638 0)) ((($Memory_121638 (|domain#$Memory_121638| |T@[Int]Bool|) (|contents#$Memory_121638| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_125704 0)) ((($Memory_125704 (|domain#$Memory_125704| |T@[Int]Bool|) (|contents#$Memory_125704| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_120119 0)) ((($Memory_120119 (|domain#$Memory_120119| |T@[Int]Bool|) (|contents#$Memory_120119| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_119609 0)) ((($Memory_119609 (|domain#$Memory_119609| |T@[Int]Bool|) (|contents#$Memory_119609| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_94501 0)) ((($Memory_94501 (|domain#$Memory_94501| |T@[Int]Bool|) (|contents#$Memory_94501| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111916 0)) ((($Memory_111916 (|domain#$Memory_111916| |T@[Int]Bool|) (|contents#$Memory_111916| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_126567 0)) ((($Memory_126567 (|domain#$Memory_126567| |T@[Int]Bool|) (|contents#$Memory_126567| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104744 0)) ((($Memory_104744 (|domain#$Memory_104744| |T@[Int]Bool|) (|contents#$Memory_104744| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104657 0)) ((($Memory_104657 (|domain#$Memory_104657| |T@[Int]Bool|) (|contents#$Memory_104657| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100024 0)) ((($Memory_100024 (|domain#$Memory_100024| |T@[Int]Bool|) (|contents#$Memory_100024| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_99937 0)) ((($Memory_99937 (|domain#$Memory_99937| |T@[Int]Bool|) (|contents#$Memory_99937| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105008 0)) ((($Memory_105008 (|domain#$Memory_105008| |T@[Int]Bool|) (|contents#$Memory_105008| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_94331 0)) ((($Memory_94331 (|domain#$Memory_94331| |T@[Int]Bool|) (|contents#$Memory_94331| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105334 0)) ((($Memory_105334 (|domain#$Memory_105334| |T@[Int]Bool|) (|contents#$Memory_105334| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104917 0)) ((($Memory_104917 (|domain#$Memory_104917| |T@[Int]Bool|) (|contents#$Memory_104917| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120544 0)) ((($Memory_120544 (|domain#$Memory_120544| |T@[Int]Bool|) (|contents#$Memory_120544| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_105235 0)) ((($Memory_105235 (|domain#$Memory_105235| |T@[Int]Bool|) (|contents#$Memory_105235| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_97073 0)) ((($Memory_97073 (|domain#$Memory_97073| |T@[Int]Bool|) (|contents#$Memory_97073| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_96986 0)) ((($Memory_96986 (|domain#$Memory_96986| |T@[Int]Bool|) (|contents#$Memory_96986| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_96899 0)) ((($Memory_96899 (|domain#$Memory_96899| |T@[Int]Bool|) (|contents#$Memory_96899| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_130064 0)) ((($Memory_130064 (|domain#$Memory_130064| |T@[Int]Bool|) (|contents#$Memory_130064| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96812 0)) ((($Memory_96812 (|domain#$Memory_96812| |T@[Int]Bool|) (|contents#$Memory_96812| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_96725 0)) ((($Memory_96725 (|domain#$Memory_96725| |T@[Int]Bool|) (|contents#$Memory_96725| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_95844 0)) ((($Memory_95844 (|domain#$Memory_95844| |T@[Int]Bool|) (|contents#$Memory_95844| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_95911 0)) ((($Memory_95911 (|domain#$Memory_95911| |T@[Int]Bool|) (|contents#$Memory_95911| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_95762 0)) ((($Memory_95762 (|domain#$Memory_95762| |T@[Int]Bool|) (|contents#$Memory_95762| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_95680 0)) ((($Memory_95680 (|domain#$Memory_95680| |T@[Int]Bool|) (|contents#$Memory_95680| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_95598 0)) ((($Memory_95598 (|domain#$Memory_95598| |T@[Int]Bool|) (|contents#$Memory_95598| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_95516 0)) ((($Memory_95516 (|domain#$Memory_95516| |T@[Int]Bool|) (|contents#$Memory_95516| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_95434 0)) ((($Memory_95434 (|domain#$Memory_95434| |T@[Int]Bool|) (|contents#$Memory_95434| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_99616 0)) ((($Memory_99616 (|domain#$Memory_99616| |T@[Int]Bool|) (|contents#$Memory_99616| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_94416 0)) ((($Memory_94416 (|domain#$Memory_94416| |T@[Int]Bool|) (|contents#$Memory_94416| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_99468 0)) ((($Memory_99468 (|domain#$Memory_99468| |T@[Int]Bool|) (|contents#$Memory_99468| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_95037 0)) ((($Memory_95037 (|domain#$Memory_95037| |T@[Int]Bool|) (|contents#$Memory_95037| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_95004 0)) ((($Memory_95004 (|domain#$Memory_95004| |T@[Int]Bool|) (|contents#$Memory_95004| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_92885 0)) ((($Memory_92885 (|domain#$Memory_92885| |T@[Int]Bool|) (|contents#$Memory_92885| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_63926 0)) (((Multiset_63926 (|v#Multiset_63926| |T@[$EventRep]Int|) (|l#Multiset_63926| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63926| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63926|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_127605 0)) ((($Mutation_127605 (|l#$Mutation_127605| T@$Location) (|p#$Mutation_127605| (Seq Int)) (|v#$Mutation_127605| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_127561 0)) ((($Mutation_127561 (|l#$Mutation_127561| T@$Location) (|p#$Mutation_127561| (Seq Int)) (|v#$Mutation_127561| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_31714 0)) ((($Mutation_31714 (|l#$Mutation_31714| T@$Location) (|p#$Mutation_31714| (Seq Int)) (|v#$Mutation_31714| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_110633 0)) ((($Mutation_110633 (|l#$Mutation_110633| T@$Location) (|p#$Mutation_110633| (Seq Int)) (|v#$Mutation_110633| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_98211 0)) ((($Mutation_98211 (|l#$Mutation_98211| T@$Location) (|p#$Mutation_98211| (Seq Int)) (|v#$Mutation_98211| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_93359 0)) ((($Mutation_93359 (|l#$Mutation_93359| T@$Location) (|p#$Mutation_93359| (Seq Int)) (|v#$Mutation_93359| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_86645 0)) ((($Mutation_86645 (|l#$Mutation_86645| T@$Location) (|p#$Mutation_86645| (Seq Int)) (|v#$Mutation_86645| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_82013 0)) ((($Mutation_82013 (|l#$Mutation_82013| T@$Location) (|p#$Mutation_82013| (Seq Int)) (|v#$Mutation_82013| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_81267 0)) ((($Mutation_81267 (|l#$Mutation_81267| T@$Location) (|p#$Mutation_81267| (Seq Int)) (|v#$Mutation_81267| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_79827 0)) ((($Mutation_79827 (|l#$Mutation_79827| T@$Location) (|p#$Mutation_79827| (Seq Int)) (|v#$Mutation_79827| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_79081 0)) ((($Mutation_79081 (|l#$Mutation_79081| T@$Location) (|p#$Mutation_79081| (Seq Int)) (|v#$Mutation_79081| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_77641 0)) ((($Mutation_77641 (|l#$Mutation_77641| T@$Location) (|p#$Mutation_77641| (Seq Int)) (|v#$Mutation_77641| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_76895 0)) ((($Mutation_76895 (|l#$Mutation_76895| T@$Location) (|p#$Mutation_76895| (Seq Int)) (|v#$Mutation_76895| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_75455 0)) ((($Mutation_75455 (|l#$Mutation_75455| T@$Location) (|p#$Mutation_75455| (Seq Int)) (|v#$Mutation_75455| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_74709 0)) ((($Mutation_74709 (|l#$Mutation_74709| T@$Location) (|p#$Mutation_74709| (Seq Int)) (|v#$Mutation_74709| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_73269 0)) ((($Mutation_73269 (|l#$Mutation_73269| T@$Location) (|p#$Mutation_73269| (Seq Int)) (|v#$Mutation_73269| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_72523 0)) ((($Mutation_72523 (|l#$Mutation_72523| T@$Location) (|p#$Mutation_72523| (Seq Int)) (|v#$Mutation_72523| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_71083 0)) ((($Mutation_71083 (|l#$Mutation_71083| T@$Location) (|p#$Mutation_71083| (Seq Int)) (|v#$Mutation_71083| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_70337 0)) ((($Mutation_70337 (|l#$Mutation_70337| T@$Location) (|p#$Mutation_70337| (Seq Int)) (|v#$Mutation_70337| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_68897 0)) ((($Mutation_68897 (|l#$Mutation_68897| T@$Location) (|p#$Mutation_68897| (Seq Int)) (|v#$Mutation_68897| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68151 0)) ((($Mutation_68151 (|l#$Mutation_68151| T@$Location) (|p#$Mutation_68151| (Seq Int)) (|v#$Mutation_68151| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_66673 0)) ((($Mutation_66673 (|l#$Mutation_66673| T@$Location) (|p#$Mutation_66673| (Seq Int)) (|v#$Mutation_66673| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_65927 0)) ((($Mutation_65927 (|l#$Mutation_65927| T@$Location) (|p#$Mutation_65927| (Seq Int)) (|v#$Mutation_65927| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63926_| (|T@[$1_Event_EventHandle]Multiset_63926| T@$1_Event_EventHandle) T@Multiset_63926)
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
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'#0''| (|T@$1_Diem_CurrencyInfo'#0'|) Bool)
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
(declare-fun ReverseVec_58273 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_57879 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_57682 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_58076 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_57091 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_57288 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_57485 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_56894 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63926| |T@[$1_Event_EventHandle]Multiset_63926|) |T@[$1_Event_EventHandle]Multiset_63926|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XDXz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XDXz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XDXz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XDXz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XDXz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XDXz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XDXz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XDXz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |XDXz3bpl.590:13|
 :skolemid |15|
))))
 :qid |XDXz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |XDXz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |XDXz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |XDXz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |XDXz3bpl.770:13|
 :skolemid |20|
))))
 :qid |XDXz3bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |XDXz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |XDXz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |XDXz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |XDXz3bpl.950:13|
 :skolemid |25|
))))
 :qid |XDXz3bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |XDXz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |XDXz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |XDXz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |XDXz3bpl.1130:13|
 :skolemid |30|
))))
 :qid |XDXz3bpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |XDXz3bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |XDXz3bpl.1143:17|
 :skolemid |33|
)))))
 :qid |XDXz3bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |XDXz3bpl.1310:13|
 :skolemid |35|
))))
 :qid |XDXz3bpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |XDXz3bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |XDXz3bpl.1323:17|
 :skolemid |38|
)))))
 :qid |XDXz3bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |XDXz3bpl.1490:13|
 :skolemid |40|
))))
 :qid |XDXz3bpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |XDXz3bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |XDXz3bpl.1503:17|
 :skolemid |43|
)))))
 :qid |XDXz3bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |XDXz3bpl.1670:13|
 :skolemid |45|
))))
 :qid |XDXz3bpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |XDXz3bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |XDXz3bpl.1683:17|
 :skolemid |48|
)))))
 :qid |XDXz3bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |XDXz3bpl.1850:13|
 :skolemid |50|
))))
 :qid |XDXz3bpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |XDXz3bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |XDXz3bpl.1863:17|
 :skolemid |53|
)))))
 :qid |XDXz3bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |XDXz3bpl.2030:13|
 :skolemid |55|
))))
 :qid |XDXz3bpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |XDXz3bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |XDXz3bpl.2043:17|
 :skolemid |58|
)))))
 :qid |XDXz3bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |XDXz3bpl.2210:13|
 :skolemid |60|
))))
 :qid |XDXz3bpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |XDXz3bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |XDXz3bpl.2223:17|
 :skolemid |63|
)))))
 :qid |XDXz3bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |XDXz3bpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |XDXz3bpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XDXz3bpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XDXz3bpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63926_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63926| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63926| stream) v@@24) 0)
 :qid |XDXz3bpl.129:13|
 :skolemid |2|
))))
 :qid |XDXz3bpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XDXz3bpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |XDXz3bpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XDXz3bpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |XDXz3bpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XDXz3bpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |XDXz3bpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XDXz3bpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |XDXz3bpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XDXz3bpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |XDXz3bpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XDXz3bpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |XDXz3bpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XDXz3bpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |XDXz3bpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XDXz3bpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |XDXz3bpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XDXz3bpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |XDXz3bpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |XDXz3bpl.3083:70|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |XDXz3bpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |XDXz3bpl.3139:60|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |XDXz3bpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |XDXz3bpl.3195:66|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |XDXz3bpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |XDXz3bpl.3251:60|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |XDXz3bpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |XDXz3bpl.3307:63|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |XDXz3bpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |XDXz3bpl.3363:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |XDXz3bpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |XDXz3bpl.3419:82|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |XDXz3bpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |XDXz3bpl.3475:88|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |XDXz3bpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XDXz3bpl.3684:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |XDXz3bpl.4227:49|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |XDXz3bpl.4277:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |XDXz3bpl.4296:49|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |XDXz3bpl.4384:91|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |XDXz3bpl.4398:113|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |XDXz3bpl.4412:71|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |XDXz3bpl.4426:75|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |XDXz3bpl.4440:73|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |XDXz3bpl.4460:48|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |XDXz3bpl.4476:57|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |XDXz3bpl.4490:103|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |XDXz3bpl.4504:125|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |XDXz3bpl.4518:83|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |XDXz3bpl.4532:87|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |XDXz3bpl.4546:85|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |XDXz3bpl.4560:48|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |XDXz3bpl.4573:65|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |XDXz3bpl.5102:45|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |XDXz3bpl.5115:45|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |XDXz3bpl.5128:55|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |XDXz3bpl.5142:55|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |XDXz3bpl.5162:38|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |XDXz3bpl.5183:44|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |XDXz3bpl.5234:53|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |XDXz3bpl.5296:53|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@25)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@25)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@25))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@25))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@25))))
 :qid |XDXz3bpl.5358:45|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@26) true)
 :qid |XDXz3bpl.5384:55|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@27) true)
 :qid |XDXz3bpl.5398:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@27))
)))
(assert (forall ((s@@28 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@28)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@28))))
 :qid |XDXz3bpl.5415:38|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@29)))
 :qid |XDXz3bpl.5429:48|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@30) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@30)))
 :qid |XDXz3bpl.5443:48|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@31))))
 :qid |XDXz3bpl.5463:41|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@32)))
 :qid |XDXz3bpl.5478:53|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@33) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@33)))
 :qid |XDXz3bpl.5492:53|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@34))))
 :qid |XDXz3bpl.5509:60|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@35)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@35)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@35))))
 :qid |XDXz3bpl.5526:60|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36))))
 :qid |XDXz3bpl.5543:57|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37) true)
 :qid |XDXz3bpl.7798:68|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))))
 :qid |XDXz3bpl.7820:66|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))))
 :qid |XDXz3bpl.7846:66|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@40) true)
 :qid |XDXz3bpl.8179:31|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@41) true)
 :qid |XDXz3bpl.8533:31|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@41))
)))
(assert (forall ((s@@42 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@42)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@42)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@42))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@42))))
 :qid |XDXz3bpl.8552:35|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@42))
)))
(assert (forall ((s@@43 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@43) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@43)))
 :qid |XDXz3bpl.9907:71|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@44) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@44)))
 :qid |XDXz3bpl.9956:46|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@45) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@45)))
 :qid |XDXz3bpl.9969:64|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@46)))
 :qid |XDXz3bpl.9982:75|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@47) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@47)))
 :qid |XDXz3bpl.9995:72|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@48)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@48)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@48))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@48))))
 :qid |XDXz3bpl.10024:46|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@48))
)))
(assert (forall ((s@@49 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@49)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@49)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@49))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@49))))
 :qid |XDXz3bpl.10045:55|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@49))
)))
(assert (forall ((s@@50 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@50)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@50)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@50))))
 :qid |XDXz3bpl.10074:65|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@51))))
 :qid |XDXz3bpl.10473:60|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@52)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@52))))
 :qid |XDXz3bpl.10490:66|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@53)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@53)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@53))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@53))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@53))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@53))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@53))))
 :qid |XDXz3bpl.10519:50|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@54) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@54)))
 :qid |XDXz3bpl.10538:45|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@55)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@55)) true))
 :qid |XDXz3bpl.10862:87|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@56) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@56)))
 :qid |XDXz3bpl.11079:43|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@57)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@57))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@57))))
 :qid |XDXz3bpl.11098:48|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@58)))
 :qid |XDXz3bpl.11113:50|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@59) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@59)))
 :qid |XDXz3bpl.11127:47|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@60)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@60)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@60))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@60))))
 :qid |XDXz3bpl.11147:58|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@61) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@61)))
 :qid |XDXz3bpl.11162:39|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@62)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@62)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@62))))
 :qid |XDXz3bpl.11184:58|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@63)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@63)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@63))))
 :qid |XDXz3bpl.11201:58|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@64) true)
 :qid |XDXz3bpl.11216:51|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@65)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@65)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@65))))
 :qid |XDXz3bpl.11233:60|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@66)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@66)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@66))))
 :qid |XDXz3bpl.11531:47|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@67)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@67)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@67))))
 :qid |XDXz3bpl.11553:63|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@68) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@68)))
 :qid |XDXz3bpl.11568:57|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@69)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@69))))
 :qid |XDXz3bpl.11584:54|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@70)))
 :qid |XDXz3bpl.11598:55|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@71)))
 :qid |XDXz3bpl.11612:57|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@72))))
 :qid |XDXz3bpl.11634:56|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@73)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@73))))
 :qid |XDXz3bpl.11659:52|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@74)))
 :qid |XDXz3bpl.11675:54|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@75)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@75)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@75))))
 :qid |XDXz3bpl.12546:45|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@76) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@76)))
 :qid |XDXz3bpl.12560:51|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@77)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@77)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@77))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@77))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@77))))
 :qid |XDXz3bpl.12583:48|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@78))))
 :qid |XDXz3bpl.12897:47|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@79)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@79))))
 :qid |XDXz3bpl.12921:47|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@80)))
 :qid |XDXz3bpl.13176:49|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@81)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@81))))
 :qid |XDXz3bpl.13219:49|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@82)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@82))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@82))))
 :qid |XDXz3bpl.13248:48|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@83)))
 :qid |XDXz3bpl.13543:47|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_58273 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58273 v@@26))
)))
(assert (forall ((v@@27 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_57879 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57879 v@@27))
)))
(assert (forall ((v@@28 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_57682 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57682 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@4 (ReverseVec_58076 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58076 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@5 (ReverseVec_57091 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57091 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@6 (ReverseVec_57288 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57288 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@7 (ReverseVec_57485 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57485 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_56894 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |XDXz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |XDXz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56894 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |XDXz3bpl.245:54|
 :skolemid |263|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63926|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63926|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63926_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63926| (|Select__T@[$1_Event_EventHandle]Multiset_63926_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63926| (|Select__T@[$1_Event_EventHandle]Multiset_63926_| |l#1| handle@@0))))
(Multiset_63926 (|lambda#3| (|v#Multiset_63926| (|Select__T@[$1_Event_EventHandle]Multiset_63926_| |l#0@@0| handle@@0)) (|v#Multiset_63926| (|Select__T@[$1_Event_EventHandle]Multiset_63926_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XDXz3bpl.2548:13|
 :skolemid |264|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63926_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |XDXz3bpl.124:29|
 :skolemid |265|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_92885)
(declare-fun $1_XDX_Reserve_$memory@1 () T@$Memory_94331)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_94331)
(declare-fun _$t0 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_94416)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_95037)
(declare-fun $t7 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_95434)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_96725)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_95844)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $t8 () T@$1_DiemConfig_Configuration)
(declare-fun $t9 () Int)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_94501)
(declare-fun $t10 () Int)
(declare-fun $t11 () Int)
(declare-fun _$t1 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5| () T@$Memory_94416)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3| () T@$Memory_94501)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@10 () Int)
(declare-fun $1_XDX_Reserve_$memory@0 () T@$Memory_94331)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_XDX_Reserve_| (|T@[Int]$1_XDX_Reserve| Int T@$1_XDX_Reserve) |T@[Int]$1_XDX_Reserve|)
(declare-fun |Select__T@[Int]$1_XDX_Reserve_| (|T@[Int]$1_XDX_Reserve| Int) T@$1_XDX_Reserve)
(assert (forall ( ( ?x0 |T@[Int]$1_XDX_Reserve|) ( ?x1 Int) ( ?x2 T@$1_XDX_Reserve)) (! (= (|Select__T@[Int]$1_XDX_Reserve_| (|Store__T@[Int]$1_XDX_Reserve_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_XDX_Reserve|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_XDX_Reserve)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_XDX_Reserve_| (|Store__T@[Int]$1_XDX_Reserve_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_XDX_Reserve_| ?x0 ?y1))) :weight 0)))
(declare-fun $t43@0 () T@$1_XDX_Reserve)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1| () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t5@0| () Bool)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0| () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t3@0| () Bool)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0| () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun $t41 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1| () T@$Memory_94501)
(declare-fun $abort_code@6 () Int)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2| () T@$Memory_94501)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1| () Int)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@0| () T@$Memory_94501)
(declare-fun |Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t18@1| () |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$Not$3$dst@1 () Bool)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0| () Int)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t9@1| () Bool)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t8@0| () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| () T@$Memory_94416)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0| () Bool)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0| () Bool)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0| () Int)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2| () T@$Mutation_110633)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1| () T@$Mutation_31714)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@2| () T@$Mutation_31714)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3| () T@$Mutation_110633)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4| () T@$Memory_94416)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@0| () T@$Mutation_110633)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@1| () T@$Mutation_110633)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t2@0| () T@$Mutation_110633)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@0| () T@$Mutation_31714)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t3@0| () Int)
(declare-fun $t40 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1| () |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| () T@$Memory_94416)
(declare-fun $abort_code@2 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| () T@$Memory_94416)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@0| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_95434)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_95911)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_95911)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_95434)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_95434)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1| () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_95911)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_95911)
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
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2 () T@$Mutation_98211)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1 () T@$Mutation_98211)
(declare-fun |inline$$1_Vector_push_back'vec'u8''$0$m'@1| () T@$Mutation_81267)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1 () T@$Mutation_81267)
(declare-fun $t33@0 () (Seq Int))
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 () Int)
(declare-fun |inline$$1_Vector_contains'vec'u8''$0$res@1| () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 () (Seq (Seq Int)))
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@0 () T@$Mutation_98211)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@0 () T@$Mutation_81267)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t5@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t6@0 () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t39@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t40@0| () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| () T@$Memory_94416)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t38@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $abort_code@0 () Int)
(declare-fun $t28 () T@$1_FixedPoint32_FixedPoint32)
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
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0| () Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t19@1| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t18@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t15@0| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t11@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t12@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t13@0| () Int)
(declare-fun $t29 () Bool)
(declare-fun $t34 () Int)
(declare-fun $t35 () T@$1_DiemConfig_Configuration)
(declare-fun $t36 () Int)
(declare-fun $t26 () Int)
(declare-fun $t13 () Int)
(declare-fun $t27 () Int)
(declare-fun $t25 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t22 () Int)
(declare-fun $t23 () Int)
(declare-fun $t24 () Int)
(declare-fun $t19 () Int)
(declare-fun $t16@0 () Bool)
(declare-fun $t14 () Bool)
(declare-fun $t12 () Bool)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_104657)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_104744)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_99937)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_100024)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_105235)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_104917)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_105334)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_105008)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_XDX_initialize$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 205172) (let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Then_correct| true))
(let ((anon36_Else_correct  (=> (not $abort_flag@9) (and (=> (= (ControlFlow 0 155065) (- 0 210807)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 155065) (- 0 210819)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 155065) (- 0 210837)) (not (not (= _$t0 173345816)))) (=> (not (not (= _$t0 173345816))) (and (=> (= (ControlFlow 0 155065) (- 0 210851)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816)) (and (=> (= (ControlFlow 0 155065) (- 0 210861)) (not (or (= 1000000 0) (> 1000000 10000000000)))) (=> (not (or (= 1000000 0) (> 1000000 10000000000))) (and (=> (= (ControlFlow 0 155065) (- 0 210880)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0)) (and (=> (= (ControlFlow 0 155065) (- 0 210891)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 155065) (- 0 210903)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t7)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t7)) 0))) (and (=> (= (ControlFlow 0 155065) (- 0 210921)) (not (not (= _$t0 173345816)))) (=> (not (not (= _$t0 173345816))) (and (=> (= (ControlFlow 0 155065) (- 0 210935)) (not (not (= _$t0 173345816)))) (=> (not (not (= _$t0 173345816))) (and (=> (= (ControlFlow 0 155065) (- 0 210949)) (not (exists ((i@@40 Int) ) (!  (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr)))) i@@40) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXz3bpl.1855:13|
 :skolemid |52|
)))) (=> (not (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (>= i@@41 0) (< i@@41 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr)))) i@@41) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXz3bpl.1855:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 155065) (- 0 210969)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96725| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96725| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0))) (and (=> (= (ControlFlow 0 155065) (- 0 210982)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 155065) (- 0 210994)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95844| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95844| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8)))) (and (=> (= (ControlFlow 0 155065) (- 0 211036)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0)) (and (=> (= (ControlFlow 0 155065) (- 0 211047)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 155065) (- 0 211057)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t10)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t10))) (and (=> (= (ControlFlow 0 155065) (- 0 211069)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t10)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t10)) 0))) (and (=> (= (ControlFlow 0 155065) (- 0 211087)) (not (not (= _$t0 173345816)))) (=> (not (not (= _$t0 173345816))) (and (=> (= (ControlFlow 0 155065) (- 0 211101)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t11)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t11))) (and (=> (= (ControlFlow 0 155065) (- 0 211113)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t11)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t11)) 1))) (and (=> (= (ControlFlow 0 155065) (- 0 211131)) (not (not (= _$t1 186537453)))) (=> (not (not (= _$t1 186537453))) (and (=> (= (ControlFlow 0 155065) (- 0 211145)) (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816) (and (=> (= (ControlFlow 0 155065) (- 0 211151)) (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) 0)) (=> (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) 0) (and (=> (= (ControlFlow 0 155065) (- 0 211163)) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) false)) (=> (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) false) (and (=> (= (ControlFlow 0 155065) (- 0 211175)) (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3|) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3|) _$t0) (=> (= (ControlFlow 0 155065) (- 0 211184)) (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory@1) 173345816)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 147870) (- 0 210164)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (= _$t0 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816)) (or (= 1000000 0) (> 1000000 10000000000))) (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t7)) 0))) (not (= _$t0 173345816))) (not (= _$t0 173345816))) (exists ((i@@42 Int) ) (!  (and (and (|$IsValid'u64'| i@@42) (and (>= i@@42 0) (< i@@42 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))) i@@42) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXz3bpl.1855:13|
 :skolemid |52|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96725| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95844| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8)))) (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t10))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t10)) 0))) (not (= _$t0 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t11))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t11)) 1))) (not (= _$t1 186537453)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (= _$t0 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816)) (or (= 1000000 0) (> 1000000 10000000000))) (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t7)) 0))) (not (= _$t0 173345816))) (not (= _$t0 173345816))) (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (and (>= i@@43 0) (< i@@43 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))) i@@43) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXz3bpl.1855:13|
 :skolemid |52|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96725| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95844| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8)))) (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t10))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t10)) 0))) (not (= _$t0 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t11))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t11)) 1))) (not (= _$t1 186537453))) (=> (= (ControlFlow 0 147870) (- 0 210410)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (= _$t0 173345816)) (= 2 $t13@0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816) (= 6 $t13@0))) (and (or (= 1000000 0) (> 1000000 10000000000)) (= 7 $t13@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0) (= 6 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t7)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t7)) 0)) (= 3 $t13@0))) (and (not (= _$t0 173345816)) (= 2 $t13@0))) (and (not (= _$t0 173345816)) (= 2 $t13@0))) (and (exists ((i@@44 Int) ) (!  (and (and (|$IsValid'u64'| i@@44) (and (>= i@@44 0) (< i@@44 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1)))) i@@44) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXz3bpl.1855:13|
 :skolemid |52|
)) (= 7 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96725| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (= 4 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 $t13@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95844| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8))) (= 1 $t13@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0) (= 6 $t13@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t10)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t10)) 0)) (= 3 $t13@0))) (and (not (= _$t0 173345816)) (= 2 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) $t11)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $t11)) 1)) (= 3 $t13@0))) (and (not (= _$t1 186537453)) (= 2 $t13@0))))))))
(let ((anon36_Then_correct  (=> (and (and $abort_flag@9 (= $abort_code@10 $abort_code@10)) (and (= $t13@0 $abort_code@10) (= (ControlFlow 0 155079) 147870))) L3_correct)))
(let ((anon35_Then$1_correct  (=> (= $1_XDX_Reserve_$memory@1 $1_XDX_Reserve_$memory) (=> (and (= $abort_flag@9 true) (= $abort_code@10 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 155129) 155079) anon36_Then_correct) (=> (= (ControlFlow 0 155129) 155065) anon36_Else_correct))))))
(let ((anon35_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) _$t0) (= (ControlFlow 0 155127) 155129)) anon35_Then$1_correct)))
(let ((anon35_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) _$t0)) (=> (and (and (= $1_XDX_Reserve_$memory@0 ($Memory_94331 (|Store__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) _$t0 true) (|Store__T@[Int]$1_XDX_Reserve_| (|contents#$Memory_94331| $1_XDX_Reserve_$memory) _$t0 $t43@0))) (= $1_XDX_Reserve_$memory@1 $1_XDX_Reserve_$memory@0)) (and (= $abort_flag@9 $abort_flag@8) (= $abort_code@10 $abort_code@9))) (and (=> (= (ControlFlow 0 154667) 155079) anon36_Then_correct) (=> (= (ControlFlow 0 154667) 155065) anon36_Else_correct))))))
(let ((anon34_Else_correct  (=> (not $abort_flag@8) (=> (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1|) (= $t43@0 ($1_XDX_Reserve |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 154649) 155127) anon35_Then_correct) (=> (= (ControlFlow 0 154649) 154667) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (and $abort_flag@8 (= $abort_code@9 $abort_code@9)) (and (= $t13@0 $abort_code@9) (= (ControlFlow 0 155143) 147870))) L3_correct)))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|  (=> (= $abort_code@9 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1|) (=> (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@0|) (= $abort_flag@8 true)) (and (=> (= (ControlFlow 0 154515) 155143) anon34_Then_correct) (=> (= (ControlFlow 0 154515) 154649) anon34_Else_correct))))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Then_correct|  (=> (and (and $abort_flag@7 (= $abort_code@8 $abort_code@8)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1| $abort_code@8) (= (ControlFlow 0 154509) 154515))) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|)))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Then_correct|  (=> |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t5@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) (= 5 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|) (= (ControlFlow 0 154541) 154515))) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Then_correct|  (=> |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t3@0| (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) (= 5 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) 1)) (= 3 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|))) (and (not (= _$t1 186537453)) (= 2 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|))) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|) (= (ControlFlow 0 154613) 154515))) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Else_correct|  (=> (and (not $abort_flag@7) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1| (|$1_Diem_Preburn'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (=> (and (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1|) (= $abort_code@9 $abort_code@8)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1|) (= $abort_flag@8 $abort_flag@7))) (and (=> (= (ControlFlow 0 154495) 155143) anon34_Then_correct) (=> (= (ControlFlow 0 154495) 154649) anon34_Else_correct))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_code@8 $abort_code@7)) (and (= $abort_flag@7 $abort_flag@6) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 154437) 154509) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 154437) 154495) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_code@8 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (and (= $abort_flag@7 true) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 154467) 154509) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 154467) 154495) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816))) (and (=> (= (ControlFlow 0 154409) 154467) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 154409) 154437) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Else_correct|  (=> (and (not |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t5@0|) (= (ControlFlow 0 154473) 154409)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Else_correct|  (=> (and (not |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t3@0|) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t5@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)))) (and (=> (= (ControlFlow 0 154252) 154541) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Then_correct|) (=> (= (ControlFlow 0 154252) 154473) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Else_correct|)))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t1@0| _$t1) (= _$t1 _$t1)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0| _$t1) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t3@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) 1))) (not (= _$t1 186537453)))))) (and (=> (= (ControlFlow 0 154234) 154613) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Then_correct|) (=> (= (ControlFlow 0 154234) 154252) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Else_correct|)))))
(let ((anon33_Else_correct  (=> (not $abort_flag@6) (=> (and (= $t41 _$t1) (= (ControlFlow 0 154619) 154234)) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon0_correct|))))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t13@0 $abort_code@7) (= (ControlFlow 0 155157) 147870))) L3_correct)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Else_correct|  (=> (and (and (not $abort_flag@5) (= $abort_flag@6 $abort_flag@5)) (and (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1|) (= $abort_code@7 $abort_code@6))) (and (=> (= (ControlFlow 0 153722) 155157) anon33_Then_correct) (=> (= (ControlFlow 0 153722) 154619) anon33_Else_correct)))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$L3_correct|  (=> (= $abort_flag@6 true) (=> (and (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2|) (= $abort_code@7 |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1|)) (and (=> (= (ControlFlow 0 153638) 155157) anon33_Then_correct) (=> (= (ControlFlow 0 153638) 154619) anon33_Else_correct))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Then_correct|  (=> $abort_flag@5 (=> (and (and (= $abort_code@6 $abort_code@6) (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1|)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1| $abort_code@6) (= (ControlFlow 0 153736) 153638))) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then$1_correct|  (=> (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (=> (and (= $abort_flag@5 true) (= $abort_code@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 153786) 153736) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 153786) 153722) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Else_correct|))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0) (= (ControlFlow 0 153784) 153786)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then$1_correct|)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0)) (=> (and (and (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@0| ($Memory_94501 (|Store__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0 true) (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0 |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t18@1|))) (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@0|)) (and (= $abort_flag@5 $abort_flag@4) (= $abort_code@6 $abort_code@5))) (and (=> (= (ControlFlow 0 153712) 153736) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 153712) 153722) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Else_correct|))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Then_correct|  (=> inline$$Not$3$dst@1 (=> (and (= _$t0 _$t0) (|$IsValid'u64'| 18446744073709551615)) (=> (and (and (|$IsValid'u64'| 18446744073709551615) (|$IsValid'u64'| 86400000000)) (and (|$IsValid'u64'| 18446744073709551615) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t18@1| (|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 18446744073709551615 18446744073709551615 86400000000 18446744073709551615)))) (and (=> (= (ControlFlow 0 153694) 153784) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 153694) 153712) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Else_correct|)))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Else_correct|  (=> (not inline$$Not$3$dst@1) (=> (and (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= (ControlFlow 0 153632) 153638))) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0$1_correct|  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0| 6)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= inline$$Not$3$dst@1 inline$$Not$3$dst@1))) (and (=> (= (ControlFlow 0 153616) 153694) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 153616) 153632) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Else_correct|))))))
(let ((inline$$Not$3$anon0_correct  (=> (and (= inline$$Not$3$dst@1  (not |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t9@1|)) (= (ControlFlow 0 153576) 153616)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0$1_correct|)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0_correct|  (=> (= _$t0 _$t0) (=> (and (and (|$IsValid'address'| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t8@0|) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t8@0| _$t0)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t9@1| (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t8@0|)) (= (ControlFlow 0 153582) 153576))) inline$$Not$3$anon0_correct))))
(let ((anon32_Else_correct  (=> (and (not $abort_flag@4) (= (ControlFlow 0 153790) 153582)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0_correct|)))
(let ((anon32_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t13@0 $abort_code@5) (= (ControlFlow 0 155171) 147870))) L3_correct)))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (=> (and (= $abort_flag@4 true) (= $abort_code@5 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1|)) (and (=> (= (ControlFlow 0 152995) 155171) anon32_Then_correct) (=> (= (ControlFlow 0 152995) 153790) anon32_Else_correct))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| $abort_code@4) (= (ControlFlow 0 152989) 152995))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|)))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon14_Then_correct|  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| $abort_code@3) (= (ControlFlow 0 153061) 152995))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|)))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Then_correct|  (=> |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (= 5 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|) (= (ControlFlow 0 153087) 152995))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Then_correct|  (=> |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0| (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) (= 5 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) 1)) (= 3 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|))) (and (not (= _$t1 186537453)) (= 2 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|))) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|) (= (ControlFlow 0 153159) 152995))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|))) (=> (and (and (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1|) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1| ($Mutation_31714 (|l#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (seq.++ (|p#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (seq.unit 7)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|))))) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@2| ($Mutation_31714 (|l#$Mutation_31714| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1|) (|p#$Mutation_31714| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1|) false)) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3| ($Mutation_110633 (|l#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (|p#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|v#$Mutation_31714| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@2|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|))))))) (and (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4| ($Memory_94416 (|Store__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3|)) (|v#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3|)))) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4|)) (and (= $abort_flag@4 $abort_flag@3) (= $abort_code@5 $abort_code@4)))) (and (=> (= (ControlFlow 0 152975) 155171) anon32_Then_correct) (=> (= (ControlFlow 0 152975) 153790) anon32_Else_correct))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon15_Then$1_correct|  (=> (= $abort_flag@3 true) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@0|)) (and (=> (= (ControlFlow 0 153047) 152989) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 153047) 152975) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon16_Else_correct|))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (= (ControlFlow 0 153045) 153047)) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon15_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816) (=> (and (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@1| ($Mutation_110633 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816))) (= $abort_flag@3 $abort_flag@2)) (and (= $abort_code@4 $abort_code@3) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@1|))) (and (=> (= (ControlFlow 0 152909) 152989) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 152909) 152975) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon16_Else_correct|))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon14_Else_correct|  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 152887) 153045) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 152887) 152909) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon15_Else_correct|)))))
(let ((inline$$1_CoreAddresses_CURRENCY_INFO_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 152873) 153061) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 152873) 152887) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon14_Else_correct|)))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Else_correct|  (=> (and (not |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0|) (= (ControlFlow 0 152879) 152873)) inline$$1_CoreAddresses_CURRENCY_INFO_ADDRESS$0$anon0_correct)))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Else_correct|  (=> (and (not |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0|) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)))) (and (=> (= (ControlFlow 0 152802) 153087) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Then_correct|) (=> (= (ControlFlow 0 152802) 152879) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Else_correct|)))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon0_correct|  (=> (and (and (and (= (seq.len (|p#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t2@0|)) 0) (= (seq.len (|p#$Mutation_110633| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@0|)) 0)) (and (= (seq.len (|p#$Mutation_31714| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@0|)) 0) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t3@0| _$t1))) (and (and (= _$t1 _$t1) (= false false)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0| _$t1) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) 1))) (not (= _$t1 186537453))))))) (and (=> (= (ControlFlow 0 152784) 153159) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Then_correct|) (=> (= (ControlFlow 0 152784) 152802) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Else_correct|)))))
(let ((anon31_Else_correct  (=> (not $abort_flag@2) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1|)) (and (= $t40 _$t1) (= (ControlFlow 0 153163) 152784))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon0_correct|))))
(let ((anon31_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t13@0 $abort_code@3) (= (ControlFlow 0 155185) 147870))) L3_correct)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Else_correct|  (=> (and (not $abort_flag@1) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1| (|$1_Diem_MintCapability'$1_XDX_XDX'| false))) (=> (and (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1| (|$1_Diem_BurnCapability'$1_XDX_XDX'| false)) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1|)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|))) (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1|)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1)))) (and (=> (= (ControlFlow 0 151784) 155185) anon31_Then_correct) (=> (= (ControlFlow 0 151784) 153163) anon31_Else_correct))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@0|)) (and (= $abort_code@3 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1|) (= $abort_flag@2 true))) (and (=> (= (ControlFlow 0 149619) 155185) anon31_Then_correct) (=> (= (ControlFlow 0 149619) 153163) anon31_Else_correct))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Then_correct|  (=> $abort_flag@1 (=> (and (and (= $abort_code@2 $abort_code@2) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| $abort_code@2)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 151798) 149619))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816) (=> (and (and (= (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@2))) inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_95911| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95911| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (= $abort_flag@1 $abort_flag@0) (= $abort_code@2 $abort_code@1))) (and (=> (= (ControlFlow 0 151554) 151798) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 151554) 151784) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Else_correct|))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct  (=> (and (and (not |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2|) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_95434 (|Store__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (= (ControlFlow 0 151528) 151554))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct  (=> (and (and |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2| (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_95434 (|Store__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|) (= (ControlFlow 0 151566) 151554))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Else_correct  (=> (not |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1|) (=> (and (= $1_DiemConfig_Configuration_$memory@1 ($Memory_95911 (|Store__T@[Int]Bool_| (|domain#$Memory_95911| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_95911| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1)) (and (=> (= (ControlFlow 0 151514) 151566) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct) (=> (= (ControlFlow 0 151514) 151528) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Then_correct  (=> |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1| (=> (and (= $1_DiemConfig_Configuration_$memory@0 ($Memory_95911 (|Store__T@[Int]Bool_| (|domain#$Memory_95911| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95911| $1_DiemConfig_Configuration_$memory) 173345816 |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_Configuration'@1|))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0)) (and (=> (= (ControlFlow 0 151578) 151566) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct) (=> (= (ControlFlow 0 151578) 151528) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Else_correct  (=> (not inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0) (and (=> (= (ControlFlow 0 151502) 151578) inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Then_correct) (=> (= (ControlFlow 0 151502) 151514) inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct  (=> (and (= $abort_flag@1 true) (= $abort_code@2 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1)) (and (=> (= (ControlFlow 0 151291) 151798) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 151291) 151784) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Else_correct|)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Then_correct  (=> inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96725| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (= 4 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95844| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0) 18446744073709551615)) (< inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0))) (= 1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0) (= (ControlFlow 0 151676) 151291))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Else_correct  (=> (and (not $abort_flag@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2 ($Mutation_98211 (|l#$Mutation_98211| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (|p#$Mutation_98211| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) ($1_RegisteredCurrencies_RegisteredCurrencies (|v#$Mutation_81267| |inline$$1_Vector_push_back'vec'u8''$0$m'@1|))))) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1 (|v#$Mutation_98211| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2)) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95911| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96725| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95844| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0) 18446744073709551615)) (< inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0))))))) (and (=> (= (ControlFlow 0 151494) 151676) inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Then_correct) (=> (= (ControlFlow 0 151494) 151502) inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 $abort_code@1) (= (ControlFlow 0 151690) 151291))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((|inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'vec'u8''$0$m'@1| ($Mutation_81267 (|l#$Mutation_81267| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (|p#$Mutation_81267| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (seq.++ (|v#$Mutation_81267| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (seq.unit $t33@0)))) (and (=> (= (ControlFlow 0 151368) 151690) inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Then_correct) (=> (= (ControlFlow 0 151368) 151494) inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Then_correct  (=> (and (and inline$$Not$2$dst@1 (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1 ($Mutation_98211 ($Local 2) (as seq.empty (Seq Int)) inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0))) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1 ($Mutation_81267 (|l#$Mutation_98211| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (seq.++ (|p#$Mutation_98211| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (seq.unit 0)) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (|v#$Mutation_98211| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1)))) (= (ControlFlow 0 151374) 151368))) |inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Else_correct  (=> (and (and (not inline$$Not$2$dst@1) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= (ControlFlow 0 151285) 151291))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 7)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= inline$$Not$2$dst@1 inline$$Not$2$dst@1))) (and (=> (= (ControlFlow 0 151269) 151374) inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Then_correct) (=> (= (ControlFlow 0 151269) 151285) inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Else_correct))))))
(let ((inline$$Not$2$anon0_correct  (=> (and (= inline$$Not$2$dst@1  (not |inline$$1_Vector_contains'vec'u8''$0$res@1|)) (= (ControlFlow 0 151229) 151269)) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else$1_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 151235) 151229)) inline$$Not$2$anon0_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 $abort_code@1) (= (ControlFlow 0 151704) 151291))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((|inline$$1_Vector_contains'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'vec'u8''$0$res@1| (exists ((i@@45 Int) ) (!  (and (and (|$IsValid'u64'| i@@45) (and (>= i@@45 0) (< i@@45 (seq.len inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1)))) (= (seq.nth inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 i@@45) $t33@0))
 :qid |XDXz3bpl.1855:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 151185) 151704) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Then_correct) (=> (= (ControlFlow 0 151185) 151235) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Else_correct  (=> (and (not inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0 (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@3)))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (= (ControlFlow 0 151191) 151185))) |inline$$1_Vector_contains'vec'u8''$0$anon0_correct|))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Then_correct  (=> inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0) (= (ControlFlow 0 151732) 151291))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_98211| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@0)) 0) (=> (and (= (seq.len (|p#$Mutation_81267| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@0)) 0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t5@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95911| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t6@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= _$t0 _$t0)) (and (= $t33@0 $t33@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 151113) 151732) inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Then_correct) (=> (= (ControlFlow 0 151113) 151191) inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Else_correct)))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Else_correct|  (=> (and (and (not $abort_flag@0) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t39@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95911| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t40@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= (ControlFlow 0 151736) 151113))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon0_correct)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Then_correct|  (=> $abort_flag@0 (=> (and (and (= $abort_code@1 $abort_code@1) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| $abort_code@1)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 151812) 149619))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then$1_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 151862) 151812) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 151862) 151736) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0) (= (ControlFlow 0 151860) 151862)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0)) (=> (and (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| ($Memory_94416 (|Store__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t38@1|))) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 150229) 151812) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 150229) 151736) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Else_correct|  (=> (and (not false) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t38@1| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0 0 $t28 true 1000000 1000 $t33@0 true |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 150211) 151860) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then_correct|) (=> (= (ControlFlow 0 150211) 150229) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Else_correct|)))))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@3 |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0|) false) (= $1_Event_EventHandles@4 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@3 |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 150167) 151876) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Then_correct|) (=> (= (ControlFlow 0 150167) 150211) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Else_correct|  (=> (and (not false) (= (ControlFlow 0 150173) 150167)) |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@2 |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0|) false) (= $1_Event_EventHandles@3 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@2 |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 150085) 151890) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Then_correct|) (=> (= (ControlFlow 0 150085) 150173) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Else_correct|  (=> (and (not false) (= (ControlFlow 0 150091) 150085)) |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@1 |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0|) false) (= $1_Event_EventHandles@2 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@1 |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 150003) 151904) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Then_correct|) (=> (= (ControlFlow 0 150003) 150091) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Else_correct|  (=> (and (not false) (= (ControlFlow 0 150009) 150003)) |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 149921) 151918) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Then_correct|) (=> (= (ControlFlow 0 149921) 150009) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Else_correct|  (=> (and (not false) (= (ControlFlow 0 149927) 149921)) |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 149839) 151932) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Then_correct|) (=> (= (ControlFlow 0 149839) 149927) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Then_correct|  (=> (and (and |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| (|$IsValid'u128'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 149845) 149839))) |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$anon0_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Else_correct|  (=> (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1|) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 149743) 149619))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L5_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0| 7)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1|))) (and (=> (= (ControlFlow 0 149727) 149845) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Then_correct|) (=> (= (ControlFlow 0 149727) 149743) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then$1_correct|  (=> (= inline$$Le$0$dst@1 inline$$Le$0$dst@1) (=> (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| inline$$Le$0$dst@1) (= (ControlFlow 0 151998) 149727)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L5_correct|))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= 1000000 10000000000)) (= (ControlFlow 0 151982) 151998)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then_correct|  (=> inline$$Lt$0$dst@1 (=> (and (|$IsValid'u64'| 10000000000) (= (ControlFlow 0 151988) 151982)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Else_correct|  (=> (and (and (not inline$$Lt$0$dst@1) (= false false)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| false) (= (ControlFlow 0 149697) 149727))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L5_correct|)))
(let ((inline$$Lt$0$anon0_correct  (=> (= inline$$Lt$0$dst@1 (< 0 1000000)) (and (=> (= (ControlFlow 0 149669) 151988) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then_correct|) (=> (= (ControlFlow 0 149669) 149697) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Then_correct|  (=> inline$$Not$1$dst@1 (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 149675) 149669)) inline$$Lt$0$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Else_correct|  (=> (not inline$$Not$1$dst@1) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 149613) 149619))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else$1_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0| 6)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 149597) 149675) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Then_correct|) (=> (= (ControlFlow 0 149597) 149613) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Else_correct|))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t19@1|)) (= (ControlFlow 0 149557) 149597)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t17@0|) (=> (and (and (|$IsValid'address'| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t18@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t18@0| _$t0)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t19@1| (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t18@0|)) (= (ControlFlow 0 149563) 149557))) inline$$Not$1$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t17@0| (=> (and (not (= _$t0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 152028) 149619))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (and (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t15@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t17@0|  (not (= _$t0 173345816)))) (and (=> (= (ControlFlow 0 149501) 152028) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 149501) 149563) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t15@0| (or (or (or (and (not (= _$t0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|)) (= 5 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|)) 0)) (= 3 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|))) (and (not (= _$t0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)))) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 152120) 149619))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t11@0| _$t0) (=> (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t12@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95911| $1_DiemConfig_Configuration_$memory) 173345816)) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t13@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (and (= _$t0 _$t0) (= $t28 $t28)) (and (= true true) (= 1000000 1000000))) (and (and (= 1000 1000) (= $t33@0 $t33@0)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0| _$t0) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t15@0|  (or (or (or (not (= _$t0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|)) 0))) (not (= _$t0 173345816))))))) (and (=> (= (ControlFlow 0 149479) 152120) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 149479) 149501) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))))
(let ((anon30_Else_correct  (=> (not $t29) (=> (and (|$IsValid'$1_FixedPoint32_FixedPoint32'| $t28) (= $t28 (ite (= 1 1) ($1_FixedPoint32_FixedPoint32 1) ($1_FixedPoint32_FixedPoint32 2)))) (=> (and (and (and (|$IsValid'u64'| 1000000) (|$IsValid'u64'| 1000)) (and (= $t33@0 (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))) (|$IsValid'vec'u8''| $t33@0))) (and (and (= $t34 _$t0) (= $t35 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95911| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t36 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= (ControlFlow 0 152128) 149479)))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon0_correct|)))))
(let ((anon30_Then_correct  (=> $t29 (=> (and (and (or (or (and (= $t26 0) (= 7 $t13)) (and (and (= $t27 0) (not (= $t25 0))) (= 7 $t13))) (and (> $t27 18446744073709551615) (= 8 $t13))) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 155253) 147870))) L3_correct))))
(let ((anon29_Then_correct  (=> (and inline$$Not$0$dst@1 (|$IsValid'u64'| 1)) (=> (and (and (and (|$IsValid'u64'| 1) (= $t22 ($shl 1 64))) (and (= $t23 ($shl 1 32)) (= $t24 (div $t22 $t23)))) (and (and (= $t25 ($shl 1 64)) (= $t26 ($shl 1 32))) (and (= $t27 (div $t25 $t26)) (= $t29  (or (or (= $t26 0) (and (= $t27 0) (not (= $t25 0)))) (> $t27 18446744073709551615)))))) (and (=> (= (ControlFlow 0 147998) 155253) anon30_Then_correct) (=> (= (ControlFlow 0 147998) 152128) anon30_Else_correct))))))
(let ((anon29_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t19 $t19)) (and (= $t13@0 $t19) (= (ControlFlow 0 147162) 147870))) L3_correct)))
(let ((anon28_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t19) (= $t19 6)) (and (= $t19 $t19) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 147146) 147998) anon29_Then_correct) (=> (= (ControlFlow 0 147146) 147162) anon29_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t16@0)) (= (ControlFlow 0 147110) 147146)) anon28_Else$1_correct)))
(let ((anon28_Else_correct  (=> (not false) (=> (and (= $t16@0 (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816)) (= (ControlFlow 0 147116) 147110)) inline$$Not$0$anon0_correct))))
(let ((anon27_Then_correct  (=> $t14 (=> (and (and (and (not (= _$t0 173345816)) (= 2 $t13)) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 155297) 147870))) L3_correct))))
(let ((anon26_Then_correct  (=> $t12 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t13)) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 155323) 147870))) L3_correct))))
(let ((anon28_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 147060) 155267) anon28_Then_correct) (=> (= (ControlFlow 0 147060) 147116) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (and (not $t14) (= (ControlFlow 0 147066) 147060)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct)))
(let ((anon26_Else_correct  (=> (and (not $t12) (= $t14  (not (= _$t0 173345816)))) (and (=> (= (ControlFlow 0 146989) 155297) anon27_Then_correct) (=> (= (ControlFlow 0 146989) 147066) anon27_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95911| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104657| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |XDXz3bpl.9052:21|
 :skolemid |150|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104744| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |XDXz3bpl.9052:268|
 :skolemid |151|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99937| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |XDXz3bpl.9056:21|
 :skolemid |152|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100024| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |XDXz3bpl.9056:231|
 :skolemid |153|
)))) (=> (and (and (and (and (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_105235| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_104917| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |XDXz3bpl.9060:21|
 :skolemid |154|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_105334| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_105008| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_95037| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |XDXz3bpl.9060:292|
 :skolemid |155|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94331| $1_XDX_Reserve_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) addr@@4) (= addr@@4 173345816)))
 :qid |XDXz3bpl.9080:20|
 :skolemid |156|
)) (|$IsValid'address'| _$t0)) (and (|$IsValid'address'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |XDXz3bpl.9089:20|
 :skolemid |157|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))))) (and (and (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |XDXz3bpl.9093:20|
 :skolemid |158|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_95037| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95911| $1_DiemConfig_Configuration_$memory) $a_0@@1)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@1))
 :qid |XDXz3bpl.9097:20|
 :skolemid |159|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95911| $1_DiemConfig_Configuration_$memory) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_95844| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@2)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@2))
 :qid |XDXz3bpl.9101:20|
 :skolemid |160|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_95844| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@3))
 :qid |XDXz3bpl.9105:20|
 :skolemid |161|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95434| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@3))
)))) (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_96725| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@4)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@4))
 :qid |XDXz3bpl.9109:20|
 :skolemid |162|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_96725| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@5) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@5)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@5) 10000000000))))
 :qid |XDXz3bpl.9113:20|
 :skolemid |163|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_94416| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@5))
))) (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) $a_0@@6)))
 (and (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| $rsc@@6) (and (and (and (> (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@6) 0) (> (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@6) 0)) (> (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@6) 0)) (> (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@6) 0))))
 :qid |XDXz3bpl.9117:20|
 :skolemid |164|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_94501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_XDX_Reserve_| (|contents#$Memory_94331| $1_XDX_Reserve_$memory) $a_0@@7)))
(|$IsValid'$1_XDX_Reserve'| $rsc@@7))
 :qid |XDXz3bpl.9121:20|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]$1_XDX_Reserve_| (|contents#$Memory_94331| $1_XDX_Reserve_$memory) $a_0@@7))
))))) (and (and (and (= $t7 _$t0) (= $t8 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95911| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t10 _$t0))) (and (and (= $t11 _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t12  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92885| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))))) (and (=> (= (ControlFlow 0 146967) 155323) anon26_Then_correct) (=> (= (ControlFlow 0 146967) 146989) anon26_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_63926_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_63926| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63926| stream@@0) v@@35) 0)
 :qid |XDXz3bpl.129:13|
 :skolemid |2|
))))
 :qid |XDXz3bpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 146344) 146967)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 205172) 146344) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
