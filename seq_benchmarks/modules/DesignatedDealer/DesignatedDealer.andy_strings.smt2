(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_95253 0)) ((($Memory_95253 (|domain#$Memory_95253| |T@[Int]Bool|) (|contents#$Memory_95253| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_145580 0)) ((($Memory_145580 (|domain#$Memory_145580| |T@[Int]Bool|) (|contents#$Memory_145580| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_140985 0)) ((($Memory_140985 (|domain#$Memory_140985| |T@[Int]Bool|) (|contents#$Memory_140985| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_138988 0)) ((($Memory_138988 (|domain#$Memory_138988| |T@[Int]Bool|) (|contents#$Memory_138988| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_139268 0)) ((($Memory_139268 (|domain#$Memory_139268| |T@[Int]Bool|) (|contents#$Memory_139268| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_138955 0)) ((($Memory_138955 (|domain#$Memory_138955| |T@[Int]Bool|) (|contents#$Memory_138955| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_129478 0)) ((($Memory_129478 (|domain#$Memory_129478| |T@[Int]Bool|) (|contents#$Memory_129478| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_129179 0)) ((($Memory_129179 (|domain#$Memory_129179| |T@[Int]Bool|) (|contents#$Memory_129179| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_128808 0)) ((($Memory_128808 (|domain#$Memory_128808| |T@[Int]Bool|) (|contents#$Memory_128808| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_126348 0)) ((($Memory_126348 (|domain#$Memory_126348| |T@[Int]Bool|) (|contents#$Memory_126348| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_126284 0)) ((($Memory_126284 (|domain#$Memory_126284| |T@[Int]Bool|) (|contents#$Memory_126284| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_139911 0)) ((($Memory_139911 (|domain#$Memory_139911| |T@[Int]Bool|) (|contents#$Memory_139911| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_124765 0)) ((($Memory_124765 (|domain#$Memory_124765| |T@[Int]Bool|) (|contents#$Memory_124765| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_124255 0)) ((($Memory_124255 (|domain#$Memory_124255| |T@[Int]Bool|) (|contents#$Memory_124255| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_121106 0)) ((($Memory_121106 (|domain#$Memory_121106| |T@[Int]Bool|) (|contents#$Memory_121106| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120887 0)) ((($Memory_120887 (|domain#$Memory_120887| |T@[Int]Bool|) (|contents#$Memory_120887| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_140774 0)) ((($Memory_140774 (|domain#$Memory_140774| |T@[Int]Bool|) (|contents#$Memory_140774| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_112660 0)) ((($Memory_112660 (|domain#$Memory_112660| |T@[Int]Bool|) (|contents#$Memory_112660| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112573 0)) ((($Memory_112573 (|domain#$Memory_112573| |T@[Int]Bool|) (|contents#$Memory_112573| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112486 0)) ((($Memory_112486 (|domain#$Memory_112486| |T@[Int]Bool|) (|contents#$Memory_112486| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107853 0)) ((($Memory_107853 (|domain#$Memory_107853| |T@[Int]Bool|) (|contents#$Memory_107853| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107766 0)) ((($Memory_107766 (|domain#$Memory_107766| |T@[Int]Bool|) (|contents#$Memory_107766| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_113015 0)) ((($Memory_113015 (|domain#$Memory_113015| |T@[Int]Bool|) (|contents#$Memory_113015| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_113440 0)) ((($Memory_113440 (|domain#$Memory_113440| |T@[Int]Bool|) (|contents#$Memory_113440| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112924 0)) ((($Memory_112924 (|domain#$Memory_112924| |T@[Int]Bool|) (|contents#$Memory_112924| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_122947 0)) ((($Memory_122947 (|domain#$Memory_122947| |T@[Int]Bool|) (|contents#$Memory_122947| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113341 0)) ((($Memory_113341 (|domain#$Memory_113341| |T@[Int]Bool|) (|contents#$Memory_113341| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112833 0)) ((($Memory_112833 (|domain#$Memory_112833| |T@[Int]Bool|) (|contents#$Memory_112833| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_125190 0)) ((($Memory_125190 (|domain#$Memory_125190| |T@[Int]Bool|) (|contents#$Memory_125190| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113242 0)) ((($Memory_113242 (|domain#$Memory_113242| |T@[Int]Bool|) (|contents#$Memory_113242| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_104721 0)) ((($Memory_104721 (|domain#$Memory_104721| |T@[Int]Bool|) (|contents#$Memory_104721| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_104634 0)) ((($Memory_104634 (|domain#$Memory_104634| |T@[Int]Bool|) (|contents#$Memory_104634| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_104547 0)) ((($Memory_104547 (|domain#$Memory_104547| |T@[Int]Bool|) (|contents#$Memory_104547| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_144271 0)) ((($Memory_144271 (|domain#$Memory_144271| |T@[Int]Bool|) (|contents#$Memory_144271| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_104460 0)) ((($Memory_104460 (|domain#$Memory_104460| |T@[Int]Bool|) (|contents#$Memory_104460| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_104373 0)) ((($Memory_104373 (|domain#$Memory_104373| |T@[Int]Bool|) (|contents#$Memory_104373| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_103492 0)) ((($Memory_103492 (|domain#$Memory_103492| |T@[Int]Bool|) (|contents#$Memory_103492| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_103559 0)) ((($Memory_103559 (|domain#$Memory_103559| |T@[Int]Bool|) (|contents#$Memory_103559| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_103410 0)) ((($Memory_103410 (|domain#$Memory_103410| |T@[Int]Bool|) (|contents#$Memory_103410| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_103328 0)) ((($Memory_103328 (|domain#$Memory_103328| |T@[Int]Bool|) (|contents#$Memory_103328| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_103246 0)) ((($Memory_103246 (|domain#$Memory_103246| |T@[Int]Bool|) (|contents#$Memory_103246| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_103164 0)) ((($Memory_103164 (|domain#$Memory_103164| |T@[Int]Bool|) (|contents#$Memory_103164| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_103082 0)) ((($Memory_103082 (|domain#$Memory_103082| |T@[Int]Bool|) (|contents#$Memory_103082| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_107308 0)) ((($Memory_107308 (|domain#$Memory_107308| |T@[Int]Bool|) (|contents#$Memory_107308| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107181 0)) ((($Memory_107181 (|domain#$Memory_107181| |T@[Int]Bool|) (|contents#$Memory_107181| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107116 0)) ((($Memory_107116 (|domain#$Memory_107116| |T@[Int]Bool|) (|contents#$Memory_107116| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_102685 0)) ((($Memory_102685 (|domain#$Memory_102685| |T@[Int]Bool|) (|contents#$Memory_102685| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_102652 0)) ((($Memory_102652 (|domain#$Memory_102652| |T@[Int]Bool|) (|contents#$Memory_102652| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_102092 0)) ((($Memory_102092 (|domain#$Memory_102092| |T@[Int]Bool|) (|contents#$Memory_102092| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_69806 0)) (((Multiset_69806 (|v#Multiset_69806| |T@[$EventRep]Int|) (|l#Multiset_69806| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_69806| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_69806|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_141812 0)) ((($Mutation_141812 (|l#$Mutation_141812| T@$Location) (|p#$Mutation_141812| (Seq Int)) (|v#$Mutation_141812| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_141768 0)) ((($Mutation_141768 (|l#$Mutation_141768| T@$Location) (|p#$Mutation_141768| (Seq Int)) (|v#$Mutation_141768| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_136415 0)) ((($Mutation_136415 (|l#$Mutation_136415| T@$Location) (|p#$Mutation_136415| (Seq Int)) (|v#$Mutation_136415| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_33789 0)) ((($Mutation_33789 (|l#$Mutation_33789| T@$Location) (|p#$Mutation_33789| (Seq Int)) (|v#$Mutation_33789| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_119604 0)) ((($Mutation_119604 (|l#$Mutation_119604| T@$Location) (|p#$Mutation_119604| (Seq Int)) (|v#$Mutation_119604| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_105859 0)) ((($Mutation_105859 (|l#$Mutation_105859| T@$Location) (|p#$Mutation_105859| (Seq Int)) (|v#$Mutation_105859| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_95881 0)) ((($Mutation_95881 (|l#$Mutation_95881| T@$Location) (|p#$Mutation_95881| (Seq Int)) (|v#$Mutation_95881| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13434 0)) ((($Mutation_13434 (|l#$Mutation_13434| T@$Location) (|p#$Mutation_13434| (Seq Int)) (|v#$Mutation_13434| Int) ) ) ))
(declare-datatypes ((T@$Mutation_90114 0)) ((($Mutation_90114 (|l#$Mutation_90114| T@$Location) (|p#$Mutation_90114| (Seq Int)) (|v#$Mutation_90114| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_89368 0)) ((($Mutation_89368 (|l#$Mutation_89368| T@$Location) (|p#$Mutation_89368| (Seq Int)) (|v#$Mutation_89368| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_87928 0)) ((($Mutation_87928 (|l#$Mutation_87928| T@$Location) (|p#$Mutation_87928| (Seq Int)) (|v#$Mutation_87928| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_87182 0)) ((($Mutation_87182 (|l#$Mutation_87182| T@$Location) (|p#$Mutation_87182| (Seq Int)) (|v#$Mutation_87182| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_85742 0)) ((($Mutation_85742 (|l#$Mutation_85742| T@$Location) (|p#$Mutation_85742| (Seq Int)) (|v#$Mutation_85742| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_84996 0)) ((($Mutation_84996 (|l#$Mutation_84996| T@$Location) (|p#$Mutation_84996| (Seq Int)) (|v#$Mutation_84996| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_83556 0)) ((($Mutation_83556 (|l#$Mutation_83556| T@$Location) (|p#$Mutation_83556| (Seq Int)) (|v#$Mutation_83556| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_82810 0)) ((($Mutation_82810 (|l#$Mutation_82810| T@$Location) (|p#$Mutation_82810| (Seq Int)) (|v#$Mutation_82810| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_81370 0)) ((($Mutation_81370 (|l#$Mutation_81370| T@$Location) (|p#$Mutation_81370| (Seq Int)) (|v#$Mutation_81370| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_80624 0)) ((($Mutation_80624 (|l#$Mutation_80624| T@$Location) (|p#$Mutation_80624| (Seq Int)) (|v#$Mutation_80624| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_79184 0)) ((($Mutation_79184 (|l#$Mutation_79184| T@$Location) (|p#$Mutation_79184| (Seq Int)) (|v#$Mutation_79184| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_78438 0)) ((($Mutation_78438 (|l#$Mutation_78438| T@$Location) (|p#$Mutation_78438| (Seq Int)) (|v#$Mutation_78438| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_76998 0)) ((($Mutation_76998 (|l#$Mutation_76998| T@$Location) (|p#$Mutation_76998| (Seq Int)) (|v#$Mutation_76998| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_76252 0)) ((($Mutation_76252 (|l#$Mutation_76252| T@$Location) (|p#$Mutation_76252| (Seq Int)) (|v#$Mutation_76252| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_74812 0)) ((($Mutation_74812 (|l#$Mutation_74812| T@$Location) (|p#$Mutation_74812| (Seq Int)) (|v#$Mutation_74812| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_74066 0)) ((($Mutation_74066 (|l#$Mutation_74066| T@$Location) (|p#$Mutation_74066| (Seq Int)) (|v#$Mutation_74066| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_72588 0)) ((($Mutation_72588 (|l#$Mutation_72588| T@$Location) (|p#$Mutation_72588| (Seq Int)) (|v#$Mutation_72588| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_71842 0)) ((($Mutation_71842 (|l#$Mutation_71842| T@$Location) (|p#$Mutation_71842| (Seq Int)) (|v#$Mutation_71842| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_69806_| (|T@[$1_Event_EventHandle]Multiset_69806| T@$1_Event_EventHandle) T@Multiset_69806)
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
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'#0''| (|T@$1_DesignatedDealer_TierInfo'#0'|) Bool)
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
(declare-fun ReverseVec_63362 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_62968 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_62771 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_62574 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_63165 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_61983 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_62180 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_62377 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_61786 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_69806| |T@[$1_Event_EventHandle]Multiset_69806|) |T@[$1_Event_EventHandle]Multiset_69806|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DesignatedDealerandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DesignatedDealerandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DesignatedDealerandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DesignatedDealerandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DesignatedDealerandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DesignatedDealerandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DesignatedDealerandybpl.590:13|
 :skolemid |15|
))))
 :qid |DesignatedDealerandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DesignatedDealerandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DesignatedDealerandybpl.603:17|
 :skolemid |18|
)))))
 :qid |DesignatedDealerandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DesignatedDealerandybpl.770:13|
 :skolemid |20|
))))
 :qid |DesignatedDealerandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DesignatedDealerandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DesignatedDealerandybpl.783:17|
 :skolemid |23|
)))))
 :qid |DesignatedDealerandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DesignatedDealerandybpl.950:13|
 :skolemid |25|
))))
 :qid |DesignatedDealerandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DesignatedDealerandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DesignatedDealerandybpl.963:17|
 :skolemid |28|
)))))
 :qid |DesignatedDealerandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DesignatedDealerandybpl.1130:13|
 :skolemid |30|
))))
 :qid |DesignatedDealerandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DesignatedDealerandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DesignatedDealerandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |DesignatedDealerandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |DesignatedDealerandybpl.1310:13|
 :skolemid |35|
))))
 :qid |DesignatedDealerandybpl.1308:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DesignatedDealerandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DesignatedDealerandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DesignatedDealerandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |DesignatedDealerandybpl.1490:13|
 :skolemid |40|
))))
 :qid |DesignatedDealerandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DesignatedDealerandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DesignatedDealerandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DesignatedDealerandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |DesignatedDealerandybpl.1670:13|
 :skolemid |45|
))))
 :qid |DesignatedDealerandybpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DesignatedDealerandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DesignatedDealerandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DesignatedDealerandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |DesignatedDealerandybpl.1850:13|
 :skolemid |50|
))))
 :qid |DesignatedDealerandybpl.1848:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DesignatedDealerandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DesignatedDealerandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DesignatedDealerandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |DesignatedDealerandybpl.2030:13|
 :skolemid |55|
))))
 :qid |DesignatedDealerandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DesignatedDealerandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DesignatedDealerandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DesignatedDealerandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |DesignatedDealerandybpl.2210:13|
 :skolemid |60|
))))
 :qid |DesignatedDealerandybpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DesignatedDealerandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DesignatedDealerandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DesignatedDealerandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u64'| (seq.nth v@@24 i@@30)))
 :qid |DesignatedDealerandybpl.2390:13|
 :skolemid |65|
))))
 :qid |DesignatedDealerandybpl.2388:29|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u64''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u64'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DesignatedDealerandybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DesignatedDealerandybpl.2403:17|
 :skolemid |68|
)))))
 :qid |DesignatedDealerandybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u64'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'u8'| (seq.nth v@@26 i@@33)))
 :qid |DesignatedDealerandybpl.2570:13|
 :skolemid |70|
))))
 :qid |DesignatedDealerandybpl.2568:28|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 (Seq Int)) (e@@10 Int) ) (! (let ((i@@34 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |DesignatedDealerandybpl.2575:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |DesignatedDealerandybpl.2583:17|
 :skolemid |73|
)))))
 :qid |DesignatedDealerandybpl.2579:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DesignatedDealerandybpl.2756:15|
 :skolemid |75|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DesignatedDealerandybpl.2772:15|
 :skolemid |76|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DesignatedDealerandybpl.2819:15|
 :skolemid |77|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DesignatedDealerandybpl.2822:15|
 :skolemid |78|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_69806_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_69806| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_69806| stream) v@@28) 0)
 :qid |DesignatedDealerandybpl.129:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerandybpl.2898:13|
 :skolemid |79|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DesignatedDealerandybpl.2939:80|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DesignatedDealerandybpl.2945:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DesignatedDealerandybpl.2995:82|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DesignatedDealerandybpl.3001:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DesignatedDealerandybpl.3051:80|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DesignatedDealerandybpl.3057:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DesignatedDealerandybpl.3107:79|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DesignatedDealerandybpl.3113:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DesignatedDealerandybpl.3163:76|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DesignatedDealerandybpl.3169:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DesignatedDealerandybpl.3219:78|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DesignatedDealerandybpl.3225:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DesignatedDealerandybpl.3275:74|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DesignatedDealerandybpl.3281:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DesignatedDealerandybpl.3331:69|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DesignatedDealerandybpl.3337:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DesignatedDealerandybpl.3387:70|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DesignatedDealerandybpl.3393:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |DesignatedDealerandybpl.3443:70|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |DesignatedDealerandybpl.3449:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |DesignatedDealerandybpl.3499:60|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |DesignatedDealerandybpl.3505:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |DesignatedDealerandybpl.3555:66|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |DesignatedDealerandybpl.3561:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |DesignatedDealerandybpl.3611:60|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |DesignatedDealerandybpl.3617:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |DesignatedDealerandybpl.3667:63|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |DesignatedDealerandybpl.3673:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |DesignatedDealerandybpl.3723:79|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |DesignatedDealerandybpl.3729:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |DesignatedDealerandybpl.3779:82|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |DesignatedDealerandybpl.3785:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |DesignatedDealerandybpl.3835:88|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |DesignatedDealerandybpl.3841:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DesignatedDealerandybpl.4013:61|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@0)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@0))))
 :qid |DesignatedDealerandybpl.4148:49|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DesignatedDealerandybpl.4198:36|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@2)))
 :qid |DesignatedDealerandybpl.4217:49|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@3)))
 :qid |DesignatedDealerandybpl.4305:91|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@4)))
 :qid |DesignatedDealerandybpl.4319:113|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@5)))
 :qid |DesignatedDealerandybpl.4333:71|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@6)))
 :qid |DesignatedDealerandybpl.4347:75|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@7)))
 :qid |DesignatedDealerandybpl.4361:73|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@7))
)))
(assert (forall ((s@@8 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@8)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@8)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@8))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@8))))
 :qid |DesignatedDealerandybpl.4381:48|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@8))
)))
(assert (forall ((s@@9 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9) true)
 :qid |DesignatedDealerandybpl.4397:57|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) true)
 :qid |DesignatedDealerandybpl.4411:103|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) true)
 :qid |DesignatedDealerandybpl.4425:125|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12) true)
 :qid |DesignatedDealerandybpl.4439:83|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13) true)
 :qid |DesignatedDealerandybpl.4453:87|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14) true)
 :qid |DesignatedDealerandybpl.4467:85|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@15)))
 :qid |DesignatedDealerandybpl.4481:48|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@16)))
 :qid |DesignatedDealerandybpl.4494:65|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@17)))
 :qid |DesignatedDealerandybpl.5023:45|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@18)))
 :qid |DesignatedDealerandybpl.5036:45|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@19) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@19)))
 :qid |DesignatedDealerandybpl.5049:37|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@20) true)
 :qid |DesignatedDealerandybpl.5062:55|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@21) true)
 :qid |DesignatedDealerandybpl.5076:55|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@21))
)))
(assert (forall ((s@@22 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@22)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@22)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@22))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@22))))
 :qid |DesignatedDealerandybpl.5096:38|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@23)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@23)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@23))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@23))))
 :qid |DesignatedDealerandybpl.5117:44|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@24)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@24)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@24))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@24))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@24))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@24))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@24))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@24))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@24))))
 :qid |DesignatedDealerandybpl.5168:53|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@25)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@25)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@25))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@25))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@25))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@25))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@25))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@25))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@25))))
 :qid |DesignatedDealerandybpl.5230:53|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@26)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@26)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@26))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@26))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@26))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@26))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@26))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@26))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@26))))
 :qid |DesignatedDealerandybpl.5292:45|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@27) true)
 :qid |DesignatedDealerandybpl.5318:55|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@28) true)
 :qid |DesignatedDealerandybpl.5332:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@29) true)
 :qid |DesignatedDealerandybpl.5346:47|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@30)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@30))))
 :qid |DesignatedDealerandybpl.5363:38|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@31)))
 :qid |DesignatedDealerandybpl.5377:48|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@32)))
 :qid |DesignatedDealerandybpl.5391:48|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@33) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@33)))
 :qid |DesignatedDealerandybpl.5405:40|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@34))))
 :qid |DesignatedDealerandybpl.5425:41|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@35) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@35)))
 :qid |DesignatedDealerandybpl.5440:53|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@36) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@36)))
 :qid |DesignatedDealerandybpl.5454:53|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@37) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@37)))
 :qid |DesignatedDealerandybpl.5468:45|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@38)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@38)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@38))))
 :qid |DesignatedDealerandybpl.5485:60|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@39)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@39)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@39))))
 :qid |DesignatedDealerandybpl.5502:60|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@40)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@40)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@40))))
 :qid |DesignatedDealerandybpl.5519:52|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@41)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@41)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@41))))
 :qid |DesignatedDealerandybpl.5536:57|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@41))
)))
(assert (forall ((s@@42 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@42) true)
 :qid |DesignatedDealerandybpl.7983:68|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@43)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@43)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@43))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@43))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@43))))
 :qid |DesignatedDealerandybpl.8005:66|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@44)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@44)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@44))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@44))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@44))))
 :qid |DesignatedDealerandybpl.8031:66|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@45) true)
 :qid |DesignatedDealerandybpl.8364:31|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@45))
)))
(assert (forall ((s@@46 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@46) true)
 :qid |DesignatedDealerandybpl.8708:31|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@46))
)))
(assert (forall ((s@@47 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@47)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@47)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@47))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@47))))
 :qid |DesignatedDealerandybpl.8727:35|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@47))
)))
(assert (forall ((s@@48 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@48) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@48)))
 :qid |DesignatedDealerandybpl.9153:71|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@49) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@49)))
 :qid |DesignatedDealerandybpl.9202:46|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@50) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@50)))
 :qid |DesignatedDealerandybpl.9215:64|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@51) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@51)))
 :qid |DesignatedDealerandybpl.9228:75|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@52) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@52)))
 :qid |DesignatedDealerandybpl.9241:72|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@52))
)))
(assert (forall ((s@@53 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@53)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@53)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@53))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@53))))
 :qid |DesignatedDealerandybpl.9270:46|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@53))
)))
(assert (forall ((s@@54 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@54)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@54)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@54))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@54))))
 :qid |DesignatedDealerandybpl.9291:55|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55))))
 :qid |DesignatedDealerandybpl.9320:65|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@56)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@56))))
 :qid |DesignatedDealerandybpl.9719:60|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57))))
 :qid |DesignatedDealerandybpl.9736:66|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@58)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@58)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@58))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@58))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@58))))
 :qid |DesignatedDealerandybpl.9765:50|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@59) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@59)))
 :qid |DesignatedDealerandybpl.9784:45|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@60)) true))
 :qid |DesignatedDealerandybpl.10108:87|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@61) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@61)))
 :qid |DesignatedDealerandybpl.10325:43|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@62)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@62))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@62))))
 :qid |DesignatedDealerandybpl.10344:48|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@63) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@63)))
 :qid |DesignatedDealerandybpl.10359:50|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@64)))
 :qid |DesignatedDealerandybpl.10373:47|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@65)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@65))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@65))))
 :qid |DesignatedDealerandybpl.10393:58|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65))
)))
(assert (forall ((s@@66 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@66)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@66)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@66))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@66))))
 :qid |DesignatedDealerandybpl.10414:53|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@66))
)))
(assert (forall ((s@@67 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@67) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@67)))
 :qid |DesignatedDealerandybpl.12021:39|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@68)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@68))))
 :qid |DesignatedDealerandybpl.12043:58|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@69)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@69))))
 :qid |DesignatedDealerandybpl.12060:58|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@70) true)
 :qid |DesignatedDealerandybpl.12075:51|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@71)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@71))))
 :qid |DesignatedDealerandybpl.12092:60|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@72)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@72)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@72))))
 :qid |DesignatedDealerandybpl.12390:47|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@73)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@73)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@73))))
 :qid |DesignatedDealerandybpl.12412:63|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@74) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@74)))
 :qid |DesignatedDealerandybpl.12427:57|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@75)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@75)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@75))))
 :qid |DesignatedDealerandybpl.12443:54|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@76) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@76)))
 :qid |DesignatedDealerandybpl.12457:55|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@77) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@77)))
 :qid |DesignatedDealerandybpl.12471:57|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@78)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@78))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@78))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@78))))
 :qid |DesignatedDealerandybpl.12493:56|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@79)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@79))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@79))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@79))))
 :qid |DesignatedDealerandybpl.12518:52|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@80) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@80)))
 :qid |DesignatedDealerandybpl.12534:54|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@81)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@81)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@81))))
 :qid |DesignatedDealerandybpl.13405:45|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@82) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@82)))
 :qid |DesignatedDealerandybpl.13419:51|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@83)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@83)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@83))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@83))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@83))))
 :qid |DesignatedDealerandybpl.13442:48|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@84))))
 :qid |DesignatedDealerandybpl.13756:47|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@85)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@85))))
 :qid |DesignatedDealerandybpl.13780:47|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@86)))
 :qid |DesignatedDealerandybpl.14035:49|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@87)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@87))))
 :qid |DesignatedDealerandybpl.14078:49|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@88)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@88))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@88))))
 :qid |DesignatedDealerandybpl.14107:48|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@89)))
 :qid |DesignatedDealerandybpl.14402:47|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89))
)))
(assert (forall ((v@@29 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_13287 v@@29)))
 (and (= (seq.len r@@0) (seq.len v@@29)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@0))) (= (seq.nth r@@0 i@@36) (seq.nth v@@29 (- (- (seq.len v@@29) i@@36) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@36))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13287 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@1 (ReverseVec_63362 v@@30)))
 (and (= (seq.len r@@1) (seq.len v@@30)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@1))) (= (seq.nth r@@1 i@@37) (seq.nth v@@30 (- (- (seq.len v@@30) i@@37) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@37))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_63362 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@2 (ReverseVec_62968 v@@31)))
 (and (= (seq.len r@@2) (seq.len v@@31)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@2))) (= (seq.nth r@@2 i@@38) (seq.nth v@@31 (- (- (seq.len v@@31) i@@38) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@38))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62968 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@3 (ReverseVec_62771 v@@32)))
 (and (= (seq.len r@@3) (seq.len v@@32)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@3))) (= (seq.nth r@@3 i@@39) (seq.nth v@@32 (- (- (seq.len v@@32) i@@39) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@39))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62771 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@4 (ReverseVec_62574 v@@33)))
 (and (= (seq.len r@@4) (seq.len v@@33)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@4))) (= (seq.nth r@@4 i@@40) (seq.nth v@@33 (- (- (seq.len v@@33) i@@40) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@40))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62574 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@5 (ReverseVec_63165 v@@34)))
 (and (= (seq.len r@@5) (seq.len v@@34)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@5))) (= (seq.nth r@@5 i@@41) (seq.nth v@@34 (- (- (seq.len v@@34) i@@41) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@41))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_63165 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@6 (ReverseVec_61983 v@@35)))
 (and (= (seq.len r@@6) (seq.len v@@35)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@6))) (= (seq.nth r@@6 i@@42) (seq.nth v@@35 (- (- (seq.len v@@35) i@@42) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@42))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61983 v@@35))
)))
(assert (forall ((v@@36 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@7 (ReverseVec_62180 v@@36)))
 (and (= (seq.len r@@7) (seq.len v@@36)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@7))) (= (seq.nth r@@7 i@@43) (seq.nth v@@36 (- (- (seq.len v@@36) i@@43) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@43))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62180 v@@36))
)))
(assert (forall ((v@@37 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@8 (ReverseVec_62377 v@@37)))
 (and (= (seq.len r@@8) (seq.len v@@37)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@8))) (= (seq.nth r@@8 i@@44) (seq.nth v@@37 (- (- (seq.len v@@37) i@@44) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@44))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62377 v@@37))
)))
(assert (forall ((v@@38 (Seq |T@#0|)) ) (! (let ((r@@9 (ReverseVec_61786 v@@38)))
 (and (= (seq.len r@@9) (seq.len v@@38)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@9))) (= (seq.nth r@@9 i@@45) (seq.nth v@@38 (- (- (seq.len v@@38) i@@45) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@45))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61786 v@@38))
)))
(assert (forall ((|l#0| Bool) (i@@46 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@46) |l#0|)
 :qid |DesignatedDealerandybpl.245:54|
 :skolemid |309|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@46))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_69806|) (|l#1| |T@[$1_Event_EventHandle]Multiset_69806|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_69806_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_69806| (|Select__T@[$1_Event_EventHandle]Multiset_69806_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_69806| (|Select__T@[$1_Event_EventHandle]Multiset_69806_| |l#1| handle@@0))))
(Multiset_69806 (|lambda#3| (|v#Multiset_69806| (|Select__T@[$1_Event_EventHandle]Multiset_69806_| |l#0@@0| handle@@0)) (|v#Multiset_69806| (|Select__T@[$1_Event_EventHandle]Multiset_69806_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DesignatedDealerandybpl.2908:13|
 :skolemid |310|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_69806_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@39) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@39) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@39)))
 :qid |DesignatedDealerandybpl.124:29|
 :skolemid |311|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@39))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@2| () T@$Memory_113440)
(declare-fun $t18 () Int)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_113015)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t15 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_102685)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t1 () Int)
(declare-fun $t7 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_129179)
(declare-fun $t5 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_107308)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_113440)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1| () T@$Memory_113440)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_113440)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t21 () Bool)
(declare-fun $t10@0 () Int)
(declare-fun $t16 () Int)
(declare-fun $t10 () Int)
(declare-fun $t17 () Int)
(declare-fun $t19 () Int)
(declare-fun $t12 () Bool)
(declare-fun _$t0 () Int)
(declare-fun $t20 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14 () Int)
(declare-fun $t9 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t8 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_112486)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_112573)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_112660)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_107766)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_107853)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_113242)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_112833)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_113341)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_112924)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'#0'_| (|T@[Int]$1_Diem_Preburn'#0'| Int) |T@$1_Diem_Preburn'#0'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int) T@$1_DesignatedDealer_Dealer)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_add_currency$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 215051) (let ((anon10_correct  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t18) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t18))) (and (= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t18))) 0) (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t15))) (and (=> (= (ControlFlow 0 161039) (- 0 216597)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 161039) (- 0 216609)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 161039) (- 0 216627)) (not (not (= _$t1 186537453)))) (=> (not (not (= _$t1 186537453))) (and (=> (= (ControlFlow 0 161039) (- 0 216641)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 161039) (- 0 216653)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t7)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t7)) 2))) (and (=> (= (ControlFlow 0 161039) (- 0 216671)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t5))) (and (=> (= (ControlFlow 0 161039) (- 0 216683)) (not (let ((addr 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr)))))) (=> (not (let ((addr 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr))))) (and (=> (= (ControlFlow 0 161039) (- 0 216691)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (and (=> (= (ControlFlow 0 161039) (- 0 216701)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t5)) (=> (= (ControlFlow 0 161039) (- 0 216711)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))))))))))))))))))))))
(let ((anon15_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= |$1_Diem_PreburnQueue'#0'_$memory@1| ($Memory_113440 (|Store__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 false) (|contents#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|)))) (and (= |$1_Diem_PreburnQueue'#0'_$memory@2| |$1_Diem_PreburnQueue'#0'_$memory@1|) (= (ControlFlow 0 160877) 161039))) anon10_correct)))
(let ((anon15_Then_correct  (=> (and (and |$temp_0'bool'@0| (= |$1_Diem_PreburnQueue'#0'_$memory@0| ($Memory_113440 (|Store__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 |$temp_0'$1_Diem_PreburnQueue'#0''@0|)))) (and (= |$1_Diem_PreburnQueue'#0'_$memory@2| |$1_Diem_PreburnQueue'#0'_$memory@0|) (= (ControlFlow 0 161051) 161039))) anon10_correct)))
(let ((anon14_Else_correct  (=> (not $t21) (and (=> (= (ControlFlow 0 160865) 161051) anon15_Then_correct) (=> (= (ControlFlow 0 160865) 160877) anon15_Else_correct)))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 160659) (- 0 216253)) (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t7)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t5))) (let ((addr@@0 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t7)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t5))) (let ((addr@@0 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0))))) (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 160659) (- 0 216345)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t6)) (= 5 $t10@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t10@0))) (and (not (= _$t1 186537453)) (= 2 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t7)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t7)) 2)) (= 3 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t5)) (= 5 $t10@0))) (and (let ((addr@@1 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@1)))) (= 7 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t5) (= 6 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t5) (= 1 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10@0))))))))
(let ((anon14_Then_correct  (=> $t21 (=> (and (and (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t16)) (= 5 $t10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t16)) 2)) (= 3 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t17)) (= 5 $t10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t17)) 2)) (= 3 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t19)) (= 5 $t10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t19)) 1)) (= 3 $t10))) (and (not (= _$t1 186537453)) (= 2 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10))) (and (let ((addr@@2 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@2) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@2)))) (= 7 $t10))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t15) (= 6 $t10))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t15) (= 1 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 161285) 160659))) L3_correct))))
(let ((anon13_Then_correct  (=> $t12 (=> (and (= $t15 _$t0) (= $t16 _$t0)) (=> (and (and (= $t17 _$t0) (= $t18 _$t0)) (and (= $t19 _$t1) (= $t20 _$t0))) (and (=> (= (ControlFlow 0 160859) (- 0 215851)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t15)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t15) (=> (= $t21  (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t16)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t16)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t17))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t17)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t19))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t19)) 1))) (not (= _$t1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (let ((addr@@3 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@3) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@3))))) (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t15)) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t15))) (and (=> (= (ControlFlow 0 160859) 161285) anon14_Then_correct) (=> (= (ControlFlow 0 160859) 160865) anon14_Else_correct))))))))))
(let ((anon13_Else_correct  (=> (and (and (not $t12) (= $t14 $t14)) (and (= $t10@0 $t14) (= (ControlFlow 0 160367) 160659))) L3_correct)))
(let ((anon12_Else_correct  (=> (and (not $t9) (|$IsValid'address'| $t11)) (=> (and (and (and (= $t11 _$t0) (= $t11 $t11)) (and (= $t12 (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t11)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14) (= $t14 5)) (and (= $t14 $t14) (= $t12 $t12)))) (and (=> (= (ControlFlow 0 160351) 160859) anon13_Then_correct) (=> (= (ControlFlow 0 160351) 160367) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> $t9 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t8)) (= 5 $t10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t8)) 1)) (= 3 $t10))) (and (not (= _$t1 186537453)) (= 2 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 161357) 160659))) L3_correct))))
(let ((anon0$1_correct  (=> (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112486| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |DesignatedDealerandybpl.10470:22|
 :skolemid |183|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112573| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |DesignatedDealerandybpl.10470:269|
 :skolemid |184|
))) (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |DesignatedDealerandybpl.10470:517|
 :skolemid |185|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107766| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |DesignatedDealerandybpl.10474:21|
 :skolemid |186|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107853| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |DesignatedDealerandybpl.10474:231|
 :skolemid |187|
)))) (=> (and (and (and (and (and (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |DesignatedDealerandybpl.10478:22|
 :skolemid |188|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_113341| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_112924| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |DesignatedDealerandybpl.10478:293|
 :skolemid |189|
))) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) addr1@@3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@3)) 2))))
 :qid |DesignatedDealerandybpl.10478:565|
 :skolemid |190|
))) (|$IsValid'address'| _$t0)) (and (|$IsValid'address'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |DesignatedDealerandybpl.10491:20|
 :skolemid |191|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $a_0))
)))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@0) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0) 10000000000))))
 :qid |DesignatedDealerandybpl.10495:20|
 :skolemid |192|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $a_0@@1)))
(|$IsValid'$1_Diem_Preburn'#0''| $rsc@@1))
 :qid |DesignatedDealerandybpl.10499:20|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@2)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@2) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2)) 256) (let (($range_1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@47 $i_2))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2) i@@47)))) 0)))
 :qid |DesignatedDealerandybpl.10504:199|
 :skolemid |194|
))))))
 :qid |DesignatedDealerandybpl.10503:20|
 :skolemid |195|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $a_0@@3)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@3))
 :qid |DesignatedDealerandybpl.10508:20|
 :skolemid |196|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $a_0@@3))
))))) (and (and (and (= $t5 _$t0) (= $t6 _$t1)) (and (= $t7 _$t0) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t5))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t8 _$t1) (= $t9  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t8)) 1))) (not (= _$t1 186537453)))))))) (and (=> (= (ControlFlow 0 160281) 161357) anon12_Then_correct) (=> (= (ControlFlow 0 160281) 160351) anon12_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_69806_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_69806| stream@@0) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_69806| stream@@0) v@@40) 0)
 :qid |DesignatedDealerandybpl.129:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerandybpl.2898:13|
 :skolemid |79|
))) (= (ControlFlow 0 159734) 160281)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 215051) 159734) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () Int)
(declare-fun $t1@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_exists_at$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 216902) (let ((anon0$1_correct@@0  (=> (|$IsValid'address'| _$t0@@0) (=> (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $a_0@@4)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@4))
 :qid |DesignatedDealerandybpl.10836:20|
 :skolemid |197|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $a_0@@4))
)) (= _$t0@@0 _$t0@@0)) (and (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t0@@0)) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 161624) (- 0 216995)) (not false)) (=> (not false) (=> (= (ControlFlow 0 161624) (- 0 217002)) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t0@@0)))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_69806_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_69806| stream@@1) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_69806| stream@@1) v@@41) 0)
 :qid |DesignatedDealerandybpl.129:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerandybpl.2898:13|
 :skolemid |79|
))) (= (ControlFlow 0 161540) 161624)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 216902) 161540) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t6@@0 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun _$t2 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_107116)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1 () T@$Memory_129179)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| () T@$Memory_113242)
(declare-fun $t20@@0 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| () T@$Memory_113242)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t23 () Bool)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1@@0| () T@$Memory_113440)
(declare-fun $t24 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0@@0| () T@$Memory_113440)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0@@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t27 () Bool)
(declare-fun $t10@0@@0 () Int)
(declare-fun $t21@@0 () Int)
(declare-fun $t10@@0 () Int)
(declare-fun $t22 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t25 () Int)
(declare-fun $t26 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0 () T@$Memory_129179)
(declare-fun |Store__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int T@$1_DesignatedDealer_Dealer) |T@[Int]$1_DesignatedDealer_Dealer|)
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?y1))) :weight 0)))
(declare-fun $t19@0 () T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DesignatedDealer_Dealer_$modifies () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t17@@0 () Int)
(declare-fun $t14@0 () Bool)
(declare-fun $t12@@0 () Bool)
(declare-fun $t13 () Int)
(declare-fun $t11@@0 () Int)
(declare-fun $t9@@0 () Bool)
(declare-fun $t8@@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_102092)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| Int) |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_publish_designated_dealer_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 217022) (let ((L5_correct  (and (=> (= (ControlFlow 0 163583) (- 0 219490)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 163583) (- 0 219502)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t6@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (and (=> (= (ControlFlow 0 163583) (- 0 219520)) (not (not (= _$t1@@0 186537453)))) (=> (not (not (= _$t1@@0 186537453))) (and (=> (= (ControlFlow 0 163583) (- 0 219534)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t7@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t7@@0))) (and (=> (= (ControlFlow 0 163583) (- 0 219546)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t7@@0)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (and (=> (= (ControlFlow 0 163583) (- 0 219564)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t5@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t5@@0)) (and (=> (= (ControlFlow 0 163583) (- 0 219574)) (not (and _$t2 (let ((addr@@4 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@4) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@4))))))) (=> (not (and _$t2 (let ((addr@@4 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@4) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@4)))))) (and (=> (= (ControlFlow 0 163583) (- 0 219585)) (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0)))) (=> (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0))) (and (=> (= (ControlFlow 0 163583) (- 0 219598)) (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0)))) (=> (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0))) (and (=> (= (ControlFlow 0 163583) (- 0 219611)) (not (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 163583) (- 0 219624)) (not (and (not _$t2) (let ((addr@@5 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@5))))))) (=> (not (and (not _$t2) (let ((addr@@5 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@5)))))) (and (=> (= (ControlFlow 0 163583) (- 0 219637)) (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@0)))) (=> (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@0))) (and (=> (= (ControlFlow 0 163583) (- 0 219652)) (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t5@@0)))) (=> (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t5@@0))) (and (=> (= (ControlFlow 0 163583) (- 0 219667)) (not (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 163583) (- 0 219682)) (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory@1) $t5@@0))))))))))))))))))))))))))))))))
(let ((anon38_Else_correct  (=> (not |$temp_0'bool'@1|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| ($Memory_113242 (|Store__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@0 false) (|contents#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 163955) 163583)) L5_correct))))
(let ((anon38_Then_correct  (=> |$temp_0'bool'@1| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| ($Memory_113242 (|Store__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@0 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@0 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0|))) (= (ControlFlow 0 163969) 163583)) L5_correct))))
(let ((anon37_Else_correct  (=> (not $t23) (and (=> (= (ControlFlow 0 163943) 163969) anon38_Then_correct) (=> (= (ControlFlow 0 163943) 163955) anon38_Else_correct)))))
(let ((anon28_correct  (=> (= (ControlFlow 0 163371) 163583) L5_correct)))
(let ((anon40_Else_correct  (=> (not |$temp_0'bool'@0@@0|) (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@1@@0| ($Memory_113440 (|Store__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 false) (|contents#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|))) (= (ControlFlow 0 163367) 163371)) anon28_correct))))
(let ((anon40_Then_correct  (=> |$temp_0'bool'@0@@0| (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@0@@0| ($Memory_113440 (|Store__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 |$temp_0'$1_Diem_PreburnQueue'#0''@0@@0|))) (= (ControlFlow 0 163595) 163371)) anon28_correct))))
(let ((anon39_Else_correct  (=> (not $t27) (and (=> (= (ControlFlow 0 163355) 163595) anon40_Then_correct) (=> (= (ControlFlow 0 163355) 163367) anon40_Else_correct)))))
(let ((anon33_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 163046) (- 0 219046)) (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t1@@0 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t5@@0)) (and _$t2 (let ((addr@@6 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@6)))))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0))) (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2) (let ((addr@@7 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@7)))))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@0))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t5@@0))) (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t1@@0 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t5@@0)) (and _$t2 (let ((addr@@6 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@6)))))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0))) (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2) (let ((addr@@7 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@7)))))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@0))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t5@@0))) (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 163046) (- 0 219194)) (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t10@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t6@@0)) 1)) (= 3 $t10@0@@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t7@@0)) (= 5 $t10@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t7@@0)) 2)) (= 3 $t10@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t5@@0) (= 6 $t10@0@@0))) (and (and _$t2 (let ((addr@@8 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@8))))) (= 7 $t10@0@@0))) (and (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0)) (= 6 $t10@0@@0))) (and (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0)) (= 1 $t10@0@@0))) (and (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@0))) (and (and (not _$t2) (let ((addr@@9 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@9) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@9))))) (= 7 $t10@0@@0))) (and (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@0)) (= 6 $t10@0@@0))) (and (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t5@@0)) (= 1 $t10@0@@0))) (and (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t10@0@@0))))))))
(let ((anon37_Then_correct  (=> $t23 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t21@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t21@@0)) 1)) (= 3 $t10@@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t22)) (= 5 $t10@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t22)) 2)) (= 3 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory@1) $t20@@0)) (= 5 $t10@@0))) (and (let ((addr@@10 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@10) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@10)))) (= 7 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@0) (= 6 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@0) (= 1 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 164163) 163046))) L7_correct))))
(let ((anon36_Then_correct  (=> (and (and _$t2 (= $t20@@0 _$t0@@1)) (and (= $t21@@0 _$t1@@0) (= $t22 _$t0@@1))) (and (=> (= (ControlFlow 0 163937) (- 0 218333)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t20@@0)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t20@@0) (=> (= $t23  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t21@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t21@@0)) 1))) (not (= _$t1@@0 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t22))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t22)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory@1) $t20@@0))) (let ((addr@@11 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@11) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@11))))) (|Select__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@0)) (|Select__T@[Int]Bool_| (|domain#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 163937) 164163) anon37_Then_correct) (=> (= (ControlFlow 0 163937) 163943) anon37_Else_correct))))))))
(let ((anon39_Then_correct  (=> $t27 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t25)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t25)) 1)) (= 3 $t10@@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t26)) (= 5 $t10@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t26)) 2)) (= 3 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory@1) $t24)) (= 5 $t10@@0))) (and (let ((addr@@12 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@12) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@12)))) (= 7 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t24) (= 6 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t24) (= 1 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 163789) 163046))) L7_correct))))
(let ((anon36_Else_correct  (=> (and (and (not _$t2) (= $t24 _$t0@@1)) (and (= $t25 _$t1@@0) (= $t26 _$t0@@1))) (and (=> (= (ControlFlow 0 163349) (- 0 218479)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t24)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t24) (=> (= $t27  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t25)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t25)) 1))) (not (= _$t1@@0 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t26))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t26)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory@1) $t24))) (let ((addr@@13 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@13) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@13))))) (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $t24)) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $t24)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 163349) 163789) anon39_Then_correct) (=> (= (ControlFlow 0 163349) 163355) anon39_Else_correct))))))))
(let ((anon35_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 163199) (- 0 218275)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) addr@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory@1) addr@@14)))
 :qid |DesignatedDealerandybpl.11230:15|
 :skolemid |216|
))) (=> (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) addr@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory@1) addr@@15)))
 :qid |DesignatedDealerandybpl.11230:15|
 :skolemid |216|
)) (and (=> (= (ControlFlow 0 163199) 163937) anon36_Then_correct) (=> (= (ControlFlow 0 163199) 163349) anon36_Else_correct)))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t10@0@@0 $abort_code@1) (= (ControlFlow 0 164177) 163046))) L7_correct)))
(let ((anon34_Then$1_correct  (=> (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 164227) 164177) anon35_Then_correct) (=> (= (ControlFlow 0 164227) 163199) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t0@@1) (= (ControlFlow 0 164225) 164227)) anon34_Then$1_correct)))
(let ((anon34_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t0@@1)) (=> (and (and (= $1_DesignatedDealer_Dealer_$memory@0 ($Memory_129179 (|Store__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t0@@1 true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t0@@1 $t19@0))) (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 163164) 164177) anon35_Then_correct) (=> (= (ControlFlow 0 163164) 163199) anon35_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not false) (= $t19@0 ($1_DesignatedDealer_Dealer |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 163146) (- 0 218182)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies _$t0@@1)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies _$t0@@1) (and (=> (= (ControlFlow 0 163146) 164225) anon34_Then_correct) (=> (= (ControlFlow 0 163146) 163164) anon34_Else_correct)))))))
(let ((|inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 163116) 164241) anon33_Then_correct) (=> (= (ControlFlow 0 163116) 163146) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 163122) 163116)) |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|)))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t17@@0 $t17@@0)) (and (= $t10@0@@0 $t17@@0) (= (ControlFlow 0 162586) 163046))) L7_correct)))
(let ((anon31_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t17@@0) (= $t17@@0 6)) (and (= $t17@@0 $t17@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 162570) 163122) anon32_Then_correct) (=> (= (ControlFlow 0 162570) 162586) anon32_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t14@0)) (= (ControlFlow 0 162534) 162570)) anon31_Else$1_correct)))
(let ((anon31_Else_correct  (=> (not $t12@@0) (=> (and (and (|$IsValid'address'| $t13) (= $t13 _$t0@@1)) (and (= $t14@0 (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $t13)) (= (ControlFlow 0 162540) 162534))) inline$$Not$0$anon0_correct))))
(let ((anon31_Then_correct  (=> $t12@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t11@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t11@@0)) 2)) (= 3 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 164293) 163046))) L7_correct))))
(let ((anon30_Else_correct  (=> (not $t9@@0) (=> (and (= $t11@@0 _$t0@@1) (= $t12@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t11@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t11@@0)) 2))))) (and (=> (= (ControlFlow 0 162478) 164293) anon31_Then_correct) (=> (= (ControlFlow 0 162478) 162540) anon31_Else_correct))))))
(let ((anon30_Then_correct  (=> $t9@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t8@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t8@@0)) 1)) (= 3 $t10@@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 164365) 163046))) L7_correct))))
(let ((anon0$1_correct@@1  (=> (and (and (and (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112486| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |DesignatedDealerandybpl.10931:22|
 :skolemid |198|
)) (forall ((mint_cap_owner@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112573| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@3)) 1))))
 :qid |DesignatedDealerandybpl.10931:269|
 :skolemid |199|
))) (forall ((mint_cap_owner@@4 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@4)) 1))))
 :qid |DesignatedDealerandybpl.10931:517|
 :skolemid |200|
))) (and (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107766| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@4)) 1))))
 :qid |DesignatedDealerandybpl.10935:21|
 :skolemid |201|
)) (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107853| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@5)) 1))))
 :qid |DesignatedDealerandybpl.10935:231|
 :skolemid |202|
)))) (=> (and (and (and (and (and (and (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@6)) 2))))
 :qid |DesignatedDealerandybpl.10939:22|
 :skolemid |203|
)) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_113341| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_112924| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@7)) 2))))
 :qid |DesignatedDealerandybpl.10939:293|
 :skolemid |204|
))) (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) addr1@@8)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@8)) 2))))
 :qid |DesignatedDealerandybpl.10939:565|
 :skolemid |205|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_102092| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (|$IsValid'address'| _$t0@@1) (|$IsValid'address'| _$t1@@0))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |DesignatedDealerandybpl.10959:20|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@6)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@6) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@6)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@6) 10000000000))))
 :qid |DesignatedDealerandybpl.10963:20|
 :skolemid |207|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_107116| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@6))
))) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@7)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@7))
 :qid |DesignatedDealerandybpl.10967:20|
 :skolemid |208|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@8)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@8) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@8)) 256) (let (($range_1@@0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@8)))))
(forall (($i_2@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_2@@0) (let ((i@@48 $i_2@@0))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@8) i@@48)))) 0)))
 :qid |DesignatedDealerandybpl.10972:223|
 :skolemid |209|
))))))
 :qid |DesignatedDealerandybpl.10971:20|
 :skolemid |210|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@8))
))))) (and (and (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@9)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@9) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@9)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@9) 10000000000))))
 :qid |DesignatedDealerandybpl.10976:20|
 :skolemid |211|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $a_0@@10)))
(|$IsValid'$1_Diem_Preburn'#0''| $rsc@@10))
 :qid |DesignatedDealerandybpl.10980:20|
 :skolemid |212|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) $a_0@@10))
))) (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@11)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@11) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@11)) 256) (let (($range_1@@1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@11)))))
(forall (($i_2@@1 Int) ) (!  (=> ($InRange $range_1@@1 $i_2@@1) (let ((i@@49 $i_2@@1))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@11) i@@49)))) 0)))
 :qid |DesignatedDealerandybpl.10985:199|
 :skolemid |213|
))))))
 :qid |DesignatedDealerandybpl.10984:20|
 :skolemid |214|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@11))
)) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $a_0@@12)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@12))
 :qid |DesignatedDealerandybpl.10989:20|
 :skolemid |215|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $a_0@@12))
)))) (and (and (= $t5@@0 _$t0@@1) (= $t6@@0 _$t1@@0)) (and (= $t7@@0 _$t0@@1) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies $t5@@0)))) (and (and (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t5@@0) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t5@@0)) (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t5@@0) (= _$t0@@1 _$t0@@1))) (and (and (= _$t1@@0 _$t1@@0) (= _$t2 _$t2)) (and (= $t8@@0 _$t1@@0) (= $t9@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t8@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t8@@0)) 1))) (not (= _$t1@@0 186537453))))))))) (and (=> (= (ControlFlow 0 162430) 164365) anon30_Then_correct) (=> (= (ControlFlow 0 162430) 162478) anon30_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_69806_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_69806| stream@@2) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_69806| stream@@2) v@@42) 0)
 :qid |DesignatedDealerandybpl.129:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerandybpl.2898:13|
 :skolemid |79|
))) (= (ControlFlow 0 161688) 162430)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 217022) 161688) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@4 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t32 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@3| () T@$Memory_107308)
(declare-fun _$t1@@1 () Int)
(declare-fun _$t0@@2 () Int)
(declare-fun $t9@@1 () Int)
(declare-fun _$t2@@0 () Int)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@2| () T@$Memory_129478)
(declare-fun $t8@@1 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t12@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t16@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2| () T@$Memory_107308)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_69806_| (|T@[$1_Event_EventHandle]Multiset_69806| T@$1_Event_EventHandle T@Multiset_69806) |T@[$1_Event_EventHandle]Multiset_69806|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_69806|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_69806)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_69806_| (|Store__T@[$1_Event_EventHandle]Multiset_69806_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_69806|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_69806)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_69806_| (|Store__T@[$1_Event_EventHandle]Multiset_69806_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_69806_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1| () T@$Memory_107308)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_107308)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int |T@$1_Diem_CurrencyInfo'#0'|) |T@[Int]$1_Diem_CurrencyInfo'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t10@1| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t11@1| () |T@$1_Diem_MintCapability'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'#0'_| (|T@[Int]$1_Diem_MintCapability'#0'| Int) |T@$1_Diem_MintCapability'#0'|)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t7@1| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t5@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t30 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t26@0 () T@$Mutation_95881)
(declare-fun $t29@0 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t28 () Bool)
(declare-fun $t27@@0 () (Seq Int))
(declare-fun $t12@@1 () Int)
(declare-fun $t25@@0 () T@$Mutation_136415)
(declare-fun $t25@0 () T@$Mutation_136415)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t22@0 () Int)
(declare-fun $t21@@1 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun $t23@0 () Int)
(declare-fun $t24@0 () (Seq Int))
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@1| () T@$Memory_129478)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory| () T@$Memory_129478)
(declare-fun $t21@0 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|T@[Int]$1_DesignatedDealer_TierInfo'#0'| Int) |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@0| () T@$Memory_129478)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t20@0 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t17@@1 () Bool)
(declare-fun $t19@@0 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t16@@0 () Int)
(declare-fun $t11@@1 () Bool)
(declare-fun $t10@@1 () Int)
(declare-fun _$t3 () Int)
(declare-fun $t26@@0 () T@$Mutation_95881)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 219700) (let ((anon40_Else_correct@@0  (=> (not $abort_flag@4) (=> (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@1|) (= $t32 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 167202) (- 0 221912)) (not (= _$t1@@1 0))) (=> (not (= _$t1@@1 0)) (and (=> (= (ControlFlow 0 167202) (- 0 221922)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@2))) (and (=> (= (ControlFlow 0 167202) (- 0 221935)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t9@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t9@@1))) (and (=> (= (ControlFlow 0 167202) (- 0 221947)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t9@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (and (=> (= (ControlFlow 0 167202) (- 0 221965)) (not (not (= _$t0@@2 186537453)))) (=> (not (not (= _$t0@@2 186537453))) (and (=> (= (ControlFlow 0 167202) (- 0 221979)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t2@@0))) (and (=> (= (ControlFlow 0 167202) (- 0 221990)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 167202) (- 0 222002)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (and (=> (= (ControlFlow 0 167202) (- 0 222019)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 167202) (- 0 222029)) (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 167202) (- 0 222037)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129478| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_129478| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@0)) (and (=> (= (ControlFlow 0 167202) (- 0 222046)) (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@1)) (=> (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@1) (=> (= (ControlFlow 0 167202) (- 0 222055)) (= $t32 (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@1) _$t1@@1) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@1))))))))))))))))))))))))))))))))
(let ((L8_correct  (and (=> (= (ControlFlow 0 165572) (- 0 221642)) (or (or (or (or (or (or (or (or (= _$t1@@1 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t9@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (not (= _$t0@@2 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t2@@0))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1@@1 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t9@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (not (= _$t0@@2 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t2@@0))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 165572) (- 0 221730)) (or (or (or (or (or (or (or (or (and (= _$t1@@1 0) (= 7 $t12@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@2)) (= 4 $t12@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t9@@1)) (= 5 $t12@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t9@@1)) 1)) (= 3 $t12@0))) (and (not (= _$t0@@2 186537453)) (= 2 $t12@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)) (= 5 $t12@0))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 $t12@0))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128) (= 8 $t12@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t12@0))))))))
(let ((anon35_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t12@0 $abort_code@1@@0) (= (ControlFlow 0 167388) 165572))) L8_correct)))
(let ((anon40_Then_correct@@0  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t12@0 $abort_code@5) (= (ControlFlow 0 167216) 165572))) L8_correct)))
(let ((|inline$$1_Diem_mint'#0'$0$anon13_correct|  (=> (|$IsValid'$1_Diem_Diem'#0''| |inline$$1_Diem_mint'#0'$0$$t16@0|) (=> (and (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816) (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@1) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|)))) (and (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$t16@0|) _$t1@@1) (= |inline$$1_Diem_mint'#0'$0$$t19@0| |inline$$1_Diem_mint'#0'$0$$t15@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t20@0| |inline$$1_Diem_mint'#0'$0$$t14@0|) (= |inline$$1_Diem_mint'#0'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|)))) (and (= $es@1 (ite |inline$$1_Diem_mint'#0'$0$$t21@0| (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_69806_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'#0'$0$$t20@0|)))
(let ((stream_new (let ((len (|l#Multiset_69806| stream@@3)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_69806| stream@@3) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|))))
(Multiset_69806 (|Store__T@[$EventRep]Int_| (|v#Multiset_69806| stream@@3) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $es@0) 1) (|Store__T@[$1_Event_EventHandle]Multiset_69806_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'#0'$0$$t20@0| stream_new)))) $es@0)) (= |inline$$1_Diem_mint'#0'$0$$t16@0| |inline$$1_Diem_mint'#0'$0$$t16@0|))) (and (and (= $abort_flag@4 $abort_flag@3) (= $abort_code@5 $abort_code@4)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory@2|)))) (and (=> (= (ControlFlow 0 166854) 167216) anon40_Then_correct@@0) (=> (= (ControlFlow 0 166854) 167202) anon40_Else_correct@@0))))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'#0'_$memory@1| ($Memory_107308 (|Store__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 false) (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@1|) (= (ControlFlow 0 166752) 166854))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'#0'_$memory@0| ($Memory_107308 (|Store__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@0|) (= (ControlFlow 0 166866) 166854))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'#0'$0$$t17@0|) (and (=> (= (ControlFlow 0 166740) 166866) |inline$$1_Diem_mint'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 166740) 166752) |inline$$1_Diem_mint'#0'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$L3_correct|  (=> (and (and (= $abort_flag@4 true) (= $abort_code@5 |inline$$1_Diem_mint'#0'$0$$t10@1|)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory|))) (and (=> (= (ControlFlow 0 166618) 167216) anon40_Then_correct@@0) (=> (= (ControlFlow 0 166618) 167202) anon40_Else_correct@@0)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128) (= 8 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (= |inline$$1_Diem_mint'#0'$0$$t10@0| |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t10@0|) (= (ControlFlow 0 166934) 166618))) |inline$$1_Diem_mint'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_Diem_mint'#0'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_mint'#0'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'#0'$0$$t15@0| ($1_Diem_MintEvent _$t1@@1 (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (= |inline$$1_Diem_mint'#0'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 166734) 166934) |inline$$1_Diem_mint'#0'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 166734) 166740) |inline$$1_Diem_mint'#0'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| $abort_code@4) (= (ControlFlow 0 166948) 166618))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|  (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 167000) 166948) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 167000) 166734) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (= (ControlFlow 0 166998) 167000)) |inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|) (= |inline$$1_Diem_mint'#0'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|))) (and (= $abort_code@4 $abort_code@3) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 166638) 166948) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 166638) 166734) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t7@1| (and (=> (= (ControlFlow 0 166624) 166998) |inline$$1_Diem_mint'#0'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 166624) 166638) |inline$$1_Diem_mint'#0'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$t7@1|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= (ControlFlow 0 166612) 166618))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@1 _$t1@@1) (|$IsValid'address'| |inline$$1_Diem_mint'#0'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t6@0| _$t0@@2) (= |inline$$1_Diem_mint'#0'$0$$t6@0| |inline$$1_Diem_mint'#0'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t7@1| |inline$$1_Diem_mint'#0'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 166596) 166624) |inline$$1_Diem_mint'#0'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 166596) 166612) |inline$$1_Diem_mint'#0'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct@@0  (=> (and (not $abort_flag@2) (= $t30 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 167006) (- 0 221010)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (=> (= (ControlFlow 0 167006) 166596) |inline$$1_Diem_mint'#0'$0$anon0_correct|))))))
(let ((anon39_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t12@0 $abort_code@3) (= (ControlFlow 0 167230) 165572))) L8_correct)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| (|v#$Mutation_95881| $t26@0)) (= $es@0 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_69806_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1|)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_69806| stream@@4)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_69806| stream@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t29@0))))
(Multiset_69806 (|Store__T@[$EventRep]Int_| (|v#Multiset_69806| stream@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t29@0) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_69806_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| stream_new@@0)))))) (and (=> (= (ControlFlow 0 165811) 167230) anon39_Then_correct@@0) (=> (= (ControlFlow 0 165811) 167006) anon39_Else_correct@@0)))))
(let ((anon38_Else_correct@@0  (=> (not $t28) (=> (and (and (|$IsValid'vec'u8''| $t27@@0) (= $t27@@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= $t29@0 ($1_DesignatedDealer_ReceivedMintEvent $t27@@0 _$t2@@0 _$t1@@1)) (= (ControlFlow 0 165817) 165811))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|))))
(let ((anon38_Then_correct@@0  (=> $t28 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t12@@1)) (= $t12@@1 $t12@@1)) (and (= $t12@0 $t12@@1) (= (ControlFlow 0 167256) 165572))) L8_correct))))
(let ((anon37_Else_correct@@0  (=> (not $abort_flag@2) (=> (and (= $t26@0 ($Mutation_95881 (|l#$Mutation_136415| $t25@@0) (seq.++ (|p#$Mutation_136415| $t25@@0) (seq.unit 0)) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_136415| $t25@@0)))) (= $t28  (not (|Select__T@[Int]Bool_| (|domain#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 165712) 167256) anon38_Then_correct@@0) (=> (= (ControlFlow 0 165712) 165817) anon38_Else_correct@@0))))))
(let ((anon37_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t12@0 $abort_code@3) (= (ControlFlow 0 167270) 165572))) L8_correct)))
(let ((anon36_Then$1_correct  (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 167322) 167270) anon37_Then_correct@@0) (=> (= (ControlFlow 0 167322) 165712) anon37_Else_correct@@0)))))
(let ((anon36_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)) (= (ControlFlow 0 167320) 167322)) anon36_Then$1_correct)))
(let ((anon36_Else_correct@@0  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t2@@0) (= $t25@0 ($Mutation_136415 ($Global _$t2@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)))) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 165680) 167270) anon37_Then_correct@@0) (=> (= (ControlFlow 0 165680) 165712) anon37_Else_correct@@0)))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 165658) (- 0 220774)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@0)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@0) (and (=> (= (ControlFlow 0 165658) 167320) anon36_Then_correct@@0) (=> (= (ControlFlow 0 165658) 165680) anon36_Else_correct@@0))))))
(let ((anon35_Else_correct@@0  (=> (and (and (and (not $abort_flag@0@@0) (= $t22@0 (|$window_start#$1_DesignatedDealer_TierInfo'#0'| $t21@@1))) (and (= $t23@0 (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| $t21@@1)) (= $t24@0 (|$tiers#$1_DesignatedDealer_TierInfo'#0'| $t21@@1)))) (and (and (= $abort_flag@1 $abort_flag@0@@0) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory@1|)) (and (= $abort_code@2 $abort_code@1@@0) (= (ControlFlow 0 167374) 165658)))) L6_correct)))
(let ((anon34_Then$1_correct@@0  (=> (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory|) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 167440) 167388) anon35_Then_correct@@0) (=> (= (ControlFlow 0 167440) 167374) anon35_Else_correct@@0))))))
(let ((anon34_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129478| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0)) (= (ControlFlow 0 167438) 167440)) anon34_Then$1_correct@@0)))
(let ((anon34_Else_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_129478| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0) (= $t21@0 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_129478| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'#0'_$memory@0| ($Memory_129478 (|Store__T@[Int]Bool_| (|domain#$Memory_129478| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0 false) (|contents#$Memory_129478| |$1_DesignatedDealer_TierInfo'#0'_$memory|))) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory@0|)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 167352) 167388) anon35_Then_correct@@0) (=> (= (ControlFlow 0 167352) 167374) anon35_Else_correct@@0))))))
(let ((anon33_Then_correct@@0  (=> $t20@0 (and (=> (= (ControlFlow 0 167332) (- 0 220619)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@0)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@0) (and (=> (= (ControlFlow 0 167332) 167438) anon34_Then_correct@@0) (=> (= (ControlFlow 0 167332) 167352) anon34_Else_correct@@0)))))))
(let ((anon33_Else_correct@@0  (=> (not $t20@0) (=> (and (and (= $abort_flag@1 false) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory|)) (and (= $abort_code@2 $abort_code@0@@0) (= (ControlFlow 0 165650) 165658))) L6_correct))))
(let ((anon32_Then_correct@@0  (=> (and $t17@@1 (= $t20@0 (|Select__T@[Int]Bool_| (|domain#$Memory_129478| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0))) (and (=> (= (ControlFlow 0 165644) 167332) anon33_Then_correct@@0) (=> (= (ControlFlow 0 165644) 165650) anon33_Else_correct@@0)))))
(let ((anon32_Else_correct@@0  (=> (and (and (not $t17@@1) (= $t19@@0 $t19@@0)) (and (= $t12@0 $t19@@0) (= (ControlFlow 0 165634) 165572))) L8_correct)))
(let ((anon31_Then_correct@@0  (=> inline$$Gt$0$dst@1 (=> (and (= $t17@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t19@@0) (= $t19@@0 5)) (and (= $t19@@0 $t19@@0) (= $t17@@1 $t17@@1))) (and (=> (= (ControlFlow 0 165618) 165644) anon32_Then_correct@@0) (=> (= (ControlFlow 0 165618) 165634) anon32_Else_correct@@0)))))))
(let ((anon31_Else_correct@@0  (=> (and (and (not inline$$Gt$0$dst@1) (= $t16@@0 $t16@@0)) (and (= $t12@0 $t16@@0) (= (ControlFlow 0 165292) 165572))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t16@@0) (= $t16@@0 7)) (and (= $t16@@0 $t16@@0) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 165276) 165618) anon31_Then_correct@@0) (=> (= (ControlFlow 0 165276) 165292) anon31_Else_correct@@0))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t1@@1 0)) (= (ControlFlow 0 165240) 165276)) anon30_Else$1_correct)))
(let ((anon30_Else_correct@@0  (=> (not $t11@@1) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 165246) 165240)) inline$$Gt$0$anon0_correct))))
(let ((anon30_Then_correct@@0  (=> $t11@@1 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t10@@1)) (= 5 $t12@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t10@@1)) 1)) (= 3 $t12@@1))) (and (not (= _$t0@@2 186537453)) (= 2 $t12@@1))) (= $t12@@1 $t12@@1)) (and (= $t12@0 $t12@@1) (= (ControlFlow 0 167512) 165572))) L8_correct))))
(let ((anon0$1_correct@@2  (=> (and (and (and (and (and (forall ((mint_cap_owner@@5 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112486| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@5)) 1))))
 :qid |DesignatedDealerandybpl.11531:22|
 :skolemid |217|
)) (forall ((mint_cap_owner@@6 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112573| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@6)) 1))))
 :qid |DesignatedDealerandybpl.11531:269|
 :skolemid |218|
))) (forall ((mint_cap_owner@@7 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) mint_cap_owner@@7)) 1))))
 :qid |DesignatedDealerandybpl.11531:517|
 :skolemid |219|
))) (and (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107766| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@9)) 1))))
 :qid |DesignatedDealerandybpl.11535:21|
 :skolemid |220|
)) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107853| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@10)) 1))))
 :qid |DesignatedDealerandybpl.11535:231|
 :skolemid |221|
)))) (and (and (and (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_113242| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_112833| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@11)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@11)) 2))))
 :qid |DesignatedDealerandybpl.11539:22|
 :skolemid |222|
)) (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_113341| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_112924| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@12)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@12)) 2))))
 :qid |DesignatedDealerandybpl.11539:293|
 :skolemid |223|
))) (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_113440| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_113015| |$1_Diem_Preburn'#0'_$memory|) addr1@@13)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) addr1@@13)) 2))))
 :qid |DesignatedDealerandybpl.11539:565|
 :skolemid |224|
))) (and (and (|$IsValid'address'| _$t0@@2) (|$IsValid'u64'| _$t1@@1)) (and (|$IsValid'address'| _$t2@@0) (|$IsValid'u64'| _$t3))))) (and (and (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $a_0@@13)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@13))
 :qid |DesignatedDealerandybpl.11559:20|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@14)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@14) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@14)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@14) 10000000000))))
 :qid |DesignatedDealerandybpl.11563:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@14))
))) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@15)))
(|$IsValid'$1_Diem_MintCapability'#0''| $rsc@@15))
 :qid |DesignatedDealerandybpl.11567:20|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_112660| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@15))
)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $a_0@@16)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@16))
 :qid |DesignatedDealerandybpl.11571:20|
 :skolemid |228|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129179| $1_DesignatedDealer_Dealer_$memory) $a_0@@16))
)))) (and (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_129478| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@17)))
(|$IsValid'$1_DesignatedDealer_TierInfo'#0''| $rsc@@17))
 :qid |DesignatedDealerandybpl.11575:20|
 :skolemid |229|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_129478| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@17))
)) (= $t8@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_107308| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (= $t9@@1 _$t0@@2) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@0)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@0)) (and (= _$t0@@2 _$t0@@2) (= _$t1@@1 _$t1@@1))) (and (and (= _$t2@@0 _$t2@@0) (= _$t3 _$t3)) (and (= $t10@@1 _$t0@@2) (= $t11@@1  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_102685| $1_Roles_RoleId_$memory) $t10@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_102685| $1_Roles_RoleId_$memory) $t10@@1)) 1))) (not (= _$t0@@2 186537453))))))))) (and (=> (= (ControlFlow 0 165186) 167512) anon30_Then_correct@@0) (=> (= (ControlFlow 0 165186) 165246) anon30_Else_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_69806_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_69806| stream@@5) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_69806| stream@@5) v@@43) 0)
 :qid |DesignatedDealerandybpl.129:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerandybpl.2898:13|
 :skolemid |79|
))) (= (ControlFlow 0 164670) 165186)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (seq.len (|p#$Mutation_136415| $t25@@0)) 0) (=> (and (= (seq.len (|p#$Mutation_95881| $t26@@0)) 0) (= (ControlFlow 0 164680) 164670)) inline$$InitEventStore$0$anon0_correct@@2))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 219700) 164680) anon0_correct@@2)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 222089) true)
))
(check-sat)
(pop 1)
; Valid
