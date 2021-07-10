(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_97914 0)) ((($Memory_97914 (|domain#$Memory_97914| |T@[Int]Bool|) (|contents#$Memory_97914| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_159575 0)) ((($Memory_159575 (|domain#$Memory_159575| |T@[Int]Bool|) (|contents#$Memory_159575| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_154980 0)) ((($Memory_154980 (|domain#$Memory_154980| |T@[Int]Bool|) (|contents#$Memory_154980| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_152983 0)) ((($Memory_152983 (|domain#$Memory_152983| |T@[Int]Bool|) (|contents#$Memory_152983| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_153263 0)) ((($Memory_153263 (|domain#$Memory_153263| |T@[Int]Bool|) (|contents#$Memory_153263| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_152950 0)) ((($Memory_152950 (|domain#$Memory_152950| |T@[Int]Bool|) (|contents#$Memory_152950| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_152735 0)) ((($Memory_152735 (|domain#$Memory_152735| |T@[Int]Bool|) (|contents#$Memory_152735| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_152364 0)) ((($Memory_152364 (|domain#$Memory_152364| |T@[Int]Bool|) (|contents#$Memory_152364| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_106253 0)) ((($Memory_106253 (|domain#$Memory_106253| |T@[Int]Bool|) (|contents#$Memory_106253| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_107323 0)) ((($Memory_107323 (|domain#$Memory_107323| |T@[Int]Bool|) (|contents#$Memory_107323| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_128718 0)) ((($Memory_128718 (|domain#$Memory_128718| |T@[Int]Bool|) (|contents#$Memory_128718| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_128654 0)) ((($Memory_128654 (|domain#$Memory_128654| |T@[Int]Bool|) (|contents#$Memory_128654| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_153906 0)) ((($Memory_153906 (|domain#$Memory_153906| |T@[Int]Bool|) (|contents#$Memory_153906| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_128229 0)) ((($Memory_128229 (|domain#$Memory_128229| |T@[Int]Bool|) (|contents#$Memory_128229| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_127719 0)) ((($Memory_127719 (|domain#$Memory_127719| |T@[Int]Bool|) (|contents#$Memory_127719| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_124570 0)) ((($Memory_124570 (|domain#$Memory_124570| |T@[Int]Bool|) (|contents#$Memory_124570| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_124351 0)) ((($Memory_124351 (|domain#$Memory_124351| |T@[Int]Bool|) (|contents#$Memory_124351| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_154769 0)) ((($Memory_154769 (|domain#$Memory_154769| |T@[Int]Bool|) (|contents#$Memory_154769| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_117242 0)) ((($Memory_117242 (|domain#$Memory_117242| |T@[Int]Bool|) (|contents#$Memory_117242| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_117155 0)) ((($Memory_117155 (|domain#$Memory_117155| |T@[Int]Bool|) (|contents#$Memory_117155| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112522 0)) ((($Memory_112522 (|domain#$Memory_112522| |T@[Int]Bool|) (|contents#$Memory_112522| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112435 0)) ((($Memory_112435 (|domain#$Memory_112435| |T@[Int]Bool|) (|contents#$Memory_112435| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_117506 0)) ((($Memory_117506 (|domain#$Memory_117506| |T@[Int]Bool|) (|contents#$Memory_117506| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_126411 0)) ((($Memory_126411 (|domain#$Memory_126411| |T@[Int]Bool|) (|contents#$Memory_126411| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_117832 0)) ((($Memory_117832 (|domain#$Memory_117832| |T@[Int]Bool|) (|contents#$Memory_117832| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_117415 0)) ((($Memory_117415 (|domain#$Memory_117415| |T@[Int]Bool|) (|contents#$Memory_117415| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_128991 0)) ((($Memory_128991 (|domain#$Memory_128991| |T@[Int]Bool|) (|contents#$Memory_128991| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_117733 0)) ((($Memory_117733 (|domain#$Memory_117733| |T@[Int]Bool|) (|contents#$Memory_117733| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_109542 0)) ((($Memory_109542 (|domain#$Memory_109542| |T@[Int]Bool|) (|contents#$Memory_109542| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_109455 0)) ((($Memory_109455 (|domain#$Memory_109455| |T@[Int]Bool|) (|contents#$Memory_109455| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_109368 0)) ((($Memory_109368 (|domain#$Memory_109368| |T@[Int]Bool|) (|contents#$Memory_109368| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_158266 0)) ((($Memory_158266 (|domain#$Memory_158266| |T@[Int]Bool|) (|contents#$Memory_158266| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_109281 0)) ((($Memory_109281 (|domain#$Memory_109281| |T@[Int]Bool|) (|contents#$Memory_109281| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_109194 0)) ((($Memory_109194 (|domain#$Memory_109194| |T@[Int]Bool|) (|contents#$Memory_109194| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_108313 0)) ((($Memory_108313 (|domain#$Memory_108313| |T@[Int]Bool|) (|contents#$Memory_108313| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_108380 0)) ((($Memory_108380 (|domain#$Memory_108380| |T@[Int]Bool|) (|contents#$Memory_108380| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_108231 0)) ((($Memory_108231 (|domain#$Memory_108231| |T@[Int]Bool|) (|contents#$Memory_108231| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_108149 0)) ((($Memory_108149 (|domain#$Memory_108149| |T@[Int]Bool|) (|contents#$Memory_108149| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_108067 0)) ((($Memory_108067 (|domain#$Memory_108067| |T@[Int]Bool|) (|contents#$Memory_108067| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_107985 0)) ((($Memory_107985 (|domain#$Memory_107985| |T@[Int]Bool|) (|contents#$Memory_107985| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_107903 0)) ((($Memory_107903 (|domain#$Memory_107903| |T@[Int]Bool|) (|contents#$Memory_107903| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_112142 0)) ((($Memory_112142 (|domain#$Memory_112142| |T@[Int]Bool|) (|contents#$Memory_112142| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112002 0)) ((($Memory_112002 (|domain#$Memory_112002| |T@[Int]Bool|) (|contents#$Memory_112002| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111937 0)) ((($Memory_111937 (|domain#$Memory_111937| |T@[Int]Bool|) (|contents#$Memory_111937| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_106755 0)) ((($Memory_106755 (|domain#$Memory_106755| |T@[Int]Bool|) (|contents#$Memory_106755| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_106722 0)) ((($Memory_106722 (|domain#$Memory_106722| |T@[Int]Bool|) (|contents#$Memory_106722| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_104782 0)) ((($Memory_104782 (|domain#$Memory_104782| |T@[Int]Bool|) (|contents#$Memory_104782| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_75556 0)) (((Multiset_75556 (|v#Multiset_75556| |T@[$EventRep]Int|) (|l#Multiset_75556| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_75556| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_75556|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_155807 0)) ((($Mutation_155807 (|l#$Mutation_155807| T@$Location) (|p#$Mutation_155807| (Seq Int)) (|v#$Mutation_155807| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_155763 0)) ((($Mutation_155763 (|l#$Mutation_155763| T@$Location) (|p#$Mutation_155763| (Seq Int)) (|v#$Mutation_155763| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_149530 0)) ((($Mutation_149530 (|l#$Mutation_149530| T@$Location) (|p#$Mutation_149530| (Seq Int)) (|v#$Mutation_149530| T@$1_DualAttestation_Limit) ) ) ))
(declare-datatypes ((T@$Mutation_145967 0)) ((($Mutation_145967 (|l#$Mutation_145967| T@$Location) (|p#$Mutation_145967| (Seq Int)) (|v#$Mutation_145967| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_32295 0)) ((($Mutation_32295 (|l#$Mutation_32295| T@$Location) (|p#$Mutation_32295| (Seq Int)) (|v#$Mutation_32295| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_123068 0)) ((($Mutation_123068 (|l#$Mutation_123068| T@$Location) (|p#$Mutation_123068| (Seq Int)) (|v#$Mutation_123068| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_110680 0)) ((($Mutation_110680 (|l#$Mutation_110680| T@$Location) (|p#$Mutation_110680| (Seq Int)) (|v#$Mutation_110680| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_105281 0)) ((($Mutation_105281 (|l#$Mutation_105281| T@$Location) (|p#$Mutation_105281| (Seq Int)) (|v#$Mutation_105281| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_98542 0)) ((($Mutation_98542 (|l#$Mutation_98542| T@$Location) (|p#$Mutation_98542| (Seq Int)) (|v#$Mutation_98542| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_93649 0)) ((($Mutation_93649 (|l#$Mutation_93649| T@$Location) (|p#$Mutation_93649| (Seq Int)) (|v#$Mutation_93649| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_92903 0)) ((($Mutation_92903 (|l#$Mutation_92903| T@$Location) (|p#$Mutation_92903| (Seq Int)) (|v#$Mutation_92903| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_91463 0)) ((($Mutation_91463 (|l#$Mutation_91463| T@$Location) (|p#$Mutation_91463| (Seq Int)) (|v#$Mutation_91463| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_90717 0)) ((($Mutation_90717 (|l#$Mutation_90717| T@$Location) (|p#$Mutation_90717| (Seq Int)) (|v#$Mutation_90717| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_89277 0)) ((($Mutation_89277 (|l#$Mutation_89277| T@$Location) (|p#$Mutation_89277| (Seq Int)) (|v#$Mutation_89277| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_88531 0)) ((($Mutation_88531 (|l#$Mutation_88531| T@$Location) (|p#$Mutation_88531| (Seq Int)) (|v#$Mutation_88531| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_87091 0)) ((($Mutation_87091 (|l#$Mutation_87091| T@$Location) (|p#$Mutation_87091| (Seq Int)) (|v#$Mutation_87091| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_86345 0)) ((($Mutation_86345 (|l#$Mutation_86345| T@$Location) (|p#$Mutation_86345| (Seq Int)) (|v#$Mutation_86345| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_84905 0)) ((($Mutation_84905 (|l#$Mutation_84905| T@$Location) (|p#$Mutation_84905| (Seq Int)) (|v#$Mutation_84905| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_84159 0)) ((($Mutation_84159 (|l#$Mutation_84159| T@$Location) (|p#$Mutation_84159| (Seq Int)) (|v#$Mutation_84159| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_82719 0)) ((($Mutation_82719 (|l#$Mutation_82719| T@$Location) (|p#$Mutation_82719| (Seq Int)) (|v#$Mutation_82719| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_81973 0)) ((($Mutation_81973 (|l#$Mutation_81973| T@$Location) (|p#$Mutation_81973| (Seq Int)) (|v#$Mutation_81973| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_80533 0)) ((($Mutation_80533 (|l#$Mutation_80533| T@$Location) (|p#$Mutation_80533| (Seq Int)) (|v#$Mutation_80533| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_79787 0)) ((($Mutation_79787 (|l#$Mutation_79787| T@$Location) (|p#$Mutation_79787| (Seq Int)) (|v#$Mutation_79787| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_78309 0)) ((($Mutation_78309 (|l#$Mutation_78309| T@$Location) (|p#$Mutation_78309| (Seq Int)) (|v#$Mutation_78309| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_77563 0)) ((($Mutation_77563 (|l#$Mutation_77563| T@$Location) (|p#$Mutation_77563| (Seq Int)) (|v#$Mutation_77563| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun |$1_BCS_serialize'u64'| (Int) (Seq Int))
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_75556_| (|T@[$1_Event_EventHandle]Multiset_75556| T@$1_Event_EventHandle) T@Multiset_75556)
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
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int (Seq Int) Int) (Seq Int))
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
(declare-fun ReverseVec_69128 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_68734 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_68537 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_68931 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_67946 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_68143 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_68340 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_67749 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_75556| |T@[$1_Event_EventHandle]Multiset_75556|) |T@[$1_Event_EventHandle]Multiset_75556|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DualAttestationandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DualAttestationandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DualAttestationandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DualAttestationandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DualAttestationandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DualAttestationandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DualAttestationandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DualAttestationandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DualAttestationandybpl.590:13|
 :skolemid |15|
))))
 :qid |DualAttestationandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DualAttestationandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DualAttestationandybpl.603:17|
 :skolemid |18|
)))))
 :qid |DualAttestationandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DualAttestationandybpl.770:13|
 :skolemid |20|
))))
 :qid |DualAttestationandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DualAttestationandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DualAttestationandybpl.783:17|
 :skolemid |23|
)))))
 :qid |DualAttestationandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DualAttestationandybpl.950:13|
 :skolemid |25|
))))
 :qid |DualAttestationandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DualAttestationandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DualAttestationandybpl.963:17|
 :skolemid |28|
)))))
 :qid |DualAttestationandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DualAttestationandybpl.1130:13|
 :skolemid |30|
))))
 :qid |DualAttestationandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DualAttestationandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DualAttestationandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |DualAttestationandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |DualAttestationandybpl.1310:13|
 :skolemid |35|
))))
 :qid |DualAttestationandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DualAttestationandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DualAttestationandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DualAttestationandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |DualAttestationandybpl.1490:13|
 :skolemid |40|
))))
 :qid |DualAttestationandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DualAttestationandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DualAttestationandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DualAttestationandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |DualAttestationandybpl.1670:13|
 :skolemid |45|
))))
 :qid |DualAttestationandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DualAttestationandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DualAttestationandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DualAttestationandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |DualAttestationandybpl.1850:13|
 :skolemid |50|
))))
 :qid |DualAttestationandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DualAttestationandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DualAttestationandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DualAttestationandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |DualAttestationandybpl.2030:13|
 :skolemid |55|
))))
 :qid |DualAttestationandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DualAttestationandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DualAttestationandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DualAttestationandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |DualAttestationandybpl.2210:13|
 :skolemid |60|
))))
 :qid |DualAttestationandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DualAttestationandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DualAttestationandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DualAttestationandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DualAttestationandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DualAttestationandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DualAttestationandybpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DualAttestationandybpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 Int) (v2@@1 Int) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1)))
 :qid |DualAttestationandybpl.2489:15|
 :skolemid |69|
 :pattern ( (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1))
)))
(assert (forall ((v@@24 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'address'| v@@24)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |DualAttestationandybpl.2494:15|
 :skolemid |70|
 :pattern ( (|$1_BCS_serialize'address'| v@@24))
)))
(assert (forall ((v@@25 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@25)))
(= (seq.len r@@1) $serialized_address_len))
 :qid |DualAttestationandybpl.2508:15|
 :skolemid |71|
 :pattern ( (|$1_BCS_serialize'address'| v@@25))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'u64'| v1@@2) (|$1_BCS_serialize'u64'| v2@@2)))
 :qid |DualAttestationandybpl.2521:15|
 :skolemid |72|
 :pattern ( (|$1_BCS_serialize'u64'| v1@@2) (|$1_BCS_serialize'u64'| v2@@2))
)))
(assert (forall ((v@@26 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'u64'| v@@26)))
 (and (|$IsValid'vec'u8''| r@@2) (> (seq.len r@@2) 0)))
 :qid |DualAttestationandybpl.2526:15|
 :skolemid |73|
 :pattern ( (|$1_BCS_serialize'u64'| v@@26))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_75556| stream) 0) (forall ((v@@27 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream) v@@27) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DualAttestationandybpl.2638:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@3 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@3 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@3)))
 :qid |DualAttestationandybpl.2644:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@3))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DualAttestationandybpl.2694:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@4 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@4 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@4) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@4)))
 :qid |DualAttestationandybpl.2700:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@4) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@4))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DualAttestationandybpl.2750:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@5 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@5 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@5)))
 :qid |DualAttestationandybpl.2756:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@5))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DualAttestationandybpl.2806:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_AdminTransactionEvent) (v2@@6 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@6)))
 :qid |DualAttestationandybpl.2812:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@6))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DualAttestationandybpl.2862:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_CreateAccountEvent) (v2@@7 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@7)))
 :qid |DualAttestationandybpl.2868:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@7))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DualAttestationandybpl.2918:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@8 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@8 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@8)))
 :qid |DualAttestationandybpl.2924:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@8))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DualAttestationandybpl.2974:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@9 T@$1_DiemAccount_SentPaymentEvent) (v2@@9 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@9) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@9)))
 :qid |DualAttestationandybpl.2980:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@9) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@9))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DualAttestationandybpl.3030:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@10 T@$1_DiemBlock_NewBlockEvent) (v2@@10 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@10) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@10)))
 :qid |DualAttestationandybpl.3036:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@10) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@10))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DualAttestationandybpl.3086:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@11 T@$1_DiemConfig_NewEpochEvent) (v2@@11 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@11)))
 :qid |DualAttestationandybpl.3092:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@11))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |DualAttestationandybpl.3142:70|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@12 T@$1_DiemId_DiemIdDomainEvent) (v2@@12 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@12) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@12)))
 :qid |DualAttestationandybpl.3148:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@12) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@12))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |DualAttestationandybpl.3198:60|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@13 T@$1_Diem_BurnEvent) (v2@@13 T@$1_Diem_BurnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@13) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@13)))
 :qid |DualAttestationandybpl.3204:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@13) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@13))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |DualAttestationandybpl.3254:66|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@14 T@$1_Diem_CancelBurnEvent) (v2@@14 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@14) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@14)))
 :qid |DualAttestationandybpl.3260:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@14) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@14))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |DualAttestationandybpl.3310:60|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@15 T@$1_Diem_MintEvent) (v2@@15 T@$1_Diem_MintEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@15) (|$ToEventRep'$1_Diem_MintEvent'| v2@@15)))
 :qid |DualAttestationandybpl.3316:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@15) (|$ToEventRep'$1_Diem_MintEvent'| v2@@15))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |DualAttestationandybpl.3366:63|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@16 T@$1_Diem_PreburnEvent) (v2@@16 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@16) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@16)))
 :qid |DualAttestationandybpl.3372:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@16) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@16))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |DualAttestationandybpl.3422:79|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@17 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@17 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@17) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@17)))
 :qid |DualAttestationandybpl.3428:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@17) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@17))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |DualAttestationandybpl.3478:82|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@18 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@18 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@18) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@18)))
 :qid |DualAttestationandybpl.3484:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@18) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@18))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |DualAttestationandybpl.3534:88|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@19 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@19 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@19) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@19)))
 :qid |DualAttestationandybpl.3540:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@19) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@19))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DualAttestationandybpl.3748:61|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |DualAttestationandybpl.4271:49|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DualAttestationandybpl.4321:36|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |DualAttestationandybpl.4549:49|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |DualAttestationandybpl.4642:91|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |DualAttestationandybpl.4656:113|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |DualAttestationandybpl.4670:71|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |DualAttestationandybpl.4684:75|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |DualAttestationandybpl.4698:73|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |DualAttestationandybpl.4718:48|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |DualAttestationandybpl.4734:57|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |DualAttestationandybpl.4748:103|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |DualAttestationandybpl.4762:125|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |DualAttestationandybpl.4776:83|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |DualAttestationandybpl.4790:87|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |DualAttestationandybpl.4804:85|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |DualAttestationandybpl.4818:48|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |DualAttestationandybpl.4831:65|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |DualAttestationandybpl.5350:45|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |DualAttestationandybpl.5363:45|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |DualAttestationandybpl.5376:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |DualAttestationandybpl.5390:55|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |DualAttestationandybpl.5410:38|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |DualAttestationandybpl.5431:44|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |DualAttestationandybpl.5482:53|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |DualAttestationandybpl.5544:53|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@25)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@25)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@25))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@25))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@25))))
 :qid |DualAttestationandybpl.5606:45|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@26) true)
 :qid |DualAttestationandybpl.5632:55|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@27) true)
 :qid |DualAttestationandybpl.5646:55|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@27))
)))
(assert (forall ((s@@28 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@28)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@28))))
 :qid |DualAttestationandybpl.5663:38|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@29)))
 :qid |DualAttestationandybpl.5677:48|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@30) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@30)))
 :qid |DualAttestationandybpl.5691:48|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@31))))
 :qid |DualAttestationandybpl.5711:41|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@32)))
 :qid |DualAttestationandybpl.5726:53|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@33) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@33)))
 :qid |DualAttestationandybpl.5740:53|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@34))))
 :qid |DualAttestationandybpl.5757:60|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@35)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@35)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@35))))
 :qid |DualAttestationandybpl.5774:60|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36))))
 :qid |DualAttestationandybpl.5791:57|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37) true)
 :qid |DualAttestationandybpl.8002:68|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))))
 :qid |DualAttestationandybpl.8024:66|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))))
 :qid |DualAttestationandybpl.8050:66|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@40) true)
 :qid |DualAttestationandybpl.8383:31|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@41) true)
 :qid |DualAttestationandybpl.8727:31|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@41))
)))
(assert (forall ((s@@42 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@42)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@42)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@42))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@42))))
 :qid |DualAttestationandybpl.8746:35|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@42))
)))
(assert (forall ((s@@43 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@43) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@43)))
 :qid |DualAttestationandybpl.9172:71|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@44) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@44)))
 :qid |DualAttestationandybpl.9221:46|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@45) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@45)))
 :qid |DualAttestationandybpl.9234:64|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@46)))
 :qid |DualAttestationandybpl.9247:75|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@47) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@47)))
 :qid |DualAttestationandybpl.9260:72|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@48)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@48)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@48))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@48))))
 :qid |DualAttestationandybpl.9289:46|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@48))
)))
(assert (forall ((s@@49 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@49)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@49)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@49))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@49))))
 :qid |DualAttestationandybpl.9310:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@49))
)))
(assert (forall ((s@@50 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@50) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@50)))
 :qid |DualAttestationandybpl.9346:38|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@50))
)))
(assert (forall ((s@@51 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@51) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@51)))
 :qid |DualAttestationandybpl.9360:39|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@51))
)))
(assert (forall ((s@@52 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52))))
 :qid |DualAttestationandybpl.9387:65|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((payer Int) (metadata (Seq Int)) (deposit_value Int) ) (! (let (($$res ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res))
 :qid |DualAttestationandybpl.9799:15|
 :skolemid |168|
)))
(assert (forall ((s@@53 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@53)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@53))))
 :qid |DualAttestationandybpl.9827:60|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54))))
 :qid |DualAttestationandybpl.9844:66|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@55)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@55)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@55))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@55))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@55))))
 :qid |DualAttestationandybpl.9873:50|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@56) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@56)))
 :qid |DualAttestationandybpl.9892:45|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@57)) true))
 :qid |DualAttestationandybpl.14806:87|
 :skolemid |283|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@58) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@58)))
 :qid |DualAttestationandybpl.15023:43|
 :skolemid |284|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@59)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@59))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@59))))
 :qid |DualAttestationandybpl.15042:48|
 :skolemid |285|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@60) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@60)))
 :qid |DualAttestationandybpl.15057:50|
 :skolemid |286|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@61)))
 :qid |DualAttestationandybpl.15071:47|
 :skolemid |287|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@62)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@62))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@62))))
 :qid |DualAttestationandybpl.15091:58|
 :skolemid |288|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@63) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@63)))
 :qid |DualAttestationandybpl.15106:39|
 :skolemid |289|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@64))))
 :qid |DualAttestationandybpl.15128:58|
 :skolemid |290|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65))))
 :qid |DualAttestationandybpl.15145:58|
 :skolemid |291|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66) true)
 :qid |DualAttestationandybpl.15160:51|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67))))
 :qid |DualAttestationandybpl.15177:60|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@68)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@68))))
 :qid |DualAttestationandybpl.15475:47|
 :skolemid |294|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@69))))
 :qid |DualAttestationandybpl.15497:63|
 :skolemid |295|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@70)))
 :qid |DualAttestationandybpl.15512:57|
 :skolemid |296|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@71)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@71))))
 :qid |DualAttestationandybpl.15528:54|
 :skolemid |297|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@72)))
 :qid |DualAttestationandybpl.15542:55|
 :skolemid |298|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@73)))
 :qid |DualAttestationandybpl.15556:57|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@74))))
 :qid |DualAttestationandybpl.15578:56|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@75))))
 :qid |DualAttestationandybpl.15603:52|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@76)))
 :qid |DualAttestationandybpl.15619:54|
 :skolemid |302|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@77)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@77)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@77))))
 :qid |DualAttestationandybpl.16490:45|
 :skolemid |303|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@78) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@78)))
 :qid |DualAttestationandybpl.16504:51|
 :skolemid |304|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@79)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@79)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@79))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@79))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@79))))
 :qid |DualAttestationandybpl.16527:48|
 :skolemid |305|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@80)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@80)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@80))))
 :qid |DualAttestationandybpl.16841:47|
 :skolemid |306|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@81)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@81))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@81))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@81))))
 :qid |DualAttestationandybpl.16865:47|
 :skolemid |307|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@82) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@82)))
 :qid |DualAttestationandybpl.17120:49|
 :skolemid |308|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@83)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@83)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@83))))
 :qid |DualAttestationandybpl.17163:49|
 :skolemid |309|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@84)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@84)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@84))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@84))))
 :qid |DualAttestationandybpl.17192:48|
 :skolemid |310|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@85) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@85)))
 :qid |DualAttestationandybpl.17487:47|
 :skolemid |311|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@85))
)))
(assert (forall ((v@@28 (Seq Int)) ) (! (let ((r@@3 (ReverseVec_12182 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@3))) (= (seq.nth r@@3 i@@30) (seq.nth v@@28 (- (- (seq.len v@@28) i@@30) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@30))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@28))
)))
(assert (forall ((v@@29 (Seq (Seq Int))) ) (! (let ((r@@4 (ReverseVec_69128 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@4))) (= (seq.nth r@@4 i@@31) (seq.nth v@@29 (- (- (seq.len v@@29) i@@31) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@31))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_69128 v@@29))
)))
(assert (forall ((v@@30 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@5 (ReverseVec_68734 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@5))) (= (seq.nth r@@5 i@@32) (seq.nth v@@30 (- (- (seq.len v@@30) i@@32) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@32))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68734 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@6 (ReverseVec_68537 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@6))) (= (seq.nth r@@6 i@@33) (seq.nth v@@31 (- (- (seq.len v@@31) i@@33) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@33))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68537 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@7 (ReverseVec_68931 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@7))) (= (seq.nth r@@7 i@@34) (seq.nth v@@32 (- (- (seq.len v@@32) i@@34) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@34))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68931 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@8 (ReverseVec_67946 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@8))) (= (seq.nth r@@8 i@@35) (seq.nth v@@33 (- (- (seq.len v@@33) i@@35) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@35))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_67946 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@9 (ReverseVec_68143 v@@34)))
 (and (= (seq.len r@@9) (seq.len v@@34)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@9))) (= (seq.nth r@@9 i@@36) (seq.nth v@@34 (- (- (seq.len v@@34) i@@36) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@36))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68143 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@10 (ReverseVec_68340 v@@35)))
 (and (= (seq.len r@@10) (seq.len v@@35)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@10))) (= (seq.nth r@@10 i@@37) (seq.nth v@@35 (- (- (seq.len v@@35) i@@37) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@37))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68340 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@#0|)) ) (! (let ((r@@11 (ReverseVec_67749 v@@36)))
 (and (= (seq.len r@@11) (seq.len v@@36)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@11))) (= (seq.nth r@@11 i@@38) (seq.nth v@@36 (- (- (seq.len v@@36) i@@38) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@38))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_67749 v@@36))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |DualAttestationandybpl.245:54|
 :skolemid |366|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_75556|) (|l#1| |T@[$1_Event_EventHandle]Multiset_75556|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| |l#1| handle@@0))))
(Multiset_75556 (|lambda#3| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| |l#0@@0| handle@@0)) (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DualAttestationandybpl.2607:13|
 :skolemid |367|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@37) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@37)))
 :qid |DualAttestationandybpl.124:29|
 :skolemid |368|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_105281)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_105281)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_104782)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_106253)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_104782)
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
(declare-fun $t14 () T@$Mutation_105281)
(declare-fun $t14@0 () T@$Mutation_105281)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_105281)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 238968) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12329 (|l#$Mutation_105281| $t14@1) (seq.++ (|p#$Mutation_105281| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_105281| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2)) (= $t14@2 ($Mutation_105281 (|l#$Mutation_105281| $t14@1) (|p#$Mutation_105281| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_104782 (|Store__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_105281| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_105281| $t14@2)) (|v#$Mutation_105281| $t14@2)))))) (and (=> (= (ControlFlow 0 174179) (- 0 239672)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 174179) (- 0 239697)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 174179) (- 0 239707)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 174179) (- 0 239721)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 174179) (- 0 239745)) (= $t25 _$t2)))))))))))))))
(let ((anon31_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 174237) 174179)) L5_correct)))
(let ((anon32_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 174037) 174179)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 174033) (- 0 239795)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 174033) (- 0 239832)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon31_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 174233) 174033))) L8_correct)))
(let ((anon30_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 174217) 174237) anon31_Then_correct) (=> (= (ControlFlow 0 174217) 174233) anon31_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 173917) 174033))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 173901) 174037) anon32_Then_correct) (=> (= (ControlFlow 0 173901) 173917) anon32_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 173865) 173901)) anon30_Else$1_correct)))
(let ((anon30_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 173871) 173865)) inline$$Lt$0$anon0_correct)))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= $t17@0 (= _$t1 0))) (and (=> (= (ControlFlow 0 173819) 174217) anon30_Then_correct) (=> (= (ControlFlow 0 173819) 173871) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 174251) 174033))) L8_correct)))
(let ((inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 0) (= 0 0)) (and (=> (= (ControlFlow 0 173799) 174251) anon29_Then_correct) (=> (= (ControlFlow 0 173799) 173819) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_105281| $t14@1))) (=> (and (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|) (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_105281| $t14@1)))) (and (= $t15@0 $t15@0) (= (ControlFlow 0 173805) 173799))) inline$$1_CoreAddresses_VM_RESERVED_ADDRESS$0$anon0_correct))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 174265) 174033))) L8_correct)))
(let ((anon27_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 174317) 174265) anon28_Then_correct) (=> (= (ControlFlow 0 174317) 173805) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 174315) 174317)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_105281 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 173702) 174265) anon28_Then_correct) (=> (= (ControlFlow 0 173702) 173805) anon28_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 173680) (- 0 239313)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 173680) 174315) anon27_Then_correct) (=> (= (ControlFlow 0 173680) 173702) anon27_Else_correct)))))))
(let ((anon25_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 174361) 174033))) L8_correct))))
(let ((anon24_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 174387) 174033))) L8_correct))))
(let ((anon26_Then_correct true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 173660) 174331) anon26_Then_correct) (=> (= (ControlFlow 0 173660) 173680) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not $t12) (= (ControlFlow 0 173666) 173660)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct)))
(let ((anon24_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 173589) 174361) anon25_Then_correct) (=> (= (ControlFlow 0 173589) 173666) anon25_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DualAttestationandybpl.3936:20|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 173567) 174387) anon24_Then_correct) (=> (= (ControlFlow 0 173567) 173589) anon24_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_75556| stream@@0) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@0) v@@38) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 173455) 173567)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_105281| $t3)) 0) (= (seq.len (|p#$Mutation_105281| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 173465) 173455))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 238968) 173465) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_107323)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_106755)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_106755)
(declare-fun _$t0@@0 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_106755)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun $t11@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun $t9@@0 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 240078) (let ((anon12_Else_correct  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 174890) (- 0 240495)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory@1) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory@1) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory@1) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory@1) addr1)) 2)))))
 :qid |DualAttestationandybpl.4489:15|
 :skolemid |116|
))) (=> (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@0) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory@1) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory@1) addr1@@0)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory@1) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory@1) addr1@@0)) 2)))))
 :qid |DualAttestationandybpl.4489:15|
 :skolemid |116|
)) (and (=> (= (ControlFlow 0 174890) (- 0 240530)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) _$t0@@0)) (and (=> (= (ControlFlow 0 174890) (- 0 240541)) (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory@1) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory@1) _$t0@@0) (=> (= (ControlFlow 0 174890) (- 0 240550)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory@1) _$t0@@0)) _$t1@@0)))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 174742) (- 0 240465)) (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) _$t0@@0) (=> (= (ControlFlow 0 174742) (- 0 240471)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) _$t0@@0) (= 6 $t10@0)))))))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0 $abort_code@1@@0) (= (ControlFlow 0 174904) 174742))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 174954) 174904) anon12_Then_correct) (=> (= (ControlFlow 0 174954) 174890) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) _$t0@@0) (= (ControlFlow 0 174952) 174954)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) _$t0@@0)) (=> (and (and (= $1_Roles_RoleId_$memory@0 ($Memory_106755 (|Store__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) _$t0@@0 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) _$t0@@0 $t11@0@@0))) (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 174809) 174904) anon12_Then_correct) (=> (= (ControlFlow 0 174809) 174890) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0@@0 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 174791) (- 0 240322)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0) (=> (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@1)) 2)))))
 :qid |DualAttestationandybpl.4469:20|
 :skolemid |115|
)) (and (=> (= (ControlFlow 0 174791) 174952) anon11_Then_correct) (=> (= (ControlFlow 0 174791) 174809) anon11_Else_correct))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@0 $t9@@0)) (and (= $t10@0 $t9@@0) (= (ControlFlow 0 174710) 174742))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 6)) (and (= $t9@@0 $t9@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 174694) 174791) anon10_Then_correct) (=> (= (ControlFlow 0 174694) 174710) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 174658) 174694)) anon0$2_correct)))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| _$t0@@0) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |DualAttestationandybpl.4365:20|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (= $t4 _$t0@@0) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5) (= $t5 _$t0@@0)) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t5)) (= (ControlFlow 0 174664) 174658)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_75556| stream@@1) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@1) v@@39) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 174496) 174664)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 240078) 174496) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@6 () Bool)
(declare-fun $1_DualAttestation_Limit_$memory@1 () T@$Memory_106253)
(declare-fun _$t0@@1 () Int)
(declare-fun $t6 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_112002)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun |Select__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int) T@$1_DualAttestation_Credential)
(declare-fun $t8@0 () Int)
(declare-fun $abort_code@7 () Int)
(declare-fun $1_DualAttestation_Limit_$memory@0 () T@$Memory_106253)
(declare-fun |Store__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int T@$1_DualAttestation_Limit) |T@[Int]$1_DualAttestation_Limit|)
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Limit|) ( ?x1 Int) ( ?x2 T@$1_DualAttestation_Limit)) (! (= (|Select__T@[Int]$1_DualAttestation_Limit_| (|Store__T@[Int]$1_DualAttestation_Limit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Limit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DualAttestation_Limit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DualAttestation_Limit_| (|Store__T@[Int]$1_DualAttestation_Limit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DualAttestation_Limit_| ?x0 ?y1))) :weight 0)))
(declare-fun $t25@0 () T@$1_DualAttestation_Limit)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun inline$$CastU64$0$dst@1 () Int)
(declare-fun inline$$CastU64$0$dst@0 () Int)
(declare-fun inline$$MulU128$0$dst@2 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t23@@0 () Int)
(declare-fun inline$$MulU128$0$dst@0 () Int)
(declare-fun inline$$CastU128$0$dst@1 () Int)
(declare-fun inline$$CastU128$1$dst@1 () Int)
(declare-fun inline$$MulU128$0$dst@1 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun inline$$CastU128$1$dst@0 () Int)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1| () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@0| () Int)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1| () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1| () Int)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@2| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun inline$$CastU128$0$dst@0 () Int)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t14@@0 () Int)
(declare-fun $t11@0@@1 () Bool)
(declare-fun $t9@@1 () Bool)
(declare-fun $t8 () Int)
(declare-fun $t7 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_108380)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_107903)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_126411)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_124570)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 240569) (let ((anon40_Else_correct  (=> (not $abort_flag@6) (and (=> (= (ControlFlow 0 177004) (- 0 242092)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 177004) (- 0 242107)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 177004) (- 0 242117)) (not (not (= _$t0@@1 173345816)))) (=> (not (not (= _$t0@@1 173345816))) (and (=> (= (ControlFlow 0 177004) (- 0 242131)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (and (=> (= (ControlFlow 0 177004) (- 0 242141)) (not (> $t6 18446744073709551615))) (=> (not (> $t6 18446744073709551615)) (and (=> (= (ControlFlow 0 177004) (- 0 242152)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 177004) (- 0 242162)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@2)))
 :qid |DualAttestationandybpl.10598:15|
 :skolemid |176|
))) (=> (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@3)))
 :qid |DualAttestationandybpl.10598:15|
 :skolemid |176|
)) (and (=> (= (ControlFlow 0 177004) (- 0 242187)) (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@4))))
 :qid |DualAttestationandybpl.10603:15|
 :skolemid |177|
))) (=> (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@5))))
 :qid |DualAttestationandybpl.10603:15|
 :skolemid |177|
)) (and (=> (= (ControlFlow 0 177004) (- 0 242216)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory@1) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory@1) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 177004) (- 0 242232)) (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@6) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@6)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@6)))))
 :qid |DualAttestationandybpl.10613:15|
 :skolemid |178|
))) (=> (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@7) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@7)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@7)))))
 :qid |DualAttestationandybpl.10613:15|
 :skolemid |178|
)) (=> (= (ControlFlow 0 177004) (- 0 242268)) (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@8) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@8)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@8)))))
 :qid |DualAttestationandybpl.10618:15|
 :skolemid |179|
))))))))))))))))))))))))))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 175584) (- 0 241970)) (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@1 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (> $t6 18446744073709551615)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= _$t0@@1 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (> $t6 18446744073709551615)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (= (ControlFlow 0 175584) (- 0 242008)) (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t8@0)) (and (not (= _$t0@@1 173345816)) (= 2 $t8@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= 6 $t8@0))) (and (> $t6 18446744073709551615) (= 8 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t8@0))))))))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t8@0 $abort_code@7) (= (ControlFlow 0 177018) 175584))) L5_correct@@0)))
(let ((anon39_Then$1_correct  (=> (= $1_DualAttestation_Limit_$memory@1 $1_DualAttestation_Limit_$memory) (=> (and (= $abort_code@7 $EXEC_FAILURE_CODE) (= $abort_flag@6 true)) (and (=> (= (ControlFlow 0 177068) 177018) anon40_Then_correct) (=> (= (ControlFlow 0 177068) 177004) anon40_Else_correct))))))
(let ((anon39_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) _$t0@@1) (= (ControlFlow 0 177066) 177068)) anon39_Then$1_correct)))
(let ((anon39_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) _$t0@@1)) (=> (and (and (= $1_DualAttestation_Limit_$memory@0 ($Memory_106253 (|Store__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) _$t0@@1 true) (|Store__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) _$t0@@1 $t25@0))) (= $1_DualAttestation_Limit_$memory@1 $1_DualAttestation_Limit_$memory@0)) (and (= $abort_code@7 $abort_code@6) (= $abort_flag@6 $abort_flag@5))) (and (=> (= (ControlFlow 0 176782) 177018) anon40_Then_correct) (=> (= (ControlFlow 0 176782) 177004) anon40_Else_correct))))))
(let ((anon38_Else_correct  (=> (and (not $abort_flag@5) (= $t25@0 ($1_DualAttestation_Limit inline$$CastU64$0$dst@1))) (and (=> (= (ControlFlow 0 176764) 177066) anon39_Then_correct) (=> (= (ControlFlow 0 176764) 176782) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= $t8@0 $abort_code@6) (= (ControlFlow 0 177082) 175584))) L5_correct@@0)))
(let ((inline$$CastU64$0$anon3_Then$1_correct  (=> (= $abort_flag@5 true) (=> (and (= $abort_code@6 $EXEC_FAILURE_CODE) (= inline$$CastU64$0$dst@1 inline$$CastU64$0$dst@0)) (and (=> (= (ControlFlow 0 176742) 177082) anon38_Then_correct) (=> (= (ControlFlow 0 176742) 176764) anon38_Else_correct))))))
(let ((inline$$CastU64$0$anon3_Then_correct  (=> (and (> inline$$MulU128$0$dst@2 $MAX_U64) (= (ControlFlow 0 176740) 176742)) inline$$CastU64$0$anon3_Then$1_correct)))
(let ((inline$$CastU64$0$anon3_Else_correct  (=> (and (and (>= $MAX_U64 inline$$MulU128$0$dst@2) (= $abort_flag@5 $abort_flag@4)) (and (= $abort_code@6 $abort_code@5) (= inline$$CastU64$0$dst@1 inline$$MulU128$0$dst@2))) (and (=> (= (ControlFlow 0 176692) 177082) anon38_Then_correct) (=> (= (ControlFlow 0 176692) 176764) anon38_Else_correct)))))
(let ((anon37_Then_correct  (=> inline$$Le$0$dst@1 (and (=> (= (ControlFlow 0 176748) 176740) inline$$CastU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 176748) 176692) inline$$CastU64$0$anon3_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= $t23@@0 $t23@@0)) (and (= $t8@0 $t23@@0) (= (ControlFlow 0 176617) 175584))) L5_correct@@0)))
(let ((anon36_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 8)) (and (= $t23@@0 $t23@@0) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 176601) 176748) anon37_Then_correct) (=> (= (ControlFlow 0 176601) 176617) anon37_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= inline$$MulU128$0$dst@2 18446744073709551615)) (= (ControlFlow 0 176565) 176601)) anon36_Else$1_correct)))
(let ((anon36_Else_correct  (=> (and (and (not $abort_flag@4) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@2)) (and (|$IsValid'u128'| 18446744073709551615) (= (ControlFlow 0 176571) 176565))) inline$$Le$0$anon0_correct)))
(let ((anon36_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t8@0 $abort_code@5) (= (ControlFlow 0 177096) 175584))) L5_correct@@0)))
(let ((inline$$MulU128$0$anon3_Then$1_correct  (=> (= $abort_code@5 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@4 true) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@0)) (and (=> (= (ControlFlow 0 176497) 177096) anon36_Then_correct) (=> (= (ControlFlow 0 176497) 176571) anon36_Else_correct))))))
(let ((inline$$MulU128$0$anon3_Then_correct  (=> (and (> (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1) $MAX_U128) (= (ControlFlow 0 176495) 176497)) inline$$MulU128$0$anon3_Then$1_correct)))
(let ((inline$$MulU128$0$anon3_Else_correct  (=> (>= $MAX_U128 (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1)) (=> (and (and (= inline$$MulU128$0$dst@1 (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1)) (= $abort_code@5 $abort_code@4)) (and (= $abort_flag@4 $abort_flag@3) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@1))) (and (=> (= (ControlFlow 0 176443) 177096) anon36_Then_correct) (=> (= (ControlFlow 0 176443) 176571) anon36_Else_correct))))))
(let ((anon35_Else_correct  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 176503) 176495) inline$$MulU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 176503) 176443) inline$$MulU128$0$anon3_Else_correct)))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t8@0 $abort_code@4) (= (ControlFlow 0 177110) 175584))) L5_correct@@0)))
(let ((inline$$CastU128$1$anon3_Then$1_correct  (=> (= $abort_flag@3 true) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= inline$$CastU128$1$dst@1 inline$$CastU128$1$dst@0)) (and (=> (= (ControlFlow 0 176336) 177110) anon35_Then_correct) (=> (= (ControlFlow 0 176336) 176503) anon35_Else_correct))))))
(let ((inline$$CastU128$1$anon3_Then_correct  (=> (and (> |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1| $MAX_U128) (= (ControlFlow 0 176334) 176336)) inline$$CastU128$1$anon3_Then$1_correct)))
(let ((inline$$CastU128$1$anon3_Else_correct  (=> (and (and (>= $MAX_U128 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1|) (= $abort_flag@3 $abort_flag@2)) (and (= $abort_code@4 $abort_code@3) (= inline$$CastU128$1$dst@1 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 176286) 177110) anon35_Then_correct) (=> (= (ControlFlow 0 176286) 176503) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 176342) 176334) inline$$CastU128$1$anon3_Then_correct) (=> (= (ControlFlow 0 176342) 176286) inline$$CastU128$1$anon3_Else_correct)))))
(let ((anon34_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t8@0 $abort_code@3) (= (ControlFlow 0 177124) 175584))) L5_correct@@0)))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$L2_correct|  (=> (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@0|) (=> (and (= $abort_flag@2 true) (= $abort_code@3 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1|)) (and (=> (= (ControlFlow 0 176111) 177124) anon34_Then_correct) (=> (= (ControlFlow 0 176111) 176342) anon34_Else_correct))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon13_Then_correct|  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1| $abort_code@2) (= (ControlFlow 0 176105) 176111))) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$L2_correct|)))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon11_Then_correct|  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1| $abort_code@1@@1) (= (ControlFlow 0 176177) 176111))) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$L2_correct|)))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Then_correct|  (=> |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t0@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0|)) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0|)) (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0|) (= (ControlFlow 0 176203) 176111))) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon13_Else_correct|  (=> (and (not $abort_flag@1) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@2|))) (=> (and (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1|) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1|)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 176091) 177124) anon34_Then_correct) (=> (= (ControlFlow 0 176091) 176342) anon34_Else_correct))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon12_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@2| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@0|)) (and (=> (= (ControlFlow 0 176163) 176105) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon13_Then_correct|) (=> (= (ControlFlow 0 176163) 176091) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon13_Else_correct|))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon12_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (ControlFlow 0 176161) 176163)) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon12_Then$1_correct|)))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon12_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (=> (and (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@1| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $abort_code@2 $abort_code@1@@1)) (and (= $abort_flag@1 $abort_flag@0@@1) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@2| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 176069) 176105) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon13_Then_correct|) (=> (= (ControlFlow 0 176069) 176091) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon13_Else_correct|))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon11_Else_correct|  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 176055) 176161) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon12_Then_correct|) (=> (= (ControlFlow 0 176055) 176069) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon12_Else_correct|)))))
(let ((inline$$1_CoreAddresses_CURRENCY_INFO_ADDRESS$0$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 176041) 176177) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 176041) 176055) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon11_Else_correct|)))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Else_correct|  (=> (and (not |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t0@0|) (= (ControlFlow 0 176047) 176041)) inline$$1_CoreAddresses_CURRENCY_INFO_ADDRESS$0$anon0_correct)))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 175970) 176203) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 175970) 176047) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Else_correct|)))))
(let ((anon33_Else_correct  (=> (and (not $abort_flag@0@@1) (= (ControlFlow 0 176209) 175970)) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon0_correct|)))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t8@0 $abort_code@1@@1) (= (ControlFlow 0 177138) 175584))) L5_correct@@0)))
(let ((inline$$CastU128$0$anon3_Then$1_correct  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$CastU128$0$dst@1 inline$$CastU128$0$dst@0)) (and (=> (= (ControlFlow 0 175713) 177138) anon33_Then_correct) (=> (= (ControlFlow 0 175713) 176209) anon33_Else_correct))))))
(let ((inline$$CastU128$0$anon3_Then_correct  (=> (and (> 1000 $MAX_U128) (= (ControlFlow 0 175711) 175713)) inline$$CastU128$0$anon3_Then$1_correct)))
(let ((inline$$CastU128$0$anon3_Else_correct  (=> (and (and (>= $MAX_U128 1000) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$CastU128$0$dst@1 1000))) (and (=> (= (ControlFlow 0 175663) 177138) anon33_Then_correct) (=> (= (ControlFlow 0 175663) 176209) anon33_Else_correct)))))
(let ((anon32_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@0 (|$IsValid'u64'| 1000)) (and (=> (= (ControlFlow 0 175719) 175711) inline$$CastU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 175719) 175663) inline$$CastU128$0$anon3_Else_correct)))))
(let ((anon32_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t14@@0 $t14@@0)) (and (= $t8@0 $t14@@0) (= (ControlFlow 0 175452) 175584))) L5_correct@@0)))
(let ((anon31_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t14@@0) (= $t14@@0 6)) (and (= $t14@@0 $t14@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 175436) 175719) anon32_Then_correct@@0) (=> (= (ControlFlow 0 175436) 175452) anon32_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t11@0@@1)) (= (ControlFlow 0 175400) 175436)) anon31_Else$1_correct)))
(let ((anon31_Else_correct@@0  (=> (not false) (=> (and (= $t11@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (= (ControlFlow 0 175406) 175400)) inline$$Not$0$anon0_correct@@0))))
(let ((anon30_Then_correct@@0  (=> $t9@@1 (=> (and (and (and (not (= _$t0@@1 173345816)) (= 2 $t8)) (= $t8 $t8)) (and (= $t8@0 $t8) (= (ControlFlow 0 177182) 175584))) L5_correct@@0))))
(let ((anon29_Then_correct@@0  (=> $t7 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t8)) (= $t8 $t8)) (and (= $t8@0 $t8) (= (ControlFlow 0 177208) 175584))) L5_correct@@0))))
(let ((anon31_Then_correct@@0 true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@0  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 175350) 177152) anon31_Then_correct@@0) (=> (= (ControlFlow 0 175350) 175406) anon31_Else_correct@@0)))))
(let ((anon30_Else_correct@@0  (=> (and (not $t9@@1) (= (ControlFlow 0 175356) 175350)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@0)))
(let ((anon29_Else_correct@@0  (=> (and (not $t7) (= $t9@@1  (not (= _$t0@@1 173345816)))) (and (=> (= (ControlFlow 0 175279) 177182) anon30_Then_correct@@0) (=> (= (ControlFlow 0 175279) 175356) anon30_Else_correct@@0)))))
(let ((anon0$1_correct@@1  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108380| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107903| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_126411| $1_XDX_Reserve_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124570| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$IsValid'address'| _$t0@@1)) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@1)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@1))
 :qid |DualAttestationandybpl.10284:20|
 :skolemid |173|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@2)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@2) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@2)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@2) 10000000000))))
 :qid |DualAttestationandybpl.10288:20|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@2))
)))) (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) $a_0@@3)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@3))
 :qid |DualAttestationandybpl.10292:20|
 :skolemid |175|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) $a_0@@3))
)) (= $t6 (* 1000 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (= _$t0@@1 _$t0@@1) (= $t7  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 175257) 177208) anon29_Then_correct@@0) (=> (= (ControlFlow 0 175257) 175279) anon29_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_75556| stream@@2) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@2) v@@40) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 175037) 175257)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 240569) 175037) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t8@0@@0 () (Seq Int))
(declare-fun $t7@1 () T@$1_DualAttestation_Credential)
(declare-fun _$t0@@2 () Int)
(declare-fun $t6@0@@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t7@@0 () T@$1_DualAttestation_Credential)
(declare-fun $t7@0 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t5@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_human_name$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 242311) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0@@2) (=> (and (= $t8@0@@0 (|$human_name#$1_DualAttestation_Credential| $t7@1)) (= $t8@0@@0 $t8@0@@0)) (and (=> (= (ControlFlow 0 177727) (- 0 242635)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@2))) (and (=> (= (ControlFlow 0 177727) (- 0 242646)) (= $t8@0@@0 (|$human_name#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@2)))) (=> (= $t8@0@@0 (|$human_name#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@2))) (and (=> (= (ControlFlow 0 177727) (- 0 242659)) (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@9)))
 :qid |DualAttestationandybpl.10774:15|
 :skolemid |182|
))) (=> (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@10)))
 :qid |DualAttestationandybpl.10774:15|
 :skolemid |182|
)) (and (=> (= (ControlFlow 0 177727) (- 0 242684)) (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@11))))
 :qid |DualAttestationandybpl.10779:15|
 :skolemid |183|
))) (=> (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@12)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@12))))
 :qid |DualAttestationandybpl.10779:15|
 :skolemid |183|
)) (and (=> (= (ControlFlow 0 177727) (- 0 242713)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 177727) (- 0 242730)) (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@13) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@13)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@13)))))
 :qid |DualAttestationandybpl.10789:15|
 :skolemid |184|
))) (=> (forall ((addr1@@14 Int) ) (!  (=> (|$IsValid'address'| addr1@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@14) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@14)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@14)))))
 :qid |DualAttestationandybpl.10789:15|
 :skolemid |184|
)) (=> (= (ControlFlow 0 177727) (- 0 242766)) (forall ((addr1@@15 Int) ) (!  (=> (|$IsValid'address'| addr1@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@15) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@15)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@15)))))
 :qid |DualAttestationandybpl.10794:15|
 :skolemid |185|
)))))))))))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 177515) (- 0 242588)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@2)) (=> (= (ControlFlow 0 177515) (- 0 242594)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@2)) (= 5 $t6@0@@0)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t6@0@@0 $abort_code@1@@2) (= (ControlFlow 0 177741) 177515))) L3_correct@@0)))
(let ((anon11_Then$1_correct@@0  (=> (= $t7@1 $t7@@0) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 177793) 177741) anon12_Then_correct@@0) (=> (= (ControlFlow 0 177793) 177727) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@2)) (= (ControlFlow 0 177791) 177793)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@2) (=> (and (and (= $t7@0 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@2)) (= $t7@1 $t7@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 177533) 177741) anon12_Then_correct@@0) (=> (= (ControlFlow 0 177533) 177727) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct@@0  (=> $t3@0 (and (=> (= (ControlFlow 0 177519) 177791) anon11_Then_correct@@0) (=> (= (ControlFlow 0 177519) 177533) anon11_Else_correct@@0)))))
(let ((anon10_Else_correct@@0  (=> (and (and (not $t3@0) (= $t5@@0 $t5@@0)) (and (= $t6@0@@0 $t5@@0) (= (ControlFlow 0 177483) 177515))) L3_correct@@0)))
(let ((anon0$1_correct@@2  (=> (and (forall ((addr1@@16 Int) ) (!  (=> (|$IsValid'address'| addr1@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@16) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@16)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@16)) 2)))))
 :qid |DualAttestationandybpl.10671:20|
 :skolemid |180|
)) (|$IsValid'address'| _$t0@@2)) (=> (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@4)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@4))
 :qid |DualAttestationandybpl.10678:20|
 :skolemid |181|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@4))
)) (= _$t0@@2 _$t0@@2)) (and (= $t3@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@2)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@0) (= $t5@@0 5)) (and (= $t5@@0 $t5@@0) (= $t3@0 $t3@0)))) (and (=> (= (ControlFlow 0 177467) 177519) anon10_Then_correct@@0) (=> (= (ControlFlow 0 177467) 177483) anon10_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_75556| stream@@3) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@3) v@@41) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 177346) 177467)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 242311) 177346) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t4 () (Seq Int))
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_112142)
(declare-fun $t6@@0 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t2@@0 () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun _$t0@@3 () Int)
(declare-fun _$t1@@1 () Int)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_128718)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_128654)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun _$t3 () (Seq Int))
(declare-fun $t8@0@@1 () Int)
(declare-fun $t14@@1 () Bool)
(declare-fun $t8@@0 () Int)
(declare-fun $t13 () Bool)
(declare-fun $t11@@0 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun $t5@0 () Bool)
(declare-fun $t12@@0 () Bool)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun |inline$$1_Vector_is_empty'u8'$0$b@1| () Bool)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_assert_payment_ok$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 242813) (let ((L8_correct@@0  (and (=> (= (ControlFlow 0 179385) (- 0 243794)) (or (or (or (or (or (or (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (not (let ((payee_compliance_key (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key ($1_DualAttestation_spec_dual_attestation_message _$t0@@3 _$t3 _$t2@@0))))))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))))) (=> (or (or (or (or (or (or (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (not (let ((payee_compliance_key (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key ($1_DualAttestation_spec_dual_attestation_message _$t0@@3 _$t3 _$t2@@0))))))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1))))) (=> (= (ControlFlow 0 179385) (- 0 243982)) (or (or (or (or (or (or (and (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (= 5 $t8@0@@1)) (and (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t8@0@@1))) (and (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (= 8 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0)) (= 1 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0)) (= 1 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (not (let ((payee_compliance_key@@0 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@0) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@0 ($1_DualAttestation_spec_dual_attestation_message _$t0@@3 _$t3 _$t2@@0)))))) (= 7 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) (= 5 $t8@0@@1))))))))
(let ((anon18_Then_correct  (=> $t14@@1 (=> (and (and (or (or (or (and (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0) (= 1 $t8@@0)) (and (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0) (= 1 $t8@@0))) (and (not (let ((payee_compliance_key@@1 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@1) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@1 ($1_DualAttestation_spec_dual_attestation_message _$t0@@3 _$t3 _$t2@@0))))) (= 7 $t8@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1))) (= 5 $t8@@0))) (= $t8@@0 $t8@@0)) (and (= $t8@0@@1 $t8@@0) (= (ControlFlow 0 178829) 179385))) L8_correct@@0))))
(let ((anon16_Then_correct  (=> $t13 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t8@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t8@@0))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t8@@0))) (= $t8@@0 $t8@@0)) (and (= $t8@0@@1 $t8@@0) (= (ControlFlow 0 179447) 179385))) L8_correct@@0))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 178633) (- 0 243569)) (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 178633) (- 0 243588)) (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 178633) (- 0 243607)) (not (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (=> (not (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@0) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (=> (= (ControlFlow 0 178633) (- 0 243630)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0))) (and (=> (= (ControlFlow 0 178633) (- 0 243667)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0))) (and (=> (= (ControlFlow 0 178633) (- 0 243704)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (not (let ((payee_compliance_key@@2 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@2) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@2 ($1_DualAttestation_spec_dual_attestation_message _$t0@@3 _$t3 _$t2@@0)))))))) (=> (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (not (let ((payee_compliance_key@@2 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@2) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@2 ($1_DualAttestation_spec_dual_attestation_message _$t0@@3 _$t3 _$t2@@0))))))) (=> (= (ControlFlow 0 178633) (- 0 243743)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1))))))))))))))))))))
(let ((anon18_Else_correct  (=> (and (not $t14@@1) (= (ControlFlow 0 178717) 178633)) L6_correct)))
(let ((anon17_Then_correct  (=> (and $t5@0 (= $t14@@1  (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))) 0)) (not (let ((payee_compliance_key@@3 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@3) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@3 ($1_DualAttestation_spec_dual_attestation_message _$t0@@3 _$t3 _$t2@@0)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) _$t1@@1)))))) (and (=> (= (ControlFlow 0 178709) 178829) anon18_Then_correct) (=> (= (ControlFlow 0 178709) 178717) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (not $t5@0) (= (ControlFlow 0 178367) 178633)) L6_correct)))
(let ((anon16_Else_correct  (=> (and (and (not $t13) (= $t12@@0  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@3 _$t1@@1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@3) _$t0@@3 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@3))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@1))))))))) (and (= $t12@@0 $t12@@0) (= $t5@0 $t12@@0))) (and (=> (= (ControlFlow 0 178359) 178709) anon17_Then_correct) (=> (= (ControlFlow 0 178359) 178367) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (not inline$$Not$0$dst@1@@1) (=> (and (= $t11@@0 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t13  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (and (=> (= (ControlFlow 0 178319) 179447) anon16_Then_correct) (=> (= (ControlFlow 0 178319) 178359) anon16_Else_correct))))))
(let ((anon15_Then_correct  (=> inline$$Not$0$dst@1@@1 (=> (and (= true true) (= $t5@0 true)) (and (=> (= (ControlFlow 0 179465) 178709) anon17_Then_correct) (=> (= (ControlFlow 0 179465) 178367) anon17_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (= inline$$Not$0$dst@1@@1  (not |inline$$1_Vector_is_empty'u8'$0$b@1|)) (and (=> (= (ControlFlow 0 178263) 179465) anon15_Then_correct) (=> (= (ControlFlow 0 178263) 178319) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not false) (= (ControlFlow 0 178269) 178263)) inline$$Not$0$anon0_correct@@1)))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_is_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u8'$0$b@1| (= (seq.len _$t4) 0)) (and (=> (= (ControlFlow 0 178219) 179479) anon14_Then_correct) (=> (= (ControlFlow 0 178219) 178269) anon14_Else_correct)))))
(let ((anon0$1_correct@@3  (=> (and (and (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |DualAttestationandybpl.10861:20|
 :skolemid |186|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1@@17 Int) ) (!  (=> (|$IsValid'address'| addr1@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@17) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@17)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@17)) 2)))))
 :qid |DualAttestationandybpl.10869:20|
 :skolemid |187|
)) (|$IsValid'address'| _$t0@@3))) (=> (and (and (and (and (|$IsValid'address'| _$t1@@1) (|$IsValid'u64'| _$t2@@0)) (and (|$IsValid'vec'u8''| _$t3) (|$IsValid'vec'u8''| _$t4))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@5) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@5)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@5) 10000000000))))
 :qid |DualAttestationandybpl.10887:20|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) $a_0@@6)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@6))
 :qid |DualAttestationandybpl.10891:20|
 :skolemid |189|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) $a_0@@6))
))) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_128718| $1_VASP_ParentVASP_$memory) $a_0@@7)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@7))
 :qid |DualAttestationandybpl.10895:20|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_128718| $1_VASP_ParentVASP_$memory) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@8)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@8))
 :qid |DualAttestationandybpl.10899:20|
 :skolemid |191|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@8))
))))) (and (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) $a_0@@9)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@9))
 :qid |DualAttestationandybpl.10903:20|
 :skolemid |192|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) $a_0@@9))
)) (= $t6@@0 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= _$t0@@3 _$t0@@3) (= _$t1@@1 _$t1@@1))) (and (and (= _$t2@@0 _$t2@@0) (= _$t3 _$t3)) (and (= _$t4 _$t4) (= (ControlFlow 0 178225) 178219))))) |inline$$1_Vector_is_empty'u8'$0$anon0_correct|))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_75556| stream@@4) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@4) v@@42) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 177901) 178225)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 242813) 177901) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun inline$$1_Signature_ed25519_verify$0$res@1 () Bool)
(declare-fun _$t1@@2 () Int)
(declare-fun _$t2@@1 () (Seq Int))
(declare-fun _$t0@@4 () Int)
(declare-fun _$t3@@0 () (Seq Int))
(declare-fun _$t4@@0 () Int)
(declare-fun $t17@0@@0 () Int)
(declare-fun $t39 () Int)
(declare-fun $t23@@1 () (Seq Int))
(declare-fun $t36 () (Seq Int))
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun $t35 () Int)
(declare-fun |inline$$1_Vector_is_empty'u8'$1$b@1| () Bool)
(declare-fun $t30 () (Seq Int))
(declare-fun $t31 () Bool)
(declare-fun $t29 () Int)
(declare-fun $t17 () Int)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun $t28 () Int)
(declare-fun |inline$$1_Vector_is_empty'u8'$0$b@1@@0| () Bool)
(declare-fun $t24@@0 () Bool)
(declare-fun $t22 () Int)
(declare-fun $t19@0 () Bool)
(declare-fun $t21 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_assert_signature_is_valid$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 244237) (let ((anon35_Then_correct@@0  (=> inline$$1_Signature_ed25519_verify$0$res@1 (and (=> (= (ControlFlow 0 181002) (- 0 245112)) (not (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) 0))) (=> (not (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) 0)) (and (=> (= (ControlFlow 0 181002) (- 0 245127)) (not (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) 0))) (=> (not (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) 0)) (and (=> (= (ControlFlow 0 181002) (- 0 245142)) (not (not (let ((payee_compliance_key@@4 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))))
 (and (and (= (seq.len _$t2@@1) 64) (not (= (seq.len payee_compliance_key@@4) 0))) ($1_Signature_$ed25519_verify _$t2@@1 payee_compliance_key@@4 ($1_DualAttestation_spec_dual_attestation_message _$t0@@4 _$t3@@0 _$t4@@0))))))) (=> (not (not (let ((payee_compliance_key@@4 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))))
 (and (and (= (seq.len _$t2@@1) 64) (not (= (seq.len payee_compliance_key@@4) 0))) ($1_Signature_$ed25519_verify _$t2@@1 payee_compliance_key@@4 ($1_DualAttestation_spec_dual_attestation_message _$t0@@4 _$t3@@0 _$t4@@0)))))) (and (=> (= (ControlFlow 0 181002) (- 0 245159)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) (and (=> (= (ControlFlow 0 181002) (- 0 245174)) (forall ((addr1@@18 Int) ) (!  (=> (|$IsValid'address'| addr1@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@18)))
 :qid |DualAttestationandybpl.11644:15|
 :skolemid |198|
))) (=> (forall ((addr1@@19 Int) ) (!  (=> (|$IsValid'address'| addr1@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@19)))
 :qid |DualAttestationandybpl.11644:15|
 :skolemid |198|
)) (and (=> (= (ControlFlow 0 181002) (- 0 245199)) (forall ((addr1@@20 Int) ) (!  (=> (|$IsValid'address'| addr1@@20) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@20)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@20))))
 :qid |DualAttestationandybpl.11649:15|
 :skolemid |199|
))) (=> (forall ((addr1@@21 Int) ) (!  (=> (|$IsValid'address'| addr1@@21) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@21)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@21))))
 :qid |DualAttestationandybpl.11649:15|
 :skolemid |199|
)) (and (=> (= (ControlFlow 0 181002) (- 0 245228)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 181002) (- 0 245245)) (forall ((addr1@@22 Int) ) (!  (=> (|$IsValid'address'| addr1@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@22) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@22)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@22)))))
 :qid |DualAttestationandybpl.11659:15|
 :skolemid |200|
))) (=> (forall ((addr1@@23 Int) ) (!  (=> (|$IsValid'address'| addr1@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@23) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@23)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@23)))))
 :qid |DualAttestationandybpl.11659:15|
 :skolemid |200|
)) (=> (= (ControlFlow 0 181002) (- 0 245281)) (forall ((addr1@@24 Int) ) (!  (=> (|$IsValid'address'| addr1@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@24) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@24)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@24)))))
 :qid |DualAttestationandybpl.11664:15|
 :skolemid |201|
))))))))))))))))))))))
(let ((anon34_Then_correct@@0 true))
(let ((anon32_Then_correct@@1 true))
(let ((anon29_Then_correct@@1 true))
(let ((L9_correct  (and (=> (= (ControlFlow 0 180250) (- 0 245368)) (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) 0)) (not (let ((payee_compliance_key@@5 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))))
 (and (and (= (seq.len _$t2@@1) 64) (not (= (seq.len payee_compliance_key@@5) 0))) ($1_Signature_$ed25519_verify _$t2@@1 payee_compliance_key@@5 ($1_DualAttestation_spec_dual_attestation_message _$t0@@4 _$t3@@0 _$t4@@0)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2))))) (=> (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) 0)) (not (let ((payee_compliance_key@@5 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))))
 (and (and (= (seq.len _$t2@@1) 64) (not (= (seq.len payee_compliance_key@@5) 0))) ($1_Signature_$ed25519_verify _$t2@@1 payee_compliance_key@@5 ($1_DualAttestation_spec_dual_attestation_message _$t0@@4 _$t3@@0 _$t4@@0)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) (=> (= (ControlFlow 0 180250) (- 0 245416)) (or (or (or (and (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) 0) (= 1 $t17@0@@0)) (and (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))) 0) (= 1 $t17@0@@0))) (and (not (let ((payee_compliance_key@@6 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)))))
 (and (and (= (seq.len _$t2@@1) 64) (not (= (seq.len payee_compliance_key@@6) 0))) ($1_Signature_$ed25519_verify _$t2@@1 payee_compliance_key@@6 ($1_DualAttestation_spec_dual_attestation_message _$t0@@4 _$t3@@0 _$t4@@0))))) (= 7 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2))) (= 5 $t17@0@@0))))))))
(let ((anon35_Else_correct@@0  (=> (and (and (not inline$$1_Signature_ed25519_verify$0$res@1) (= $t39 $t39)) (and (= $t17@0@@0 $t39) (= (ControlFlow 0 180772) 180250))) L9_correct)))
(let ((anon34_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t39) (= $t39 7)) (and (= $t39 $t39) (= inline$$1_Signature_ed25519_verify$0$res@1 inline$$1_Signature_ed25519_verify$0$res@1))) (and (=> (= (ControlFlow 0 180756) 181002) anon35_Then_correct@@0) (=> (= (ControlFlow 0 180756) 180772) anon35_Else_correct@@0))))))
(let ((inline$$1_Signature_ed25519_verify$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_verify$0$res@1 ($1_Signature_$ed25519_verify _$t2@@1 $t23@@1 $t36)) (and (=> (= (ControlFlow 0 180710) 181016) anon34_Then_correct@@0) (=> (= (ControlFlow 0 180710) 180756) anon34_Else_correct@@0)))))
(let ((anon33_Then_correct@@0  (=> inline$$Not$1$dst@1 (=> (and (and (|$IsValid'vec'u8''| $t36) (= $t36 ($1_DualAttestation_spec_dual_attestation_message _$t0@@4 _$t3@@0 _$t4@@0))) (and (= $t36 $t36) (= (ControlFlow 0 180716) 180710))) inline$$1_Signature_ed25519_verify$0$anon0_correct))))
(let ((anon33_Else_correct@@0  (=> (and (and (not inline$$Not$1$dst@1) (= $t35 $t35)) (and (= $t17@0@@0 $t35) (= (ControlFlow 0 180632) 180250))) L9_correct)))
(let ((anon32_Else$1_correct  (=> (|$IsValid'u64'| 6) (=> (and (and (|$IsValid'u64'| $t35) (= $t35 1)) (and (= $t35 $t35) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 180616) 180716) anon33_Then_correct@@0) (=> (= (ControlFlow 0 180616) 180632) anon33_Else_correct@@0))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_Vector_is_empty'u8'$1$b@1|)) (= (ControlFlow 0 180576) 180616)) anon32_Else$1_correct)))
(let ((anon32_Else_correct@@1  (=> (and (not false) (= (ControlFlow 0 180582) 180576)) inline$$Not$1$anon0_correct)))
(let ((|inline$$1_Vector_is_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u8'$1$b@1| (= (seq.len $t30) 0)) (and (=> (= (ControlFlow 0 180532) 181030) anon32_Then_correct@@1) (=> (= (ControlFlow 0 180532) 180582) anon32_Else_correct@@1)))))
(let ((anon31_Else_correct@@1  (=> (not $t31) (=> (and (and (|$IsValid'vec'u8''| $t30) (= $t30 (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $t29)))) (and (= $t30 $t30) (= (ControlFlow 0 180538) 180532))) |inline$$1_Vector_is_empty'u8'$1$anon0_correct|))))
(let ((anon31_Then_correct@@1  (=> $t31 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t29)) (= 5 $t17)) (= $t17 $t17)) (and (= $t17@0@@0 $t17) (= (ControlFlow 0 181058) 180250))) L9_correct))))
(let ((anon30_Then_correct@@1  (=> (and (and inline$$Not$0$dst@1@@2 (|$IsValid'address'| $t29)) (and (= $t29 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)) (= $t31  (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t29))))) (and (=> (= (ControlFlow 0 180472) 181058) anon31_Then_correct@@1) (=> (= (ControlFlow 0 180472) 180538) anon31_Else_correct@@1)))))
(let ((anon30_Else_correct@@1  (=> (and (and (not inline$$Not$0$dst@1@@2) (= $t28 $t28)) (and (= $t17@0@@0 $t28) (= (ControlFlow 0 180440) 180250))) L9_correct)))
(let ((anon29_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t28) (= $t28 1)) (and (= $t28 $t28) (= inline$$Not$0$dst@1@@2 inline$$Not$0$dst@1@@2))) (and (=> (= (ControlFlow 0 180424) 180472) anon30_Then_correct@@1) (=> (= (ControlFlow 0 180424) 180440) anon30_Else_correct@@1))))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (and (= inline$$Not$0$dst@1@@2  (not |inline$$1_Vector_is_empty'u8'$0$b@1@@0|)) (= (ControlFlow 0 180384) 180424)) anon29_Else$1_correct)))
(let ((anon29_Else_correct@@1  (=> (and (not false) (= (ControlFlow 0 180390) 180384)) inline$$Not$0$anon0_correct@@2)))
(let ((|inline$$1_Vector_is_empty'u8'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_is_empty'u8'$0$b@1@@0| (= (seq.len $t23@@1) 0)) (and (=> (= (ControlFlow 0 180340) 181072) anon29_Then_correct@@1) (=> (= (ControlFlow 0 180340) 180390) anon29_Else_correct@@1)))))
(let ((anon28_Else_correct@@0  (=> (not $t24@@0) (=> (and (and (|$IsValid'vec'u8''| $t23@@1) (= $t23@@1 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $t22)))) (and (= $t23@@1 $t23@@1) (= (ControlFlow 0 180346) 180340))) |inline$$1_Vector_is_empty'u8'$0$anon0_correct@@0|))))
(let ((anon28_Then_correct@@0  (=> $t24@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t22)) (= 5 $t17)) (= $t17 $t17)) (and (= $t17@0@@0 $t17) (= (ControlFlow 0 181100) 180250))) L9_correct))))
(let ((anon27_Then_correct@@0  (=> (and (and $t19@0 (|$IsValid'address'| $t22)) (and (= $t22 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@2) _$t1@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@2))) _$t1@@2)) (= $t24@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t22))))) (and (=> (= (ControlFlow 0 180282) 181100) anon28_Then_correct@@0) (=> (= (ControlFlow 0 180282) 180346) anon28_Else_correct@@0)))))
(let ((anon27_Else_correct@@0  (=> (and (and (not $t19@0) (= $t21 $t21)) (and (= $t17@0@@0 $t21) (= (ControlFlow 0 180074) 180250))) L9_correct)))
(let ((anon26_Else_correct@@0  (=> (and (and (and (not false) (|$IsValid'u64'| 64)) (and (= $t19@0 (= |inline$$1_Vector_length'u8'$0$l@1| 64)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t21) (= $t21 7)) (and (= $t21 $t21) (= $t19@0 $t19@0)))) (and (=> (= (ControlFlow 0 180058) 180282) anon27_Then_correct@@0) (=> (= (ControlFlow 0 180058) 180074) anon27_Else_correct@@0)))))
(let ((anon26_Then_correct@@0 true))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t2@@1)) (and (=> (= (ControlFlow 0 180000) 181114) anon26_Then_correct@@0) (=> (= (ControlFlow 0 180000) 180058) anon26_Else_correct@@0)))))
(let ((anon0$1_correct@@4  (=> (and (and (and (and (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |DualAttestationandybpl.11206:20|
 :skolemid |193|
)) (forall ((addr1@@25 Int) ) (!  (=> (|$IsValid'address'| addr1@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@25) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@25)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@25)) 2)))))
 :qid |DualAttestationandybpl.11210:20|
 :skolemid |194|
))) (and (|$IsValid'address'| _$t0@@4) (|$IsValid'address'| _$t1@@2))) (and (and (|$IsValid'vec'u8''| _$t2@@1) (|$IsValid'vec'u8''| _$t3@@0)) (and (|$IsValid'u64'| _$t4@@0) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) $a_0@@10)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@10))
 :qid |DualAttestationandybpl.11228:20|
 :skolemid |195|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) $a_0@@10))
))))) (and (and (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_128718| $1_VASP_ParentVASP_$memory) $a_0@@11)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@11))
 :qid |DualAttestationandybpl.11232:20|
 :skolemid |196|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_128718| $1_VASP_ParentVASP_$memory) $a_0@@11))
)) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@12)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@12))
 :qid |DualAttestationandybpl.11236:20|
 :skolemid |197|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@12))
))) (and (= _$t0@@4 _$t0@@4) (= _$t1@@2 _$t1@@2))) (and (and (= _$t2@@1 _$t2@@1) (= _$t3@@0 _$t3@@0)) (and (= _$t4@@0 _$t4@@0) (= (ControlFlow 0 180006) 180000))))) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_75556| stream@@5) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@5) v@@43) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 179770) 180006)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 244237) 179770) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $t8@0@@2 () (Seq Int))
(declare-fun $t7@1@@0 () T@$1_DualAttestation_Credential)
(declare-fun _$t0@@5 () Int)
(declare-fun $t6@0@@1 () Int)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t7@@1 () T@$1_DualAttestation_Credential)
(declare-fun $t7@0@@0 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t3@0@@0 () Bool)
(declare-fun $t5@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_base_url$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 245510) (let ((anon12_Else_correct@@1  (=> (not $abort_flag@0@@3) (=> (and (= $t8@0@@2 (|$base_url#$1_DualAttestation_Credential| $t7@1@@0)) (= $t8@0@@2 $t8@0@@2)) (and (=> (= (ControlFlow 0 181703) (- 0 245834)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@5))) (and (=> (= (ControlFlow 0 181703) (- 0 245845)) (= $t8@0@@2 (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@5)))) (=> (= $t8@0@@2 (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@5))) (and (=> (= (ControlFlow 0 181703) (- 0 245858)) (forall ((addr1@@26 Int) ) (!  (=> (|$IsValid'address'| addr1@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@26) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@26)))
 :qid |DualAttestationandybpl.11820:15|
 :skolemid |204|
))) (=> (forall ((addr1@@27 Int) ) (!  (=> (|$IsValid'address'| addr1@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@27)))
 :qid |DualAttestationandybpl.11820:15|
 :skolemid |204|
)) (and (=> (= (ControlFlow 0 181703) (- 0 245883)) (forall ((addr1@@28 Int) ) (!  (=> (|$IsValid'address'| addr1@@28) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@28)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@28))))
 :qid |DualAttestationandybpl.11825:15|
 :skolemid |205|
))) (=> (forall ((addr1@@29 Int) ) (!  (=> (|$IsValid'address'| addr1@@29) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@29)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@29))))
 :qid |DualAttestationandybpl.11825:15|
 :skolemid |205|
)) (and (=> (= (ControlFlow 0 181703) (- 0 245912)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 181703) (- 0 245929)) (forall ((addr1@@30 Int) ) (!  (=> (|$IsValid'address'| addr1@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@30) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@30)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@30)))))
 :qid |DualAttestationandybpl.11835:15|
 :skolemid |206|
))) (=> (forall ((addr1@@31 Int) ) (!  (=> (|$IsValid'address'| addr1@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@31) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@31)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@31)))))
 :qid |DualAttestationandybpl.11835:15|
 :skolemid |206|
)) (=> (= (ControlFlow 0 181703) (- 0 245965)) (forall ((addr1@@32 Int) ) (!  (=> (|$IsValid'address'| addr1@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@32) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@32)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@32)))))
 :qid |DualAttestationandybpl.11840:15|
 :skolemid |207|
)))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 181491) (- 0 245787)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@5)) (=> (= (ControlFlow 0 181491) (- 0 245793)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@5)) (= 5 $t6@0@@1)))))))
(let ((anon12_Then_correct@@1  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t6@0@@1 $abort_code@1@@3) (= (ControlFlow 0 181717) 181491))) L3_correct@@1)))
(let ((anon11_Then$1_correct@@1  (=> (= $t7@1@@0 $t7@@1) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 181769) 181717) anon12_Then_correct@@1) (=> (= (ControlFlow 0 181769) 181703) anon12_Else_correct@@1))))))
(let ((anon11_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@5)) (= (ControlFlow 0 181767) 181769)) anon11_Then$1_correct@@1)))
(let ((anon11_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@5) (=> (and (and (= $t7@0@@0 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@5)) (= $t7@1@@0 $t7@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 181509) 181717) anon12_Then_correct@@1) (=> (= (ControlFlow 0 181509) 181703) anon12_Else_correct@@1))))))
(let ((anon10_Then_correct@@1  (=> $t3@0@@0 (and (=> (= (ControlFlow 0 181495) 181767) anon11_Then_correct@@1) (=> (= (ControlFlow 0 181495) 181509) anon11_Else_correct@@1)))))
(let ((anon10_Else_correct@@1  (=> (and (and (not $t3@0@@0) (= $t5@@1 $t5@@1)) (and (= $t6@0@@1 $t5@@1) (= (ControlFlow 0 181459) 181491))) L3_correct@@1)))
(let ((anon0$1_correct@@5  (=> (and (forall ((addr1@@33 Int) ) (!  (=> (|$IsValid'address'| addr1@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@33) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@33)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@33)) 2)))))
 :qid |DualAttestationandybpl.11717:20|
 :skolemid |202|
)) (|$IsValid'address'| _$t0@@5)) (=> (and (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@13)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@13))
 :qid |DualAttestationandybpl.11724:20|
 :skolemid |203|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@13))
)) (= _$t0@@5 _$t0@@5)) (and (= $t3@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@5)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@1) (= $t5@@1 5)) (and (= $t5@@1 $t5@@1) (= $t3@0@@0 $t3@0@@0)))) (and (=> (= (ControlFlow 0 181443) 181495) anon10_Then_correct@@1) (=> (= (ControlFlow 0 181443) 181459) anon10_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_75556| stream@@6) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@6) v@@44) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 181322) 181443)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 245510) 181322) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $t8@0@@3 () (Seq Int))
(declare-fun $t7@1@@1 () T@$1_DualAttestation_Credential)
(declare-fun _$t0@@6 () Int)
(declare-fun $t6@0@@2 () Int)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t7@@2 () T@$1_DualAttestation_Credential)
(declare-fun $t7@0@@1 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t3@0@@1 () Bool)
(declare-fun $t5@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_compliance_public_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 246009) (let ((anon12_Else_correct@@2  (=> (not $abort_flag@0@@4) (=> (and (= $t8@0@@3 (|$compliance_public_key#$1_DualAttestation_Credential| $t7@1@@1)) (= $t8@0@@3 $t8@0@@3)) (and (=> (= (ControlFlow 0 182248) (- 0 246333)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@6))) (and (=> (= (ControlFlow 0 182248) (- 0 246344)) (= $t8@0@@3 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@6)))) (=> (= $t8@0@@3 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@6))) (and (=> (= (ControlFlow 0 182248) (- 0 246355)) (forall ((addr1@@34 Int) ) (!  (=> (|$IsValid'address'| addr1@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@34) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@34)))
 :qid |DualAttestationandybpl.11997:15|
 :skolemid |210|
))) (=> (forall ((addr1@@35 Int) ) (!  (=> (|$IsValid'address'| addr1@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@35) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@35)))
 :qid |DualAttestationandybpl.11997:15|
 :skolemid |210|
)) (and (=> (= (ControlFlow 0 182248) (- 0 246380)) (forall ((addr1@@36 Int) ) (!  (=> (|$IsValid'address'| addr1@@36) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@36)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@36))))
 :qid |DualAttestationandybpl.12002:15|
 :skolemid |211|
))) (=> (forall ((addr1@@37 Int) ) (!  (=> (|$IsValid'address'| addr1@@37) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@37)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@37))))
 :qid |DualAttestationandybpl.12002:15|
 :skolemid |211|
)) (and (=> (= (ControlFlow 0 182248) (- 0 246409)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 182248) (- 0 246426)) (forall ((addr1@@38 Int) ) (!  (=> (|$IsValid'address'| addr1@@38) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@38) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@38)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@38)))))
 :qid |DualAttestationandybpl.12012:15|
 :skolemid |212|
))) (=> (forall ((addr1@@39 Int) ) (!  (=> (|$IsValid'address'| addr1@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@39) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@39)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@39)))))
 :qid |DualAttestationandybpl.12012:15|
 :skolemid |212|
)) (=> (= (ControlFlow 0 182248) (- 0 246462)) (forall ((addr1@@40 Int) ) (!  (=> (|$IsValid'address'| addr1@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@40) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@40)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@40)))))
 :qid |DualAttestationandybpl.12017:15|
 :skolemid |213|
)))))))))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 182038) (- 0 246286)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@6))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@6)) (=> (= (ControlFlow 0 182038) (- 0 246292)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@6)) (= 5 $t6@0@@2)))))))
(let ((anon12_Then_correct@@2  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t6@0@@2 $abort_code@1@@4) (= (ControlFlow 0 182262) 182038))) L3_correct@@2)))
(let ((anon11_Then$1_correct@@2  (=> (= $t7@1@@1 $t7@@2) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 182314) 182262) anon12_Then_correct@@2) (=> (= (ControlFlow 0 182314) 182248) anon12_Else_correct@@2))))))
(let ((anon11_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@6)) (= (ControlFlow 0 182312) 182314)) anon11_Then$1_correct@@2)))
(let ((anon11_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@6) (=> (and (and (= $t7@0@@1 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@6)) (= $t7@1@@1 $t7@0@@1)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 182056) 182262) anon12_Then_correct@@2) (=> (= (ControlFlow 0 182056) 182248) anon12_Else_correct@@2))))))
(let ((anon10_Then_correct@@2  (=> $t3@0@@1 (and (=> (= (ControlFlow 0 182042) 182312) anon11_Then_correct@@2) (=> (= (ControlFlow 0 182042) 182056) anon11_Else_correct@@2)))))
(let ((anon10_Else_correct@@2  (=> (and (and (not $t3@0@@1) (= $t5@@2 $t5@@2)) (and (= $t6@0@@2 $t5@@2) (= (ControlFlow 0 182006) 182038))) L3_correct@@2)))
(let ((anon0$1_correct@@6  (=> (and (forall ((addr1@@41 Int) ) (!  (=> (|$IsValid'address'| addr1@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@41) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@41)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@41)) 2)))))
 :qid |DualAttestationandybpl.11894:20|
 :skolemid |208|
)) (|$IsValid'address'| _$t0@@6)) (=> (and (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@14)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@14))
 :qid |DualAttestationandybpl.11901:20|
 :skolemid |209|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@14))
)) (= _$t0@@6 _$t0@@6)) (and (= $t3@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@6)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@2) (= $t5@@2 5)) (and (= $t5@@2 $t5@@2) (= $t3@0@@1 $t3@0@@1)))) (and (=> (= (ControlFlow 0 181990) 182042) anon10_Then_correct@@2) (=> (= (ControlFlow 0 181990) 182006) anon10_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_75556| stream@@7) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@7) v@@45) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 181869) 181990)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 246009) 181869) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t4@@0 () Bool)
(declare-fun _$t0@@7 () Int)
(declare-fun $t5@@3 () Int)
(declare-fun $t1@0 () Int)
(declare-fun $t3@@0 () Int)
(declare-fun $t2 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_credential_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 246506) (let ((anon7_Then_correct  (=> $t4@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@7)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@7))) (= 7 $t5@@3)) (and (= $t5@@3 $t5@@3) (= (ControlFlow 0 182829) (- 0 246732)))) false))))
(let ((L3_correct@@3  (=> (= $t1@0 $t1@0) (and (=> (= (ControlFlow 0 182727) (- 0 246789)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 182727) (- 0 246796)) (= $t1@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@7) _$t0@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@7))) _$t0@@7))) (=> (= $t1@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@7) _$t0@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@7))) _$t0@@7)) (and (=> (= (ControlFlow 0 182727) (- 0 246809)) (forall ((addr1@@42 Int) ) (!  (=> (|$IsValid'address'| addr1@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@42) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@42)))
 :qid |DualAttestationandybpl.12191:15|
 :skolemid |217|
))) (=> (forall ((addr1@@43 Int) ) (!  (=> (|$IsValid'address'| addr1@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@43) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@43)))
 :qid |DualAttestationandybpl.12191:15|
 :skolemid |217|
)) (and (=> (= (ControlFlow 0 182727) (- 0 246834)) (forall ((addr1@@44 Int) ) (!  (=> (|$IsValid'address'| addr1@@44) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@44)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@44))))
 :qid |DualAttestationandybpl.12196:15|
 :skolemid |218|
))) (=> (forall ((addr1@@45 Int) ) (!  (=> (|$IsValid'address'| addr1@@45) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@45)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@45))))
 :qid |DualAttestationandybpl.12196:15|
 :skolemid |218|
)) (and (=> (= (ControlFlow 0 182727) (- 0 246863)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 182727) (- 0 246880)) (forall ((addr1@@46 Int) ) (!  (=> (|$IsValid'address'| addr1@@46) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@46) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@46)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@46)))))
 :qid |DualAttestationandybpl.12206:15|
 :skolemid |219|
))) (=> (forall ((addr1@@47 Int) ) (!  (=> (|$IsValid'address'| addr1@@47) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@47) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@47)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@47)))))
 :qid |DualAttestationandybpl.12206:15|
 :skolemid |219|
)) (=> (= (ControlFlow 0 182727) (- 0 246916)) (forall ((addr1@@48 Int) ) (!  (=> (|$IsValid'address'| addr1@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@48) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@48)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@48)))))
 :qid |DualAttestationandybpl.12211:15|
 :skolemid |220|
))))))))))))))))))
(let ((anon7_Else_correct  (=> (and (not $t4@@0) (|$IsValid'address'| $t3@@0)) (=> (and (and (= $t3@@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@7) _$t0@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@7)))) (= $t3@@0 $t3@@0)) (and (= $t1@0 $t3@@0) (= (ControlFlow 0 182783) 182727))) L3_correct@@3))))
(let ((anon6_Then_correct  (=> (and $t2 (= $t4@@0  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@7)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@7))))) (and (=> (= (ControlFlow 0 182753) 182829) anon7_Then_correct) (=> (= (ControlFlow 0 182753) 182783) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (and (not $t2) (= _$t0@@7 _$t0@@7)) (and (= $t1@0 _$t0@@7) (= (ControlFlow 0 182549) 182727))) L3_correct@@3)))
(let ((anon0$1_correct@@7  (=> (and (forall ((child_addr@@1 Int) ) (!  (=> (|$IsValid'address'| child_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) child_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) child_addr@@1)))))
 :qid |DualAttestationandybpl.12065:20|
 :skolemid |214|
)) (|$IsValid'address'| _$t0@@7)) (=> (and (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) $a_0@@15)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@15))
 :qid |DualAttestationandybpl.12072:20|
 :skolemid |215|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) $a_0@@15))
)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_128718| $1_VASP_ParentVASP_$memory) $a_0@@16)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@16))
 :qid |DualAttestationandybpl.12076:20|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_128718| $1_VASP_ParentVASP_$memory) $a_0@@16))
))) (and (= _$t0@@7 _$t0@@7) (= $t2 (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@7)))) (and (=> (= (ControlFlow 0 182535) 182753) anon6_Then_correct) (=> (= (ControlFlow 0 182535) 182549) anon6_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_75556| stream@@8) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@8) v@@46) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 182414) 182535)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 246506) 182414) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7)))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t3@2 () (Seq Int))
(declare-fun |inline$$1_Vector_append'u8'$2$m'@1| () T@$Mutation_93649)
(declare-fun $t9@0 () T@$Mutation_93649)
(declare-fun $t10@0@@0 () (Seq Int))
(declare-fun $t3@1 () (Seq Int))
(declare-fun |inline$$1_Vector_append'u8'$1$m'@1| () T@$Mutation_93649)
(declare-fun $t7@0@@2 () T@$Mutation_93649)
(declare-fun call1formal@res@0 () (Seq Int))
(declare-fun $t3@0@@2 () (Seq Int))
(declare-fun |inline$$1_Vector_append'u8'$0$m'@1| () T@$Mutation_93649)
(declare-fun _$t2@@2 () Int)
(declare-fun $t4@0 () T@$Mutation_93649)
(declare-fun call1formal@res@0@@0 () (Seq Int))
(declare-fun _$t0@@8 () Int)
(declare-fun _$t1@@3 () (Seq Int))
(declare-fun $t4@@1 () T@$Mutation_93649)
(declare-fun $t7@@3 () T@$Mutation_93649)
(declare-fun $t9@@2 () T@$Mutation_93649)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_dual_attestation_message$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 246963) (let ((anon16_Else_correct@@0  (=> (not false) (=> (and (= $t3@2 (|v#$Mutation_93649| |inline$$1_Vector_append'u8'$2$m'@1|)) (= $t3@2 $t3@2)) (and (=> (= (ControlFlow 0 183483) (- 0 247502)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 183483) (- 0 247509)) (forall ((addr1@@49 Int) ) (!  (=> (|$IsValid'address'| addr1@@49) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@49) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@49)))
 :qid |DualAttestationandybpl.12386:15|
 :skolemid |221|
))) (=> (forall ((addr1@@50 Int) ) (!  (=> (|$IsValid'address'| addr1@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@50) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@50)))
 :qid |DualAttestationandybpl.12386:15|
 :skolemid |221|
)) (and (=> (= (ControlFlow 0 183483) (- 0 247534)) (forall ((addr1@@51 Int) ) (!  (=> (|$IsValid'address'| addr1@@51) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@51)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@51))))
 :qid |DualAttestationandybpl.12391:15|
 :skolemid |222|
))) (=> (forall ((addr1@@52 Int) ) (!  (=> (|$IsValid'address'| addr1@@52) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@52)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@52))))
 :qid |DualAttestationandybpl.12391:15|
 :skolemid |222|
)) (and (=> (= (ControlFlow 0 183483) (- 0 247563)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 183483) (- 0 247580)) (forall ((addr1@@53 Int) ) (!  (=> (|$IsValid'address'| addr1@@53) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@53) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@53)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@53)))))
 :qid |DualAttestationandybpl.12401:15|
 :skolemid |223|
))) (=> (forall ((addr1@@54 Int) ) (!  (=> (|$IsValid'address'| addr1@@54) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@54) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@54)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@54)))))
 :qid |DualAttestationandybpl.12401:15|
 :skolemid |223|
)) (=> (= (ControlFlow 0 183483) (- 0 247616)) (forall ((addr1@@55 Int) ) (!  (=> (|$IsValid'address'| addr1@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@55) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@55)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@55)))))
 :qid |DualAttestationandybpl.12406:15|
 :skolemid |224|
)))))))))))))))))
(let ((anon16_Then_correct@@0 true))
(let ((|inline$$1_Vector_append'u8'$2$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$2$m'@1| ($Mutation_93649 (|l#$Mutation_93649| $t9@0) (|p#$Mutation_93649| $t9@0) (seq.++ (|v#$Mutation_93649| $t9@0) $t10@0@@0))) (and (=> (= (ControlFlow 0 183299) 183497) anon16_Then_correct@@0) (=> (= (ControlFlow 0 183299) 183483) anon16_Else_correct@@0)))))
(let ((anon15_Else_correct@@0  (=> (and (not false) (= $t3@1 (|v#$Mutation_93649| |inline$$1_Vector_append'u8'$1$m'@1|))) (=> (and (and (= $t9@0 ($Mutation_93649 ($Local 3) (as seq.empty (Seq Int)) $t3@1)) (= $t10@0@@0 (seq.++ (seq.++ (seq.++ (seq.++ (seq.++ (seq.++ (seq.++ (seq.unit 64) (seq.unit 64)) (seq.unit 36)) (seq.unit 36)) (seq.++ (seq.++ (seq.++ (seq.unit 68) (seq.unit 73)) (seq.unit 69)) (seq.unit 77))) (seq.++ (seq.++ (seq.++ (seq.unit 95) (seq.unit 65)) (seq.unit 84)) (seq.unit 84))) (seq.++ (seq.++ (seq.++ (seq.unit 69) (seq.unit 83)) (seq.unit 84)) (seq.unit 36))) (seq.++ (seq.++ (seq.unit 36) (seq.unit 64)) (seq.unit 64))))) (and (|$IsValid'vec'u8''| $t10@0@@0) (= (ControlFlow 0 183305) 183299))) |inline$$1_Vector_append'u8'$2$anon0_correct|))))
(let ((anon15_Then_correct@@0 true))
(let ((|inline$$1_Vector_append'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$1$m'@1| ($Mutation_93649 (|l#$Mutation_93649| $t7@0@@2) (|p#$Mutation_93649| $t7@0@@2) (seq.++ (|v#$Mutation_93649| $t7@0@@2) call1formal@res@0))) (and (=> (= (ControlFlow 0 183158) 183521) anon15_Then_correct@@0) (=> (= (ControlFlow 0 183158) 183305) anon15_Else_correct@@0)))))
(let ((anon14_Else_correct@@0  (=> (and (not false) (= (ControlFlow 0 183164) 183158)) |inline$$1_Vector_append'u8'$1$anon0_correct|)))
(let ((anon14_Then_correct@@0 true))
(let ((anon13_Else_correct  (=> (and (and (not false) (= $t3@0@@2 (|v#$Mutation_93649| |inline$$1_Vector_append'u8'$0$m'@1|))) (and (= $t7@0@@2 ($Mutation_93649 ($Local 3) (as seq.empty (Seq Int)) $t3@0@@2)) (= call1formal@res@0 (|$1_BCS_serialize'u64'| _$t2@@2)))) (and (=> (= (ControlFlow 0 183101) 183535) anon14_Then_correct@@0) (=> (= (ControlFlow 0 183101) 183164) anon14_Else_correct@@0)))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_append'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$0$m'@1| ($Mutation_93649 (|l#$Mutation_93649| $t4@0) (|p#$Mutation_93649| $t4@0) (seq.++ (|v#$Mutation_93649| $t4@0) call1formal@res@0@@0))) (and (=> (= (ControlFlow 0 183071) 183549) anon13_Then_correct) (=> (= (ControlFlow 0 183071) 183101) anon13_Else_correct)))))
(let ((anon12_Else_correct@@3  (=> (and (not false) (= (ControlFlow 0 183077) 183071)) |inline$$1_Vector_append'u8'$0$anon0_correct|)))
(let ((anon12_Then_correct@@3 true))
(let ((anon0$1_correct@@8  (=> (|$IsValid'address'| _$t0@@8) (=> (and (and (and (|$IsValid'vec'u8''| _$t1@@3) (|$IsValid'u64'| _$t2@@2)) (and (= _$t0@@8 _$t0@@8) (= _$t1@@3 _$t1@@3))) (and (and (= _$t2@@2 _$t2@@2) (= _$t1@@3 _$t1@@3)) (and (= $t4@0 ($Mutation_93649 ($Local 3) (as seq.empty (Seq Int)) _$t1@@3)) (= call1formal@res@0@@0 (|$1_BCS_serialize'address'| _$t0@@8))))) (and (=> (= (ControlFlow 0 183014) 183563) anon12_Then_correct@@3) (=> (= (ControlFlow 0 183014) 183077) anon12_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_75556| stream@@9) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@9) v@@47) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 182944) 183014)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (and (and (= (seq.len (|p#$Mutation_93649| $t4@@1)) 0) (= (seq.len (|p#$Mutation_93649| $t7@@3)) 0)) (and (= (seq.len (|p#$Mutation_93649| $t9@@2)) 0) (= (ControlFlow 0 182954) 182944))) inline$$InitEventStore$0$anon0_correct@@8)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 246963) 182954) anon0_correct@@8)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t8@@1 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t2@@3 () Int)
(declare-fun $t11@@1 () Int)
(declare-fun $t27 () Bool)
(declare-fun _$t1@@4 () Int)
(declare-fun $t25@@0 () Bool)
(declare-fun _$t0@@9 () Int)
(declare-fun $t14@@2 () Bool)
(declare-fun $t12@@1 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun $t10@@0 () Bool)
(declare-fun $t18@0@@0 () Bool)
(declare-fun $t6@0@@3 () Bool)
(declare-fun $t26 () Int)
(declare-fun $t28@0 () Bool)
(declare-fun $t24@@1 () Int)
(declare-fun $t5@0@@0 () Bool)
(declare-fun $t21@@0 () Bool)
(declare-fun $t22@@0 () Bool)
(declare-fun $t19@0@@0 () Bool)
(declare-fun inline$$Not$0$dst@1@@3 () Bool)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun $t13@@0 () Int)
(declare-fun $t9@@3 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_dual_attestation_required$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 247677) (let ((L15_correct  (and (=> (= (ControlFlow 0 184511) (- 0 248571)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 1) _$t2@@3 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 2) (div _$t2@@3 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 1) _$t2@@3 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 2) (div _$t2@@3 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 184511) (- 0 248594)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t11@@1))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 1) _$t2@@3 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 2) (div _$t2@@3 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@1))))))))
(let ((anon30_Then_correct@@2  (=> $t27 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@4))) (= 7 $t11@@1)) (and (= $t11@@1 $t11@@1) (= (ControlFlow 0 184427) 184511))) L15_correct))))
(let ((anon29_Then_correct@@2  (=> $t25@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@9)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@9))) (= 7 $t11@@1)) (and (= $t11@@1 $t11@@1) (= (ControlFlow 0 184549) 184511))) L15_correct))))
(let ((anon24_Then_correct@@0  (=> (and (and $t14@@2 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t11@@1)) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@1) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@1) 1) _$t2@@3 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@1) 2) (div _$t2@@3 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@1)))) (and (= $t11@@1 $t11@@1) (= (ControlFlow 0 184659) 184511))) L15_correct)))
(let ((anon23_Then_correct  (=> $t10@@0 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@1)) (and (= $t11@@1 $t11@@1) (= (ControlFlow 0 184685) 184511))) L15_correct))))
(let ((L14_correct  (and (=> (= (ControlFlow 0 184279) (- 0 248516)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 184279) (- 0 248526)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 184279) (- 0 248536)) (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 1) _$t2@@3 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 2) (div _$t2@@3 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 1) _$t2@@3 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@1) 2) (div _$t2@@3 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 184279) (- 0 248550)) (= $t18@0@@0  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@3 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@3 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@9 _$t1@@4))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@9)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@4))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@9) _$t0@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@9))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@4) _$t1@@4 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@4)))))))))))))))))
(let ((L13_correct  (=> (= $t6@0@@3 $t6@0@@3) (=> (and (= $t18@0@@0 $t6@0@@3) (= (ControlFlow 0 184219) 184279)) L14_correct))))
(let ((anon30_Else_correct@@2  (=> (not $t27) (=> (and (|$IsValid'address'| $t26) (= $t26 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@4) _$t1@@4 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@4))))) (=> (and (and (= $t28@0  (not (= $t24@@1 $t26))) (= $t28@0 $t28@0)) (and (= $t6@0@@3 $t28@0) (= (ControlFlow 0 184389) 184219))) L13_correct)))))
(let ((anon29_Else_correct@@2  (=> (and (and (not $t25@@0) (|$IsValid'address'| $t24@@1)) (and (= $t24@@1 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@9) _$t0@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@9)))) (= $t27  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@4)))))) (and (=> (= (ControlFlow 0 184349) 184427) anon30_Then_correct@@2) (=> (= (ControlFlow 0 184349) 184389) anon30_Else_correct@@2)))))
(let ((anon28_Then_correct@@1  (=> (and $t5@0@@0 (= $t25@@0  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@9)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@9))))) (and (=> (= (ControlFlow 0 184305) 184549) anon29_Then_correct@@2) (=> (= (ControlFlow 0 184305) 184349) anon29_Else_correct@@2)))))
(let ((anon28_Else_correct@@1  (=> (and (and (not $t5@0@@0) (= false false)) (and (= $t6@0@@3 false) (= (ControlFlow 0 184207) 184219))) L13_correct)))
(let ((anon27_Else_correct@@1  (=> (not $t21@@0) (=> (and (= false false) (= $t5@0@@0 false)) (and (=> (= (ControlFlow 0 184185) 184305) anon28_Then_correct@@1) (=> (= (ControlFlow 0 184185) 184207) anon28_Else_correct@@1))))))
(let ((anon27_Then_correct@@1  (=> (and (and $t21@@0 (= $t22@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t1@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t1@@4)))) (and (= $t22@@0 $t22@@0) (= $t5@0@@0 $t22@@0))) (and (=> (= (ControlFlow 0 184577) 184305) anon28_Then_correct@@1) (=> (= (ControlFlow 0 184577) 184207) anon28_Else_correct@@1)))))
(let ((anon26_Else_correct@@1  (=> (and (not $t19@0@@0) (= $t21@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) _$t0@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) _$t0@@9)))) (and (=> (= (ControlFlow 0 184165) 184577) anon27_Then_correct@@1) (=> (= (ControlFlow 0 184165) 184185) anon27_Else_correct@@1)))))
(let ((anon26_Then_correct@@1  (=> (and (and $t19@0@@0 (= false false)) (and (= $t18@0@@0 false) (= (ControlFlow 0 184595) 184279))) L14_correct)))
(let ((anon25_Else_correct@@0  (=> (and (not inline$$Not$0$dst@1@@3) (= $t19@0@@0 (= _$t0@@9 _$t1@@4))) (and (=> (= (ControlFlow 0 184143) 184595) anon26_Then_correct@@1) (=> (= (ControlFlow 0 184143) 184165) anon26_Else_correct@@1)))))
(let ((anon25_Then_correct@@0  (=> (and (and inline$$Not$0$dst@1@@3 (= false false)) (and (= $t18@0@@0 false) (= (ControlFlow 0 184613) 184279))) L14_correct)))
(let ((inline$$Not$0$anon0_correct@@3  (=> (= inline$$Not$0$dst@1@@3  (not inline$$Ge$0$dst@1)) (and (=> (= (ControlFlow 0 184123) 184613) anon25_Then_correct@@0) (=> (= (ControlFlow 0 184123) 184143) anon25_Else_correct@@0)))))
(let ((anon24_Else$1_correct  (=> (and (= inline$$Ge$0$dst@1 inline$$Ge$0$dst@1) (= (ControlFlow 0 184129) 184123)) inline$$Not$0$anon0_correct@@3)))
(let ((inline$$Ge$0$anon0_correct  (=> (and (= inline$$Ge$0$dst@1 (>= $t13@@0 $t9@@3)) (= (ControlFlow 0 184077) 184129)) anon24_Else$1_correct)))
(let ((anon24_Else_correct@@0  (=> (not $t14@@2) (=> (and (and (|$IsValid'u64'| $t13@@0) (= $t13@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@3 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@3 2) (+ 18446744073709551615 1)))))) (and (= $t13@@0 $t13@@0) (= (ControlFlow 0 184083) 184077))) inline$$Ge$0$anon0_correct))))
(let ((anon23_Else_correct  (=> (and (not $t10@@0) (|$IsValid'u64'| $t9@@3)) (=> (and (and (= $t9@@3 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (= $t9@@3 $t9@@3)) (and (= $t12@@1 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t14@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@1) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@1) 1) _$t2@@3 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@1) 2) (div _$t2@@3 2) (+ 18446744073709551615 1)))) 18446744073709551615))))) (and (=> (= (ControlFlow 0 184009) 184659) anon24_Then_correct@@0) (=> (= (ControlFlow 0 184009) 184083) anon24_Else_correct@@0))))))
(let ((anon0$1_correct@@9  (=> (and (forall ((child_addr@@2 Int) ) (!  (=> (|$IsValid'address'| child_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128654| $1_VASP_ChildVASP_$memory) child_addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_128718| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) child_addr@@2)))))
 :qid |DualAttestationandybpl.12478:20|
 :skolemid |225|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (=> (and (and (|$IsValid'address'| _$t0@@9) (|$IsValid'address'| _$t1@@4)) (and (|$IsValid'u64'| _$t2@@3) (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@17)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@17) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@17)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@17) 10000000000))))
 :qid |DualAttestationandybpl.12495:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@17))
)))) (=> (and (and (and (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) $a_0@@18)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@18))
 :qid |DualAttestationandybpl.12499:20|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_128654| $1_VASP_ChildVASP_$memory) $a_0@@18))
)) (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_128718| $1_VASP_ParentVASP_$memory) $a_0@@19)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@19))
 :qid |DualAttestationandybpl.12503:20|
 :skolemid |228|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_128718| $1_VASP_ParentVASP_$memory) $a_0@@19))
))) (and (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) $a_0@@20)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@20))
 :qid |DualAttestationandybpl.12507:20|
 :skolemid |229|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) $a_0@@20))
)) (= $t8@@1 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_112142| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (and (= _$t0@@9 _$t0@@9) (= _$t1@@4 _$t1@@4)) (and (= _$t2@@3 _$t2@@3) (= $t10@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 183949) 184685) anon23_Then_correct) (=> (= (ControlFlow 0 183949) 184009) anon23_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_75556| stream@@10) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@10) v@@48) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 183728) 183949)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 247677) 183728) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t8@0@@4 () Int)
(declare-fun $t7@1@@2 () T@$1_DualAttestation_Credential)
(declare-fun _$t0@@10 () Int)
(declare-fun $t6@0@@4 () Int)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $t7@@4 () T@$1_DualAttestation_Credential)
(declare-fun $t7@0@@3 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t3@0@@3 () Bool)
(declare-fun $t5@@4 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_expiration_date$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 248656) (let ((anon12_Else_correct@@4  (=> (not $abort_flag@0@@5) (=> (and (= $t8@0@@4 (|$expiration_date#$1_DualAttestation_Credential| $t7@1@@2)) (= $t8@0@@4 $t8@0@@4)) (and (=> (= (ControlFlow 0 185192) (- 0 248980)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@10)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@10))) (and (=> (= (ControlFlow 0 185192) (- 0 248991)) (= $t8@0@@4 (|$expiration_date#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@10)))) (=> (= $t8@0@@4 (|$expiration_date#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@10))) (and (=> (= (ControlFlow 0 185192) (- 0 249004)) (forall ((addr1@@56 Int) ) (!  (=> (|$IsValid'address'| addr1@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@56) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@56)))
 :qid |DualAttestationandybpl.13046:15|
 :skolemid |232|
))) (=> (forall ((addr1@@57 Int) ) (!  (=> (|$IsValid'address'| addr1@@57) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@57) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@57)))
 :qid |DualAttestationandybpl.13046:15|
 :skolemid |232|
)) (and (=> (= (ControlFlow 0 185192) (- 0 249029)) (forall ((addr1@@58 Int) ) (!  (=> (|$IsValid'address'| addr1@@58) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@58)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@58))))
 :qid |DualAttestationandybpl.13051:15|
 :skolemid |233|
))) (=> (forall ((addr1@@59 Int) ) (!  (=> (|$IsValid'address'| addr1@@59) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@59)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@59))))
 :qid |DualAttestationandybpl.13051:15|
 :skolemid |233|
)) (and (=> (= (ControlFlow 0 185192) (- 0 249058)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 185192) (- 0 249075)) (forall ((addr1@@60 Int) ) (!  (=> (|$IsValid'address'| addr1@@60) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@60) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@60)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@60)))))
 :qid |DualAttestationandybpl.13061:15|
 :skolemid |234|
))) (=> (forall ((addr1@@61 Int) ) (!  (=> (|$IsValid'address'| addr1@@61) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@61) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@61)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@61)))))
 :qid |DualAttestationandybpl.13061:15|
 :skolemid |234|
)) (=> (= (ControlFlow 0 185192) (- 0 249111)) (forall ((addr1@@62 Int) ) (!  (=> (|$IsValid'address'| addr1@@62) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@62) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@62)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@62)))))
 :qid |DualAttestationandybpl.13066:15|
 :skolemid |235|
)))))))))))))))))))
(let ((L3_correct@@4  (and (=> (= (ControlFlow 0 184980) (- 0 248933)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@10))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@10)) (=> (= (ControlFlow 0 184980) (- 0 248939)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@10)) (= 5 $t6@0@@4)))))))
(let ((anon12_Then_correct@@4  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t6@0@@4 $abort_code@1@@5) (= (ControlFlow 0 185206) 184980))) L3_correct@@4)))
(let ((anon11_Then$1_correct@@3  (=> (= $t7@1@@2 $t7@@4) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 185258) 185206) anon12_Then_correct@@4) (=> (= (ControlFlow 0 185258) 185192) anon12_Else_correct@@4))))))
(let ((anon11_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@10)) (= (ControlFlow 0 185256) 185258)) anon11_Then$1_correct@@3)))
(let ((anon11_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@10) (=> (and (and (= $t7@0@@3 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@10)) (= $t7@1@@2 $t7@0@@3)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 184998) 185206) anon12_Then_correct@@4) (=> (= (ControlFlow 0 184998) 185192) anon12_Else_correct@@4))))))
(let ((anon10_Then_correct@@3  (=> $t3@0@@3 (and (=> (= (ControlFlow 0 184984) 185256) anon11_Then_correct@@3) (=> (= (ControlFlow 0 184984) 184998) anon11_Else_correct@@3)))))
(let ((anon10_Else_correct@@3  (=> (and (and (not $t3@0@@3) (= $t5@@4 $t5@@4)) (and (= $t6@0@@4 $t5@@4) (= (ControlFlow 0 184948) 184980))) L3_correct@@4)))
(let ((anon0$1_correct@@10  (=> (and (forall ((addr1@@63 Int) ) (!  (=> (|$IsValid'address'| addr1@@63) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@63) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@63)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@63)) 2)))))
 :qid |DualAttestationandybpl.12943:20|
 :skolemid |230|
)) (|$IsValid'address'| _$t0@@10)) (=> (and (and (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@21)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@21))
 :qid |DualAttestationandybpl.12950:20|
 :skolemid |231|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@21))
)) (= _$t0@@10 _$t0@@10)) (and (= $t3@0@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@10)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@4) (= $t5@@4 5)) (and (= $t5@@4 $t5@@4) (= $t3@0@@3 $t3@0@@3)))) (and (=> (= (ControlFlow 0 184932) 184984) anon10_Then_correct@@3) (=> (= (ControlFlow 0 184932) 184948) anon10_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_75556| stream@@11) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@11) v@@49) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 184811) 184932)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 248656) 184811) inline$$InitEventStore$0$anon0_correct@@10)))
anon0_correct@@10))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $t9@0@@0 () Int)
(declare-fun $t8@1 () T@$1_DualAttestation_Limit)
(declare-fun $t3@0@@4 () Int)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $t8@@2 () T@$1_DualAttestation_Limit)
(declare-fun $t8@0@@5 () T@$1_DualAttestation_Limit)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun $t4@0@@0 () Bool)
(declare-fun $t6@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_get_cur_microdiem_limit$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 249154) (let ((anon18_Else_correct@@0  (=> (not $abort_flag@0@@6) (=> (and (= $t9@0@@0 (|$micro_xdx_limit#$1_DualAttestation_Limit| $t8@1)) (= $t9@0@@0 $t9@0@@0)) (and (=> (= (ControlFlow 0 185841) (- 0 249546)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 185841) (- 0 249556)) (= $t9@0@@0 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (= $t9@0@@0 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 185841) (- 0 249566)) (forall ((addr1@@64 Int) ) (!  (=> (|$IsValid'address'| addr1@@64) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@64) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@64)))
 :qid |DualAttestationandybpl.13233:15|
 :skolemid |237|
))) (=> (forall ((addr1@@65 Int) ) (!  (=> (|$IsValid'address'| addr1@@65) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@65) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@65)))
 :qid |DualAttestationandybpl.13233:15|
 :skolemid |237|
)) (and (=> (= (ControlFlow 0 185841) (- 0 249591)) (forall ((addr1@@66 Int) ) (!  (=> (|$IsValid'address'| addr1@@66) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@66)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@66))))
 :qid |DualAttestationandybpl.13238:15|
 :skolemid |238|
))) (=> (forall ((addr1@@67 Int) ) (!  (=> (|$IsValid'address'| addr1@@67) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@67)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@67))))
 :qid |DualAttestationandybpl.13238:15|
 :skolemid |238|
)) (and (=> (= (ControlFlow 0 185841) (- 0 249620)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 185841) (- 0 249637)) (forall ((addr1@@68 Int) ) (!  (=> (|$IsValid'address'| addr1@@68) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@68) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@68)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@68)))))
 :qid |DualAttestationandybpl.13248:15|
 :skolemid |239|
))) (=> (forall ((addr1@@69 Int) ) (!  (=> (|$IsValid'address'| addr1@@69) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@69) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@69)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@69)))))
 :qid |DualAttestationandybpl.13248:15|
 :skolemid |239|
)) (=> (= (ControlFlow 0 185841) (- 0 249673)) (forall ((addr1@@70 Int) ) (!  (=> (|$IsValid'address'| addr1@@70) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@70) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@70)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@70)))))
 :qid |DualAttestationandybpl.13253:15|
 :skolemid |240|
)))))))))))))))))))
(let ((anon16_Then_correct@@1 true))
(let ((L3_correct@@5  (and (=> (= (ControlFlow 0 185558) (- 0 249501)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (=> (= (ControlFlow 0 185558) (- 0 249506)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t3@0@@4)))))))
(let ((anon18_Then_correct@@0  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t3@0@@4 $abort_code@1@@6) (= (ControlFlow 0 185855) 185558))) L3_correct@@5)))
(let ((anon17_Then$1_correct  (=> (= $t8@1 $t8@@2) (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 185907) 185855) anon18_Then_correct@@0) (=> (= (ControlFlow 0 185907) 185841) anon18_Else_correct@@0))))))
(let ((anon17_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (= (ControlFlow 0 185905) 185907)) anon17_Then$1_correct)))
(let ((anon17_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (=> (and (and (= $t8@0@@5 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (= $t8@1 $t8@0@@5)) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 185653) 185855) anon18_Then_correct@@0) (=> (= (ControlFlow 0 185653) 185841) anon18_Else_correct@@0))))))
(let ((anon16_Else_correct@@1  (=> (not false) (and (=> (= (ControlFlow 0 185639) 185905) anon17_Then_correct@@0) (=> (= (ControlFlow 0 185639) 185653) anon17_Else_correct@@0)))))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 185625) 185921) anon16_Then_correct@@1) (=> (= (ControlFlow 0 185625) 185639) anon16_Else_correct@@1)))))
(let ((anon15_Then_correct@@1  (=> (and $t4@0@@0 (= (ControlFlow 0 185631) 185625)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct)))
(let ((anon15_Else_correct@@1  (=> (and (and (not $t4@0@@0) (= $t6@@1 $t6@@1)) (and (= $t3@0@@4 $t6@@1) (= (ControlFlow 0 185530) 185558))) L3_correct@@5)))
(let ((anon14_Else_correct@@1  (=> (not false) (=> (and (= $t4@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t6@@1) (= $t6@@1 5)) (and (= $t6@@1 $t6@@1) (= $t4@0@@0 $t4@0@@0))) (and (=> (= (ControlFlow 0 185514) 185631) anon15_Then_correct@@1) (=> (= (ControlFlow 0 185514) 185530) anon15_Else_correct@@1)))))))
(let ((anon14_Then_correct@@1 true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@1  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 185466) 185935) anon14_Then_correct@@1) (=> (= (ControlFlow 0 185466) 185514) anon14_Else_correct@@1)))))
(let ((anon0$1_correct@@11  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (=> (and (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) $a_0@@22)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@22))
 :qid |DualAttestationandybpl.13122:20|
 :skolemid |236|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) $a_0@@22))
)) (= (ControlFlow 0 185472) 185466)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@1))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_75556| stream@@12) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@12) v@@50) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 185347) 185472)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (= (ControlFlow 0 249154) 185347) inline$$InitEventStore$0$anon0_correct@@11)))
anon0_correct@@11))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@1 () T@$Memory_107323)
(declare-fun $t5@@5 () Int)
(declare-fun $t6@@2 () Int)
(declare-fun $t7@@5 () Int)
(declare-fun _$t1@@5 () Int)
(declare-fun _$t0@@11 () Int)
(declare-fun $t8@@3 () Int)
(declare-fun $t9@@4 () Int)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $1_DualAttestation_Credential_$memory@0 () T@$Memory_107323)
(declare-fun |Store__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int T@$1_DualAttestation_Credential) |T@[Int]$1_DualAttestation_Credential|)
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DualAttestation_Credential_| ?x0 ?y1))) :weight 0)))
(declare-fun $t26@0 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun _$t2@@4 () (Seq Int))
(declare-fun |inline$$1_Vector_empty'u8'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_empty'u8'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$Not$0$dst@1@@4 () Bool)
(declare-fun $t20@@0 () Int)
(declare-fun $t17@0@@1 () Bool)
(declare-fun $t15 () Bool)
(declare-fun $t16 () Int)
(declare-fun $t14@@3 () Int)
(declare-fun $t13@@1 () Int)
(declare-fun $t12@@2 () Bool)
(declare-fun $t10@@1 () Int)
(declare-fun $t11@@2 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_117155)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_117242)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_112435)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_112522)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_117733)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_117415)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_117832)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_117506)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_publish_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 249720) (let ((anon30_Else_correct@@3  (=> (not $abort_flag@0@@7) (and (=> (= (ControlFlow 0 187458) (- 0 251061)) (forall ((addr1@@71 Int) ) (!  (=> (|$IsValid'address'| addr1@@71) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@1) addr1@@71) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@71)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@71)) 2)))))
 :qid |DualAttestationandybpl.13609:15|
 :skolemid |250|
))) (=> (forall ((addr1@@72 Int) ) (!  (=> (|$IsValid'address'| addr1@@72) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@1) addr1@@72) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@72)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@72)) 2)))))
 :qid |DualAttestationandybpl.13609:15|
 :skolemid |250|
)) (and (=> (= (ControlFlow 0 187458) (- 0 251097)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t5@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t5@@5))) (and (=> (= (ControlFlow 0 187458) (- 0 251109)) (not (and (not (= $t6@@2 5)) (not (= $t6@@2 2))))) (=> (not (and (not (= $t6@@2 5)) (not (= $t6@@2 2)))) (and (=> (= (ControlFlow 0 187458) (- 0 251132)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t7@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t7@@5))) (and (=> (= (ControlFlow 0 187458) (- 0 251144)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t7@@5)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t7@@5)) 1))) (and (=> (= (ControlFlow 0 187458) (- 0 251162)) (not (not (= _$t1@@5 186537453)))) (=> (not (not (= _$t1@@5 186537453))) (and (=> (= (ControlFlow 0 187458) (- 0 251176)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@11))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@11)) (and (=> (= (ControlFlow 0 187458) (- 0 251187)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t8@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t8@@3))) (and (=> (= (ControlFlow 0 187458) (- 0 251199)) (not (and (not (= $t9@@4 5)) (not (= $t9@@4 2))))) (=> (not (and (not (= $t9@@4 5)) (not (= $t9@@4 2)))) (and (=> (= (ControlFlow 0 187458) (- 0 251222)) (forall ((addr1@@73 Int) ) (!  (=> (|$IsValid'address'| addr1@@73) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@73) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@1) addr1@@73)))
 :qid |DualAttestationandybpl.13658:15|
 :skolemid |251|
))) (=> (forall ((addr1@@74 Int) ) (!  (=> (|$IsValid'address'| addr1@@74) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@74) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@1) addr1@@74)))
 :qid |DualAttestationandybpl.13658:15|
 :skolemid |251|
)) (and (=> (= (ControlFlow 0 187458) (- 0 251246)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 187458) (- 0 251263)) (forall ((addr1@@75 Int) ) (!  (=> (|$IsValid'address'| addr1@@75) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@75) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@1) addr1@@75)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@75)))))
 :qid |DualAttestationandybpl.13668:15|
 :skolemid |252|
))) (=> (forall ((addr1@@76 Int) ) (!  (=> (|$IsValid'address'| addr1@@76) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@76) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@1) addr1@@76)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@76)))))
 :qid |DualAttestationandybpl.13668:15|
 :skolemid |252|
)) (=> (= (ControlFlow 0 187458) (- 0 251298)) (forall ((addr1@@77 Int) ) (!  (=> (|$IsValid'address'| addr1@@77) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@77) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@1) addr1@@77)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@77)))))
 :qid |DualAttestationandybpl.13673:15|
 :skolemid |253|
))))))))))))))))))))))))))))))
(let ((anon28_Then_correct@@2 true))
(let ((anon27_Then_correct@@2 true))
(let ((anon26_Then_correct@@2 true))
(let ((anon25_Then_correct@@1 true))
(let ((L3_correct@@6  (and (=> (= (ControlFlow 0 186892) (- 0 250796)) (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t5@@5)) (and (not (= $t6@@2 5)) (not (= $t6@@2 2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t7@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t7@@5)) 1))) (not (= _$t1@@5 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t8@@3))) (and (not (= $t9@@4 5)) (not (= $t9@@4 2))))) (=> (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t5@@5)) (and (not (= $t6@@2 5)) (not (= $t6@@2 2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t7@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t7@@5)) 1))) (not (= _$t1@@5 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t8@@3))) (and (not (= $t9@@4 5)) (not (= $t9@@4 2)))) (=> (= (ControlFlow 0 186892) (- 0 250895)) (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t5@@5)) (= 5 $t13@0)) (and (and (not (= $t6@@2 5)) (not (= $t6@@2 2))) (= 3 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t7@@5)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t7@@5)) 1)) (= 3 $t13@0))) (and (not (= _$t1@@5 186537453)) (= 2 $t13@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@11) (= 6 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t8@@3)) (= 5 $t13@0))) (and (and (not (= $t9@@4 5)) (not (= $t9@@4 2))) (= 3 $t13@0))))))))
(let ((anon30_Then_correct@@3  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t13@0 $abort_code@1@@7) (= (ControlFlow 0 187472) 186892))) L3_correct@@6)))
(let ((anon29_Then$1_correct  (=> (= $1_DualAttestation_Credential_$memory@1 $1_DualAttestation_Credential_$memory) (=> (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 187522) 187472) anon30_Then_correct@@3) (=> (= (ControlFlow 0 187522) 187458) anon30_Else_correct@@3))))))
(let ((anon29_Then_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@11) (= (ControlFlow 0 187520) 187522)) anon29_Then$1_correct)))
(let ((anon29_Else_correct@@3  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@11)) (=> (and (and (= $1_DualAttestation_Credential_$memory@0 ($Memory_107323 (|Store__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@11 true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) _$t0@@11 $t26@0))) (= $1_DualAttestation_Credential_$memory@1 $1_DualAttestation_Credential_$memory@0)) (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7))) (and (=> (= (ControlFlow 0 187174) 187472) anon30_Then_correct@@3) (=> (= (ControlFlow 0 187174) 187458) anon30_Else_correct@@3))))))
(let ((anon28_Else_correct@@2  (=> (and (not false) (= $t26@0 ($1_DualAttestation_Credential _$t2@@4 |inline$$1_Vector_empty'u8'$0$v@1| |inline$$1_Vector_empty'u8'$1$v@1| 18446744073709551615 |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 187156) 187520) anon29_Then_correct@@3) (=> (= (ControlFlow 0 187156) 187174) anon29_Else_correct@@3)))))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 187126) 187536) anon28_Then_correct@@2) (=> (= (ControlFlow 0 187126) 187156) anon28_Else_correct@@2)))))
(let ((anon27_Else_correct@@2  (=> (and (not false) (= (ControlFlow 0 187132) 187126)) |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 187044) 187550) anon27_Then_correct@@2) (=> (= (ControlFlow 0 187044) 187132) anon27_Else_correct@@2)))))
(let ((anon26_Else_correct@@2  (=> (not false) (=> (and (|$IsValid'u64'| 18446744073709551615) (= (ControlFlow 0 187050) 187044)) |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((|inline$$1_Vector_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 186954) 187564) anon26_Then_correct@@2) (=> (= (ControlFlow 0 186954) 187050) anon26_Else_correct@@2)))))
(let ((anon25_Else_correct@@1  (=> (and (not false) (= (ControlFlow 0 186960) 186954)) |inline$$1_Vector_empty'u8'$1$anon0_correct|)))
(let ((|inline$$1_Vector_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 186918) 187578) anon25_Then_correct@@1) (=> (= (ControlFlow 0 186918) 186960) anon25_Else_correct@@1)))))
(let ((anon24_Then_correct@@1  (=> (and inline$$Not$0$dst@1@@4 (= (ControlFlow 0 186924) 186918)) |inline$$1_Vector_empty'u8'$0$anon0_correct|)))
(let ((anon24_Else_correct@@1  (=> (and (and (not inline$$Not$0$dst@1@@4) (= $t20@@0 $t20@@0)) (and (= $t13@0 $t20@@0) (= (ControlFlow 0 186608) 186892))) L3_correct@@6)))
(let ((anon23_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t20@@0) (= $t20@@0 6)) (and (= $t20@@0 $t20@@0) (= inline$$Not$0$dst@1@@4 inline$$Not$0$dst@1@@4))) (and (=> (= (ControlFlow 0 186592) 186924) anon24_Then_correct@@1) (=> (= (ControlFlow 0 186592) 186608) anon24_Else_correct@@1))))))
(let ((inline$$Not$0$anon0_correct@@4  (=> (and (= inline$$Not$0$dst@1@@4  (not $t17@0@@1)) (= (ControlFlow 0 186552) 186592)) anon23_Else$1_correct)))
(let ((anon23_Else_correct@@0  (=> (not $t15) (=> (and (and (|$IsValid'address'| $t16) (= $t16 _$t0@@11)) (and (= $t17@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t16)) (= (ControlFlow 0 186558) 186552))) inline$$Not$0$anon0_correct@@4))))
(let ((anon23_Then_correct@@0  (=> $t15 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t14@@3)) (= 5 $t13@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t14@@3)) 1)) (= 3 $t13@@1))) (and (not (= _$t1@@5 186537453)) (= 2 $t13@@1))) (= $t13@@1 $t13@@1)) (and (= $t13@0 $t13@@1) (= (ControlFlow 0 187650) 186892))) L3_correct@@6))))
(let ((anon22_Else_correct  (=> (not $t12@@2) (=> (and (= $t14@@3 _$t1@@5) (= $t15  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t14@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t14@@3)) 1))) (not (= _$t1@@5 186537453))))) (and (=> (= (ControlFlow 0 186496) 187650) anon23_Then_correct@@0) (=> (= (ControlFlow 0 186496) 186558) anon23_Else_correct@@0))))))
(let ((anon22_Then_correct  (=> $t12@@2 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t10@@1)) (= 5 $t13@@1)) (and (and (not (= $t11@@2 5)) (not (= $t11@@2 2))) (= 3 $t13@@1))) (= $t13@@1 $t13@@1)) (and (= $t13@0 $t13@@1) (= (ControlFlow 0 187706) 186892))) L3_correct@@6))))
(let ((anon0$1_correct@@12  (=> (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117155| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |DualAttestationandybpl.13328:21|
 :skolemid |241|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117242| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |DualAttestationandybpl.13328:268|
 :skolemid |242|
))) (and (forall ((addr1@@78 Int) ) (!  (=> (|$IsValid'address'| addr1@@78) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112435| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@78) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@78)) 1))))
 :qid |DualAttestationandybpl.13332:21|
 :skolemid |243|
)) (forall ((addr1@@79 Int) ) (!  (=> (|$IsValid'address'| addr1@@79) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112522| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@79) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@79)) 1))))
 :qid |DualAttestationandybpl.13332:231|
 :skolemid |244|
)))) (and (and (forall ((addr1@@80 Int) ) (!  (=> (|$IsValid'address'| addr1@@80) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_117733| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@80) (|Select__T@[Int]Bool_| (|domain#$Memory_117415| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@80)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@80)) 2))))
 :qid |DualAttestationandybpl.13336:21|
 :skolemid |245|
)) (forall ((addr1@@81 Int) ) (!  (=> (|$IsValid'address'| addr1@@81) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_117832| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@81) (|Select__T@[Int]Bool_| (|domain#$Memory_117506| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@81)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@81)) 2))))
 :qid |DualAttestationandybpl.13336:292|
 :skolemid |246|
))) (forall ((addr1@@82 Int) ) (!  (=> (|$IsValid'address'| addr1@@82) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@82) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@82)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@82)) 2)))))
 :qid |DualAttestationandybpl.13344:20|
 :skolemid |247|
)))) (=> (and (and (and (and (|$IsValid'address'| _$t0@@11) (|$IsValid'address'| _$t1@@5)) (and (|$IsValid'vec'u8''| _$t2@@4) (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $a_0@@23)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@23))
 :qid |DualAttestationandybpl.13356:20|
 :skolemid |248|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $a_0@@23))
)))) (and (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@24)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@24))
 :qid |DualAttestationandybpl.13360:20|
 :skolemid |249|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@24))
)) (= $t5@@5 _$t0@@11)) (and (= $t6@@2 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t5@@5))) (= $t7@@5 _$t1@@5)))) (and (and (and (= $t8@@3 _$t0@@11) (= $t9@@4 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t8@@3)))) (and (= _$t0@@11 _$t0@@11) (= _$t1@@5 _$t1@@5))) (and (and (= _$t2@@4 _$t2@@4) (= $t10@@1 _$t0@@11)) (and (= $t11@@2 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t10@@1))) (= $t12@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t10@@1)) (and (not (= $t11@@2 5)) (not (= $t11@@2 2))))))))) (and (=> (= (ControlFlow 0 186436) 187706) anon22_Then_correct) (=> (= (ControlFlow 0 186436) 186496) anon22_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_75556| stream@@13) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@13) v@@51) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 186029) 186436)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (= (ControlFlow 0 249720) 186029) inline$$InitEventStore$0$anon0_correct@@12)))
anon0_correct@@12))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@0@@0 () T@$Memory_107323)
(declare-fun $t16@2 () T@$Mutation_145967)
(declare-fun $t6@@3 () Int)
(declare-fun $t7@@6 () Int)
(declare-fun _$t1@@6 () (Seq Int))
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t9@@5 () T@$1_Event_EventHandle)
(declare-fun $t10@@2 () T@$1_DualAttestation_BaseUrlRotationEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_75556_| (|T@[$1_Event_EventHandle]Multiset_75556| T@$1_Event_EventHandle T@Multiset_75556) |T@[$1_Event_EventHandle]Multiset_75556|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_75556|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_75556)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|Store__T@[$1_Event_EventHandle]Multiset_75556_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_75556|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_75556)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|Store__T@[$1_Event_EventHandle]Multiset_75556_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_75556_| ?x0 ?y1))) :weight 0)))
(declare-fun $t15@0@@0 () Int)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t18@0@@1 () T@$Mutation_98542)
(declare-fun $t21@0 () T@$1_DualAttestation_BaseUrlRotationEvent)
(declare-fun $t20@@1 () Bool)
(declare-fun $t19 () Int)
(declare-fun $t15@@0 () Int)
(declare-fun |$temp_0'$1_DualAttestation_Credential'@0| () T@$1_DualAttestation_Credential)
(declare-fun $t16@1 () T@$Mutation_145967)
(declare-fun $t17@0@@2 () T@$Mutation_93649)
(declare-fun $t17@1 () T@$Mutation_93649)
(declare-fun $t16@@0 () T@$Mutation_145967)
(declare-fun $t11@@3 () Int)
(declare-fun $t16@0 () T@$Mutation_145967)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t14@@4 () Int)
(declare-fun _$t0@@12 () Int)
(declare-fun $t8@@4 () Int)
(declare-fun $t3@@1 () T@$Mutation_145967)
(declare-fun $t17@@0 () T@$Mutation_93649)
(declare-fun $t18 () T@$Mutation_98542)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_rotate_base_url$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 251343) (let ((anon19_Else_correct  (=> (and (not $abort_flag@0@@8) (= $1_DualAttestation_Credential_$memory@0@@0 ($Memory_107323 (|Store__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_145967| $t16@2)) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_145967| $t16@2)) (|v#$Mutation_145967| $t16@2))))) (and (=> (= (ControlFlow 0 188810) (- 0 252153)) (forall ((addr1@@83 Int) ) (!  (=> (|$IsValid'address'| addr1@@83) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) addr1@@83) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@83)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@83)) 2)))))
 :qid |DualAttestationandybpl.13978:15|
 :skolemid |257|
))) (=> (forall ((addr1@@84 Int) ) (!  (=> (|$IsValid'address'| addr1@@84) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) addr1@@84) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@84)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@84)) 2)))))
 :qid |DualAttestationandybpl.13978:15|
 :skolemid |257|
)) (and (=> (= (ControlFlow 0 188810) (- 0 252189)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t6@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t6@@3))) (and (=> (= (ControlFlow 0 188810) (- 0 252201)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 188810) (- 0 252211)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) $t7@@6)) _$t1@@6)) (=> (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) $t7@@6)) _$t1@@6) (and (=> (= (ControlFlow 0 188810) (- 0 252224)) (forall ((addr1@@85 Int) ) (!  (=> (|$IsValid'address'| addr1@@85) (=> (not (= addr1@@85 $t7@@6)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) addr1@@85)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@85)))))
 :qid |DualAttestationandybpl.14002:15|
 :skolemid |258|
))) (=> (forall ((addr1@@86 Int) ) (!  (=> (|$IsValid'address'| addr1@@86) (=> (not (= addr1@@86 $t7@@6)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) addr1@@86)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@86)))))
 :qid |DualAttestationandybpl.14002:15|
 :skolemid |258|
)) (and (=> (= (ControlFlow 0 188810) (- 0 252262)) (forall ((addr1@@87 Int) ) (!  (=> (|$IsValid'address'| addr1@@87) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@87) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) addr1@@87)))
 :qid |DualAttestationandybpl.14007:15|
 :skolemid |259|
))) (=> (forall ((addr1@@88 Int) ) (!  (=> (|$IsValid'address'| addr1@@88) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@88) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) addr1@@88)))
 :qid |DualAttestationandybpl.14007:15|
 :skolemid |259|
)) (and (=> (= (ControlFlow 0 188810) (- 0 252286)) (forall ((addr1@@89 Int) ) (!  (=> (|$IsValid'address'| addr1@@89) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@89)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) addr1@@89))))
 :qid |DualAttestationandybpl.14012:15|
 :skolemid |260|
))) (=> (forall ((addr1@@90 Int) ) (!  (=> (|$IsValid'address'| addr1@@90) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@90)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) addr1@@90))))
 :qid |DualAttestationandybpl.14012:15|
 :skolemid |260|
)) (and (=> (= (ControlFlow 0 188810) (- 0 252314)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 188810) (- 0 252331)) (forall ((addr1@@91 Int) ) (!  (=> (|$IsValid'address'| addr1@@91) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@91) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) addr1@@91)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@91)))))
 :qid |DualAttestationandybpl.14022:15|
 :skolemid |261|
))) (=> (forall ((addr1@@92 Int) ) (!  (=> (|$IsValid'address'| addr1@@92) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@92) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@0) addr1@@92)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@92)))))
 :qid |DualAttestationandybpl.14022:15|
 :skolemid |261|
)) (and (=> (= (ControlFlow 0 188810) (- 0 252366)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t9@@5)))
(let ((stream_new (let ((len (|l#Multiset_75556| stream@@14)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@14) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@2))))
(Multiset_75556 (|Store__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@14) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@2) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t9@@5 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@15 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected) handle@@15)) (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual) handle@@15))) (forall ((v@@52 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected) handle@@15)) v@@52) (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual) handle@@15)) v@@52))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2613:13|
 :skolemid |75|
)))))) (=> (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t9@@5)))
(let ((stream_new (let ((len (|l#Multiset_75556| stream@@14)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@14) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@2))))
(Multiset_75556 (|Store__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@14) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@2) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t9@@5 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@16 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected) handle@@16)) (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual) handle@@16))) (forall ((v@@53 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected) handle@@16)) v@@53) (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual) handle@@16)) v@@53))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2613:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 188810) (- 0 252391)) (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t9@@5)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_75556| stream@@15)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@2))))
(Multiset_75556 (|Store__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@2) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t9@@5 stream_new@@0))))))
 (and (<= (|counter#$EventStore| actual@@0) (|counter#$EventStore| expected@@0)) (forall ((handle@@17 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual@@0) handle@@17)) (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected@@0) handle@@17))) (forall ((v@@54 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual@@0) handle@@17)) v@@54) (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected@@0) handle@@17)) v@@54))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2613:13|
 :skolemid |75|
)))))))))))))))))))))))))))))
(let ((L3_correct@@7  (and (=> (= (ControlFlow 0 188306) (- 0 252084)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t6@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t6@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (=> (= (ControlFlow 0 188306) (- 0 252098)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t6@@3)) (= 5 $t15@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@0@@0))))))))
(let ((anon19_Then_correct  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t15@0@@0 $abort_code@1@@8) (= (ControlFlow 0 188824) 188306))) L3_correct@@7)))
(let ((|inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| (|v#$Mutation_98542| $t18@0@@1)) (= $es@0 (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1|)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_75556| stream@@16)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t21@0))))
(Multiset_75556 (|Store__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t21@0) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| stream_new@@1)))))) (and (=> (= (ControlFlow 0 188509) 188824) anon19_Then_correct) (=> (= (ControlFlow 0 188509) 188810) anon19_Else_correct)))))
(let ((anon18_Else_correct@@1  (=> (not $t20@@1) (=> (and (and (|$IsValid'u64'| $t19) (= $t19 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t21@0 ($1_DualAttestation_BaseUrlRotationEvent _$t1@@6 $t19)) (= (ControlFlow 0 188515) 188509))) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|))))
(let ((anon18_Then_correct@@1  (=> $t20@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@0)) (= $t15@@0 $t15@@0)) (and (= $t15@0@@0 $t15@@0) (= (ControlFlow 0 188850) 188306))) L3_correct@@7))))
(let ((anon17_Else_correct@@1  (=> (and (and (and (not $abort_flag@0@@8) (= |$temp_0'$1_DualAttestation_Credential'@0| (|v#$Mutation_145967| $t16@1))) (and (= |$temp_0'$1_DualAttestation_Credential'@0| |$temp_0'$1_DualAttestation_Credential'@0|) (= $t17@0@@2 ($Mutation_93649 (|l#$Mutation_145967| $t16@1) (seq.++ (|p#$Mutation_145967| $t16@1) (seq.unit 1)) (|$base_url#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t16@1)))))) (and (and (= $t17@1 ($Mutation_93649 (|l#$Mutation_93649| $t17@0@@2) (|p#$Mutation_93649| $t17@0@@2) _$t1@@6)) (= $t16@2 ($Mutation_145967 (|l#$Mutation_145967| $t16@1) (|p#$Mutation_145967| $t16@1) ($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t16@1)) (|v#$Mutation_93649| $t17@1) (|$compliance_public_key#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t16@1)) (|$expiration_date#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t16@1)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t16@1)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t16@1)))))) (and (= $t18@0@@1 ($Mutation_98542 (|l#$Mutation_145967| $t16@2) (seq.++ (|p#$Mutation_145967| $t16@2) (seq.unit 5)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t16@2)))) (= $t20@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 188410) 188850) anon18_Then_correct@@1) (=> (= (ControlFlow 0 188410) 188515) anon18_Else_correct@@1)))))
(let ((anon17_Then_correct@@1  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t15@0@@0 $abort_code@1@@8) (= (ControlFlow 0 188864) 188306))) L3_correct@@7)))
(let ((anon16_Then$1_correct  (=> (= $t16@1 $t16@@0) (=> (and (= $abort_flag@0@@8 true) (= $abort_code@1@@8 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 188916) 188864) anon17_Then_correct@@1) (=> (= (ControlFlow 0 188916) 188410) anon17_Else_correct@@1))))))
(let ((anon16_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t11@@3)) (= (ControlFlow 0 188914) 188916)) anon16_Then$1_correct)))
(let ((anon16_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t11@@3) (=> (and (and (= $t16@0 ($Mutation_145967 ($Global $t11@@3) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $t11@@3))) (= $t16@1 $t16@0)) (and (= $abort_flag@0@@8 false) (= $abort_code@1@@8 $abort_code@0@@8))) (and (=> (= (ControlFlow 0 188332) 188864) anon17_Then_correct@@1) (=> (= (ControlFlow 0 188332) 188410) anon17_Else_correct@@1))))))
(let ((anon15_Then_correct@@2  (=> $t12@0 (and (=> (= (ControlFlow 0 188310) 188914) anon16_Then_correct@@2) (=> (= (ControlFlow 0 188310) 188332) anon16_Else_correct@@2)))))
(let ((anon15_Else_correct@@2  (=> (and (and (not $t12@0) (= $t14@@4 $t14@@4)) (and (= $t15@0@@0 $t14@@4) (= (ControlFlow 0 188250) 188306))) L3_correct@@7)))
(let ((anon0$1_correct@@13  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108380| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107903| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_126411| $1_XDX_Reserve_$memory) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124570| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@93 Int) ) (!  (=> (|$IsValid'address'| addr1@@93) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@93) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@93)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@93)) 2)))))
 :qid |DualAttestationandybpl.13774:20|
 :skolemid |254|
)))) (and (and (|$IsValid'address'| _$t0@@12) (|$IsValid'vec'u8''| _$t1@@6)) (and (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@25)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@25))
 :qid |DualAttestationandybpl.13783:20|
 :skolemid |255|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@25))
)) (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@26)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@26))
 :qid |DualAttestationandybpl.13787:20|
 :skolemid |256|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@26))
))))) (=> (and (and (and (and (= $t6@@3 _$t0@@12) (= $t7@@6 _$t0@@12)) (and (= $t8@@4 _$t0@@12) (= $t9@@5 (|$base_url_rotation_events#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $t8@@4))))) (and (and (= $t10@@2 ($1_DualAttestation_BaseUrlRotationEvent _$t1@@6 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (= _$t0@@12 _$t0@@12)) (and (= _$t1@@6 _$t1@@6) (|$IsValid'address'| $t11@@3)))) (and (and (and (= $t11@@3 _$t0@@12) (= $t11@@3 $t11@@3)) (and (= $t12@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t11@@3)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@4) (= $t14@@4 5)) (and (= $t14@@4 $t14@@4) (= $t12@0 $t12@0))))) (and (=> (= (ControlFlow 0 188234) 188310) anon15_Then_correct@@2) (=> (= (ControlFlow 0 188234) 188250) anon15_Else_correct@@2)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@13  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_75556| stream@@17) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@17) v@@55) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 187929) 188234)) anon0$1_correct@@13)))
(let ((anon0_correct@@13  (=> (= (seq.len (|p#$Mutation_145967| $t3@@1)) 0) (=> (and (and (= (seq.len (|p#$Mutation_145967| $t16@@0)) 0) (= (seq.len (|p#$Mutation_93649| $t17@@0)) 0)) (and (= (seq.len (|p#$Mutation_98542| $t18)) 0) (= (ControlFlow 0 187939) 187929))) inline$$InitEventStore$0$anon0_correct@@13))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 251343) 187939) anon0_correct@@13)))
PreconditionGeneratedEntry_correct@@1))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@9 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@0@@1 () T@$Memory_107323)
(declare-fun $t21@2 () T@$Mutation_145967)
(declare-fun _$t1@@7 () (Seq Int))
(declare-fun $t8@@5 () Int)
(declare-fun $t9@@6 () Int)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t11@@4 () T@$1_Event_EventHandle)
(declare-fun $t12@@3 () T@$1_DualAttestation_ComplianceKeyRotationEvent)
(declare-fun $t17@0@@3 () Int)
(declare-fun $abort_code@1@@9 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t23@0 () T@$Mutation_98542)
(declare-fun $t26@0@@0 () T@$1_DualAttestation_ComplianceKeyRotationEvent)
(declare-fun $t25@@1 () Bool)
(declare-fun $t24@@2 () Int)
(declare-fun $t17@@1 () Int)
(declare-fun |$temp_0'$1_DualAttestation_Credential'@0@@0| () T@$1_DualAttestation_Credential)
(declare-fun $t21@1 () T@$Mutation_145967)
(declare-fun $t22@0 () T@$Mutation_93649)
(declare-fun $t22@1 () T@$Mutation_93649)
(declare-fun $t21@@1 () T@$Mutation_145967)
(declare-fun $t13@@2 () Int)
(declare-fun $t21@0@@0 () T@$Mutation_145967)
(declare-fun $abort_code@0@@9 () Int)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun $t20@@2 () Int)
(declare-fun $t14@0@@0 () Bool)
(declare-fun $t16@@1 () Int)
(declare-fun _$t0@@13 () Int)
(declare-fun $t10@@3 () Int)
(declare-fun $t3@@2 () T@$Mutation_145967)
(declare-fun $t22@@1 () T@$Mutation_93649)
(declare-fun $t23@@2 () T@$Mutation_98542)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_rotate_compliance_public_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 252422) (let ((anon26_Else_correct@@3  (=> (and (not $abort_flag@0@@9) (= $1_DualAttestation_Credential_$memory@0@@1 ($Memory_107323 (|Store__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_145967| $t21@2)) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_145967| $t21@2)) (|v#$Mutation_145967| $t21@2))))) (and (=> (= (ControlFlow 0 190158) (- 0 253346)) (forall ((addr1@@94 Int) ) (!  (=> (|$IsValid'address'| addr1@@94) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) addr1@@94) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@94)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@94)) 2)))))
 :qid |DualAttestationandybpl.14405:15|
 :skolemid |265|
))) (=> (forall ((addr1@@95 Int) ) (!  (=> (|$IsValid'address'| addr1@@95) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) addr1@@95) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@95)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@95)) 2)))))
 :qid |DualAttestationandybpl.14405:15|
 :skolemid |265|
)) (and (=> (= (ControlFlow 0 190158) (- 0 253382)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@7)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@7))) (and (=> (= (ControlFlow 0 190158) (- 0 253392)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t8@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t8@@5))) (and (=> (= (ControlFlow 0 190158) (- 0 253404)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 190158) (- 0 253414)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) $t9@@6)) _$t1@@7)) (=> (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) $t9@@6)) _$t1@@7) (and (=> (= (ControlFlow 0 190158) (- 0 253427)) (forall ((addr1@@96 Int) ) (!  (=> (|$IsValid'address'| addr1@@96) (=> (not (= addr1@@96 $t9@@6)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) addr1@@96)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@96)))))
 :qid |DualAttestationandybpl.14434:15|
 :skolemid |266|
))) (=> (forall ((addr1@@97 Int) ) (!  (=> (|$IsValid'address'| addr1@@97) (=> (not (= addr1@@97 $t9@@6)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) addr1@@97)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@97)))))
 :qid |DualAttestationandybpl.14434:15|
 :skolemid |266|
)) (and (=> (= (ControlFlow 0 190158) (- 0 253465)) (forall ((addr1@@98 Int) ) (!  (=> (|$IsValid'address'| addr1@@98) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@98) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) addr1@@98)))
 :qid |DualAttestationandybpl.14439:15|
 :skolemid |267|
))) (=> (forall ((addr1@@99 Int) ) (!  (=> (|$IsValid'address'| addr1@@99) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@99) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) addr1@@99)))
 :qid |DualAttestationandybpl.14439:15|
 :skolemid |267|
)) (and (=> (= (ControlFlow 0 190158) (- 0 253489)) (forall ((addr1@@100 Int) ) (!  (=> (|$IsValid'address'| addr1@@100) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@100)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) addr1@@100))))
 :qid |DualAttestationandybpl.14444:15|
 :skolemid |268|
))) (=> (forall ((addr1@@101 Int) ) (!  (=> (|$IsValid'address'| addr1@@101) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@101)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) addr1@@101))))
 :qid |DualAttestationandybpl.14444:15|
 :skolemid |268|
)) (and (=> (= (ControlFlow 0 190158) (- 0 253517)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 190158) (- 0 253534)) (forall ((addr1@@102 Int) ) (!  (=> (|$IsValid'address'| addr1@@102) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@102) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) addr1@@102)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@102)))))
 :qid |DualAttestationandybpl.14454:15|
 :skolemid |269|
))) (=> (forall ((addr1@@103 Int) ) (!  (=> (|$IsValid'address'| addr1@@103) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@103) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory@0@@1) addr1@@103)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@103)))))
 :qid |DualAttestationandybpl.14454:15|
 :skolemid |269|
)) (and (=> (= (ControlFlow 0 190158) (- 0 253569)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t11@@4)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_75556| stream@@18)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@18) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@3))))
(Multiset_75556 (|Store__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@18) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@3) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t11@@4 stream_new@@2))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@19 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected@@1) handle@@19)) (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual@@1) handle@@19))) (forall ((v@@56 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected@@1) handle@@19)) v@@56) (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual@@1) handle@@19)) v@@56))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2613:13|
 :skolemid |75|
)))))) (=> (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t11@@4)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_75556| stream@@18)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@18) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@3))))
(Multiset_75556 (|Store__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@18) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@3) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t11@@4 stream_new@@2))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@20 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected@@1) handle@@20)) (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual@@1) handle@@20))) (forall ((v@@57 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected@@1) handle@@20)) v@@57) (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual@@1) handle@@20)) v@@57))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2613:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 190158) (- 0 253594)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t11@@4)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_75556| stream@@19)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@19) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@3))))
(Multiset_75556 (|Store__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@19) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@3) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $EmptyEventStore) $t11@@4 stream_new@@3))))))
 (and (<= (|counter#$EventStore| actual@@2) (|counter#$EventStore| expected@@2)) (forall ((handle@@21 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual@@2) handle@@21)) (|l#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected@@2) handle@@21))) (forall ((v@@58 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| actual@@2) handle@@21)) v@@58) (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| expected@@2) handle@@21)) v@@58))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2613:13|
 :skolemid |75|
)))))))))))))))))))))))))))))))
(let ((anon21_Then_correct true))
(let ((L5_correct@@1  (and (=> (= (ControlFlow 0 189552) (- 0 253256)) (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@7)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t8@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@7)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t8@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (=> (= (ControlFlow 0 189552) (- 0 253277)) (or (or (and (not ($1_Signature_$ed25519_validate_pubkey _$t1@@7)) (= 7 $t17@0@@3)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t8@@5)) (= 5 $t17@0@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t17@0@@3))))))))
(let ((anon26_Then_correct@@3  (=> (and (and $abort_flag@0@@9 (= $abort_code@1@@9 $abort_code@1@@9)) (and (= $t17@0@@3 $abort_code@1@@9) (= (ControlFlow 0 190172) 189552))) L5_correct@@1)))
(let ((|inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| (|v#$Mutation_98542| $t23@0)) (= $es@0@@0 (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1|)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_75556| stream@@20)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@20) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t26@0@@0))))
(Multiset_75556 (|Store__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@20) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t26@0@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| stream_new@@4)))))) (and (=> (= (ControlFlow 0 189847) 190172) anon26_Then_correct@@3) (=> (= (ControlFlow 0 189847) 190158) anon26_Else_correct@@3)))))
(let ((anon25_Else_correct@@2  (=> (not $t25@@1) (=> (and (and (|$IsValid'u64'| $t24@@2) (= $t24@@2 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t26@0@@0 ($1_DualAttestation_ComplianceKeyRotationEvent _$t1@@7 $t24@@2)) (= (ControlFlow 0 189853) 189847))) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((anon25_Then_correct@@2  (=> $t25@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t17@@1)) (= $t17@@1 $t17@@1)) (and (= $t17@0@@3 $t17@@1) (= (ControlFlow 0 190198) 189552))) L5_correct@@1))))
(let ((anon24_Else_correct@@2  (=> (and (and (and (not $abort_flag@0@@9) (= |$temp_0'$1_DualAttestation_Credential'@0@@0| (|v#$Mutation_145967| $t21@1))) (and (= |$temp_0'$1_DualAttestation_Credential'@0@@0| |$temp_0'$1_DualAttestation_Credential'@0@@0|) (= $t22@0 ($Mutation_93649 (|l#$Mutation_145967| $t21@1) (seq.++ (|p#$Mutation_145967| $t21@1) (seq.unit 2)) (|$compliance_public_key#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t21@1)))))) (and (and (= $t22@1 ($Mutation_93649 (|l#$Mutation_93649| $t22@0) (|p#$Mutation_93649| $t22@0) _$t1@@7)) (= $t21@2 ($Mutation_145967 (|l#$Mutation_145967| $t21@1) (|p#$Mutation_145967| $t21@1) ($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t21@1)) (|$base_url#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t21@1)) (|v#$Mutation_93649| $t22@1) (|$expiration_date#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t21@1)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t21@1)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t21@1)))))) (and (= $t23@0 ($Mutation_98542 (|l#$Mutation_145967| $t21@2) (seq.++ (|p#$Mutation_145967| $t21@2) (seq.unit 4)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_145967| $t21@2)))) (= $t25@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 189748) 190198) anon25_Then_correct@@2) (=> (= (ControlFlow 0 189748) 189853) anon25_Else_correct@@2)))))
(let ((anon24_Then_correct@@2  (=> (and (and $abort_flag@0@@9 (= $abort_code@1@@9 $abort_code@1@@9)) (and (= $t17@0@@3 $abort_code@1@@9) (= (ControlFlow 0 190212) 189552))) L5_correct@@1)))
(let ((anon23_Then$1_correct  (=> (= $t21@1 $t21@@1) (=> (and (= $abort_flag@0@@9 true) (= $abort_code@1@@9 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 190264) 190212) anon24_Then_correct@@2) (=> (= (ControlFlow 0 190264) 189748) anon24_Else_correct@@2))))))
(let ((anon23_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t13@@2)) (= (ControlFlow 0 190262) 190264)) anon23_Then$1_correct)))
(let ((anon23_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t13@@2) (=> (and (and (= $t21@0@@0 ($Mutation_145967 ($Global $t13@@2) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $t13@@2))) (= $t21@1 $t21@0@@0)) (and (= $abort_flag@0@@9 false) (= $abort_code@1@@9 $abort_code@0@@9))) (and (=> (= (ControlFlow 0 189670) 190212) anon24_Then_correct@@2) (=> (= (ControlFlow 0 189670) 189748) anon24_Else_correct@@2))))))
(let ((anon22_Then_correct@@0  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (and (=> (= (ControlFlow 0 189648) 190262) anon23_Then_correct@@1) (=> (= (ControlFlow 0 189648) 189670) anon23_Else_correct@@1)))))
(let ((anon22_Else_correct@@0  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= $t20@@2 $t20@@2)) (and (= $t17@0@@3 $t20@@2) (= (ControlFlow 0 189644) 189552))) L5_correct@@1)))
(let ((anon21_Else_correct  (=> (and (not false) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20@@2) (= $t20@@2 7)) (and (= $t20@@2 $t20@@2) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 189628) 189648) anon22_Then_correct@@0) (=> (= (ControlFlow 0 189628) 189644) anon22_Else_correct@@0))))))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t1@@7)) (and (=> (= (ControlFlow 0 189586) 190278) anon21_Then_correct) (=> (= (ControlFlow 0 189586) 189628) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (and $t14@0@@0 (= (ControlFlow 0 189592) 189586)) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct)))
(let ((anon20_Else_correct  (=> (and (and (not $t14@0@@0) (= $t16@@1 $t16@@1)) (and (= $t17@0@@3 $t16@@1) (= (ControlFlow 0 189472) 189552))) L5_correct@@1)))
(let ((anon0$1_correct@@14  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108380| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107903| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_126411| $1_XDX_Reserve_$memory) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112002| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124570| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@104 Int) ) (!  (=> (|$IsValid'address'| addr1@@104) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@104) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@104) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@104)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@104) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@104)) 2)))))
 :qid |DualAttestationandybpl.14149:20|
 :skolemid |262|
)))) (and (and (|$IsValid'address'| _$t0@@13) (|$IsValid'vec'u8''| _$t1@@7)) (and (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@27)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@27))
 :qid |DualAttestationandybpl.14158:20|
 :skolemid |263|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@27))
)) (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@28)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@28))
 :qid |DualAttestationandybpl.14162:20|
 :skolemid |264|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $a_0@@28))
))))) (=> (and (and (and (and (= $t8@@5 _$t0@@13) (= $t9@@6 _$t0@@13)) (and (= $t10@@3 _$t0@@13) (= $t11@@4 (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) $t10@@3))))) (and (and (= $t12@@3 ($1_DualAttestation_ComplianceKeyRotationEvent _$t1@@7 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (= _$t0@@13 _$t0@@13)) (and (= _$t1@@7 _$t1@@7) (|$IsValid'address'| $t13@@2)))) (and (and (and (= $t13@@2 _$t0@@13) (= $t13@@2 $t13@@2)) (and (= $t14@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) $t13@@2)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t16@@1) (= $t16@@1 5)) (and (= $t16@@1 $t16@@1) (= $t14@0@@0 $t14@0@@0))))) (and (=> (= (ControlFlow 0 189456) 189592) anon20_Then_correct) (=> (= (ControlFlow 0 189456) 189472) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@14  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@22 T@$1_Event_EventHandle) ) (! (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@22)))
 (and (= (|l#Multiset_75556| stream@@21) 0) (forall ((v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@21) v@@59) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 189151) 189456)) anon0$1_correct@@14)))
(let ((anon0_correct@@14  (=> (= (seq.len (|p#$Mutation_145967| $t3@@2)) 0) (=> (and (and (= (seq.len (|p#$Mutation_145967| $t21@@1)) 0) (= (seq.len (|p#$Mutation_93649| $t22@@1)) 0)) (and (= (seq.len (|p#$Mutation_98542| $t23@@2)) 0) (= (ControlFlow 0 189161) 189151))) inline$$InitEventStore$0$anon0_correct@@14))))
(let ((PreconditionGeneratedEntry_correct@@2  (=> (= (ControlFlow 0 252422) 189161) anon0_correct@@14)))
PreconditionGeneratedEntry_correct@@2)))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@10 () Bool)
(declare-fun $t14@0@@1 () T@$Mutation_12329)
(declare-fun $t13@1 () T@$Mutation_149530)
(declare-fun $t14@1@@0 () T@$Mutation_12329)
(declare-fun _$t1@@8 () Int)
(declare-fun $t13@2 () T@$Mutation_149530)
(declare-fun $1_DualAttestation_Limit_$memory@0@@0 () T@$Memory_106253)
(declare-fun $t4@@2 () Int)
(declare-fun _$t0@@14 () Int)
(declare-fun $t7@0@@4 () Int)
(declare-fun $abort_code@1@@10 () Int)
(declare-fun $t13@@3 () T@$Mutation_149530)
(declare-fun $t13@0@@0 () T@$Mutation_149530)
(declare-fun $abort_code@0@@10 () Int)
(declare-fun $t9@0@@1 () Bool)
(declare-fun $t11@@5 () Int)
(declare-fun $t6@@4 () Bool)
(declare-fun $t5@@6 () Int)
(declare-fun $t7@@7 () Int)
(declare-fun $t14@@5 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_set_microdiem_limit$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 253626) (let ((anon21_Else_correct@@0  (=> (not $abort_flag@0@@10) (=> (and (and (= $t14@0@@1 ($Mutation_12329 (|l#$Mutation_149530| $t13@1) (seq.++ (|p#$Mutation_149530| $t13@1) (seq.unit 0)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|v#$Mutation_149530| $t13@1)))) (= $t14@1@@0 ($Mutation_12329 (|l#$Mutation_12329| $t14@0@@1) (|p#$Mutation_12329| $t14@0@@1) _$t1@@8))) (and (= $t13@2 ($Mutation_149530 (|l#$Mutation_149530| $t13@1) (|p#$Mutation_149530| $t13@1) ($1_DualAttestation_Limit (|v#$Mutation_12329| $t14@1@@0)))) (= $1_DualAttestation_Limit_$memory@0@@0 ($Memory_106253 (|Store__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) (|a#$Global| (|l#$Mutation_149530| $t13@2)) true) (|Store__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) (|a#$Global| (|l#$Mutation_149530| $t13@2)) (|v#$Mutation_149530| $t13@2)))))) (and (=> (= (ControlFlow 0 191489) (- 0 254561)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory@0@@0) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory@0@@0) 173345816)) (and (=> (= (ControlFlow 0 191489) (- 0 254576)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t4@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t4@@2))) (and (=> (= (ControlFlow 0 191489) (- 0 254588)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t4@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t4@@2)) 1))) (and (=> (= (ControlFlow 0 191489) (- 0 254606)) (not (not (= _$t0@@14 186537453)))) (=> (not (not (= _$t0@@14 186537453))) (and (=> (= (ControlFlow 0 191489) (- 0 254620)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 191489) (- 0 254630)) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory@0@@0) 173345816)) _$t1@@8)) (=> (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory@0@@0) 173345816)) _$t1@@8) (and (=> (= (ControlFlow 0 191489) (- 0 254643)) (forall ((addr1@@105 Int) ) (!  (=> (|$IsValid'address'| addr1@@105) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@105) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@105)))
 :qid |DualAttestationandybpl.14757:15|
 :skolemid |279|
))) (=> (forall ((addr1@@106 Int) ) (!  (=> (|$IsValid'address'| addr1@@106) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@106) (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@106)))
 :qid |DualAttestationandybpl.14757:15|
 :skolemid |279|
)) (and (=> (= (ControlFlow 0 191489) (- 0 254668)) (forall ((addr1@@107 Int) ) (!  (=> (|$IsValid'address'| addr1@@107) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@107)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@107))))
 :qid |DualAttestationandybpl.14762:15|
 :skolemid |280|
))) (=> (forall ((addr1@@108 Int) ) (!  (=> (|$IsValid'address'| addr1@@108) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@108)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@108))))
 :qid |DualAttestationandybpl.14762:15|
 :skolemid |280|
)) (and (=> (= (ControlFlow 0 191489) (- 0 254697)) (forall ((addr1@@109 Int) ) (!  (=> (|$IsValid'address'| addr1@@109) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@109) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@109)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@109)))))
 :qid |DualAttestationandybpl.14767:15|
 :skolemid |281|
))) (=> (forall ((addr1@@110 Int) ) (!  (=> (|$IsValid'address'| addr1@@110) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@110) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@110)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@110)))))
 :qid |DualAttestationandybpl.14767:15|
 :skolemid |281|
)) (=> (= (ControlFlow 0 191489) (- 0 254733)) (forall ((addr1@@111 Int) ) (!  (=> (|$IsValid'address'| addr1@@111) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@111) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@111)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@111)))))
 :qid |DualAttestationandybpl.14772:15|
 :skolemid |282|
)))))))))))))))))))))))))
(let ((anon19_Then_correct@@0 true))
(let ((L3_correct@@8  (and (=> (= (ControlFlow 0 191124) (- 0 254383)) (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t4@@2)) 1))) (not (= _$t0@@14 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t4@@2)) 1))) (not (= _$t0@@14 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (=> (= (ControlFlow 0 191124) (- 0 254423)) (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t7@0@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t4@@2)) 1)) (= 3 $t7@0@@4))) (and (not (= _$t0@@14 186537453)) (= 2 $t7@0@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t7@0@@4))))))))
(let ((anon21_Then_correct@@0  (=> (and (and $abort_flag@0@@10 (= $abort_code@1@@10 $abort_code@1@@10)) (and (= $t7@0@@4 $abort_code@1@@10) (= (ControlFlow 0 191503) 191124))) L3_correct@@8)))
(let ((anon20_Then$1_correct  (=> (= $t13@1 $t13@@3) (=> (and (= $abort_flag@0@@10 true) (= $abort_code@1@@10 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 191555) 191503) anon21_Then_correct@@0) (=> (= (ControlFlow 0 191555) 191489) anon21_Else_correct@@0))))))
(let ((anon20_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (= (ControlFlow 0 191553) 191555)) anon20_Then$1_correct)))
(let ((anon20_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816) (=> (and (and (= $t13@0@@0 ($Mutation_149530 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (= $t13@1 $t13@0@@0)) (and (= $abort_flag@0@@10 false) (= $abort_code@1@@10 $abort_code@0@@10))) (and (=> (= (ControlFlow 0 191227) 191503) anon21_Then_correct@@0) (=> (= (ControlFlow 0 191227) 191489) anon21_Else_correct@@0))))))
(let ((anon19_Else_correct@@0  (=> (not false) (and (=> (= (ControlFlow 0 191205) 191553) anon20_Then_correct@@0) (=> (= (ControlFlow 0 191205) 191227) anon20_Else_correct@@0)))))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct@@0  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 191191) 191569) anon19_Then_correct@@0) (=> (= (ControlFlow 0 191191) 191205) anon19_Else_correct@@0)))))
(let ((anon18_Then_correct@@2  (=> (and $t9@0@@1 (= (ControlFlow 0 191197) 191191)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$1$anon0_correct@@0)))
(let ((anon18_Else_correct@@2  (=> (and (and (not $t9@0@@1) (= $t11@@5 $t11@@5)) (and (= $t7@0@@4 $t11@@5) (= (ControlFlow 0 190996) 191124))) L3_correct@@8)))
(let ((anon17_Else_correct@@2  (=> (not false) (=> (and (= $t9@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816)) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t11@@5) (= $t11@@5 5)) (and (= $t11@@5 $t11@@5) (= $t9@0@@1 $t9@0@@1))) (and (=> (= (ControlFlow 0 190980) 191197) anon18_Then_correct@@2) (=> (= (ControlFlow 0 190980) 190996) anon18_Else_correct@@2)))))))
(let ((anon16_Then_correct@@3  (=> $t6@@4 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t5@@6)) (= 5 $t7@@7)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t5@@6)) 1)) (= 3 $t7@@7))) (and (not (= _$t0@@14 186537453)) (= 2 $t7@@7))) (= $t7@@7 $t7@@7)) (and (= $t7@0@@4 $t7@@7) (= (ControlFlow 0 191655) 191124))) L3_correct@@8))))
(let ((anon17_Then_correct@@2 true))
(let ((inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@2  (=> (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (=> (= (ControlFlow 0 190932) 191583) anon17_Then_correct@@2) (=> (= (ControlFlow 0 190932) 190980) anon17_Else_correct@@2)))))
(let ((anon16_Else_correct@@3  (=> (and (not $t6@@4) (= (ControlFlow 0 190938) 190932)) inline$$1_CoreAddresses_DIEM_ROOT_ADDRESS$0$anon0_correct@@2)))
(let ((anon0$1_correct@@15  (=> (and (and (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117155| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |DualAttestationandybpl.14537:21|
 :skolemid |270|
)) (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117242| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |DualAttestationandybpl.14537:268|
 :skolemid |271|
))) (and (forall ((addr1@@112 Int) ) (!  (=> (|$IsValid'address'| addr1@@112) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112435| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@112) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@112)) 1))))
 :qid |DualAttestationandybpl.14541:21|
 :skolemid |272|
)) (forall ((addr1@@113 Int) ) (!  (=> (|$IsValid'address'| addr1@@113) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112522| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@113) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@113)) 1))))
 :qid |DualAttestationandybpl.14541:231|
 :skolemid |273|
)))) (=> (and (and (and (and (forall ((addr1@@114 Int) ) (!  (=> (|$IsValid'address'| addr1@@114) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_117733| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@114) (|Select__T@[Int]Bool_| (|domain#$Memory_117415| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@114)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@114)) 2))))
 :qid |DualAttestationandybpl.14545:21|
 :skolemid |274|
)) (forall ((addr1@@115 Int) ) (!  (=> (|$IsValid'address'| addr1@@115) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_117832| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@115) (|Select__T@[Int]Bool_| (|domain#$Memory_117506| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@115)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@115)) 2))))
 :qid |DualAttestationandybpl.14545:292|
 :skolemid |275|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104782| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106253| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1@@116 Int) ) (!  (=> (|$IsValid'address'| addr1@@116) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107323| $1_DualAttestation_Credential_$memory) addr1@@116) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@116)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) addr1@@116)) 2)))))
 :qid |DualAttestationandybpl.14557:20|
 :skolemid |276|
)) (|$IsValid'address'| _$t0@@14))) (and (and (and (|$IsValid'u64'| _$t1@@8) (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $a_0@@29)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@29))
 :qid |DualAttestationandybpl.14566:20|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $a_0@@29))
))) (and (forall (($a_0@@30 Int) ) (! (let (($rsc@@30 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) $a_0@@30)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@30))
 :qid |DualAttestationandybpl.14570:20|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_106253| $1_DualAttestation_Limit_$memory) $a_0@@30))
)) (= $t4@@2 _$t0@@14))) (and (and (= _$t0@@14 _$t0@@14) (= _$t1@@8 _$t1@@8)) (and (= $t5@@6 _$t0@@14) (= $t6@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106755| $1_Roles_RoleId_$memory) $t5@@6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106755| $1_Roles_RoleId_$memory) $t5@@6)) 1))) (not (= _$t0@@14 186537453)))))))) (and (=> (= (ControlFlow 0 190861) 191655) anon16_Then_correct@@3) (=> (= (ControlFlow 0 190861) 190938) anon16_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@15  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@23 T@$1_Event_EventHandle) ) (! (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_75556_| (|streams#$EventStore| $es) handle@@23)))
 (and (= (|l#Multiset_75556| stream@@22) 0) (forall ((v@@60 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_75556| stream@@22) v@@60) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2597:13|
 :skolemid |74|
))) (= (ControlFlow 0 190508) 190861)) anon0$1_correct@@15)))
(let ((anon0_correct@@15  (=> (= (seq.len (|p#$Mutation_149530| $t13@@3)) 0) (=> (and (= (seq.len (|p#$Mutation_12329| $t14@@5)) 0) (= (ControlFlow 0 190518) 190508)) inline$$InitEventStore$0$anon0_correct@@15))))
(let ((PreconditionGeneratedEntry_correct@@3  (=> (= (ControlFlow 0 253626) 190518) anon0_correct@@15)))
PreconditionGeneratedEntry_correct@@3)))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 254785) true)
))
(check-sat)
(pop 1)
; Valid
