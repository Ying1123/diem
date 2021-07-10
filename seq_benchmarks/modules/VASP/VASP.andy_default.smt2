(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_87066 0)) ((($Memory_87066 (|domain#$Memory_87066| |T@[Int]Bool|) (|contents#$Memory_87066| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_133590 0)) ((($Memory_133590 (|domain#$Memory_133590| |T@[Int]Bool|) (|contents#$Memory_133590| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_128995 0)) ((($Memory_128995 (|domain#$Memory_128995| |T@[Int]Bool|) (|contents#$Memory_128995| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_126998 0)) ((($Memory_126998 (|domain#$Memory_126998| |T@[Int]Bool|) (|contents#$Memory_126998| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_127278 0)) ((($Memory_127278 (|domain#$Memory_127278| |T@[Int]Bool|) (|contents#$Memory_127278| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_126965 0)) ((($Memory_126965 (|domain#$Memory_126965| |T@[Int]Bool|) (|contents#$Memory_126965| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_126750 0)) ((($Memory_126750 (|domain#$Memory_126750| |T@[Int]Bool|) (|contents#$Memory_126750| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_126379 0)) ((($Memory_126379 (|domain#$Memory_126379| |T@[Int]Bool|) (|contents#$Memory_126379| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_123919 0)) ((($Memory_123919 (|domain#$Memory_123919| |T@[Int]Bool|) (|contents#$Memory_123919| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_123855 0)) ((($Memory_123855 (|domain#$Memory_123855| |T@[Int]Bool|) (|contents#$Memory_123855| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_114503 0)) ((($Memory_114503 (|domain#$Memory_114503| |T@[Int]Bool|) (|contents#$Memory_114503| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_114439 0)) ((($Memory_114439 (|domain#$Memory_114439| |T@[Int]Bool|) (|contents#$Memory_114439| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_127921 0)) ((($Memory_127921 (|domain#$Memory_127921| |T@[Int]Bool|) (|contents#$Memory_127921| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_114014 0)) ((($Memory_114014 (|domain#$Memory_114014| |T@[Int]Bool|) (|contents#$Memory_114014| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_113504 0)) ((($Memory_113504 (|domain#$Memory_113504| |T@[Int]Bool|) (|contents#$Memory_113504| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_110288 0)) ((($Memory_110288 (|domain#$Memory_110288| |T@[Int]Bool|) (|contents#$Memory_110288| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_110001 0)) ((($Memory_110001 (|domain#$Memory_110001| |T@[Int]Bool|) (|contents#$Memory_110001| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109782 0)) ((($Memory_109782 (|domain#$Memory_109782| |T@[Int]Bool|) (|contents#$Memory_109782| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_128784 0)) ((($Memory_128784 (|domain#$Memory_128784| |T@[Int]Bool|) (|contents#$Memory_128784| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_102673 0)) ((($Memory_102673 (|domain#$Memory_102673| |T@[Int]Bool|) (|contents#$Memory_102673| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_102586 0)) ((($Memory_102586 (|domain#$Memory_102586| |T@[Int]Bool|) (|contents#$Memory_102586| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_99383 0)) ((($Memory_99383 (|domain#$Memory_99383| |T@[Int]Bool|) (|contents#$Memory_99383| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_99296 0)) ((($Memory_99296 (|domain#$Memory_99296| |T@[Int]Bool|) (|contents#$Memory_99296| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_102937 0)) ((($Memory_102937 (|domain#$Memory_102937| |T@[Int]Bool|) (|contents#$Memory_102937| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_112196 0)) ((($Memory_112196 (|domain#$Memory_112196| |T@[Int]Bool|) (|contents#$Memory_112196| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_103263 0)) ((($Memory_103263 (|domain#$Memory_103263| |T@[Int]Bool|) (|contents#$Memory_103263| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_102846 0)) ((($Memory_102846 (|domain#$Memory_102846| |T@[Int]Bool|) (|contents#$Memory_102846| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_122761 0)) ((($Memory_122761 (|domain#$Memory_122761| |T@[Int]Bool|) (|contents#$Memory_122761| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_103164 0)) ((($Memory_103164 (|domain#$Memory_103164| |T@[Int]Bool|) (|contents#$Memory_103164| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_96534 0)) ((($Memory_96534 (|domain#$Memory_96534| |T@[Int]Bool|) (|contents#$Memory_96534| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_96447 0)) ((($Memory_96447 (|domain#$Memory_96447| |T@[Int]Bool|) (|contents#$Memory_96447| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_96360 0)) ((($Memory_96360 (|domain#$Memory_96360| |T@[Int]Bool|) (|contents#$Memory_96360| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_132281 0)) ((($Memory_132281 (|domain#$Memory_132281| |T@[Int]Bool|) (|contents#$Memory_132281| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96273 0)) ((($Memory_96273 (|domain#$Memory_96273| |T@[Int]Bool|) (|contents#$Memory_96273| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_96186 0)) ((($Memory_96186 (|domain#$Memory_96186| |T@[Int]Bool|) (|contents#$Memory_96186| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_95305 0)) ((($Memory_95305 (|domain#$Memory_95305| |T@[Int]Bool|) (|contents#$Memory_95305| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_95372 0)) ((($Memory_95372 (|domain#$Memory_95372| |T@[Int]Bool|) (|contents#$Memory_95372| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_95223 0)) ((($Memory_95223 (|domain#$Memory_95223| |T@[Int]Bool|) (|contents#$Memory_95223| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_95141 0)) ((($Memory_95141 (|domain#$Memory_95141| |T@[Int]Bool|) (|contents#$Memory_95141| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_95059 0)) ((($Memory_95059 (|domain#$Memory_95059| |T@[Int]Bool|) (|contents#$Memory_95059| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_94977 0)) ((($Memory_94977 (|domain#$Memory_94977| |T@[Int]Bool|) (|contents#$Memory_94977| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_94895 0)) ((($Memory_94895 (|domain#$Memory_94895| |T@[Int]Bool|) (|contents#$Memory_94895| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_98994 0)) ((($Memory_98994 (|domain#$Memory_98994| |T@[Int]Bool|) (|contents#$Memory_98994| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_98929 0)) ((($Memory_98929 (|domain#$Memory_98929| |T@[Int]Bool|) (|contents#$Memory_98929| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_94498 0)) ((($Memory_94498 (|domain#$Memory_94498| |T@[Int]Bool|) (|contents#$Memory_94498| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_94465 0)) ((($Memory_94465 (|domain#$Memory_94465| |T@[Int]Bool|) (|contents#$Memory_94465| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_93905 0)) ((($Memory_93905 (|domain#$Memory_93905| |T@[Int]Bool|) (|contents#$Memory_93905| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_64991 0)) (((Multiset_64991 (|v#Multiset_64991| |T@[$EventRep]Int|) (|l#Multiset_64991| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_64991| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_64991|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_129822 0)) ((($Mutation_129822 (|l#$Mutation_129822| T@$Location) (|p#$Mutation_129822| (Seq Int)) (|v#$Mutation_129822| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_129778 0)) ((($Mutation_129778 (|l#$Mutation_129778| T@$Location) (|p#$Mutation_129778| (Seq Int)) (|v#$Mutation_129778| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_118315 0)) ((($Mutation_118315 (|l#$Mutation_118315| T@$Location) (|p#$Mutation_118315| (Seq Int)) (|v#$Mutation_118315| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_29728 0)) ((($Mutation_29728 (|l#$Mutation_29728| T@$Location) (|p#$Mutation_29728| (Seq Int)) (|v#$Mutation_29728| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_108499 0)) ((($Mutation_108499 (|l#$Mutation_108499| T@$Location) (|p#$Mutation_108499| (Seq Int)) (|v#$Mutation_108499| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_97672 0)) ((($Mutation_97672 (|l#$Mutation_97672| T@$Location) (|p#$Mutation_97672| (Seq Int)) (|v#$Mutation_97672| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_87694 0)) ((($Mutation_87694 (|l#$Mutation_87694| T@$Location) (|p#$Mutation_87694| (Seq Int)) (|v#$Mutation_87694| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_83062 0)) ((($Mutation_83062 (|l#$Mutation_83062| T@$Location) (|p#$Mutation_83062| (Seq Int)) (|v#$Mutation_83062| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_82316 0)) ((($Mutation_82316 (|l#$Mutation_82316| T@$Location) (|p#$Mutation_82316| (Seq Int)) (|v#$Mutation_82316| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_80876 0)) ((($Mutation_80876 (|l#$Mutation_80876| T@$Location) (|p#$Mutation_80876| (Seq Int)) (|v#$Mutation_80876| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_80130 0)) ((($Mutation_80130 (|l#$Mutation_80130| T@$Location) (|p#$Mutation_80130| (Seq Int)) (|v#$Mutation_80130| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_78690 0)) ((($Mutation_78690 (|l#$Mutation_78690| T@$Location) (|p#$Mutation_78690| (Seq Int)) (|v#$Mutation_78690| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_77944 0)) ((($Mutation_77944 (|l#$Mutation_77944| T@$Location) (|p#$Mutation_77944| (Seq Int)) (|v#$Mutation_77944| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_76504 0)) ((($Mutation_76504 (|l#$Mutation_76504| T@$Location) (|p#$Mutation_76504| (Seq Int)) (|v#$Mutation_76504| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_75758 0)) ((($Mutation_75758 (|l#$Mutation_75758| T@$Location) (|p#$Mutation_75758| (Seq Int)) (|v#$Mutation_75758| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_74318 0)) ((($Mutation_74318 (|l#$Mutation_74318| T@$Location) (|p#$Mutation_74318| (Seq Int)) (|v#$Mutation_74318| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_73572 0)) ((($Mutation_73572 (|l#$Mutation_73572| T@$Location) (|p#$Mutation_73572| (Seq Int)) (|v#$Mutation_73572| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_72132 0)) ((($Mutation_72132 (|l#$Mutation_72132| T@$Location) (|p#$Mutation_72132| (Seq Int)) (|v#$Mutation_72132| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71386 0)) ((($Mutation_71386 (|l#$Mutation_71386| T@$Location) (|p#$Mutation_71386| (Seq Int)) (|v#$Mutation_71386| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_69946 0)) ((($Mutation_69946 (|l#$Mutation_69946| T@$Location) (|p#$Mutation_69946| (Seq Int)) (|v#$Mutation_69946| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_69200 0)) ((($Mutation_69200 (|l#$Mutation_69200| T@$Location) (|p#$Mutation_69200| (Seq Int)) (|v#$Mutation_69200| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_67722 0)) ((($Mutation_67722 (|l#$Mutation_67722| T@$Location) (|p#$Mutation_67722| (Seq Int)) (|v#$Mutation_67722| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_66976 0)) ((($Mutation_66976 (|l#$Mutation_66976| T@$Location) (|p#$Mutation_66976| (Seq Int)) (|v#$Mutation_66976| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_64991_| (|T@[$1_Event_EventHandle]Multiset_64991| T@$1_Event_EventHandle) T@Multiset_64991)
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
(declare-fun |$IsValid'$1_AccountLimits_Window'#0''| (|T@$1_AccountLimits_Window'#0'|) Bool)
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
(declare-fun ReverseVec_59235 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_58841 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_58644 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_59038 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_58053 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_58250 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_58447 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_57856 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_64991| |T@[$1_Event_EventHandle]Multiset_64991|) |T@[$1_Event_EventHandle]Multiset_64991|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |VASPandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |VASPandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |VASPandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |VASPandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |VASPandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |VASPandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |VASPandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |VASPandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |VASPandybpl.590:13|
 :skolemid |15|
))))
 :qid |VASPandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |VASPandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |VASPandybpl.603:17|
 :skolemid |18|
)))))
 :qid |VASPandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |VASPandybpl.770:13|
 :skolemid |20|
))))
 :qid |VASPandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |VASPandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |VASPandybpl.783:17|
 :skolemid |23|
)))))
 :qid |VASPandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |VASPandybpl.950:13|
 :skolemid |25|
))))
 :qid |VASPandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |VASPandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |VASPandybpl.963:17|
 :skolemid |28|
)))))
 :qid |VASPandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |VASPandybpl.1130:13|
 :skolemid |30|
))))
 :qid |VASPandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |VASPandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |VASPandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |VASPandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |VASPandybpl.1310:13|
 :skolemid |35|
))))
 :qid |VASPandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |VASPandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |VASPandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |VASPandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |VASPandybpl.1490:13|
 :skolemid |40|
))))
 :qid |VASPandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |VASPandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |VASPandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |VASPandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |VASPandybpl.1670:13|
 :skolemid |45|
))))
 :qid |VASPandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |VASPandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |VASPandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |VASPandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |VASPandybpl.1850:13|
 :skolemid |50|
))))
 :qid |VASPandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |VASPandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |VASPandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |VASPandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |VASPandybpl.2030:13|
 :skolemid |55|
))))
 :qid |VASPandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |VASPandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |VASPandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |VASPandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |VASPandybpl.2210:13|
 :skolemid |60|
))))
 :qid |VASPandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |VASPandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |VASPandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |VASPandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |VASPandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |VASPandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |VASPandybpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |VASPandybpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_64991| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64991| stream) v@@24) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |VASPandybpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |VASPandybpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |VASPandybpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |VASPandybpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |VASPandybpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |VASPandybpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |VASPandybpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |VASPandybpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |VASPandybpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |VASPandybpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |VASPandybpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |VASPandybpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |VASPandybpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |VASPandybpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |VASPandybpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |VASPandybpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |VASPandybpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |VASPandybpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |VASPandybpl.3083:70|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |VASPandybpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |VASPandybpl.3139:60|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |VASPandybpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |VASPandybpl.3195:66|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |VASPandybpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |VASPandybpl.3251:60|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |VASPandybpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |VASPandybpl.3307:63|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |VASPandybpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |VASPandybpl.3363:79|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |VASPandybpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |VASPandybpl.3419:82|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |VASPandybpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |VASPandybpl.3475:88|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |VASPandybpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |VASPandybpl.3653:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |VASPandybpl.3788:49|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |VASPandybpl.3838:36|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |VASPandybpl.3857:49|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |VASPandybpl.3945:91|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |VASPandybpl.3959:113|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |VASPandybpl.3973:71|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |VASPandybpl.3987:75|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |VASPandybpl.4001:73|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |VASPandybpl.4021:48|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |VASPandybpl.4037:57|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |VASPandybpl.4051:103|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |VASPandybpl.4065:125|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |VASPandybpl.4079:83|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |VASPandybpl.4093:87|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |VASPandybpl.4107:85|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |VASPandybpl.4121:48|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |VASPandybpl.4134:65|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |VASPandybpl.4638:45|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |VASPandybpl.4651:45|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19) true)
 :qid |VASPandybpl.4664:55|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20) true)
 :qid |VASPandybpl.4678:55|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@20))
)))
(assert (forall ((s@@21 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@21)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@21)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@21))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@21))))
 :qid |VASPandybpl.4698:38|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@22))))
 :qid |VASPandybpl.4719:44|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@23))))
 :qid |VASPandybpl.4770:53|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@24))))
 :qid |VASPandybpl.4832:53|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25) true)
 :qid |VASPandybpl.4858:55|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26) true)
 :qid |VASPandybpl.4872:55|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@27)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@27))))
 :qid |VASPandybpl.4889:38|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@28)))
 :qid |VASPandybpl.4903:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@29)))
 :qid |VASPandybpl.4917:48|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@30))))
 :qid |VASPandybpl.4937:41|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@31)))
 :qid |VASPandybpl.4952:53|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@32)))
 :qid |VASPandybpl.4966:53|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@33))))
 :qid |VASPandybpl.4983:60|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@34))))
 :qid |VASPandybpl.5000:60|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |VASPandybpl.5017:57|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36) true)
 :qid |VASPandybpl.7228:68|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@37))))
 :qid |VASPandybpl.7250:66|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@38))))
 :qid |VASPandybpl.7276:66|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@39)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@39)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@39))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@39))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@39))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@39))))
 :qid |VASPandybpl.7305:48|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@39))
)))
(assert (forall ((s@@40 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@40) true)
 :qid |VASPandybpl.7671:31|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@41) true)
 :qid |VASPandybpl.8015:31|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@41))
)))
(assert (forall ((s@@42 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@42)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@42)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@42))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@42))))
 :qid |VASPandybpl.8034:35|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@42))
)))
(assert (forall ((s@@43 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@43) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@43)))
 :qid |VASPandybpl.8460:71|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@44) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@44)))
 :qid |VASPandybpl.8509:46|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@45) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@45)))
 :qid |VASPandybpl.8522:64|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@46) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@46)))
 :qid |VASPandybpl.8535:75|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@47) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@47)))
 :qid |VASPandybpl.8548:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@48)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@48)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@48))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@48))))
 :qid |VASPandybpl.8577:46|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@48))
)))
(assert (forall ((s@@49 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@49)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@49)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@49))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@49))))
 :qid |VASPandybpl.8598:55|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@49))
)))
(assert (forall ((s@@50 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@50) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@50)))
 :qid |VASPandybpl.8644:38|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@50))
)))
(assert (forall ((s@@51 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@51) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@51)))
 :qid |VASPandybpl.8658:39|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@51))
)))
(assert (forall ((s@@52 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52))))
 :qid |VASPandybpl.10759:65|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@53)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@53))))
 :qid |VASPandybpl.11158:60|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54))))
 :qid |VASPandybpl.11175:66|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@55)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@55)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@55))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@55))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@55))))
 :qid |VASPandybpl.11204:50|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@56) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@56)))
 :qid |VASPandybpl.11223:45|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@57)) true))
 :qid |VASPandybpl.11547:87|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@58) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@58)))
 :qid |VASPandybpl.11764:43|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@59)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@59))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@59))))
 :qid |VASPandybpl.11783:48|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@60) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@60)))
 :qid |VASPandybpl.11798:50|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@61)))
 :qid |VASPandybpl.11812:47|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@62)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@62))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@62))))
 :qid |VASPandybpl.11832:58|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@63) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@63)))
 :qid |VASPandybpl.11847:39|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@64))))
 :qid |VASPandybpl.11869:58|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65))))
 :qid |VASPandybpl.11886:58|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66) true)
 :qid |VASPandybpl.11901:51|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67))))
 :qid |VASPandybpl.11918:60|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@68)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@68))))
 :qid |VASPandybpl.12216:47|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@69))))
 :qid |VASPandybpl.12238:63|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@70)))
 :qid |VASPandybpl.12253:57|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@71)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@71))))
 :qid |VASPandybpl.12269:54|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@72)))
 :qid |VASPandybpl.12283:55|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@73)))
 :qid |VASPandybpl.12297:57|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@74))))
 :qid |VASPandybpl.12319:56|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@75))))
 :qid |VASPandybpl.12344:52|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@76)))
 :qid |VASPandybpl.12360:54|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@77)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@77)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@77))))
 :qid |VASPandybpl.13231:45|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@78) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@78)))
 :qid |VASPandybpl.13245:51|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@79)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@79)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@79))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@79))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@79))))
 :qid |VASPandybpl.13268:48|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@80)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@80)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@80))))
 :qid |VASPandybpl.13582:47|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@81)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@81))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@81))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@81))))
 :qid |VASPandybpl.13606:47|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@82) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@82)))
 :qid |VASPandybpl.13861:49|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@83)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@83)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@83))))
 :qid |VASPandybpl.13904:49|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@84)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@84)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@84))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@84))))
 :qid |VASPandybpl.13933:48|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@85) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@85)))
 :qid |VASPandybpl.14228:47|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@85))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_59235 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59235 v@@26))
)))
(assert (forall ((v@@27 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_58841 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58841 v@@27))
)))
(assert (forall ((v@@28 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_58644 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58644 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@4 (ReverseVec_59038 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59038 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@5 (ReverseVec_58053 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58053 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@6 (ReverseVec_58250 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58250 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@7 (ReverseVec_58447 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58447 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_57856 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57856 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |VASPandybpl.245:54|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_64991|) (|l#1| |T@[$1_Event_EventHandle]Multiset_64991|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_64991| (|Select__T@[$1_Event_EventHandle]Multiset_64991_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_64991| (|Select__T@[$1_Event_EventHandle]Multiset_64991_| |l#1| handle@@0))))
(Multiset_64991 (|lambda#3| (|v#Multiset_64991| (|Select__T@[$1_Event_EventHandle]Multiset_64991_| |l#0@@0| handle@@0)) (|v#Multiset_64991| (|Select__T@[$1_Event_EventHandle]Multiset_64991_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |VASPandybpl.2548:13|
 :skolemid |303|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |VASPandybpl.124:29|
 :skolemid |304|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1| () Bool)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_114439)
(declare-fun $t1 () Int)
(declare-fun |$1_AccountLimits_Window'#0'_$memory| () T@$Memory_110288)
(declare-fun $t2 () Bool)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_114503)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'#0'_| (|T@[Int]$1_AccountLimits_Window'#0'| Int) |T@$1_AccountLimits_Window'#0'|)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_VASP_has_account_limits$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 201242) (let ((anon7_Else_correct  (=> (not false) (=> (and (= |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1| |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1|) (= (ControlFlow 0 148047) (- 0 201550))) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a)))
 :qid |VASPandybpl.8765:15|
 :skolemid |162|
))))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_AccountLimits_has_window_published'#0'$0$anon0_correct|  (=> (= $t1 $t1) (=> (and (= |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1| (|Select__T@[Int]Bool_| (|domain#$Memory_110288| |$1_AccountLimits_Window'#0'_$memory|) $t1)) (= |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1| |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1|)) (and (=> (= (ControlFlow 0 147998) 148061) anon7_Then_correct) (=> (= (ControlFlow 0 147998) 148047) anon7_Else_correct))))))
(let ((anon6_Else_correct  (=> (and (and (not $t2) (|$IsValid'address'| $t1)) (and (= $t1 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0)))) (= (ControlFlow 0 148004) 147998))) |inline$$1_AccountLimits_has_window_published'#0'$0$anon0_correct|)))
(let ((anon6_Then_correct true))
(let ((anon0$1_correct  (=> (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |VASPandybpl.8687:20|
 :skolemid |158|
)) (=> (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_110288| |$1_AccountLimits_Window'#0'_$memory|) $a_0)))
(|$IsValid'$1_AccountLimits_Window'#0''| $rsc))
 :qid |VASPandybpl.8693:20|
 :skolemid |159|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_110288| |$1_AccountLimits_Window'#0'_$memory|) $a_0))
))) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@0)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@0))
 :qid |VASPandybpl.8697:20|
 :skolemid |160|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@1)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@1))
 :qid |VASPandybpl.8701:20|
 :skolemid |161|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@1))
))) (and (= _$t0 _$t0) (= $t2  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0)))))) (and (=> (= (ControlFlow 0 147879) 148105) anon6_Then_correct) (=> (= (ControlFlow 0 147879) 148004) anon6_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_64991| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64991| stream@@0) v@@35) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 147734) 147879)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 201242) 147734) inline$$InitEventStore$0$anon0_correct)))
anon0_correct)))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () Int)
(declare-fun $t1@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_VASP_is_child$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 201757) (let ((anon0$1_correct@@0  (=> (and (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |VASPandybpl.8801:20|
 :skolemid |163|
)) (|$IsValid'address'| _$t0@@0)) (=> (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@2)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@2))
 :qid |VASPandybpl.8808:20|
 :skolemid |164|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@2))
)) (= _$t0@@0 _$t0@@0)) (and (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@0)) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 148363) (- 0 201892)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 148363) (- 0 201899)) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@0))) (=> (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@0)) (and (=> (= (ControlFlow 0 148363) (- 0 201910)) (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@0)))
 :qid |VASPandybpl.8845:15|
 :skolemid |165|
))) (=> (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@1)))
 :qid |VASPandybpl.8845:15|
 :skolemid |165|
)) (=> (= (ControlFlow 0 148363) (- 0 201935)) (forall ((parent Int) ) (!  (=> (|$IsValid'address'| parent) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) parent) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent)))))
 :qid |VASPandybpl.8850:15|
 :skolemid |166|
)))))))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_64991| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64991| stream@@1) v@@36) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 148186) 148363)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 201757) 148186) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@1 () Int)
(declare-fun $t1@0@@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_VASP_is_parent$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 201971) (let ((anon0$1_correct@@1  (=> (and (forall ((child_addr@@1 Int) ) (!  (=> (|$IsValid'address'| child_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@1)))))
 :qid |VASPandybpl.8877:20|
 :skolemid |167|
)) (|$IsValid'address'| _$t0@@1)) (=> (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@3)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@3))
 :qid |VASPandybpl.8884:20|
 :skolemid |168|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@3))
)) (= _$t0@@1 _$t0@@1)) (and (= $t1@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@1)) (= $t1@0@@0 $t1@0@@0))) (and (=> (= (ControlFlow 0 148614) (- 0 202106)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 148614) (- 0 202113)) (= $t1@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@1))) (=> (= $t1@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@1)) (and (=> (= (ControlFlow 0 148614) (- 0 202124)) (forall ((a@@2 Int) ) (!  (=> (|$IsValid'address'| a@@2) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@2)))
 :qid |VASPandybpl.8921:15|
 :skolemid |169|
))) (=> (forall ((a@@3 Int) ) (!  (=> (|$IsValid'address'| a@@3) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@3)))
 :qid |VASPandybpl.8921:15|
 :skolemid |169|
)) (=> (= (ControlFlow 0 148614) (- 0 202149)) (forall ((parent@@0 Int) ) (!  (=> (|$IsValid'address'| parent@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@0) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@0)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@0)))))
 :qid |VASPandybpl.8926:15|
 :skolemid |170|
)))))))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_64991| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64991| stream@@2) v@@37) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 148437) 148614)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 201971) 148437) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t11 () Bool)
(declare-fun _$t1 () Int)
(declare-fun $t9 () Int)
(declare-fun $t8 () Bool)
(declare-fun _$t0@@2 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t10 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t7 () Int)
(declare-fun $t2@0 () Bool)
(declare-fun $t4 () Bool)
(declare-fun $t5 () Bool)
(push 1)
(set-info :boogie-vc-id $1_VASP_is_same_vasp$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 202190) (let ((L9_correct  (=> (= (ControlFlow 0 149111) (- 0 202708)) false)))
(let ((anon13_Then_correct  (=> $t11 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1))) (= 7 $t9)) (and (= $t9 $t9) (= (ControlFlow 0 149101) 149111))) L9_correct))))
(let ((anon12_Then_correct  (=> $t8 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@2))) (= 7 $t9)) (and (= $t9 $t9) (= (ControlFlow 0 149149) 149111))) L9_correct))))
(let ((L7_correct  (=> (= $t3@0 $t3@0) (and (=> (= (ControlFlow 0 148957) (- 0 202628)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 148957) (- 0 202635)) (= $t3@0  (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@2)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@2) _$t0@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@2))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1))))))) (=> (= $t3@0  (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@2)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@2) _$t0@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@2))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 148957) (- 0 202649)) (forall ((a@@4 Int) ) (!  (=> (|$IsValid'address'| a@@4) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@4)))
 :qid |VASPandybpl.9190:15|
 :skolemid |174|
))) (=> (forall ((a@@5 Int) ) (!  (=> (|$IsValid'address'| a@@5) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@5)))
 :qid |VASPandybpl.9190:15|
 :skolemid |174|
)) (=> (= (ControlFlow 0 148957) (- 0 202674)) (forall ((parent@@1 Int) ) (!  (=> (|$IsValid'address'| parent@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@1) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@1)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@1)))))
 :qid |VASPandybpl.9195:15|
 :skolemid |175|
))))))))))))
(let ((anon13_Else_correct  (=> (not $t11) (=> (and (|$IsValid'address'| $t10) (= $t10 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1))))) (=> (and (and (= $t12@0 (= $t7 $t10)) (= $t12@0 $t12@0)) (and (= $t3@0 $t12@0) (= (ControlFlow 0 149063) 148957))) L7_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not $t8) (|$IsValid'address'| $t7)) (and (= $t7 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@2) _$t0@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@2)))) (= $t11  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 149027) 149101) anon13_Then_correct) (=> (= (ControlFlow 0 149027) 149063) anon13_Else_correct)))))
(let ((anon11_Then_correct  (=> (and $t2@0 (= $t8  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@2))))) (and (=> (= (ControlFlow 0 148983) 149149) anon12_Then_correct) (=> (= (ControlFlow 0 148983) 149027) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (and (and (not $t2@0) (= false false)) (and (= $t3@0 false) (= (ControlFlow 0 148865) 148957))) L7_correct)))
(let ((anon10_Else_correct  (=> (not $t4) (=> (and (= false false) (= $t2@0 false)) (and (=> (= (ControlFlow 0 148843) 148983) anon11_Then_correct) (=> (= (ControlFlow 0 148843) 148865) anon11_Else_correct))))))
(let ((anon10_Then_correct  (=> (and (and $t4 (= $t5  (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1)))) (and (= $t5 $t5) (= $t2@0 $t5))) (and (=> (= (ControlFlow 0 149177) 148983) anon11_Then_correct) (=> (= (ControlFlow 0 149177) 148865) anon11_Else_correct)))))
(let ((anon0$1_correct@@2  (=> (and (and (and (forall ((child_addr@@2 Int) ) (!  (=> (|$IsValid'address'| child_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@2)))))
 :qid |VASPandybpl.8966:20|
 :skolemid |171|
)) (|$IsValid'address'| _$t0@@2)) (and (|$IsValid'address'| _$t1) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@4)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@4))
 :qid |VASPandybpl.8976:20|
 :skolemid |172|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@4))
)))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@5)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@5))
 :qid |VASPandybpl.8980:20|
 :skolemid |173|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@5))
)) (= _$t0@@2 _$t0@@2)) (and (= _$t1 _$t1) (= $t4  (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@2)))))) (and (=> (= (ControlFlow 0 148823) 149177) anon10_Then_correct) (=> (= (ControlFlow 0 148823) 148843) anon10_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_64991| stream@@3) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64991| stream@@3) v@@38) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 148690) 148823)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 202190) 148690) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t1@0@@1 () Bool)
(declare-fun _$t0@@3 () Int)
(declare-fun $t2@@0 () Bool)
(declare-fun $t4@@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_VASP_is_vasp$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 202722) (let ((L3_correct  (=> (= $t1@0@@1 $t1@0@@1) (and (=> (= (ControlFlow 0 149510) (- 0 202936)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 149510) (- 0 202943)) (= $t1@0@@1  (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@3)))) (=> (= $t1@0@@1  (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@3))) (and (=> (= (ControlFlow 0 149510) (- 0 202956)) (forall ((a@@6 Int) ) (!  (=> (|$IsValid'address'| a@@6) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@6)))
 :qid |VASPandybpl.9347:15|
 :skolemid |179|
))) (=> (forall ((a@@7 Int) ) (!  (=> (|$IsValid'address'| a@@7) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@7)))
 :qid |VASPandybpl.9347:15|
 :skolemid |179|
)) (=> (= (ControlFlow 0 149510) (- 0 202981)) (forall ((parent@@2 Int) ) (!  (=> (|$IsValid'address'| parent@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@2) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@2)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@2)))))
 :qid |VASPandybpl.9352:15|
 :skolemid |180|
))))))))))))
(let ((anon3_Else_correct  (=> (not $t2@@0) (=> (and (and (= $t4@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@3)) (= $t4@@0 $t4@@0)) (and (= $t1@0@@1 $t4@@0) (= (ControlFlow 0 149420) 149510))) L3_correct))))
(let ((anon3_Then_correct  (=> (and (and $t2@@0 (= true true)) (and (= $t1@0@@1 true) (= (ControlFlow 0 149528) 149510))) L3_correct)))
(let ((anon0$1_correct@@3  (=> (and (forall ((child_addr@@3 Int) ) (!  (=> (|$IsValid'address'| child_addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@3)))))
 :qid |VASPandybpl.9239:20|
 :skolemid |176|
)) (|$IsValid'address'| _$t0@@3)) (=> (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@6)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@6))
 :qid |VASPandybpl.9246:20|
 :skolemid |177|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@7)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@7))
 :qid |VASPandybpl.9250:20|
 :skolemid |178|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@7))
))) (and (= _$t0@@3 _$t0@@3) (= $t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@3)))) (and (=> (= (ControlFlow 0 149392) 149528) anon3_Then_correct) (=> (= (ControlFlow 0 149392) 149420) anon3_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_64991| stream@@4) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64991| stream@@4) v@@39) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 149271) 149392)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 202722) 149271) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3)))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@4 () Int)
(declare-fun $t3@0@@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2@@1 () Bool)
(declare-fun $t3 () Int)
(declare-fun $t5@0 () Int)
(declare-fun $t4@1 () T@$1_VASP_ParentVASP)
(declare-fun $t4@@1 () T@$1_VASP_ParentVASP)
(declare-fun $t1@@0 () Int)
(declare-fun $t4@0 () T@$1_VASP_ParentVASP)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_VASP_num_children$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 203021) (let ((L2_correct  (and (=> (= (ControlFlow 0 149913) (- 0 203420)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@4)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@4))) (=> (= (ControlFlow 0 149913) (- 0 203427)) (and (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@4))) (= 7 $t3@0@@0)))))))
(let ((anon11_Then_correct@@0  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t3@0@@0 $abort_code@1) (= (ControlFlow 0 149877) 149913))) L2_correct)))
(let ((anon9_Then_correct  (=> $t2@@1 (=> (and (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@4))) (= 7 $t3)) (= $t3 $t3)) (and (= $t3@0@@0 $t3) (= (ControlFlow 0 150003) 149913))) L2_correct))))
(let ((anon11_Else_correct@@0  (=> (not $abort_flag@0) (=> (and (= $t5@0 (|$num_children#$1_VASP_ParentVASP| $t4@1)) (= $t5@0 $t5@0)) (and (=> (= (ControlFlow 0 149863) (- 0 203339)) (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@4))))) (=> (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@4)))) (and (=> (= (ControlFlow 0 149863) (- 0 203351)) (forall ((a@@8 Int) ) (!  (=> (|$IsValid'address'| a@@8) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@8)))
 :qid |VASPandybpl.9472:15|
 :skolemid |184|
))) (=> (forall ((a@@9 Int) ) (!  (=> (|$IsValid'address'| a@@9) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@9)))
 :qid |VASPandybpl.9472:15|
 :skolemid |184|
)) (=> (= (ControlFlow 0 149863) (- 0 203376)) (forall ((parent@@3 Int) ) (!  (=> (|$IsValid'address'| parent@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@3) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@3)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@3)))))
 :qid |VASPandybpl.9477:15|
 :skolemid |185|
)))))))))))
(let ((anon10_Then$1_correct  (=> (= $t4@1 $t4@@1) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 149965) 149877) anon11_Then_correct@@0) (=> (= (ControlFlow 0 149965) 149863) anon11_Else_correct@@0))))))
(let ((anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t1@@0)) (= (ControlFlow 0 149963) 149965)) anon10_Then$1_correct)))
(let ((anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t1@@0) (=> (and (and (= $t4@0 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $t1@@0)) (= $t4@1 $t4@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 149769) 149877) anon11_Then_correct@@0) (=> (= (ControlFlow 0 149769) 149863) anon11_Else_correct@@0))))))
(let ((anon9_Else_correct  (=> (not $t2@@1) (=> (and (|$IsValid'address'| $t1@@0) (= $t1@@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@4) _$t0@@4 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@4))))) (and (=> (= (ControlFlow 0 149755) 149963) anon10_Then_correct@@0) (=> (= (ControlFlow 0 149755) 149769) anon10_Else_correct@@0))))))
(let ((anon0$1_correct@@4  (=> (and (forall ((child_addr@@4 Int) ) (!  (=> (|$IsValid'address'| child_addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@4)))))
 :qid |VASPandybpl.9383:20|
 :skolemid |181|
)) (|$IsValid'address'| _$t0@@4)) (=> (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@8)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@8))
 :qid |VASPandybpl.9389:20|
 :skolemid |182|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@9)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@9))
 :qid |VASPandybpl.9393:20|
 :skolemid |183|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@9))
))) (and (= _$t0@@4 _$t0@@4) (= $t2@@1  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@4)))))) (and (=> (= (ControlFlow 0 149733) 150003) anon9_Then_correct) (=> (= (ControlFlow 0 149733) 149755) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_64991| stream@@5) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64991| stream@@5) v@@40) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 149608) 149733)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 203021) 149608) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@0@@0 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t9@0 () Int)
(declare-fun $t8@1 () T@$1_VASP_ChildVASP)
(declare-fun $t3@@0 () Bool)
(declare-fun $t7@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t8@@0 () T@$1_VASP_ChildVASP)
(declare-fun $t8@0 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t4@@2 () Bool)
(declare-fun $t6 () Int)
(push 1)
(set-info :boogie-vc-id $1_VASP_parent_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 203455) (let ((L3_correct@@0  (=> (= $t2@0@@0 $t2@0@@0) (and (=> (= (ControlFlow 0 150476) (- 0 203865)) (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@5))))) (=> (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@5)))) (and (=> (= (ControlFlow 0 150476) (- 0 203884)) (= $t2@0@@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@5) _$t0@@5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@5))))) (=> (= $t2@0@@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@5) _$t0@@5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@5)))) (and (=> (= (ControlFlow 0 150476) (- 0 203897)) (forall ((a@@10 Int) ) (!  (=> (|$IsValid'address'| a@@10) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@10)))
 :qid |VASPandybpl.9695:15|
 :skolemid |189|
))) (=> (forall ((a@@11 Int) ) (!  (=> (|$IsValid'address'| a@@11) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@11)))
 :qid |VASPandybpl.9695:15|
 :skolemid |189|
)) (=> (= (ControlFlow 0 150476) (- 0 203922)) (forall ((parent@@4 Int) ) (!  (=> (|$IsValid'address'| parent@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@4) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@4)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@4)))))
 :qid |VASPandybpl.9700:15|
 :skolemid |190|
))))))))))))
(let ((anon18_Else_correct  (=> (and (not $abort_flag@0@@0) (= $t9@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| $t8@1))) (=> (and (and (= $t9@0 $t9@0) (= $t9@0 $t9@0)) (and (= $t2@0@@0 $t9@0) (= (ControlFlow 0 150370) 150476))) L3_correct@@0))))
(let ((anon15_Then_correct  (=> (and (and $t3@@0 (= _$t0@@5 _$t0@@5)) (and (= $t2@0@@0 _$t0@@5) (= (ControlFlow 0 150556) 150476))) L3_correct@@0)))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 150322) (- 0 203775)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@5)))) (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@5))) (=> (= (ControlFlow 0 150322) (- 0 203789)) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@5))) (= 7 $t7@0)))))))
(let ((anon18_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t7@0 $abort_code@1@@0) (= (ControlFlow 0 150490) 150322))) L7_correct@@0)))
(let ((anon17_Then$1_correct  (=> (= $t8@1 $t8@@0) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 150542) 150490) anon18_Then_correct) (=> (= (ControlFlow 0 150542) 150370) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@5)) (= (ControlFlow 0 150540) 150542)) anon17_Then$1_correct)))
(let ((anon17_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@5) (=> (and (and (= $t8@0 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@5)) (= $t8@1 $t8@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 150340) 150490) anon18_Then_correct) (=> (= (ControlFlow 0 150340) 150370) anon18_Else_correct))))))
(let ((anon16_Then_correct  (=> $t4@@2 (and (=> (= (ControlFlow 0 150326) 150540) anon17_Then_correct) (=> (= (ControlFlow 0 150326) 150340) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not $t4@@2) (=> (and (|$IsValid'u64'| 2) (|$IsValid'u64'| $t6)) (=> (and (and (= $t6 7) (= $t6 $t6)) (and (= $t7@0 $t6) (= (ControlFlow 0 150270) 150322))) L7_correct@@0)))))
(let ((anon15_Else_correct  (=> (and (not $t3@@0) (= $t4@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t0@@5))) (and (=> (= (ControlFlow 0 150238) 150326) anon16_Then_correct) (=> (= (ControlFlow 0 150238) 150270) anon16_Else_correct)))))
(let ((anon0$1_correct@@5  (=> (and (forall ((child_addr@@5 Int) ) (!  (=> (|$IsValid'address'| child_addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@5)))))
 :qid |VASPandybpl.9529:20|
 :skolemid |186|
)) (|$IsValid'address'| _$t0@@5)) (=> (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@10)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@10))
 :qid |VASPandybpl.9536:20|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@11)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@11))
 :qid |VASPandybpl.9540:20|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@11))
))) (and (= _$t0@@5 _$t0@@5) (= $t3@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@5)))) (and (=> (= (ControlFlow 0 150218) 150556) anon15_Then_correct) (=> (= (ControlFlow 0 150218) 150238) anon15_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_64991| stream@@6) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64991| stream@@6) v@@41) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 150097) 150218)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 203455) 150097) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2 () Bool)
(declare-fun $1_VASP_ChildVASP_$memory@1 () T@$Memory_114439)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_114503)
(declare-fun $t11@@0 () Int)
(declare-fun $t12 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_94498)
(declare-fun $t13 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0@@6 () Int)
(declare-fun $t16@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $1_VASP_ChildVASP_$memory@0 () T@$Memory_114439)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int T@$1_VASP_ChildVASP) |T@[Int]$1_VASP_ChildVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ChildVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t37@0 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t28@1 () T@$Mutation_12329)
(declare-fun $t28@0 () T@$Mutation_12329)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t27@2 () T@$Mutation_118315)
(declare-fun $t27@1 () T@$Mutation_118315)
(declare-fun |Store__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int T@$1_VASP_ParentVASP) |T@[Int]$1_VASP_ParentVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ParentVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t23 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t34@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t33 () Int)
(declare-fun $t29@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t27 () T@$Mutation_118315)
(declare-fun $t27@0 () T@$Mutation_118315)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t24 () Bool)
(declare-fun $t26 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t22 () Int)
(declare-fun $t19 () Bool)
(declare-fun $t17 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t16 () Int)
(declare-fun $t15 () Bool)
(declare-fun $t14 () Int)
(declare-fun $t3@@1 () T@$Mutation_12329)
(declare-fun $t28 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_VASP_publish_child_vasp_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 203962) (let ((anon37_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 152165) (- 0 205499)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) addr) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory@1) addr)))
 :qid |VASPandybpl.10225:15|
 :skolemid |199|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory@1) addr@@0)))
 :qid |VASPandybpl.10225:15|
 :skolemid |199|
)) (and (=> (= (ControlFlow 0 152165) (- 0 205523)) (forall ((child_addr@@6 Int) ) (!  (=> (|$IsValid'address'| child_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory@1) child_addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory@1) child_addr@@6)))))
 :qid |VASPandybpl.10231:15|
 :skolemid |200|
))) (=> (forall ((child_addr@@7 Int) ) (!  (=> (|$IsValid'address'| child_addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory@1) child_addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory@1) child_addr@@7)))))
 :qid |VASPandybpl.10231:15|
 :skolemid |200|
)) (and (=> (= (ControlFlow 0 152165) (- 0 205552)) (forall ((a@@12 Int) ) (!  (=> (|$IsValid'address'| a@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@12) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) a@@12) a@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory@1) a@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) a@@12) a@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@12))))))
 :qid |VASPandybpl.10237:15|
 :skolemid |201|
))) (=> (forall ((a@@13 Int) ) (!  (=> (|$IsValid'address'| a@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@13) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) a@@13) a@@13 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory@1) a@@13))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) a@@13) a@@13 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@13))))))
 :qid |VASPandybpl.10237:15|
 :skolemid |201|
)) (and (=> (= (ControlFlow 0 152165) (- 0 205588)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t11@@0)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t11@@0))) (and (=> (= (ControlFlow 0 152165) (- 0 205599)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t12))) (and (=> (= (ControlFlow 0 152165) (- 0 205611)) (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536))) (=> (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (and (=> (= (ControlFlow 0 152165) (- 0 205629)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t13)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t13))) (and (=> (= (ControlFlow 0 152165) (- 0 205641)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t13)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t13)) 5))) (and (=> (= (ControlFlow 0 152165) (- 0 205659)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t11@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t11@@0))) (and (=> (= (ControlFlow 0 152165) (- 0 205671)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t11@@0)) 6)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t11@@0)) 6))) (and (=> (= (ControlFlow 0 152165) (- 0 205689)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory@0) _$t0@@6)) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@6)) 1))) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory@0) _$t0@@6)) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@6)) 1)) (and (=> (= (ControlFlow 0 152165) (- 0 205710)) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory@1) $t11@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory@1) $t11@@0) (=> (= (ControlFlow 0 152165) (- 0 205718)) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) $t11@@0) $t11@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory@1) $t11@@0))) _$t0@@6)))))))))))))))))))))))))))))
(let ((L7_correct@@1  (and (=> (= (ControlFlow 0 151330) (- 0 205283)) (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t11@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t12))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t13)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t11@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t11@@0)) 6)))) (=> (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t11@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t12))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t13)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t11@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t11@@0)) 6))) (=> (= (ControlFlow 0 151330) (- 0 205361)) (or (or (or (or (or (or (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t11@@0)) (= 6 $t16@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t12)) (= 7 $t16@0))) (and (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536) (= 8 $t16@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t13)) (= 5 $t16@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t13)) 5)) (= 3 $t16@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t11@@0)) (= 5 $t16@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t11@@0)) 6)) (= 3 $t16@0))))))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t16@0 $abort_code@3) (= (ControlFlow 0 152179) 151330))) L7_correct@@1)))
(let ((anon36_Then$1_correct  (=> (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 152229) 152179) anon37_Then_correct) (=> (= (ControlFlow 0 152229) 152165) anon37_Else_correct))))))
(let ((anon36_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1@@0) (= (ControlFlow 0 152227) 152229)) anon36_Then$1_correct)))
(let ((anon36_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1@@0)) (=> (and (and (= $1_VASP_ChildVASP_$memory@0 ($Memory_114439 (|Store__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1@@0 true) (|Store__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) _$t1@@0 $t37@0))) (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 151912) 152179) anon37_Then_correct) (=> (= (ControlFlow 0 151912) 152165) anon37_Else_correct))))))
(let ((anon35_Else_correct  (=> (and (and (not $abort_flag@1) (= $t28@1 ($Mutation_12329 (|l#$Mutation_12329| $t28@0) (|p#$Mutation_12329| $t28@0) inline$$AddU64$0$dst@2))) (and (= $t27@2 ($Mutation_118315 (|l#$Mutation_118315| $t27@1) (|p#$Mutation_118315| $t27@1) ($1_VASP_ParentVASP (|v#$Mutation_12329| $t28@1)))) (= $1_VASP_ParentVASP_$memory@0 ($Memory_114503 (|Store__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_118315| $t27@2)) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_118315| $t27@2)) (|v#$Mutation_118315| $t27@2)))))) (and (=> (= (ControlFlow 0 151894) (- 0 205068)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) addr@@1)))
 :qid |VASPandybpl.10181:15|
 :skolemid |196|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) addr@@2)))
 :qid |VASPandybpl.10181:15|
 :skolemid |196|
)) (and (=> (= (ControlFlow 0 151894) (- 0 205092)) (forall ((child_addr@@8 Int) ) (!  (=> (|$IsValid'address'| child_addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@8)))))
 :qid |VASPandybpl.10187:15|
 :skolemid |197|
))) (=> (forall ((child_addr@@9 Int) ) (!  (=> (|$IsValid'address'| child_addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@9)))))
 :qid |VASPandybpl.10187:15|
 :skolemid |197|
)) (and (=> (= (ControlFlow 0 151894) (- 0 205123)) (forall ((a@@14 Int) ) (!  (=> (|$IsValid'address'| a@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@14) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) a@@14) a@@14 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@14))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) a@@14) a@@14 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@14))))))
 :qid |VASPandybpl.10193:15|
 :skolemid |198|
))) (=> (forall ((a@@15 Int) ) (!  (=> (|$IsValid'address'| a@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@15) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@0) a@@15) a@@15 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@15))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) a@@15) a@@15 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@15))))))
 :qid |VASPandybpl.10193:15|
 :skolemid |198|
)) (=> (= $t37@0 ($1_VASP_ChildVASP $t23)) (and (=> (= (ControlFlow 0 151894) 152227) anon36_Then_correct) (=> (= (ControlFlow 0 151894) 151912) anon36_Else_correct))))))))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t16@0 $abort_code@2) (= (ControlFlow 0 152243) 151330))) L7_correct@@1)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 151733) 152243) anon35_Then_correct) (=> (= (ControlFlow 0 151733) 151894) anon35_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t34@0 1) $MAX_U64) (= (ControlFlow 0 151731) 151733)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t34@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t34@0 1)) (= $abort_flag@1 $abort_flag@0@@1)) (and (= $abort_code@2 $abort_code@1@@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 151679) 152243) anon35_Then_correct) (=> (= (ControlFlow 0 151679) 151894) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> inline$$Lt$0$dst@1 (=> (and (= $t34@0 (|v#$Mutation_12329| $t28@0)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 151739) 151731) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 151739) 151679) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon34_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t33 $t33)) (and (= $t16@0 $t33) (= (ControlFlow 0 151572) 151330))) L7_correct@@1)))
(let ((anon33_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t33) (= $t33 8)) (and (= $t33 $t33) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 151556) 151739) anon34_Then_correct) (=> (= (ControlFlow 0 151556) 151572) anon34_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t29@0 65536)) (= (ControlFlow 0 151520) 151556)) anon33_Else$1_correct)))
(let ((anon33_Else_correct  (=> (not $abort_flag@0@@1) (=> (and (= $t28@0 ($Mutation_12329 (|l#$Mutation_118315| $t27@1) (seq.++ (|p#$Mutation_118315| $t27@1) (seq.unit 0)) (|$num_children#$1_VASP_ParentVASP| (|v#$Mutation_118315| $t27@1)))) (= |$temp_0'u64'@0| (|v#$Mutation_12329| $t28@0))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= $t29@0 (|v#$Mutation_12329| $t28@0))) (and (|$IsValid'u64'| 65536) (= (ControlFlow 0 151526) 151520))) inline$$Lt$0$anon0_correct)))))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t16@0 $abort_code@1@@1) (= (ControlFlow 0 152257) 151330))) L7_correct@@1)))
(let ((anon32_Then$1_correct  (=> (= $t27@1 $t27) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 152309) 152257) anon33_Then_correct) (=> (= (ControlFlow 0 152309) 151526) anon33_Else_correct))))))
(let ((anon32_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t23)) (= (ControlFlow 0 152307) 152309)) anon32_Then$1_correct)))
(let ((anon32_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t23) (=> (and (and (= $t27@0 ($Mutation_118315 ($Global $t23) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $t23))) (= $t27@1 $t27@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 151438) 152257) anon33_Then_correct) (=> (= (ControlFlow 0 151438) 151526) anon33_Else_correct))))))
(let ((anon31_Then_correct  (=> $t24 (and (=> (= (ControlFlow 0 151416) 152307) anon32_Then_correct) (=> (= (ControlFlow 0 151416) 151438) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (and (not $t24) (= $t26 $t26)) (and (= $t16@0 $t26) (= (ControlFlow 0 151412) 151330))) L7_correct@@1)))
(let ((anon30_Then_correct  (=> (and inline$$Not$0$dst@1 (|$IsValid'address'| $t23)) (=> (and (and (and (= $t23 _$t0@@6) (= $t23 $t23)) (and (= $t24 (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t23)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t26) (= $t26 7)) (and (= $t26 $t26) (= $t24 $t24)))) (and (=> (= (ControlFlow 0 151396) 151416) anon31_Then_correct) (=> (= (ControlFlow 0 151396) 151412) anon31_Else_correct))))))
(let ((anon30_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t22 $t22)) (and (= $t16@0 $t22) (= (ControlFlow 0 151094) 151330))) L7_correct@@1)))
(let ((anon29_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t22) (= $t22 6)) (and (= $t22 $t22) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 151078) 151396) anon30_Then_correct) (=> (= (ControlFlow 0 151078) 151094) anon30_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t19)) (= (ControlFlow 0 151042) 151078)) anon29_Else$1_correct)))
(let ((anon29_Else_correct  (=> (and (not $t17) (|$IsValid'address'| $t18)) (=> (and (and (= $t18 _$t1@@0) (= $t18 $t18)) (and (= $t19  (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t18) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t18))) (= (ControlFlow 0 151048) 151042))) inline$$Not$0$anon0_correct))))
(let ((anon29_Then_correct  (=> $t17 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) _$t1@@0)) (= 5 $t16)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) _$t1@@0)) 6)) (= 3 $t16))) (= $t16 $t16)) (and (= $t16@0 $t16) (= (ControlFlow 0 152365) 151330))) L7_correct@@1))))
(let ((anon28_Else_correct  (=> (and (not $t15) (= $t17  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) _$t1@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) _$t1@@0)) 6))))) (and (=> (= (ControlFlow 0 150968) 152365) anon29_Then_correct) (=> (= (ControlFlow 0 150968) 151048) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> $t15 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t14)) (= 5 $t16)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t14)) 5)) (= 3 $t16))) (= $t16 $t16)) (and (= $t16@0 $t16) (= (ControlFlow 0 152417) 151330))) L7_correct@@1))))
(let ((anon0$1_correct@@6  (=> (and (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110288| |$1_AccountLimits_Window'#0'_$memory|) addr@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) addr@@3) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) addr@@3)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) addr@@3)) 6)))))
 :qid |VASPandybpl.9791:20|
 :skolemid |191|
)) (forall ((child_addr@@10 Int) ) (!  (=> (|$IsValid'address'| child_addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@10)))))
 :qid |VASPandybpl.9795:20|
 :skolemid |192|
))) (=> (and (and (|$IsValid'address'| _$t0@@6) (|$IsValid'address'| _$t1@@0)) (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $a_0@@12)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@12))
 :qid |VASPandybpl.9804:20|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@13)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@13))
 :qid |VASPandybpl.9808:20|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@13))
)))) (=> (and (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@14)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@14))
 :qid |VASPandybpl.9812:20|
 :skolemid |195|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@14))
)) (= $t11@@0 _$t1@@0)) (and (= $t12 _$t0@@6) (= $t13 _$t0@@6))) (and (and (= _$t0@@6 _$t0@@6) (= _$t1@@0 _$t1@@0)) (and (= $t14 _$t0@@6) (= $t15  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t14)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t14)) 5))))))) (and (=> (= (ControlFlow 0 150928) 152417) anon28_Then_correct) (=> (= (ControlFlow 0 150928) 150968) anon28_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_64991| stream@@7) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64991| stream@@7) v@@42) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 150668) 150928)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (and (and (= (seq.len (|p#$Mutation_12329| $t3@@1)) 0) (= (seq.len (|p#$Mutation_118315| $t27)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t28)) 0) (= (ControlFlow 0 150678) 150668))) inline$$InitEventStore$0$anon0_correct@@6)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 203962) 150678) anon0_correct@@6)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $1_VASP_ParentVASP_$memory@1 () T@$Memory_114503)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_93905)
(declare-fun $t6@@0 () Int)
(declare-fun _$t1@@1 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun $t9@0@@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun _$t0@@7 () Int)
(declare-fun $1_VASP_ParentVASP_$memory@0@@0 () T@$Memory_114503)
(declare-fun $t20@0 () T@$1_VASP_ParentVASP)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t18@@0 () Int)
(declare-fun $t15@@0 () Bool)
(declare-fun $t13@@0 () Bool)
(declare-fun $t14@@0 () Int)
(declare-fun $t12@@0 () Int)
(declare-fun $t9@@0 () Int)
(declare-fun $t11@@1 () Bool)
(declare-fun $t10@@0 () Int)
(declare-fun $t8@@1 () Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(push 1)
(set-info :boogie-vc-id $1_VASP_publish_parent_vasp_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 205738) (let ((anon21_Else_correct  (=> (not $abort_flag@0@@2) (and (=> (= (ControlFlow 0 153647) (- 0 206760)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@1) addr@@4)))
 :qid |VASPandybpl.10644:15|
 :skolemid |208|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@1) addr@@5)))
 :qid |VASPandybpl.10644:15|
 :skolemid |208|
)) (and (=> (= (ControlFlow 0 153647) (- 0 206784)) (forall ((child_addr@@11 Int) ) (!  (=> (|$IsValid'address'| child_addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@1) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@11)))))
 :qid |VASPandybpl.10650:15|
 :skolemid |209|
))) (=> (forall ((child_addr@@12 Int) ) (!  (=> (|$IsValid'address'| child_addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@1) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@12)))))
 :qid |VASPandybpl.10650:15|
 :skolemid |209|
)) (and (=> (= (ControlFlow 0 153647) (- 0 206815)) (forall ((a@@16 Int) ) (!  (=> (|$IsValid'address'| a@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@16) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@1) a@@16) a@@16 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@16))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) a@@16) a@@16 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@16))))))
 :qid |VASPandybpl.10656:15|
 :skolemid |210|
))) (=> (forall ((a@@17 Int) ) (!  (=> (|$IsValid'address'| a@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@17) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@1) a@@17) a@@17 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@17))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) a@@17) a@@17 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@17))))))
 :qid |VASPandybpl.10656:15|
 :skolemid |210|
)) (and (=> (= (ControlFlow 0 153647) (- 0 206852)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 153647) (- 0 206862)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 153647) (- 0 206874)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t6@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (and (=> (= (ControlFlow 0 153647) (- 0 206892)) (not (not (= _$t1@@1 186537453)))) (=> (not (not (= _$t1@@1 186537453))) (and (=> (= (ControlFlow 0 153647) (- 0 206906)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t7@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t7@@0))) (and (=> (= (ControlFlow 0 153647) (- 0 206918)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t7@@0)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t7@@0)) 5))) (and (=> (= (ControlFlow 0 153647) (- 0 206936)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t5@@0)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 153647) (- 0 206947)) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@1) $t5@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory@1) $t5@@0) (and (=> (= (ControlFlow 0 153647) (- 0 206955)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory@1) $t5@@0)) 0)) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory@1) $t5@@0)) 0) (and (=> (= (ControlFlow 0 153647) (- 0 206967)) (forall ((a@@18 Int) ) (!  (=> (|$IsValid'address'| a@@18) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@18)))
 :qid |VASPandybpl.10710:15|
 :skolemid |211|
))) (=> (forall ((a@@19 Int) ) (!  (=> (|$IsValid'address'| a@@19) (= (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) a@@19)))
 :qid |VASPandybpl.10710:15|
 :skolemid |211|
)) (=> (= (ControlFlow 0 153647) (- 0 206992)) (forall ((parent@@5 Int) ) (!  (=> (|$IsValid'address'| parent@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@5) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory@1) parent@@5)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) parent@@5)))))
 :qid |VASPandybpl.10715:15|
 :skolemid |212|
))))))))))))))))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 153330) (- 0 206556)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t1@@1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t7@@0)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t5@@0)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t1@@1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t7@@0)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t5@@0))) (=> (= (ControlFlow 0 153330) (- 0 206628)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t9@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t6@@0)) 1)) (= 3 $t9@0@@0))) (and (not (= _$t1@@1 186537453)) (= 2 $t9@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t7@@0)) (= 5 $t9@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t7@@0)) 5)) (= 3 $t9@0@@0))) (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t5@@0)) (= 6 $t9@0@@0))))))))
(let ((anon21_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t9@0@@0 $abort_code@1@@2) (= (ControlFlow 0 153661) 153330))) L3_correct@@1)))
(let ((anon20_Then$1_correct  (=> (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 153711) 153661) anon21_Then_correct) (=> (= (ControlFlow 0 153711) 153647) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@7) (= (ControlFlow 0 153709) 153711)) anon20_Then$1_correct)))
(let ((anon20_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@7)) (=> (and (and (= $1_VASP_ParentVASP_$memory@0@@0 ($Memory_114503 (|Store__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@7 true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) _$t0@@7 $t20@0))) (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory@0@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 153370) 153661) anon21_Then_correct) (=> (= (ControlFlow 0 153370) 153647) anon21_Else_correct))))))
(let ((anon19_Then_correct  (=> inline$$Not$0$dst@1@@0 (=> (and (|$IsValid'u64'| 0) (= $t20@0 ($1_VASP_ParentVASP 0))) (and (=> (= (ControlFlow 0 153352) 153709) anon20_Then_correct) (=> (= (ControlFlow 0 153352) 153370) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t18@@0 $t18@@0)) (and (= $t9@0@@0 $t18@@0) (= (ControlFlow 0 153106) 153330))) L3_correct@@1)))
(let ((anon18_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t18@@0) (= $t18@@0 6)) (and (= $t18@@0 $t18@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 153090) 153352) anon19_Then_correct) (=> (= (ControlFlow 0 153090) 153106) anon19_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t15@@0)) (= (ControlFlow 0 153054) 153090)) anon18_Else$1_correct)))
(let ((anon18_Else_correct@@0  (=> (and (not $t13@@0) (|$IsValid'address'| $t14@@0)) (=> (and (and (= $t14@@0 _$t0@@7) (= $t14@@0 $t14@@0)) (and (= $t15@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) $t14@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) $t14@@0))) (= (ControlFlow 0 153060) 153054))) inline$$Not$0$anon0_correct@@0))))
(let ((anon18_Then_correct@@0  (=> $t13@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t12@@0)) (= 5 $t9@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t12@@0)) 5)) (= 3 $t9@@0))) (= $t9@@0 $t9@@0)) (and (= $t9@0@@0 $t9@@0) (= (ControlFlow 0 153763) 153330))) L3_correct@@1))))
(let ((anon17_Else_correct@@0  (=> (not $t11@@1) (=> (and (= $t12@@0 _$t0@@7) (= $t13@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t12@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t12@@0)) 5))))) (and (=> (= (ControlFlow 0 152980) 153763) anon18_Then_correct@@0) (=> (= (ControlFlow 0 152980) 153060) anon18_Else_correct@@0))))))
(let ((anon17_Then_correct@@0  (=> $t11@@1 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t10@@0)) (= 5 $t9@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t10@@0)) 1)) (= 3 $t9@@0))) (and (not (= _$t1@@1 186537453)) (= 2 $t9@@0))) (= $t9@@0 $t9@@0)) (and (= $t9@0@@0 $t9@@0) (= (ControlFlow 0 153835) 153330))) L3_correct@@1))))
(let ((anon16_Else_correct@@0  (=> (not $t8@@1) (=> (and (= $t10@@0 _$t1@@1) (= $t11@@1  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) $t10@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $t10@@0)) 1))) (not (= _$t1@@1 186537453))))) (and (=> (= (ControlFlow 0 152932) 153835) anon17_Then_correct@@0) (=> (= (ControlFlow 0 152932) 152980) anon17_Else_correct@@0))))))
(let ((anon16_Then_correct@@0  (=> $t8@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@@0)) (= $t9@@0 $t9@@0)) (and (= $t9@0@@0 $t9@@0) (= (ControlFlow 0 153861) 153330))) L3_correct@@1))))
(let ((anon0$1_correct@@7  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110288| |$1_AccountLimits_Window'#0'_$memory|) addr@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_94498| $1_Roles_RoleId_$memory) addr@@6) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) addr@@6)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) addr@@6)) 6)))))
 :qid |VASPandybpl.10373:20|
 :skolemid |202|
)) (forall ((child_addr@@13 Int) ) (!  (=> (|$IsValid'address'| child_addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_114503| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) child_addr@@13)))))
 :qid |VASPandybpl.10377:20|
 :skolemid |203|
))) (=> (and (and (|$IsValid'address'| _$t0@@7) (|$IsValid'address'| _$t1@@1)) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@15)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@15))
 :qid |VASPandybpl.10386:20|
 :skolemid |204|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@15))
)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $a_0@@16)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@16))
 :qid |VASPandybpl.10390:20|
 :skolemid |205|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94498| $1_Roles_RoleId_$memory) $a_0@@16))
)))) (=> (and (and (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@17)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@17))
 :qid |VASPandybpl.10394:20|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_114439| $1_VASP_ChildVASP_$memory) $a_0@@17))
)) (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@18)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@18))
 :qid |VASPandybpl.10398:20|
 :skolemid |207|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_114503| $1_VASP_ParentVASP_$memory) $a_0@@18))
))) (and (= $t5@@0 _$t0@@7) (= $t6@@0 _$t1@@1))) (and (and (= $t7@@0 _$t0@@7) (= _$t0@@7 _$t0@@7)) (and (= _$t1@@1 _$t1@@1) (= $t8@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 152872) 153861) anon16_Then_correct@@0) (=> (= (ControlFlow 0 152872) 152932) anon16_Else_correct@@0))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_64991_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_64991| stream@@8) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64991| stream@@8) v@@43) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 152606) 152872)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 205738) 152606) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 207037) true)
))
(check-sat)
(pop 1)
; Valid
