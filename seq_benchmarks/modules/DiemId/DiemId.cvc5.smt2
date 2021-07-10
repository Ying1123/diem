(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_92015 0)) ((($Memory_92015 (|domain#$Memory_92015| |T@[Int]Bool|) (|contents#$Memory_92015| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_140571 0)) ((($Memory_140571 (|domain#$Memory_140571| |T@[Int]Bool|) (|contents#$Memory_140571| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_135976 0)) ((($Memory_135976 (|domain#$Memory_135976| |T@[Int]Bool|) (|contents#$Memory_135976| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_133979 0)) ((($Memory_133979 (|domain#$Memory_133979| |T@[Int]Bool|) (|contents#$Memory_133979| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_134259 0)) ((($Memory_134259 (|domain#$Memory_134259| |T@[Int]Bool|) (|contents#$Memory_134259| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_133946 0)) ((($Memory_133946 (|domain#$Memory_133946| |T@[Int]Bool|) (|contents#$Memory_133946| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_133731 0)) ((($Memory_133731 (|domain#$Memory_133731| |T@[Int]Bool|) (|contents#$Memory_133731| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_122732 0)) ((($Memory_122732 (|domain#$Memory_122732| |T@[Int]Bool|) (|contents#$Memory_122732| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomains 0)) ((($1_DiemId_DiemIdDomains (|$domains#$1_DiemId_DiemIdDomains| (Seq T@$1_DiemId_DiemIdDomain)) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomains| 0)
(declare-datatypes ((T@$Memory_122668 0)) ((($Memory_122668 (|domain#$Memory_122668| |T@[Int]Bool|) (|contents#$Memory_122668| |T@[Int]$1_DiemId_DiemIdDomains|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_120208 0)) ((($Memory_120208 (|domain#$Memory_120208| |T@[Int]Bool|) (|contents#$Memory_120208| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_120144 0)) ((($Memory_120144 (|domain#$Memory_120144| |T@[Int]Bool|) (|contents#$Memory_120144| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_134902 0)) ((($Memory_134902 (|domain#$Memory_134902| |T@[Int]Bool|) (|contents#$Memory_134902| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_118625 0)) ((($Memory_118625 (|domain#$Memory_118625| |T@[Int]Bool|) (|contents#$Memory_118625| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_118115 0)) ((($Memory_118115 (|domain#$Memory_118115| |T@[Int]Bool|) (|contents#$Memory_118115| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114966 0)) ((($Memory_114966 (|domain#$Memory_114966| |T@[Int]Bool|) (|contents#$Memory_114966| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114747 0)) ((($Memory_114747 (|domain#$Memory_114747| |T@[Int]Bool|) (|contents#$Memory_114747| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_135765 0)) ((($Memory_135765 (|domain#$Memory_135765| |T@[Int]Bool|) (|contents#$Memory_135765| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107638 0)) ((($Memory_107638 (|domain#$Memory_107638| |T@[Int]Bool|) (|contents#$Memory_107638| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107551 0)) ((($Memory_107551 (|domain#$Memory_107551| |T@[Int]Bool|) (|contents#$Memory_107551| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104348 0)) ((($Memory_104348 (|domain#$Memory_104348| |T@[Int]Bool|) (|contents#$Memory_104348| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104261 0)) ((($Memory_104261 (|domain#$Memory_104261| |T@[Int]Bool|) (|contents#$Memory_104261| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107902 0)) ((($Memory_107902 (|domain#$Memory_107902| |T@[Int]Bool|) (|contents#$Memory_107902| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_116807 0)) ((($Memory_116807 (|domain#$Memory_116807| |T@[Int]Bool|) (|contents#$Memory_116807| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_108228 0)) ((($Memory_108228 (|domain#$Memory_108228| |T@[Int]Bool|) (|contents#$Memory_108228| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107811 0)) ((($Memory_107811 (|domain#$Memory_107811| |T@[Int]Bool|) (|contents#$Memory_107811| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_119050 0)) ((($Memory_119050 (|domain#$Memory_119050| |T@[Int]Bool|) (|contents#$Memory_119050| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_108129 0)) ((($Memory_108129 (|domain#$Memory_108129| |T@[Int]Bool|) (|contents#$Memory_108129| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_101499 0)) ((($Memory_101499 (|domain#$Memory_101499| |T@[Int]Bool|) (|contents#$Memory_101499| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_101412 0)) ((($Memory_101412 (|domain#$Memory_101412| |T@[Int]Bool|) (|contents#$Memory_101412| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_101325 0)) ((($Memory_101325 (|domain#$Memory_101325| |T@[Int]Bool|) (|contents#$Memory_101325| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_139262 0)) ((($Memory_139262 (|domain#$Memory_139262| |T@[Int]Bool|) (|contents#$Memory_139262| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_101238 0)) ((($Memory_101238 (|domain#$Memory_101238| |T@[Int]Bool|) (|contents#$Memory_101238| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_101151 0)) ((($Memory_101151 (|domain#$Memory_101151| |T@[Int]Bool|) (|contents#$Memory_101151| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_100270 0)) ((($Memory_100270 (|domain#$Memory_100270| |T@[Int]Bool|) (|contents#$Memory_100270| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_100337 0)) ((($Memory_100337 (|domain#$Memory_100337| |T@[Int]Bool|) (|contents#$Memory_100337| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_100188 0)) ((($Memory_100188 (|domain#$Memory_100188| |T@[Int]Bool|) (|contents#$Memory_100188| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_100106 0)) ((($Memory_100106 (|domain#$Memory_100106| |T@[Int]Bool|) (|contents#$Memory_100106| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_100024 0)) ((($Memory_100024 (|domain#$Memory_100024| |T@[Int]Bool|) (|contents#$Memory_100024| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_99942 0)) ((($Memory_99942 (|domain#$Memory_99942| |T@[Int]Bool|) (|contents#$Memory_99942| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_99860 0)) ((($Memory_99860 (|domain#$Memory_99860| |T@[Int]Bool|) (|contents#$Memory_99860| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_103959 0)) ((($Memory_103959 (|domain#$Memory_103959| |T@[Int]Bool|) (|contents#$Memory_103959| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_103894 0)) ((($Memory_103894 (|domain#$Memory_103894| |T@[Int]Bool|) (|contents#$Memory_103894| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_99447 0)) ((($Memory_99447 (|domain#$Memory_99447| |T@[Int]Bool|) (|contents#$Memory_99447| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_99414 0)) ((($Memory_99414 (|domain#$Memory_99414| |T@[Int]Bool|) (|contents#$Memory_99414| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_98854 0)) ((($Memory_98854 (|domain#$Memory_98854| |T@[Int]Bool|) (|contents#$Memory_98854| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_67758 0)) (((Multiset_67758 (|v#Multiset_67758| |T@[$EventRep]Int|) (|l#Multiset_67758| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_67758| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_67758|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_136803 0)) ((($Mutation_136803 (|l#$Mutation_136803| T@$Location) (|p#$Mutation_136803| (Seq Int)) (|v#$Mutation_136803| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_136759 0)) ((($Mutation_136759 (|l#$Mutation_136759| T@$Location) (|p#$Mutation_136759| (Seq Int)) (|v#$Mutation_136759| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_123166 0)) ((($Mutation_123166 (|l#$Mutation_123166| T@$Location) (|p#$Mutation_123166| (Seq Int)) (|v#$Mutation_123166| T@$1_DiemId_DiemIdDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_123105 0)) ((($Mutation_123105 (|l#$Mutation_123105| T@$Location) (|p#$Mutation_123105| (Seq Int)) (|v#$Mutation_123105| T@$1_DiemId_DiemIdDomains) ) ) ))
(declare-datatypes ((T@$Mutation_30849 0)) ((($Mutation_30849 (|l#$Mutation_30849| T@$Location) (|p#$Mutation_30849| (Seq Int)) (|v#$Mutation_30849| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_113464 0)) ((($Mutation_113464 (|l#$Mutation_113464| T@$Location) (|p#$Mutation_113464| (Seq Int)) (|v#$Mutation_113464| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_102637 0)) ((($Mutation_102637 (|l#$Mutation_102637| T@$Location) (|p#$Mutation_102637| (Seq Int)) (|v#$Mutation_102637| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_92643 0)) ((($Mutation_92643 (|l#$Mutation_92643| T@$Location) (|p#$Mutation_92643| (Seq Int)) (|v#$Mutation_92643| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13434 0)) ((($Mutation_13434 (|l#$Mutation_13434| T@$Location) (|p#$Mutation_13434| (Seq Int)) (|v#$Mutation_13434| Int) ) ) ))
(declare-datatypes ((T@$Mutation_88011 0)) ((($Mutation_88011 (|l#$Mutation_88011| T@$Location) (|p#$Mutation_88011| (Seq Int)) (|v#$Mutation_88011| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_87265 0)) ((($Mutation_87265 (|l#$Mutation_87265| T@$Location) (|p#$Mutation_87265| (Seq Int)) (|v#$Mutation_87265| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_85825 0)) ((($Mutation_85825 (|l#$Mutation_85825| T@$Location) (|p#$Mutation_85825| (Seq Int)) (|v#$Mutation_85825| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_85079 0)) ((($Mutation_85079 (|l#$Mutation_85079| T@$Location) (|p#$Mutation_85079| (Seq Int)) (|v#$Mutation_85079| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_83639 0)) ((($Mutation_83639 (|l#$Mutation_83639| T@$Location) (|p#$Mutation_83639| (Seq Int)) (|v#$Mutation_83639| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_82893 0)) ((($Mutation_82893 (|l#$Mutation_82893| T@$Location) (|p#$Mutation_82893| (Seq Int)) (|v#$Mutation_82893| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_81453 0)) ((($Mutation_81453 (|l#$Mutation_81453| T@$Location) (|p#$Mutation_81453| (Seq Int)) (|v#$Mutation_81453| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_80707 0)) ((($Mutation_80707 (|l#$Mutation_80707| T@$Location) (|p#$Mutation_80707| (Seq Int)) (|v#$Mutation_80707| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_79267 0)) ((($Mutation_79267 (|l#$Mutation_79267| T@$Location) (|p#$Mutation_79267| (Seq Int)) (|v#$Mutation_79267| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_78521 0)) ((($Mutation_78521 (|l#$Mutation_78521| T@$Location) (|p#$Mutation_78521| (Seq Int)) (|v#$Mutation_78521| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_77081 0)) ((($Mutation_77081 (|l#$Mutation_77081| T@$Location) (|p#$Mutation_77081| (Seq Int)) (|v#$Mutation_77081| T@$1_DiemId_DiemIdDomain) ) ) ))
(declare-datatypes ((T@$Mutation_76335 0)) ((($Mutation_76335 (|l#$Mutation_76335| T@$Location) (|p#$Mutation_76335| (Seq Int)) (|v#$Mutation_76335| (Seq T@$1_DiemId_DiemIdDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_74895 0)) ((($Mutation_74895 (|l#$Mutation_74895| T@$Location) (|p#$Mutation_74895| (Seq Int)) (|v#$Mutation_74895| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_74149 0)) ((($Mutation_74149 (|l#$Mutation_74149| T@$Location) (|p#$Mutation_74149| (Seq Int)) (|v#$Mutation_74149| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_72709 0)) ((($Mutation_72709 (|l#$Mutation_72709| T@$Location) (|p#$Mutation_72709| (Seq Int)) (|v#$Mutation_72709| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71963 0)) ((($Mutation_71963 (|l#$Mutation_71963| T@$Location) (|p#$Mutation_71963| (Seq Int)) (|v#$Mutation_71963| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_70485 0)) ((($Mutation_70485 (|l#$Mutation_70485| T@$Location) (|p#$Mutation_70485| (Seq Int)) (|v#$Mutation_70485| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_69739 0)) ((($Mutation_69739 (|l#$Mutation_69739| T@$Location) (|p#$Mutation_69739| (Seq Int)) (|v#$Mutation_69739| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_67758_| (|T@[$1_Event_EventHandle]Multiset_67758| T@$1_Event_EventHandle) T@Multiset_67758)
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
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainEvent'| (T@$1_DiemId_DiemIdDomainEvent) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainManager'| (T@$1_DiemId_DiemIdDomainManager) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomains'| (T@$1_DiemId_DiemIdDomains) Bool)
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
(declare-fun ReverseVec_61559 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_61165 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_60968 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_61362 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_60180 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_60377 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_60574 ((Seq T@$1_DiemId_DiemIdDomain)) (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun ReverseVec_60771 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_59983 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_67758| |T@[$1_Event_EventHandle]Multiset_67758|) |T@[$1_Event_EventHandle]Multiset_67758|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemIdcvc5bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemIdcvc5bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemIdcvc5bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemIdcvc5bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemIdcvc5bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemIdcvc5bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemIdcvc5bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemIdcvc5bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemIdcvc5bpl.590:13|
 :skolemid |15|
))))
 :qid |DiemIdcvc5bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemIdcvc5bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemIdcvc5bpl.603:17|
 :skolemid |18|
)))))
 :qid |DiemIdcvc5bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemIdcvc5bpl.770:13|
 :skolemid |20|
))))
 :qid |DiemIdcvc5bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemIdcvc5bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemIdcvc5bpl.783:17|
 :skolemid |23|
)))))
 :qid |DiemIdcvc5bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemIdcvc5bpl.950:13|
 :skolemid |25|
))))
 :qid |DiemIdcvc5bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemIdcvc5bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemIdcvc5bpl.963:17|
 :skolemid |28|
)))))
 :qid |DiemIdcvc5bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemId_DiemIdDomain)) ) (! (= (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemId_DiemIdDomain'| (seq.nth v@@10 i@@9)))
 :qid |DiemIdcvc5bpl.1130:13|
 :skolemid |30|
))))
 :qid |DiemIdcvc5bpl.1128:48|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemId_DiemIdDomain)) (e@@2 T@$1_DiemId_DiemIdDomain) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemIdcvc5bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemIdcvc5bpl.1143:17|
 :skolemid |33|
)))))
 :qid |DiemIdcvc5bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@12 i@@12)))
 :qid |DiemIdcvc5bpl.1310:13|
 :skolemid |35|
))))
 :qid |DiemIdcvc5bpl.1308:53|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@3 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@13 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemIdcvc5bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemIdcvc5bpl.1323:17|
 :skolemid |38|
)))))
 :qid |DiemIdcvc5bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |DiemIdcvc5bpl.1490:13|
 :skolemid |40|
))))
 :qid |DiemIdcvc5bpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemIdcvc5bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemIdcvc5bpl.1503:17|
 :skolemid |43|
)))))
 :qid |DiemIdcvc5bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |DiemIdcvc5bpl.1670:13|
 :skolemid |45|
))))
 :qid |DiemIdcvc5bpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemIdcvc5bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemIdcvc5bpl.1683:17|
 :skolemid |48|
)))))
 :qid |DiemIdcvc5bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |DiemIdcvc5bpl.1850:13|
 :skolemid |50|
))))
 :qid |DiemIdcvc5bpl.1848:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemIdcvc5bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemIdcvc5bpl.1863:17|
 :skolemid |53|
)))))
 :qid |DiemIdcvc5bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |DiemIdcvc5bpl.2030:13|
 :skolemid |55|
))))
 :qid |DiemIdcvc5bpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemIdcvc5bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemIdcvc5bpl.2043:17|
 :skolemid |58|
)))))
 :qid |DiemIdcvc5bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |DiemIdcvc5bpl.2210:13|
 :skolemid |60|
))))
 :qid |DiemIdcvc5bpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemIdcvc5bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemIdcvc5bpl.2223:17|
 :skolemid |63|
)))))
 :qid |DiemIdcvc5bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |DiemIdcvc5bpl.2390:13|
 :skolemid |65|
))))
 :qid |DiemIdcvc5bpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DiemIdcvc5bpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DiemIdcvc5bpl.2403:17|
 :skolemid |68|
)))))
 :qid |DiemIdcvc5bpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemIdcvc5bpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemIdcvc5bpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemIdcvc5bpl.2639:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemIdcvc5bpl.2642:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_67758| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| stream) v@@26) 0)
 :qid |DiemIdcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemIdcvc5bpl.2718:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemIdcvc5bpl.2759:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemIdcvc5bpl.2765:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemIdcvc5bpl.2815:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemIdcvc5bpl.2821:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemIdcvc5bpl.2871:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemIdcvc5bpl.2877:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemIdcvc5bpl.2927:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemIdcvc5bpl.2933:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemIdcvc5bpl.2983:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemIdcvc5bpl.2989:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemIdcvc5bpl.3039:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemIdcvc5bpl.3045:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemIdcvc5bpl.3095:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemIdcvc5bpl.3101:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemIdcvc5bpl.3151:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemIdcvc5bpl.3157:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemIdcvc5bpl.3207:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemIdcvc5bpl.3213:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |DiemIdcvc5bpl.3263:70|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |DiemIdcvc5bpl.3269:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |DiemIdcvc5bpl.3319:60|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |DiemIdcvc5bpl.3325:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |DiemIdcvc5bpl.3375:66|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |DiemIdcvc5bpl.3381:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |DiemIdcvc5bpl.3431:60|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |DiemIdcvc5bpl.3437:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |DiemIdcvc5bpl.3487:63|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |DiemIdcvc5bpl.3493:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |DiemIdcvc5bpl.3543:79|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |DiemIdcvc5bpl.3549:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |DiemIdcvc5bpl.3599:82|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |DiemIdcvc5bpl.3605:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |DiemIdcvc5bpl.3655:88|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |DiemIdcvc5bpl.3661:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemIdcvc5bpl.3833:61|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |DiemIdcvc5bpl.3968:49|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemIdcvc5bpl.4018:36|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |DiemIdcvc5bpl.4037:49|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |DiemIdcvc5bpl.4130:91|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |DiemIdcvc5bpl.4144:113|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |DiemIdcvc5bpl.4158:71|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |DiemIdcvc5bpl.4172:75|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |DiemIdcvc5bpl.4186:73|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |DiemIdcvc5bpl.4206:48|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |DiemIdcvc5bpl.4222:57|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |DiemIdcvc5bpl.4236:103|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |DiemIdcvc5bpl.4250:125|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |DiemIdcvc5bpl.4264:83|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |DiemIdcvc5bpl.4278:87|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |DiemIdcvc5bpl.4292:85|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |DiemIdcvc5bpl.4306:48|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |DiemIdcvc5bpl.4319:65|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |DiemIdcvc5bpl.4823:45|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |DiemIdcvc5bpl.4836:45|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |DiemIdcvc5bpl.4849:55|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |DiemIdcvc5bpl.4863:55|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |DiemIdcvc5bpl.4883:38|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |DiemIdcvc5bpl.4904:44|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |DiemIdcvc5bpl.4955:53|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |DiemIdcvc5bpl.5017:53|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25) true)
 :qid |DiemIdcvc5bpl.5043:55|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26) true)
 :qid |DiemIdcvc5bpl.5057:55|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@27)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@27))))
 :qid |DiemIdcvc5bpl.5074:38|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@28)))
 :qid |DiemIdcvc5bpl.5088:48|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@29)))
 :qid |DiemIdcvc5bpl.5102:48|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@30))))
 :qid |DiemIdcvc5bpl.5122:41|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@31)))
 :qid |DiemIdcvc5bpl.5137:53|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@32)))
 :qid |DiemIdcvc5bpl.5151:53|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33))))
 :qid |DiemIdcvc5bpl.5168:60|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34))))
 :qid |DiemIdcvc5bpl.5185:60|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |DiemIdcvc5bpl.5202:57|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36) true)
 :qid |DiemIdcvc5bpl.7413:68|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))))
 :qid |DiemIdcvc5bpl.7435:66|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))))
 :qid |DiemIdcvc5bpl.7461:66|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@39) true)
 :qid |DiemIdcvc5bpl.7794:31|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@39))
)))
(assert (forall ((s@@40 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@40) true)
 :qid |DiemIdcvc5bpl.8138:31|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@41)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@41)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@41))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@41))))
 :qid |DiemIdcvc5bpl.8157:35|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@41))
)))
(assert (forall ((s@@42 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@42)))
 :qid |DiemIdcvc5bpl.8583:71|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@43) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@43)))
 :qid |DiemIdcvc5bpl.8632:46|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@44)))
 :qid |DiemIdcvc5bpl.8645:64|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@45)))
 :qid |DiemIdcvc5bpl.8658:75|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@46)))
 :qid |DiemIdcvc5bpl.8671:72|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@46))
)))
(assert (forall ((s@@47 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@47)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@47)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@47))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@47))))
 :qid |DiemIdcvc5bpl.8700:46|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@48)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@48))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@48))))
 :qid |DiemIdcvc5bpl.8721:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |DiemIdcvc5bpl.8750:65|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |DiemIdcvc5bpl.9149:60|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |DiemIdcvc5bpl.9166:66|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |DiemIdcvc5bpl.9195:50|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |DiemIdcvc5bpl.9214:45|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |DiemIdcvc5bpl.9538:87|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@55)))
 :qid |DiemIdcvc5bpl.9760:43|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@56))))
 :qid |DiemIdcvc5bpl.9779:48|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@57)))
 :qid |DiemIdcvc5bpl.9794:50|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DiemId_DiemIdDomains) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomains'| s@@58) (|$IsValid'vec'$1_DiemId_DiemIdDomain''| (|$domains#$1_DiemId_DiemIdDomains| s@@58)))
 :qid |DiemIdcvc5bpl.9808:44|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomains'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@59) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@59)))
 :qid |DiemIdcvc5bpl.12039:47|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@60)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@60)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@60))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@60))))
 :qid |DiemIdcvc5bpl.12059:58|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@61) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@61)))
 :qid |DiemIdcvc5bpl.12074:39|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@62)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@62)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@62))))
 :qid |DiemIdcvc5bpl.12096:58|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@63)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@63)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@63))))
 :qid |DiemIdcvc5bpl.12113:58|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@64) true)
 :qid |DiemIdcvc5bpl.12128:51|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@65)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@65)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@65))))
 :qid |DiemIdcvc5bpl.12145:60|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@66)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@66)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@66))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@66))))
 :qid |DiemIdcvc5bpl.12443:47|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@67)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@67)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@67))))
 :qid |DiemIdcvc5bpl.12465:63|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@68) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@68)))
 :qid |DiemIdcvc5bpl.12480:57|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@69)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@69))))
 :qid |DiemIdcvc5bpl.12496:54|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@70)))
 :qid |DiemIdcvc5bpl.12510:55|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@71)))
 :qid |DiemIdcvc5bpl.12524:57|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@72))))
 :qid |DiemIdcvc5bpl.12546:56|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@73)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@73))))
 :qid |DiemIdcvc5bpl.12571:52|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@74)))
 :qid |DiemIdcvc5bpl.12587:54|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@75)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@75)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@75))))
 :qid |DiemIdcvc5bpl.13458:45|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@76) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@76)))
 :qid |DiemIdcvc5bpl.13472:51|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@77)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@77)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@77))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@77))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@77))))
 :qid |DiemIdcvc5bpl.13495:48|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@78))))
 :qid |DiemIdcvc5bpl.13809:47|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@79)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@79))))
 :qid |DiemIdcvc5bpl.13833:47|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@80)))
 :qid |DiemIdcvc5bpl.14088:49|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@81)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@81))))
 :qid |DiemIdcvc5bpl.14131:49|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@82)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@82))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@82))))
 :qid |DiemIdcvc5bpl.14160:48|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@83)))
 :qid |DiemIdcvc5bpl.14455:47|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_13287 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |DiemIdcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |DiemIdcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13287 v@@27))
)))
(assert (forall ((v@@28 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_61559 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |DiemIdcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |DiemIdcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61559 v@@28))
)))
(assert (forall ((v@@29 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_61165 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |DiemIdcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |DiemIdcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61165 v@@29))
)))
(assert (forall ((v@@30 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_60968 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |DiemIdcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |DiemIdcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60968 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@4 (ReverseVec_61362 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |DiemIdcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |DiemIdcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61362 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@5 (ReverseVec_60180 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |DiemIdcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |DiemIdcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60180 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@6 (ReverseVec_60377 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |DiemIdcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |DiemIdcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60377 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_DiemId_DiemIdDomain)) ) (! (let ((r@@7 (ReverseVec_60574 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |DiemIdcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |DiemIdcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60574 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@8 (ReverseVec_60771 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |DiemIdcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |DiemIdcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60771 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@#0|)) ) (! (let ((r@@9 (ReverseVec_59983 v@@36)))
 (and (= (seq.len r@@9) (seq.len v@@36)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@9))) (= (seq.nth r@@9 i@@42) (seq.nth v@@36 (- (- (seq.len v@@36) i@@42) 1))))
 :qid |DiemIdcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@42))
))))
 :qid |DiemIdcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59983 v@@36))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |DiemIdcvc5bpl.245:54|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_67758|) (|l#1| |T@[$1_Event_EventHandle]Multiset_67758|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| |l#1| handle@@0))))
(Multiset_67758 (|lambda#3| (|v#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| |l#0@@0| handle@@0)) (|v#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemIdcvc5bpl.2728:13|
 :skolemid |302|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@37) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@37)))
 :qid |DiemIdcvc5bpl.124:29|
 :skolemid |303|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $t37 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomains_| (|T@[Int]$1_DiemId_DiemIdDomains| Int) T@$1_DiemId_DiemIdDomains)
(declare-fun $1_DiemId_DiemIdDomains_$memory@0 () T@$Memory_122668)
(declare-fun _$t1 () Int)
(declare-fun $1_DiemId_DiemIdDomains_$memory () T@$Memory_122668)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory () T@$Memory_122732)
(declare-fun $t11 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun _$t2 () (Seq Int))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_99447)
(declare-fun $t12 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () Int)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t13 () T@$1_Event_EventHandle)
(declare-fun $t14 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_67758_| (|T@[$1_Event_EventHandle]Multiset_67758| T@$1_Event_EventHandle T@Multiset_67758) |T@[$1_Event_EventHandle]Multiset_67758|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_67758|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_67758)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|Store__T@[$1_Event_EventHandle]Multiset_67758_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_67758|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_67758)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|Store__T@[$1_Event_EventHandle]Multiset_67758_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_67758_| ?x0 ?y1))) :weight 0)))
(declare-fun $t17@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_92643)
(declare-fun $t36@0 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun $t33@1 () T@$Mutation_123166)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun $t33 () T@$Mutation_123166)
(declare-fun $t33@0 () T@$Mutation_123166)
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|T@[Int]$1_DiemId_DiemIdDomainManager| Int) T@$1_DiemId_DiemIdDomainManager)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $t24@2 () T@$Mutation_123105)
(declare-fun $t24@1 () T@$Mutation_123105)
(declare-fun |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1| () T@$Mutation_76335)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemId_DiemIdDomains_| (|T@[Int]$1_DiemId_DiemIdDomains| Int T@$1_DiemId_DiemIdDomains) |T@[Int]$1_DiemId_DiemIdDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomains|) ( ?x1 Int) ( ?x2 T@$1_DiemId_DiemIdDomains)) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|Store__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemId_DiemIdDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|Store__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun $t31@0 () T@$Mutation_76335)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t30 () Int)
(declare-fun |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1| () Bool)
(declare-fun $t26@0 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t4@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t8@0 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t9@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |$temp_0'$1_DiemId_DiemIdDomains'@0| () T@$1_DiemId_DiemIdDomains)
(declare-fun $t24 () T@$Mutation_123105)
(declare-fun $t24@0 () T@$Mutation_123105)
(declare-fun $abort_code@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t21@0 () Bool)
(declare-fun $t23 () Int)
(declare-fun inline$$1_DiemId_tc_domain_manager_exists$0$$ret0@1 () Bool)
(declare-fun $t20 () Int)
(declare-fun inline$$1_DiemId_tc_domain_manager_exists$0$$t2@1 () Bool)
(declare-fun $t16 () Bool)
(declare-fun $t15 () Int)
(declare-fun $t17 () Int)
(declare-fun $t3 () T@$Mutation_123105)
(declare-fun $t31 () T@$Mutation_76335)
(declare-fun $t34 () T@$Mutation_92643)
(push 1)
(set-info :boogie-vc-id $1_DiemId_add_diem_id_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 212180) (let ((anon48_Else_correct  (=> (and (not $abort_flag@3) (= $t37 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_122668| $1_DiemId_DiemIdDomains_$memory@0) _$t1)))) (and (=> (= (ControlFlow 0 157171) (- 0 214447)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) _$t1))) (and (=> (= (ControlFlow 0 157171) (- 0 214458)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (and (=> (= (ControlFlow 0 157171) (- 0 214468)) (not (exists ((i@@44 Int) ) (!  (and (and (|$IsValid'u64'| i@@44) (and (>= i@@44 0) (< i@@44 (seq.len $t11)))) (= (seq.nth $t11 i@@44) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdcvc5bpl.1135:13|
 :skolemid |32|
)))) (=> (not (exists ((i@@45 Int) ) (!  (and (and (|$IsValid'u64'| i@@45) (and (>= i@@45 0) (< i@@45 (seq.len $t11)))) (= (seq.nth $t11 i@@45) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdcvc5bpl.1135:13|
 :skolemid |32|
))) (and (=> (= (ControlFlow 0 157171) (- 0 214480)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99447| $1_Roles_RoleId_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99447| $1_Roles_RoleId_$memory) $t12))) (and (=> (= (ControlFlow 0 157171) (- 0 214492)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99447| $1_Roles_RoleId_$memory) $t12)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99447| $1_Roles_RoleId_$memory) $t12)) 1))) (and (=> (= (ControlFlow 0 157171) (- 0 214510)) (not (not (= _$t0 186537453)))) (=> (not (not (= _$t0 186537453))) (and (=> (= (ControlFlow 0 157171) (- 0 214524)) (not (> (seq.len _$t2) 63))) (=> (not (> (seq.len _$t2) 63)) (and (=> (= (ControlFlow 0 157171) (- 0 214536)) (exists ((i@@46 Int) ) (!  (and (and (|$IsValid'u64'| i@@46) (and (>= i@@46 0) (< i@@46 (seq.len $t37)))) (= (seq.nth $t37 i@@46) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdcvc5bpl.1135:13|
 :skolemid |32|
))) (=> (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (and (>= i@@47 0) (< i@@47 (seq.len $t37)))) (= (seq.nth $t37 i@@47) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdcvc5bpl.1135:13|
 :skolemid |32|
)) (and (=> (= (ControlFlow 0 157171) (- 0 214546)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new (let ((len (|l#Multiset_67758| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| stream@@0) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_67758 (|Store__T@[$EventRep]Int_| (|v#Multiset_67758| stream@@0) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@38 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| expected) handle@@1)) v@@38) (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| actual) handle@@1)) v@@38))
 :qid |DiemIdcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemIdcvc5bpl.2734:13|
 :skolemid |75|
)))))) (=> (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new (let ((len (|l#Multiset_67758| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| stream@@0) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_67758 (|Store__T@[$EventRep]Int_| (|v#Multiset_67758| stream@@0) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| expected) handle@@2)) (|l#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| actual) handle@@2))) (forall ((v@@39 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| expected) handle@@2)) v@@39) (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| actual) handle@@2)) v@@39))
 :qid |DiemIdcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemIdcvc5bpl.2734:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 157171) (- 0 214571)) (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_67758| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| stream@@1) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_67758 (|Store__T@[$EventRep]Int_| (|v#Multiset_67758| stream@@1) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new@@0))))))
 (and (<= (|counter#$EventStore| actual@@0) (|counter#$EventStore| expected@@0)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| actual@@0) handle@@3)) (|l#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| expected@@0) handle@@3))) (forall ((v@@40 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| actual@@0) handle@@3)) v@@40) (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| expected@@0) handle@@3)) v@@40))
 :qid |DiemIdcvc5bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemIdcvc5bpl.2734:13|
 :skolemid |75|
)))))))))))))))))))))))))))
(let ((L7_correct  (and (=> (= (ControlFlow 0 155632) (- 0 214239)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (exists ((i@@48 Int) ) (!  (and (and (|$IsValid'u64'| i@@48) (and (>= i@@48 0) (< i@@48 (seq.len $t11)))) (= (seq.nth $t11 i@@48) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdcvc5bpl.1135:13|
 :skolemid |32|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99447| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99447| $1_Roles_RoleId_$memory) $t12)) 1))) (not (= _$t0 186537453))) (> (seq.len _$t2) 63))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (exists ((i@@49 Int) ) (!  (and (and (|$IsValid'u64'| i@@49) (and (>= i@@49 0) (< i@@49 (seq.len $t11)))) (= (seq.nth $t11 i@@49) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdcvc5bpl.1135:13|
 :skolemid |32|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99447| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99447| $1_Roles_RoleId_$memory) $t12)) 1))) (not (= _$t0 186537453))) (> (seq.len _$t2) 63)) (=> (= (ControlFlow 0 155632) (- 0 214305)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) _$t1)) (= 5 $t17@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= 5 $t17@0))) (and (exists ((i@@50 Int) ) (!  (and (and (|$IsValid'u64'| i@@50) (and (>= i@@50 0) (< i@@50 (seq.len $t11)))) (= (seq.nth $t11 i@@50) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdcvc5bpl.1135:13|
 :skolemid |32|
)) (= 7 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99447| $1_Roles_RoleId_$memory) $t12)) (= 5 $t17@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99447| $1_Roles_RoleId_$memory) $t12)) 1)) (= 3 $t17@0))) (and (not (= _$t0 186537453)) (= 2 $t17@0))) (and (> (seq.len _$t2) 63) (= 7 $t17@0))))))))
(let ((anon48_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 157185) 155632))) L7_correct)))
(let ((|inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| (|v#$Mutation_92643| $t34@0)) (= $es@0 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1|)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_67758| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| stream@@2) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t36@0))))
(Multiset_67758 (|Store__T@[$EventRep]Int_| (|v#Multiset_67758| stream@@2) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t36@0) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| stream_new@@1)))))) (and (=> (= (ControlFlow 0 156985) 157185) anon48_Then_correct) (=> (= (ControlFlow 0 156985) 157171) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (and (not $abort_flag@3) (= $t34@0 ($Mutation_92643 (|l#$Mutation_123166| $t33@1) (seq.++ (|p#$Mutation_123166| $t33@1) (seq.unit 0)) (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|v#$Mutation_123166| $t33@1))))) (and (= $t36@0 ($1_DiemId_DiemIdDomainEvent false inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 _$t1)) (= (ControlFlow 0 156991) 156985))) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct|)))
(let ((anon47_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 157199) 155632))) L7_correct)))
(let ((anon46_Then$1_correct  (=> (= $t33@1 $t33) (=> (and (= $abort_flag@3 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 157251) 157199) anon47_Then_correct) (=> (= (ControlFlow 0 157251) 156991) anon47_Else_correct))))))
(let ((anon46_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= (ControlFlow 0 157249) 157251)) anon46_Then$1_correct)))
(let ((anon46_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) 186537453) (=> (and (and (= $t33@0 ($Mutation_123166 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (= $t33@1 $t33@0)) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 156876) 157199) anon47_Then_correct) (=> (= (ControlFlow 0 156876) 156991) anon47_Else_correct))))))
(let ((anon45_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 156854) 157249) anon46_Then_correct) (=> (= (ControlFlow 0 156854) 156876) anon46_Else_correct)))))
(let ((anon45_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 157265) 155632))) L7_correct)))
(let ((inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$1$anon0_correct  (=> (and (|$IsValid'address'| 186537453) (= 186537453 186537453)) (and (=> (= (ControlFlow 0 156840) 157265) anon45_Then_correct) (=> (= (ControlFlow 0 156840) 156854) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (not $abort_flag@2) (= $t24@2 ($Mutation_123105 (|l#$Mutation_123105| $t24@1) (|p#$Mutation_123105| $t24@1) ($1_DiemId_DiemIdDomains (|v#$Mutation_76335| |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1|))))) (and (=> (= (ControlFlow 0 156846) (- 0 213791)) (let (($range_0 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@51 $i_1))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2)) i@@51))) 63)))
 :qid |DiemIdcvc5bpl.10212:105|
 :skolemid |181|
)))) (=> (let (($range_0 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0 $i_1@@0) (let ((i@@51 $i_1@@0))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2)) i@@51))) 63)))
 :qid |DiemIdcvc5bpl.10212:105|
 :skolemid |181|
))) (and (=> (= (ControlFlow 0 156846) (- 0 213839)) (let (($range_0@@0 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((i@@52 $i_1@@1))
(let (($range_2 ($Range (+ i@@52 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2))))))
(forall (($i_3 Int) ) (!  (=> ($InRange $range_2 $i_3) (let ((j@@10 $i_3))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2)) i@@52) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2)) j@@10)))))
 :qid |DiemIdcvc5bpl.10220:110|
 :skolemid |182|
)))))
 :qid |DiemIdcvc5bpl.10219:105|
 :skolemid |183|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2))))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((i@@52 $i_1@@2))
(let (($range_2 ($Range (+ i@@52 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2))))))
(forall (($i_3@@0 Int) ) (!  (=> ($InRange $range_2 $i_3@@0) (let ((j@@10 $i_3@@0))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2)) i@@52) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2)) j@@10)))))
 :qid |DiemIdcvc5bpl.10220:110|
 :skolemid |182|
)))))
 :qid |DiemIdcvc5bpl.10219:105|
 :skolemid |183|
))) (and (=> (= (ControlFlow 0 156846) (- 0 213924)) (let (($range_0@@1 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2))))
(forall (($i_1@@3 Int) ) (!  (=> (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@1))) (let (($elem (seq.nth $range_0@@1 $i_1@@3)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem)) 63)))
 :qid |DiemIdcvc5bpl.10227:86|
 :skolemid |184|
)))) (=> (let (($range_0@@1 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@2))))
(forall (($i_1@@4 Int) ) (!  (=> (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@1))) (let (($elem (seq.nth $range_0@@1 $i_1@@4)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem)) 63)))
 :qid |DiemIdcvc5bpl.10227:86|
 :skolemid |184|
))) (=> (and (= $1_DiemId_DiemIdDomains_$memory@0 ($Memory_122668 (|Store__T@[Int]Bool_| (|domain#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_123105| $t24@2)) true) (|Store__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_123105| $t24@2)) (|v#$Mutation_123105| $t24@2)))) (= (ControlFlow 0 156846) 156840)) inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$1$anon0_correct))))))))))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 157279) 155632))) L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1| ($Mutation_76335 (|l#$Mutation_76335| $t31@0) (|p#$Mutation_76335| $t31@0) (seq.++ (|v#$Mutation_76335| $t31@0) (seq.unit inline$$1_DiemId_create_diem_id_domain$0$$ret0@1)))) (and (=> (= (ControlFlow 0 156557) 157279) anon44_Then_correct) (=> (= (ControlFlow 0 156557) 156846) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (= $t31@0 ($Mutation_76335 (|l#$Mutation_123105| $t24@1) (seq.++ (|p#$Mutation_123105| $t24@1) (seq.unit 0)) (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1)))) (= (ControlFlow 0 156563) 156557)) |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$anon0_correct|))))
(let ((anon43_Else_correct  (=> (not inline$$Not$0$dst@1) (and (=> (= (ControlFlow 0 156490) (- 0 213548)) (let (($range_0@@2 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1))))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@5) (let ((i@@53 $i_1@@5))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1)) i@@53))) 63)))
 :qid |DiemIdcvc5bpl.10158:105|
 :skolemid |177|
)))) (=> (let (($range_0@@2 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1))))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@6) (let ((i@@53 $i_1@@6))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1)) i@@53))) 63)))
 :qid |DiemIdcvc5bpl.10158:105|
 :skolemid |177|
))) (and (=> (= (ControlFlow 0 156490) (- 0 213596)) (let (($range_0@@3 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1))))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@7) (let ((i@@54 $i_1@@7))
(let (($range_2@@0 ($Range (+ i@@54 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1))))))
(forall (($i_3@@1 Int) ) (!  (=> ($InRange $range_2@@0 $i_3@@1) (let ((j@@11 $i_3@@1))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1)) i@@54) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1)) j@@11)))))
 :qid |DiemIdcvc5bpl.10166:110|
 :skolemid |178|
)))))
 :qid |DiemIdcvc5bpl.10165:105|
 :skolemid |179|
)))) (=> (let (($range_0@@3 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1))))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@8) (let ((i@@54 $i_1@@8))
(let (($range_2@@0 ($Range (+ i@@54 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1))))))
(forall (($i_3@@2 Int) ) (!  (=> ($InRange $range_2@@0 $i_3@@2) (let ((j@@11 $i_3@@2))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1)) i@@54) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1)) j@@11)))))
 :qid |DiemIdcvc5bpl.10166:110|
 :skolemid |178|
)))))
 :qid |DiemIdcvc5bpl.10165:105|
 :skolemid |179|
))) (and (=> (= (ControlFlow 0 156490) (- 0 213681)) (let (($range_0@@4 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1))))
(forall (($i_1@@9 Int) ) (!  (=> (and (>= $i_1@@9 0) (< $i_1@@9 (seq.len $range_0@@4))) (let (($elem@@0 (seq.nth $range_0@@4 $i_1@@9)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@0)) 63)))
 :qid |DiemIdcvc5bpl.10173:86|
 :skolemid |180|
)))) (=> (let (($range_0@@4 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1))))
(forall (($i_1@@10 Int) ) (!  (=> (and (>= $i_1@@10 0) (< $i_1@@10 (seq.len $range_0@@4))) (let (($elem@@0 (seq.nth $range_0@@4 $i_1@@10)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@0)) 63)))
 :qid |DiemIdcvc5bpl.10173:86|
 :skolemid |180|
))) (=> (= $t30 $t30) (=> (and (= $t17@0 $t30) (= (ControlFlow 0 156490) 155632)) L7_correct)))))))))))
(let ((anon42_Else$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (and (|$IsValid'u64'| $t30) (= $t30 7)) (and (= $t30 $t30) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 156296) 156563) anon43_Then_correct) (=> (= (ControlFlow 0 156296) 156490) anon43_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1|)) (= (ControlFlow 0 156256) 156296)) anon42_Else$1_correct)))
(let ((anon42_Else_correct  (=> (and (not $abort_flag@2) (= (ControlFlow 0 156262) 156256)) inline$$Not$0$anon0_correct)))
(let ((anon42_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 157293) 155632))) L7_correct)))
(let ((|inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1| (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (and (>= i@@55 0) (< i@@55 (seq.len $t26@0)))) (= (seq.nth $t26@0 i@@55) inline$$1_DiemId_create_diem_id_domain$0$$ret0@1))
 :qid |DiemIdcvc5bpl.1135:13|
 :skolemid |32|
))) (and (=> (= (ControlFlow 0 156212) 157293) anon42_Then_correct) (=> (= (ControlFlow 0 156212) 156262) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (and (and (not $abort_flag@2) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@1)) (and (= $t26@0 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_123105| $t24@1))) (= (ControlFlow 0 156218) 156212))) |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$anon0_correct|)))
(let ((anon41_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 157307) 155632))) L7_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$L3_correct  (=> (= $abort_code@2 inline$$1_DiemId_create_diem_id_domain$0$$t4@1) (=> (and (= $abort_flag@2 true) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@0)) (and (=> (= (ControlFlow 0 156112) 157307) anon41_Then_correct) (=> (= (ControlFlow 0 156112) 156218) anon41_Else_correct))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 inline$$1_DiemId_create_diem_id_domain$0$$t8@0)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1 inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= (ControlFlow 0 156106) 156112))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1 $abort_code@1) (= (ControlFlow 0 156144) 156112))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct  (=> (and inline$$Le$0$dst@1 (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1 ($1_DiemId_DiemIdDomain _$t2))) (=> (and (and (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1))) (and (=> (= (ControlFlow 0 156130) 157307) anon41_Then_correct) (=> (= (ControlFlow 0 156130) 156218) anon41_Else_correct))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 7)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 156090) 156130) inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct) (=> (= (ControlFlow 0 156090) 156106) inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u8'$0$l@1| 63)) (= (ControlFlow 0 156054) 156090)) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct  (=> (not $abort_flag@1) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 156060) 156054)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t2)) (and (=> (= (ControlFlow 0 155994) 156144) inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct) (=> (= (ControlFlow 0 155994) 156060) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct)))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon0_correct  (=> (and (= _$t2 _$t2) (= (ControlFlow 0 156000) 155994)) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((anon40_Else_correct  (=> (and (and (not $abort_flag@1) (= |$temp_0'$1_DiemId_DiemIdDomains'@0| (|v#$Mutation_123105| $t24@1))) (and (= |$temp_0'$1_DiemId_DiemIdDomains'@0| |$temp_0'$1_DiemId_DiemIdDomains'@0|) (= (ControlFlow 0 156150) 156000))) inline$$1_DiemId_create_diem_id_domain$0$anon0_correct)))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@1 $abort_code@1)) (and (= $t17@0 $abort_code@1) (= (ControlFlow 0 157321) 155632))) L7_correct)))
(let ((anon39_Then$1_correct  (=> (= $t24@1 $t24) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (=> (= (ControlFlow 0 157373) 157321) anon40_Then_correct) (=> (= (ControlFlow 0 157373) 156150) anon40_Else_correct))))))
(let ((anon39_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) _$t1)) (= (ControlFlow 0 157371) 157373)) anon39_Then$1_correct)))
(let ((anon39_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) _$t1) (=> (and (and (= $t24@0 ($Mutation_123105 ($Global _$t1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) _$t1))) (= $t24@1 $t24@0)) (and (= $abort_code@1 $abort_code@0) (= $abort_flag@1 $abort_flag@0))) (and (=> (= (ControlFlow 0 155716) 157321) anon40_Then_correct) (=> (= (ControlFlow 0 155716) 156150) anon40_Else_correct))))))
(let ((anon38_Then_correct  (=> $t21@0 (and (=> (= (ControlFlow 0 155694) 157371) anon39_Then_correct) (=> (= (ControlFlow 0 155694) 155716) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (and (not $t21@0) (= $t23 $t23)) (and (= $t17@0 $t23) (= (ControlFlow 0 155690) 155632))) L7_correct)))
(let ((anon37_Then_correct  (=> inline$$1_DiemId_tc_domain_manager_exists$0$$ret0@1 (=> (and (= $t21@0 (|Select__T@[Int]Bool_| (|domain#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) _$t1)) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 5)) (and (= $t23 $t23) (= $t21@0 $t21@0))) (and (=> (= (ControlFlow 0 155674) 155694) anon38_Then_correct) (=> (= (ControlFlow 0 155674) 155690) anon38_Else_correct)))))))
(let ((anon37_Else_correct  (=> (and (and (not inline$$1_DiemId_tc_domain_manager_exists$0$$ret0@1) (= $t20 $t20)) (and (= $t17@0 $t20) (= (ControlFlow 0 155420) 155632))) L7_correct)))
(let ((anon36_Else_correct  (=> (and (not $abort_flag@0) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 5)) (and (= $t20 $t20) (= inline$$1_DiemId_tc_domain_manager_exists$0$$ret0@1 inline$$1_DiemId_tc_domain_manager_exists$0$$ret0@1))) (and (=> (= (ControlFlow 0 155404) 155674) anon37_Then_correct) (=> (= (ControlFlow 0 155404) 155420) anon37_Else_correct))))))
(let ((anon36_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@0 $abort_code@0)) (and (= $t17@0 $abort_code@0) (= (ControlFlow 0 157387) 155632))) L7_correct)))
(let ((inline$$1_DiemId_tc_domain_manager_exists$0$anon3_Else_correct  (=> (not false) (=> (and (and (= inline$$1_DiemId_tc_domain_manager_exists$0$$t2@1 (|Select__T@[Int]Bool_| (|domain#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= inline$$1_DiemId_tc_domain_manager_exists$0$$t2@1 inline$$1_DiemId_tc_domain_manager_exists$0$$t2@1)) (and (= $abort_flag@0 false) (= inline$$1_DiemId_tc_domain_manager_exists$0$$ret0@1 inline$$1_DiemId_tc_domain_manager_exists$0$$t2@1))) (and (=> (= (ControlFlow 0 155344) 157387) anon36_Then_correct) (=> (= (ControlFlow 0 155344) 155404) anon36_Else_correct))))))
(let ((anon35_Then_correct  (=> $t16 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99447| $1_Roles_RoleId_$memory) $t15)) (= 5 $t17)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99447| $1_Roles_RoleId_$memory) $t15)) 1)) (= 3 $t17))) (and (not (= _$t0 186537453)) (= 2 $t17))) (= $t17 $t17)) (and (= $t17@0 $t17) (= (ControlFlow 0 157459) 155632))) L7_correct))))
(let ((inline$$1_DiemId_tc_domain_manager_exists$0$anon3_Then_correct true))
(let ((inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 186537453) (= 186537453 186537453)) (and (=> (= (ControlFlow 0 155314) 155362) inline$$1_DiemId_tc_domain_manager_exists$0$anon3_Then_correct) (=> (= (ControlFlow 0 155314) 155344) inline$$1_DiemId_tc_domain_manager_exists$0$anon3_Else_correct)))))
(let ((inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct  (=> (= (ControlFlow 0 155320) 155314) inline$$1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$0$anon0_correct)))
(let ((anon35_Else_correct  (=> (and (not $t16) (= (ControlFlow 0 155368) 155320)) inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct)))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (|$IsValid'address'| _$t1) (|$IsValid'vec'u8''| _$t2)) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99447| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |DiemIdcvc5bpl.9891:20|
 :skolemid |170|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99447| $1_Roles_RoleId_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@0)))
(|$IsValid'$1_DiemId_DiemIdDomainManager'| $rsc@@0))
 :qid |DiemIdcvc5bpl.9895:20|
 :skolemid |171|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) $a_0@@1)))
 (and (|$IsValid'$1_DiemId_DiemIdDomains'| $rsc@@1) (and (and (let (($range_1 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@56 $i_2))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1) i@@56))) 63)))
 :qid |DiemIdcvc5bpl.9900:136|
 :skolemid |172|
))) (let (($range_3 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@57 $i_4))
(let (($range_5 ($Range (+ i@@57 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@12 $i_6))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1) i@@57) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1) j@@12)))))
 :qid |DiemIdcvc5bpl.9902:96|
 :skolemid |173|
)))))
 :qid |DiemIdcvc5bpl.9901:196|
 :skolemid |174|
)))) (let (($range_7 (|$domains#$1_DiemId_DiemIdDomains| $rsc@@1)))
(forall (($i_8 Int) ) (!  (=> (and (>= $i_8 0) (< $i_8 (seq.len $range_7))) (let (($elem@@1 (seq.nth $range_7 $i_8)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@1)) 63)))
 :qid |DiemIdcvc5bpl.9903:221|
 :skolemid |175|
))))))
 :qid |DiemIdcvc5bpl.9899:20|
 :skolemid |176|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) $a_0@@1))
)) (= $t11 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_122668| $1_DiemId_DiemIdDomains_$memory) _$t1))))) (=> (and (and (and (= $t12 _$t0) (= $t13 (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_122732| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (and (= $t14 ($1_DiemId_DiemIdDomainEvent false ($1_DiemId_DiemIdDomain _$t2) _$t1)) (= _$t0 _$t0))) (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= $t15 _$t0) (= $t16  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99447| $1_Roles_RoleId_$memory) $t15)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99447| $1_Roles_RoleId_$memory) $t15)) 1))) (not (= _$t0 186537453))))))) (and (=> (= (ControlFlow 0 155135) 157459) anon35_Then_correct) (=> (= (ControlFlow 0 155135) 155368) anon35_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_67758_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_67758| stream@@3) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67758| stream@@3) v@@41) 0)
 :qid |DiemIdcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemIdcvc5bpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 154747) 155135)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_123105| $t3)) 0) (= (seq.len (|p#$Mutation_123105| $t24)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_76335| $t31)) 0) (= (seq.len (|p#$Mutation_123166| $t33)) 0)) (and (= (seq.len (|p#$Mutation_92643| $t34)) 0) (= (ControlFlow 0 154757) 154747))) inline$$InitEventStore$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 212180) 154757) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
