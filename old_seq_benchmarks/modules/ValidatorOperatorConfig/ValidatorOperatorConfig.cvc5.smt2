(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_92223 0)) ((($Memory_92223 (|domain#$Memory_92223| |T@[Int]Bool|) (|contents#$Memory_92223| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_145678 0)) ((($Memory_145678 (|domain#$Memory_145678| |T@[Int]Bool|) (|contents#$Memory_145678| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_142567 0)) ((($Memory_142567 (|domain#$Memory_142567| |T@[Int]Bool|) (|contents#$Memory_142567| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_140361 0)) ((($Memory_140361 (|domain#$Memory_140361| |T@[Int]Bool|) (|contents#$Memory_140361| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_140641 0)) ((($Memory_140641 (|domain#$Memory_140641| |T@[Int]Bool|) (|contents#$Memory_140641| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_140328 0)) ((($Memory_140328 (|domain#$Memory_140328| |T@[Int]Bool|) (|contents#$Memory_140328| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_140113 0)) ((($Memory_140113 (|domain#$Memory_140113| |T@[Int]Bool|) (|contents#$Memory_140113| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_137574 0)) ((($Memory_137574 (|domain#$Memory_137574| |T@[Int]Bool|) (|contents#$Memory_137574| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_137510 0)) ((($Memory_137510 (|domain#$Memory_137510| |T@[Int]Bool|) (|contents#$Memory_137510| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_136220 0)) ((($Memory_136220 (|domain#$Memory_136220| |T@[Int]Bool|) (|contents#$Memory_136220| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_136156 0)) ((($Memory_136156 (|domain#$Memory_136156| |T@[Int]Bool|) (|contents#$Memory_136156| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_135844 0)) ((($Memory_135844 (|domain#$Memory_135844| |T@[Int]Bool|) (|contents#$Memory_135844| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_132578 0)) ((($Memory_132578 (|domain#$Memory_132578| |T@[Int]Bool|) (|contents#$Memory_132578| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_132291 0)) ((($Memory_132291 (|domain#$Memory_132291| |T@[Int]Bool|) (|contents#$Memory_132291| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_132004 0)) ((($Memory_132004 (|domain#$Memory_132004| |T@[Int]Bool|) (|contents#$Memory_132004| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_131785 0)) ((($Memory_131785 (|domain#$Memory_131785| |T@[Int]Bool|) (|contents#$Memory_131785| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_142174 0)) ((($Memory_142174 (|domain#$Memory_142174| |T@[Int]Bool|) (|contents#$Memory_142174| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_124522 0)) ((($Memory_124522 (|domain#$Memory_124522| |T@[Int]Bool|) (|contents#$Memory_124522| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_124435 0)) ((($Memory_124435 (|domain#$Memory_124435| |T@[Int]Bool|) (|contents#$Memory_124435| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_121232 0)) ((($Memory_121232 (|domain#$Memory_121232| |T@[Int]Bool|) (|contents#$Memory_121232| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_121145 0)) ((($Memory_121145 (|domain#$Memory_121145| |T@[Int]Bool|) (|contents#$Memory_121145| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_142400 0)) ((($Memory_142400 (|domain#$Memory_142400| |T@[Int]Bool|) (|contents#$Memory_142400| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_124786 0)) ((($Memory_124786 (|domain#$Memory_124786| |T@[Int]Bool|) (|contents#$Memory_124786| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_134511 0)) ((($Memory_134511 (|domain#$Memory_134511| |T@[Int]Bool|) (|contents#$Memory_134511| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_125112 0)) ((($Memory_125112 (|domain#$Memory_125112| |T@[Int]Bool|) (|contents#$Memory_125112| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_142309 0)) ((($Memory_142309 (|domain#$Memory_142309| |T@[Int]Bool|) (|contents#$Memory_142309| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_124695 0)) ((($Memory_124695 (|domain#$Memory_124695| |T@[Int]Bool|) (|contents#$Memory_124695| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_136400 0)) ((($Memory_136400 (|domain#$Memory_136400| |T@[Int]Bool|) (|contents#$Memory_136400| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_125013 0)) ((($Memory_125013 (|domain#$Memory_125013| |T@[Int]Bool|) (|contents#$Memory_125013| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_120847 0)) ((($Memory_120847 (|domain#$Memory_120847| |T@[Int]Bool|) (|contents#$Memory_120847| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120783 0)) ((($Memory_120783 (|domain#$Memory_120783| |T@[Int]Bool|) (|contents#$Memory_120783| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_116786 0)) ((($Memory_116786 (|domain#$Memory_116786| |T@[Int]Bool|) (|contents#$Memory_116786| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_116699 0)) ((($Memory_116699 (|domain#$Memory_116699| |T@[Int]Bool|) (|contents#$Memory_116699| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_116612 0)) ((($Memory_116612 (|domain#$Memory_116612| |T@[Int]Bool|) (|contents#$Memory_116612| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_116525 0)) ((($Memory_116525 (|domain#$Memory_116525| |T@[Int]Bool|) (|contents#$Memory_116525| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_116438 0)) ((($Memory_116438 (|domain#$Memory_116438| |T@[Int]Bool|) (|contents#$Memory_116438| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_117051 0)) ((($Memory_117051 (|domain#$Memory_117051| |T@[Int]Bool|) (|contents#$Memory_117051| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_115564 0)) ((($Memory_115564 (|domain#$Memory_115564| |T@[Int]Bool|) (|contents#$Memory_115564| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_115630 0)) ((($Memory_115630 (|domain#$Memory_115630| |T@[Int]Bool|) (|contents#$Memory_115630| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_115483 0)) ((($Memory_115483 (|domain#$Memory_115483| |T@[Int]Bool|) (|contents#$Memory_115483| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_115402 0)) ((($Memory_115402 (|domain#$Memory_115402| |T@[Int]Bool|) (|contents#$Memory_115402| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_115321 0)) ((($Memory_115321 (|domain#$Memory_115321| |T@[Int]Bool|) (|contents#$Memory_115321| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_115240 0)) ((($Memory_115240 (|domain#$Memory_115240| |T@[Int]Bool|) (|contents#$Memory_115240| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_115126 0)) ((($Memory_115126 (|domain#$Memory_115126| |T@[Int]Bool|) (|contents#$Memory_115126| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_141311 0)) ((($Memory_141311 (|domain#$Memory_141311| |T@[Int]Bool|) (|contents#$Memory_141311| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_115159 0)) ((($Memory_115159 (|domain#$Memory_115159| |T@[Int]Bool|) (|contents#$Memory_115159| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_114615 0)) ((($Memory_114615 (|domain#$Memory_114615| |T@[Int]Bool|) (|contents#$Memory_114615| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_101608 0)) ((($Memory_101608 (|domain#$Memory_101608| |T@[Int]Bool|) (|contents#$Memory_101608| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_99564 0)) ((($Memory_99564 (|domain#$Memory_99564| |T@[Int]Bool|) (|contents#$Memory_99564| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_99070 0)) ((($Memory_99070 (|domain#$Memory_99070| |T@[Int]Bool|) (|contents#$Memory_99070| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| (Seq Int)) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| (Seq Int)) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| (Seq Int)) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| (Seq Int)) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_70079 0)) (((Multiset_70079 (|v#Multiset_70079| |T@[$EventRep]Int|) (|l#Multiset_70079| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_70079| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_70079|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_143395 0)) ((($Mutation_143395 (|l#$Mutation_143395| T@$Location) (|p#$Mutation_143395| (Seq Int)) (|v#$Mutation_143395| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_143351 0)) ((($Mutation_143351 (|l#$Mutation_143351| T@$Location) (|p#$Mutation_143351| (Seq Int)) (|v#$Mutation_143351| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_40289 0)) ((($Mutation_40289 (|l#$Mutation_40289| T@$Location) (|p#$Mutation_40289| (Seq Int)) (|v#$Mutation_40289| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_130505 0)) ((($Mutation_130505 (|l#$Mutation_130505| T@$Location) (|p#$Mutation_130505| (Seq Int)) (|v#$Mutation_130505| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_119524 0)) ((($Mutation_119524 (|l#$Mutation_119524| T@$Location) (|p#$Mutation_119524| (Seq Int)) (|v#$Mutation_119524| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_92854 0)) ((($Mutation_92854 (|l#$Mutation_92854| T@$Location) (|p#$Mutation_92854| (Seq Int)) (|v#$Mutation_92854| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_88167 0)) ((($Mutation_88167 (|l#$Mutation_88167| T@$Location) (|p#$Mutation_88167| (Seq Int)) (|v#$Mutation_88167| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_87421 0)) ((($Mutation_87421 (|l#$Mutation_87421| T@$Location) (|p#$Mutation_87421| (Seq Int)) (|v#$Mutation_87421| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_85981 0)) ((($Mutation_85981 (|l#$Mutation_85981| T@$Location) (|p#$Mutation_85981| (Seq Int)) (|v#$Mutation_85981| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_85235 0)) ((($Mutation_85235 (|l#$Mutation_85235| T@$Location) (|p#$Mutation_85235| (Seq Int)) (|v#$Mutation_85235| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_83795 0)) ((($Mutation_83795 (|l#$Mutation_83795| T@$Location) (|p#$Mutation_83795| (Seq Int)) (|v#$Mutation_83795| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_83049 0)) ((($Mutation_83049 (|l#$Mutation_83049| T@$Location) (|p#$Mutation_83049| (Seq Int)) (|v#$Mutation_83049| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_81609 0)) ((($Mutation_81609 (|l#$Mutation_81609| T@$Location) (|p#$Mutation_81609| (Seq Int)) (|v#$Mutation_81609| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_80863 0)) ((($Mutation_80863 (|l#$Mutation_80863| T@$Location) (|p#$Mutation_80863| (Seq Int)) (|v#$Mutation_80863| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_79423 0)) ((($Mutation_79423 (|l#$Mutation_79423| T@$Location) (|p#$Mutation_79423| (Seq Int)) (|v#$Mutation_79423| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_78677 0)) ((($Mutation_78677 (|l#$Mutation_78677| T@$Location) (|p#$Mutation_78677| (Seq Int)) (|v#$Mutation_78677| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_77237 0)) ((($Mutation_77237 (|l#$Mutation_77237| T@$Location) (|p#$Mutation_77237| (Seq Int)) (|v#$Mutation_77237| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_76491 0)) ((($Mutation_76491 (|l#$Mutation_76491| T@$Location) (|p#$Mutation_76491| (Seq Int)) (|v#$Mutation_76491| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_75051 0)) ((($Mutation_75051 (|l#$Mutation_75051| T@$Location) (|p#$Mutation_75051| (Seq Int)) (|v#$Mutation_75051| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_74305 0)) ((($Mutation_74305 (|l#$Mutation_74305| T@$Location) (|p#$Mutation_74305| (Seq Int)) (|v#$Mutation_74305| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_72827 0)) ((($Mutation_72827 (|l#$Mutation_72827| T@$Location) (|p#$Mutation_72827| (Seq Int)) (|v#$Mutation_72827| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_72081 0)) ((($Mutation_72081 (|l#$Mutation_72081| T@$Location) (|p#$Mutation_72081| (Seq Int)) (|v#$Mutation_72081| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_70079_| (|T@[$1_Event_EventHandle]Multiset_70079| T@$1_Event_EventHandle) T@Multiset_70079)
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
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun |$IsValid'$1_SlidingNonce_SlidingNonce'| (T@$1_SlidingNonce_SlidingNonce) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemSystem_DiemSystem'| (T@$1_DiemSystem_DiemSystem) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (T@$1_RegisteredCurrencies_RegisteredCurrencies) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
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
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
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
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_12182 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_63262 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_62277 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_62474 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_62671 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_63459 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_63065 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_62868 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_62080 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_70079| |T@[$1_Event_EventHandle]Multiset_70079|) |T@[$1_Event_EventHandle]Multiset_70079|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorOperatorConfigcvc5bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorOperatorConfigcvc5bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorOperatorConfigcvc5bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorOperatorConfigcvc5bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorOperatorConfigcvc5bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorOperatorConfigcvc5bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorOperatorConfigcvc5bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorOperatorConfigcvc5bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |ValidatorOperatorConfigcvc5bpl.590:13|
 :skolemid |15|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ValidatorOperatorConfigcvc5bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ValidatorOperatorConfigcvc5bpl.603:17|
 :skolemid |18|
)))))
 :qid |ValidatorOperatorConfigcvc5bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |ValidatorOperatorConfigcvc5bpl.770:13|
 :skolemid |20|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |ValidatorOperatorConfigcvc5bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |ValidatorOperatorConfigcvc5bpl.783:17|
 :skolemid |23|
)))))
 :qid |ValidatorOperatorConfigcvc5bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |ValidatorOperatorConfigcvc5bpl.950:13|
 :skolemid |25|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |ValidatorOperatorConfigcvc5bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |ValidatorOperatorConfigcvc5bpl.963:17|
 :skolemid |28|
)))))
 :qid |ValidatorOperatorConfigcvc5bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |ValidatorOperatorConfigcvc5bpl.1130:13|
 :skolemid |30|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |ValidatorOperatorConfigcvc5bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |ValidatorOperatorConfigcvc5bpl.1143:17|
 :skolemid |33|
)))))
 :qid |ValidatorOperatorConfigcvc5bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |ValidatorOperatorConfigcvc5bpl.1310:13|
 :skolemid |35|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |ValidatorOperatorConfigcvc5bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |ValidatorOperatorConfigcvc5bpl.1323:17|
 :skolemid |38|
)))))
 :qid |ValidatorOperatorConfigcvc5bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |ValidatorOperatorConfigcvc5bpl.1490:13|
 :skolemid |40|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |ValidatorOperatorConfigcvc5bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |ValidatorOperatorConfigcvc5bpl.1503:17|
 :skolemid |43|
)))))
 :qid |ValidatorOperatorConfigcvc5bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |ValidatorOperatorConfigcvc5bpl.1670:13|
 :skolemid |45|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |ValidatorOperatorConfigcvc5bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |ValidatorOperatorConfigcvc5bpl.1683:17|
 :skolemid |48|
)))))
 :qid |ValidatorOperatorConfigcvc5bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |ValidatorOperatorConfigcvc5bpl.1850:13|
 :skolemid |50|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |ValidatorOperatorConfigcvc5bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |ValidatorOperatorConfigcvc5bpl.1863:17|
 :skolemid |53|
)))))
 :qid |ValidatorOperatorConfigcvc5bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |ValidatorOperatorConfigcvc5bpl.2030:13|
 :skolemid |55|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |ValidatorOperatorConfigcvc5bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |ValidatorOperatorConfigcvc5bpl.2043:17|
 :skolemid |58|
)))))
 :qid |ValidatorOperatorConfigcvc5bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |ValidatorOperatorConfigcvc5bpl.2210:13|
 :skolemid |60|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |ValidatorOperatorConfigcvc5bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |ValidatorOperatorConfigcvc5bpl.2223:17|
 :skolemid |63|
)))))
 :qid |ValidatorOperatorConfigcvc5bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ValidatorOperatorConfigcvc5bpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ValidatorOperatorConfigcvc5bpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorOperatorConfigcvc5bpl.2479:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorOperatorConfigcvc5bpl.2482:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_70079| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream) v@@24) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |ValidatorOperatorConfigcvc5bpl.2584:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |ValidatorOperatorConfigcvc5bpl.2590:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |ValidatorOperatorConfigcvc5bpl.2640:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |ValidatorOperatorConfigcvc5bpl.2646:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |ValidatorOperatorConfigcvc5bpl.2696:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |ValidatorOperatorConfigcvc5bpl.2702:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |ValidatorOperatorConfigcvc5bpl.2752:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |ValidatorOperatorConfigcvc5bpl.2758:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |ValidatorOperatorConfigcvc5bpl.2808:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |ValidatorOperatorConfigcvc5bpl.2814:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |ValidatorOperatorConfigcvc5bpl.2864:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |ValidatorOperatorConfigcvc5bpl.2870:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |ValidatorOperatorConfigcvc5bpl.2920:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |ValidatorOperatorConfigcvc5bpl.2926:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |ValidatorOperatorConfigcvc5bpl.2976:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |ValidatorOperatorConfigcvc5bpl.2982:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |ValidatorOperatorConfigcvc5bpl.3032:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |ValidatorOperatorConfigcvc5bpl.3038:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |ValidatorOperatorConfigcvc5bpl.3088:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |ValidatorOperatorConfigcvc5bpl.3094:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |ValidatorOperatorConfigcvc5bpl.3144:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |ValidatorOperatorConfigcvc5bpl.3150:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |ValidatorOperatorConfigcvc5bpl.3200:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |ValidatorOperatorConfigcvc5bpl.3206:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |ValidatorOperatorConfigcvc5bpl.3256:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |ValidatorOperatorConfigcvc5bpl.3262:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |ValidatorOperatorConfigcvc5bpl.3312:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |ValidatorOperatorConfigcvc5bpl.3318:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |ValidatorOperatorConfigcvc5bpl.3368:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |ValidatorOperatorConfigcvc5bpl.3374:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |ValidatorOperatorConfigcvc5bpl.3424:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |ValidatorOperatorConfigcvc5bpl.3430:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |ValidatorOperatorConfigcvc5bpl.3480:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |ValidatorOperatorConfigcvc5bpl.3486:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |ValidatorOperatorConfigcvc5bpl.3540:15|
 :skolemid |105|
)))
(assert (forall ((addr Int) ) (! true
 :qid |ValidatorOperatorConfigcvc5bpl.3549:15|
 :skolemid |106|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |ValidatorOperatorConfigcvc5bpl.3574:61|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |ValidatorOperatorConfigcvc5bpl.3751:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |ValidatorOperatorConfigcvc5bpl.5850:71|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |ValidatorOperatorConfigcvc5bpl.6541:46|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |ValidatorOperatorConfigcvc5bpl.6554:64|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |ValidatorOperatorConfigcvc5bpl.6567:75|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |ValidatorOperatorConfigcvc5bpl.6580:72|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |ValidatorOperatorConfigcvc5bpl.6609:55|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |ValidatorOperatorConfigcvc5bpl.6631:46|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |ValidatorOperatorConfigcvc5bpl.6649:49|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |ValidatorOperatorConfigcvc5bpl.6724:71|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |ValidatorOperatorConfigcvc5bpl.6738:91|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |ValidatorOperatorConfigcvc5bpl.6752:113|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |ValidatorOperatorConfigcvc5bpl.6766:75|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |ValidatorOperatorConfigcvc5bpl.6780:73|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |ValidatorOperatorConfigcvc5bpl.6800:48|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |ValidatorOperatorConfigcvc5bpl.6816:57|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |ValidatorOperatorConfigcvc5bpl.6830:83|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |ValidatorOperatorConfigcvc5bpl.6844:103|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |ValidatorOperatorConfigcvc5bpl.6858:125|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |ValidatorOperatorConfigcvc5bpl.6872:87|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |ValidatorOperatorConfigcvc5bpl.6886:85|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |ValidatorOperatorConfigcvc5bpl.6900:48|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |ValidatorOperatorConfigcvc5bpl.6921:45|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |ValidatorOperatorConfigcvc5bpl.6935:51|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |ValidatorOperatorConfigcvc5bpl.6958:48|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |ValidatorOperatorConfigcvc5bpl.7264:49|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |ValidatorOperatorConfigcvc5bpl.7277:65|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |ValidatorOperatorConfigcvc5bpl.7781:45|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |ValidatorOperatorConfigcvc5bpl.7794:45|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |ValidatorOperatorConfigcvc5bpl.7807:55|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |ValidatorOperatorConfigcvc5bpl.7821:55|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@32))))
 :qid |ValidatorOperatorConfigcvc5bpl.7841:38|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@33))))
 :qid |ValidatorOperatorConfigcvc5bpl.7862:44|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))))
 :qid |ValidatorOperatorConfigcvc5bpl.7913:53|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))))
 :qid |ValidatorOperatorConfigcvc5bpl.7975:53|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36) true)
 :qid |ValidatorOperatorConfigcvc5bpl.8001:55|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37) true)
 :qid |ValidatorOperatorConfigcvc5bpl.8015:55|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@38)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@38))))
 :qid |ValidatorOperatorConfigcvc5bpl.8032:38|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@39)))
 :qid |ValidatorOperatorConfigcvc5bpl.8046:48|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@40)))
 :qid |ValidatorOperatorConfigcvc5bpl.8060:48|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@41)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@41))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@41))))
 :qid |ValidatorOperatorConfigcvc5bpl.8080:41|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@42)))
 :qid |ValidatorOperatorConfigcvc5bpl.8095:53|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@43)))
 :qid |ValidatorOperatorConfigcvc5bpl.8109:53|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44))))
 :qid |ValidatorOperatorConfigcvc5bpl.8126:60|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45))))
 :qid |ValidatorOperatorConfigcvc5bpl.8143:60|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |ValidatorOperatorConfigcvc5bpl.8160:57|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |ValidatorOperatorConfigcvc5bpl.10361:68|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |ValidatorOperatorConfigcvc5bpl.10383:66|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |ValidatorOperatorConfigcvc5bpl.10409:66|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))))
 :qid |ValidatorOperatorConfigcvc5bpl.10438:56|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))))
 :qid |ValidatorOperatorConfigcvc5bpl.10468:56|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@52) true)
 :qid |ValidatorOperatorConfigcvc5bpl.10802:31|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@52))
)))
(assert (forall ((s@@53 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@53) true)
 :qid |ValidatorOperatorConfigcvc5bpl.11146:31|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@54)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@54)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@54))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@54))))
 :qid |ValidatorOperatorConfigcvc5bpl.11165:35|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@55)))
 :qid |ValidatorOperatorConfigcvc5bpl.11586:45|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@56))))
 :qid |ValidatorOperatorConfigcvc5bpl.11605:50|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@57)))
 :qid |ValidatorOperatorConfigcvc5bpl.11620:52|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@58) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@58)))
 :qid |ValidatorOperatorConfigcvc5bpl.11644:38|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@59) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@59)))
 :qid |ValidatorOperatorConfigcvc5bpl.11658:39|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@59))
)))
(assert (forall ((s@@60 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60))))
 :qid |ValidatorOperatorConfigcvc5bpl.11685:65|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@61)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@61))))
 :qid |ValidatorOperatorConfigcvc5bpl.12070:60|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62))))
 :qid |ValidatorOperatorConfigcvc5bpl.12087:66|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@63)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@63)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@63))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@63))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@63))))
 :qid |ValidatorOperatorConfigcvc5bpl.12116:50|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@64) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@64)))
 :qid |ValidatorOperatorConfigcvc5bpl.12135:45|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@65)) true))
 :qid |ValidatorOperatorConfigcvc5bpl.12454:87|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@66)))
 :qid |ValidatorOperatorConfigcvc5bpl.12666:47|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@67)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@67))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@67))))
 :qid |ValidatorOperatorConfigcvc5bpl.12686:58|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@68) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@68)))
 :qid |ValidatorOperatorConfigcvc5bpl.12701:39|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@69)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@69))))
 :qid |ValidatorOperatorConfigcvc5bpl.12723:58|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70))))
 :qid |ValidatorOperatorConfigcvc5bpl.12740:58|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71) true)
 :qid |ValidatorOperatorConfigcvc5bpl.12755:51|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72))))
 :qid |ValidatorOperatorConfigcvc5bpl.12772:60|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@73)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@73))))
 :qid |ValidatorOperatorConfigcvc5bpl.13070:47|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@74)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@74))))
 :qid |ValidatorOperatorConfigcvc5bpl.13092:63|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@75)))
 :qid |ValidatorOperatorConfigcvc5bpl.13107:57|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@76)))
 :qid |ValidatorOperatorConfigcvc5bpl.13120:55|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@77)))
 :qid |ValidatorOperatorConfigcvc5bpl.13134:55|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@78)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@78))))
 :qid |ValidatorOperatorConfigcvc5bpl.13151:54|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@79)))
 :qid |ValidatorOperatorConfigcvc5bpl.13165:55|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@80)))
 :qid |ValidatorOperatorConfigcvc5bpl.13179:57|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@81)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@81))))
 :qid |ValidatorOperatorConfigcvc5bpl.13201:56|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@82))))
 :qid |ValidatorOperatorConfigcvc5bpl.13226:52|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@83)))
 :qid |ValidatorOperatorConfigcvc5bpl.13242:54|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@84))))
 :qid |ValidatorOperatorConfigcvc5bpl.14114:47|
 :skolemid |255|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@85)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@85))))
 :qid |ValidatorOperatorConfigcvc5bpl.14138:47|
 :skolemid |256|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@86)))
 :qid |ValidatorOperatorConfigcvc5bpl.14379:49|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@87)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@87))))
 :qid |ValidatorOperatorConfigcvc5bpl.14422:49|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@88)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@88))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@88))))
 :qid |ValidatorOperatorConfigcvc5bpl.14451:48|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@89)))
 :qid |ValidatorOperatorConfigcvc5bpl.14746:47|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |ValidatorOperatorConfigcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_63262 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |ValidatorOperatorConfigcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_63262 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_62277 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |ValidatorOperatorConfigcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62277 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_62474 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |ValidatorOperatorConfigcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62474 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_62671 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |ValidatorOperatorConfigcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62671 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_63459 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |ValidatorOperatorConfigcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_63459 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_63065 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |ValidatorOperatorConfigcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_63065 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_62868 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |ValidatorOperatorConfigcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62868 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_62080 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |ValidatorOperatorConfigcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62080 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |ValidatorOperatorConfigcvc5bpl.245:54|
 :skolemid |336|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_70079|) (|l#1| |T@[$1_Event_EventHandle]Multiset_70079|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_70079| (|Select__T@[$1_Event_EventHandle]Multiset_70079_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_70079| (|Select__T@[$1_Event_EventHandle]Multiset_70079_| |l#1| handle@@0))))
(Multiset_70079 (|lambda#3| (|v#Multiset_70079| (|Select__T@[$1_Event_EventHandle]Multiset_70079_| |l#0@@0| handle@@0)) (|v#Multiset_70079| (|Select__T@[$1_Event_EventHandle]Multiset_70079_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorOperatorConfigcvc5bpl.2553:13|
 :skolemid |337|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |ValidatorOperatorConfigcvc5bpl.124:29|
 :skolemid |338|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_99070)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_99564)
(declare-fun $t2 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t3 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_99564)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_99564)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_99564)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 223309) (let ((L2_correct  (and (=> (= (ControlFlow 0 161708) (- 0 224055)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 161708) (- 0 224086)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct  (=> $t6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 161596) 161708))) L2_correct))))
(let ((anon12_Then_correct  (=> $t3 (=> (and (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 161738) 161708))) L2_correct))))
(let ((anon11_Then_correct  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 161764) 161708))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) 0)) (and (=> (= (ControlFlow 0 161554) (- 0 223701)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 161554) (- 0 223711)) (not (not (= (|$addr#$signer| _$t0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0) 173345816))) (and (=> (= (ControlFlow 0 161554) (- 0 223725)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 161554) (- 0 223736)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 161554) (- 0 223746)) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 161554) (- 0 223755)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) 0) (and (=> (= (ControlFlow 0 161554) (- 0 223770)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@0)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@0)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.3977:15|
 :skolemid |111|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@1)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@1)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.3977:15|
 :skolemid |111|
)) (and (=> (= (ControlFlow 0 161554) (- 0 223817)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@2)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.3981:15|
 :skolemid |112|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@3)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.3981:15|
 :skolemid |112|
)) (and (=> (= (ControlFlow 0 161554) (- 0 223864)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@4)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@4)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.3985:15|
 :skolemid |113|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@5)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@5)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.3985:15|
 :skolemid |113|
)) (and (=> (= (ControlFlow 0 161554) (- 0 223911)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@6)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@6)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.3989:15|
 :skolemid |114|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@7)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.3989:15|
 :skolemid |114|
)) (and (=> (= (ControlFlow 0 161554) (- 0 223958)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@8)) 5))))
 :qid |ValidatorOperatorConfigcvc5bpl.3993:15|
 :skolemid |115|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@9)) 5))))
 :qid |ValidatorOperatorConfigcvc5bpl.3993:15|
 :skolemid |115|
)) (=> (= (ControlFlow 0 161554) (- 0 224005)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2) addr@@10)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@10)) 6))))
 :qid |ValidatorOperatorConfigcvc5bpl.3997:15|
 :skolemid |116|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0) false) (|contents#$Memory_99564| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 161148) 161554))) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0) |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 161568) 161554))) anon9_correct)))
(let ((anon13_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 161134) 161568) anon14_Then_correct) (=> (= (ControlFlow 0 161134) 161148) anon14_Else_correct)))))
(let ((anon12_Else_correct  (=> (not $t3) (=> (and (|$IsValid'u64'| 0) (= $t5 (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 161128) (- 0 223551)) (=> (= 0 0) (= $t5 173345816))) (=> (=> (= 0 0) (= $t5 173345816)) (and (=> (= (ControlFlow 0 161128) (- 0 223567)) (=> (= 0 1) (= $t5 186537453))) (=> (=> (= 0 1) (= $t5 186537453)) (and (=> (= (ControlFlow 0 161128) (- 0 223583)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0)) (=> (= $t6 (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 161128) 161596) anon13_Then_correct) (=> (= (ControlFlow 0 161128) 161134) anon13_Else_correct)))))))))))))
(let ((anon11_Else_correct  (=> (and (not $t1) (= $t3  (not (= (|$addr#$signer| _$t0) 173345816)))) (and (=> (= (ControlFlow 0 161050) 161738) anon12_Then_correct) (=> (= (ControlFlow 0 161050) 161128) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |ValidatorOperatorConfigcvc5bpl.3791:20|
 :skolemid |109|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |ValidatorOperatorConfigcvc5bpl.3795:20|
 :skolemid |110|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@0))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0))) (and (= _$t0 _$t0) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 161028) 161764) anon11_Then_correct) (=> (= (ControlFlow 0 161028) 161050) anon11_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_70079| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream@@0) v@@35) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 160920) 161028)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 223309) 160920) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_101608)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_99564)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_99564)
(declare-fun $t11@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t9 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 224341) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 162298) (- 0 224758)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@11) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@1@@0) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@1@@0) addr@@11)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.4182:15|
 :skolemid |119|
))) (=> (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@1@@0) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@1@@0) addr@@12)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.4182:15|
 :skolemid |119|
)) (and (=> (= (ControlFlow 0 162298) (- 0 224786)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 162298) (- 0 224797)) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@0)) (=> (= (ControlFlow 0 162298) (- 0 224806)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@0))) _$t1)))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 162160) (- 0 224728)) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (=> (= (ControlFlow 0 162160) (- 0 224734)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t10@0)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t10@0 $abort_code@1) (= (ControlFlow 0 162312) 162160))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 162364) 162312) anon12_Then_correct@@0) (=> (= (ControlFlow 0 162364) 162298) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 162362) 162364)) anon11_Then$1_correct)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) $t11@0))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 162225) 162312) anon12_Then_correct@@0) (=> (= (ControlFlow 0 162225) 162298) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0 ($1_Roles_RoleId _$t1))) (and (=> (= (ControlFlow 0 162203) (- 0 224585)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@0)) (=> (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@13)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.4162:20|
 :skolemid |118|
)) (and (=> (= (ControlFlow 0 162203) 162362) anon11_Then_correct@@0) (=> (= (ControlFlow 0 162203) 162225) anon11_Else_correct@@0))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9 $t9)) (and (= $t10@0 $t9) (= (ControlFlow 0 162128) 162160))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9) (= $t9 6)) (and (= $t9 $t9) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 162112) 162203) anon10_Then_correct) (=> (= (ControlFlow 0 162112) 162128) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 162076) 162112)) anon0$2_correct)))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (=> (and (and (|$IsValid'u64'| _$t1) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |ValidatorOperatorConfigcvc5bpl.4058:20|
 :skolemid |117|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@1))
))) (and (= $t4 (|$addr#$signer| _$t0@@0)) (=> (= _$t1 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= _$t1 _$t1))) (and (and (|$IsValid'address'| $t5@@0) (= $t5@@0 (|$addr#$signer| _$t0@@0))) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t5@@0)) (= (ControlFlow 0 162082) 162076)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_70079| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream@@1) v@@36) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 161914) 162082)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 224341) 161914) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $t2@@0 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun $t4@@0 () Int)
(declare-fun $t10 () Bool)
(declare-fun $t7 () Bool)
(declare-fun $t6@@0 () Int)
(declare-fun $t5@@1 () Bool)
(declare-fun $t3@@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_99564)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_99564)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_99564)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 224826) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 163491) (- 0 225799)) (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 163491) (- 0 225865)) (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (not (= (|$addr#$signer| _$t0@@1) 186537453)) (= 2 $t4@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t4@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t4@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0))))))))
(let ((anon16_Then_correct  (=> $t10 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 163279) 163491))) L2_correct@@0))))
(let ((anon15_Then_correct  (=> (and (and $t7 (or (or (or (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t4@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t4@@0)))) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 163583) 163491))) L2_correct@@0)))
(let ((anon14_Then_correct@@0  (=> $t5@@1 (=> (and (and (not (= (|$addr#$signer| _$t0@@1) 186537453)) (= 2 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 163613) 163491))) L2_correct@@0))))
(let ((anon13_Then_correct@@0  (=> $t3@@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 163639) 163491))) L2_correct@@0))))
(let ((anon11_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) 1)) (and (=> (= (ControlFlow 0 163237) (- 0 225401)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 163237) (- 0 225411)) (not (not (= (|$addr#$signer| _$t0@@1) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@1) 186537453))) (and (=> (= (ControlFlow 0 163237) (- 0 225425)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 163237) (- 0 225437)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 163237) (- 0 225455)) (not (not (= (|$addr#$signer| _$t1@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@0) 173345816))) (and (=> (= (ControlFlow 0 163237) (- 0 225469)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 163237) (- 0 225480)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 163237) (- 0 225490)) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1)) (and (=> (= (ControlFlow 0 163237) (- 0 225499)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) 1) (and (=> (= (ControlFlow 0 163237) (- 0 225514)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@14)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@14)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.4509:15|
 :skolemid |122|
))) (=> (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@15)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@15)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.4509:15|
 :skolemid |122|
)) (and (=> (= (ControlFlow 0 163237) (- 0 225561)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@16)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@16)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.4513:15|
 :skolemid |123|
))) (=> (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@17)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@17)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.4513:15|
 :skolemid |123|
)) (and (=> (= (ControlFlow 0 163237) (- 0 225608)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@18)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@18)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.4517:15|
 :skolemid |124|
))) (=> (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@19)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@19)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.4517:15|
 :skolemid |124|
)) (and (=> (= (ControlFlow 0 163237) (- 0 225655)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@20)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@20)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.4521:15|
 :skolemid |125|
))) (=> (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@21)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@21)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.4521:15|
 :skolemid |125|
)) (and (=> (= (ControlFlow 0 163237) (- 0 225702)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@22)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@22)) 5))))
 :qid |ValidatorOperatorConfigcvc5bpl.4525:15|
 :skolemid |126|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@23)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@23)) 5))))
 :qid |ValidatorOperatorConfigcvc5bpl.4525:15|
 :skolemid |126|
)) (=> (= (ControlFlow 0 163237) (- 0 225749)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@0) addr@@24)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@24)) 6))))
 :qid |ValidatorOperatorConfigcvc5bpl.4529:15|
 :skolemid |127|
))))))))))))))))))))))))))))))))))
(let ((anon17_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_Roles_RoleId_$memory@1@@1 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) false) (|contents#$Memory_99564| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@1) (= (ControlFlow 0 162787) 163237))) anon11_correct)))
(let ((anon17_Then_correct  (=> (and (and |$temp_0'bool'@0@@0| (= $1_Roles_RoleId_$memory@0@@1 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) |$temp_0'$1_Roles_RoleId'@0@@0|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@1) (= (ControlFlow 0 163251) 163237))) anon11_correct)))
(let ((anon16_Else_correct  (=> (not $t10) (and (=> (= (ControlFlow 0 162773) 163251) anon17_Then_correct) (=> (= (ControlFlow 0 162773) 162787) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (not $t7) (=> (and (|$IsValid'u64'| 1) (= $t9@@0 (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 162767) (- 0 225251)) (=> (= 1 0) (= $t9@@0 173345816))) (=> (=> (= 1 0) (= $t9@@0 173345816)) (and (=> (= (ControlFlow 0 162767) (- 0 225267)) (=> (= 1 1) (= $t9@@0 186537453))) (=> (=> (= 1 1) (= $t9@@0 186537453)) (and (=> (= (ControlFlow 0 162767) (- 0 225283)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@1)) (=> (= $t10 (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 162767) 163279) anon16_Then_correct) (=> (= (ControlFlow 0 162767) 162773) anon16_Else_correct)))))))))))))
(let ((anon14_Else_correct@@0  (=> (not $t5@@1) (=> (and (= $t6@@0 (|$addr#$signer| _$t1@@0)) (= $t7  (or (or (or (not (= (|$addr#$signer| _$t1@@0) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@0)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))))) (and (=> (= (ControlFlow 0 162689) 163583) anon15_Then_correct) (=> (= (ControlFlow 0 162689) 162767) anon15_Else_correct))))))
(let ((anon13_Else_correct@@0  (=> (and (not $t3@@0) (= $t5@@1  (not (= (|$addr#$signer| _$t0@@1) 186537453)))) (and (=> (= (ControlFlow 0 162617) 163613) anon14_Then_correct@@0) (=> (= (ControlFlow 0 162617) 162689) anon14_Else_correct@@0)))))
(let ((anon0$1_correct@@1  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@1))) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@0)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@2))
 :qid |ValidatorOperatorConfigcvc5bpl.4266:20|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@3)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@3))
 :qid |ValidatorOperatorConfigcvc5bpl.4270:20|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@3))
)) (= $t2@@0 (|$addr#$signer| _$t1@@0)))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@1)) (= _$t0@@1 _$t0@@1)) (and (= _$t1@@0 _$t1@@0) (= $t3@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 162595) 163639) anon13_Then_correct@@0) (=> (= (ControlFlow 0 162595) 162617) anon13_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_70079| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream@@2) v@@37) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 162467) 162595)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 224826) 162467) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@1 () Int)
(declare-fun _$t1@@1 () T@$signer)
(declare-fun $t3@@1 () Int)
(declare-fun $t6@@1 () Int)
(declare-fun $t9@@1 () Bool)
(declare-fun $t5@@2 () Bool)
(declare-fun $t4@@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_99564)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_99564)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_99564)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@2 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 226002) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 164686) (- 0 226773)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (=> (= (ControlFlow 0 164686) (- 0 226827)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $t6@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1)) (= 6 $t6@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@1)) (= 5 $t6@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@1)) 5)) (= 3 $t6@@1))))))))
(let ((anon10_Then_correct@@0  (=> $t9@@1 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1)) (= 6 $t6@@1)) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 164518) 164686))) L2_correct@@1))))
(let ((anon9_Then_correct  (=> (and (and $t5@@2 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@1)) 5)) (= 3 $t6@@1)))) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 164738) 164686))) L2_correct@@1)))
(let ((anon7_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) 6)) (and (=> (= (ControlFlow 0 164476) (- 0 226393)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 164476) (- 0 226405)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 164476) (- 0 226423)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (and (=> (= (ControlFlow 0 164476) (- 0 226434)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 164476) (- 0 226446)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (and (=> (= (ControlFlow 0 164476) (- 0 226464)) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1)) (and (=> (= (ControlFlow 0 164476) (- 0 226473)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) 6)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) 6) (and (=> (= (ControlFlow 0 164476) (- 0 226488)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@25)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@25)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.4757:15|
 :skolemid |129|
))) (=> (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@26)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@26)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.4757:15|
 :skolemid |129|
)) (and (=> (= (ControlFlow 0 164476) (- 0 226535)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@27)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@27)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.4761:15|
 :skolemid |130|
))) (=> (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@28)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@28)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.4761:15|
 :skolemid |130|
)) (and (=> (= (ControlFlow 0 164476) (- 0 226582)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@29)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@29)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.4765:15|
 :skolemid |131|
))) (=> (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@30)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@30)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.4765:15|
 :skolemid |131|
)) (and (=> (= (ControlFlow 0 164476) (- 0 226629)) (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@31)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@31)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.4769:15|
 :skolemid |132|
))) (=> (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@32)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@32)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.4769:15|
 :skolemid |132|
)) (and (=> (= (ControlFlow 0 164476) (- 0 226676)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@33)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@33)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.4773:15|
 :skolemid |133|
))) (=> (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@34)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@34)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.4773:15|
 :skolemid |133|
)) (=> (= (ControlFlow 0 164476) (- 0 226723)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@1) addr@@35)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@35)) 5))))
 :qid |ValidatorOperatorConfigcvc5bpl.4777:15|
 :skolemid |134|
))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_Roles_RoleId_$memory@1@@2 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1) false) (|contents#$Memory_99564| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@1@@2) (= (ControlFlow 0 164044) 164476))) anon7_correct)))
(let ((anon11_Then_correct@@1  (=> (and (and |$temp_0'bool'@0@@1| (= $1_Roles_RoleId_$memory@0@@2 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1) |$temp_0'$1_Roles_RoleId'@0@@1|)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@0@@2) (= (ControlFlow 0 164490) 164476))) anon7_correct)))
(let ((anon10_Else_correct@@0  (=> (not $t9@@1) (and (=> (= (ControlFlow 0 164030) 164490) anon11_Then_correct@@1) (=> (= (ControlFlow 0 164030) 164044) anon11_Else_correct@@1)))))
(let ((anon9_Else_correct  (=> (not $t5@@2) (=> (and (|$IsValid'u64'| 6) (= $t8 (|$addr#$signer| _$t1@@1))) (and (=> (= (ControlFlow 0 164024) (- 0 226243)) (=> (= 6 0) (= $t8 173345816))) (=> (=> (= 6 0) (= $t8 173345816)) (and (=> (= (ControlFlow 0 164024) (- 0 226259)) (=> (= 6 1) (= $t8 186537453))) (=> (=> (= 6 1) (= $t8 186537453)) (and (=> (= (ControlFlow 0 164024) (- 0 226275)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@1)) (=> (= $t9@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (and (=> (= (ControlFlow 0 164024) 164518) anon10_Then_correct@@0) (=> (= (ControlFlow 0 164024) 164030) anon10_Else_correct@@0)))))))))))))
(let ((anon0$1_correct@@2  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@2)) (|$IsValid'address'| (|$addr#$signer| _$t1@@1))) (=> (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |ValidatorOperatorConfigcvc5bpl.4588:20|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@4))
)) (= $t2@@1 (|$addr#$signer| _$t0@@2))) (and (= $t3@@1 (|$addr#$signer| _$t0@@2)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@1)))) (and (and (= _$t0@@2 _$t0@@2) (= _$t1@@1 _$t1@@1)) (and (= $t4@@1 (|$addr#$signer| _$t0@@2)) (= $t5@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@1)) 5))))))) (and (=> (= (ControlFlow 0 163946) 164738) anon9_Then_correct) (=> (= (ControlFlow 0 163946) 164024) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_70079| stream@@3) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream@@3) v@@38) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 163816) 163946)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 226002) 163816) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@2 () Int)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun _$t1@@2 () T@$signer)
(declare-fun $t3@@2 () Int)
(declare-fun $t6@@2 () Int)
(declare-fun $t9@@2 () Bool)
(declare-fun $t5@@3 () Bool)
(declare-fun $t4@@2 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_99564)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_99564)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_99564)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 226936) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 165867) (- 0 227765)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))) (=> (= (ControlFlow 0 165867) (- 0 227841)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@3) 186537453)) (= 2 $t6@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@2)) (= 5 $t6@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@3) 186537453)) (= 2 $t6@@2))))))))
(let ((anon10_Then_correct@@1  (=> $t9@@2 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@2)) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 165635) 165867))) L2_correct@@2))))
(let ((anon9_Then_correct@@0  (=> (and (and $t5@@3 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@3) 186537453)) (= 2 $t6@@2)))) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 165939) 165867))) L2_correct@@2)))
(let ((anon7_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) 2)) (and (=> (= (ControlFlow 0 165593) (- 0 227357)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@2))) (and (=> (= (ControlFlow 0 165593) (- 0 227369)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (and (=> (= (ControlFlow 0 165593) (- 0 227387)) (not (not (= (|$addr#$signer| _$t0@@3) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@3) 186537453))) (and (=> (= (ControlFlow 0 165593) (- 0 227401)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 165593) (- 0 227412)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@2))) (and (=> (= (ControlFlow 0 165593) (- 0 227424)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (and (=> (= (ControlFlow 0 165593) (- 0 227442)) (not (not (= (|$addr#$signer| _$t0@@3) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@3) 186537453))) (and (=> (= (ControlFlow 0 165593) (- 0 227456)) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2)) (and (=> (= (ControlFlow 0 165593) (- 0 227465)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) 2)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) 2) (and (=> (= (ControlFlow 0 165593) (- 0 227480)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@36)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@36)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.5015:15|
 :skolemid |136|
))) (=> (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@37)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@37)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.5015:15|
 :skolemid |136|
)) (and (=> (= (ControlFlow 0 165593) (- 0 227527)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@38)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@38)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.5019:15|
 :skolemid |137|
))) (=> (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@39)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@39)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.5019:15|
 :skolemid |137|
)) (and (=> (= (ControlFlow 0 165593) (- 0 227574)) (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@40)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@40)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.5023:15|
 :skolemid |138|
))) (=> (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@41)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@41)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.5023:15|
 :skolemid |138|
)) (and (=> (= (ControlFlow 0 165593) (- 0 227621)) (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@42)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@42)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.5027:15|
 :skolemid |139|
))) (=> (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@43)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@43)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.5027:15|
 :skolemid |139|
)) (and (=> (= (ControlFlow 0 165593) (- 0 227668)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@44)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@44)) 5))))
 :qid |ValidatorOperatorConfigcvc5bpl.5031:15|
 :skolemid |140|
))) (=> (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@45)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@45)) 5))))
 :qid |ValidatorOperatorConfigcvc5bpl.5031:15|
 :skolemid |140|
)) (=> (= (ControlFlow 0 165593) (- 0 227715)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@2) addr@@46)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@46)) 6))))
 :qid |ValidatorOperatorConfigcvc5bpl.5035:15|
 :skolemid |141|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@0@@2|) (= $1_Roles_RoleId_$memory@1@@3 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) false) (|contents#$Memory_99564| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@1@@3) (= (ControlFlow 0 165133) 165593))) anon7_correct@@0)))
(let ((anon11_Then_correct@@2  (=> (and (and |$temp_0'bool'@0@@2| (= $1_Roles_RoleId_$memory@0@@3 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) |$temp_0'$1_Roles_RoleId'@0@@2|)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@0@@3) (= (ControlFlow 0 165607) 165593))) anon7_correct@@0)))
(let ((anon10_Else_correct@@1  (=> (not $t9@@2) (and (=> (= (ControlFlow 0 165119) 165607) anon11_Then_correct@@2) (=> (= (ControlFlow 0 165119) 165133) anon11_Else_correct@@2)))))
(let ((anon9_Else_correct@@0  (=> (not $t5@@3) (=> (and (|$IsValid'u64'| 2) (= $t8@@0 (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 165113) (- 0 227207)) (=> (= 2 0) (= $t8@@0 173345816))) (=> (=> (= 2 0) (= $t8@@0 173345816)) (and (=> (= (ControlFlow 0 165113) (- 0 227223)) (=> (= 2 1) (= $t8@@0 186537453))) (=> (=> (= 2 1) (= $t8@@0 186537453)) (and (=> (= (ControlFlow 0 165113) (- 0 227239)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@2)) (=> (= $t9@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 165113) 165635) anon10_Then_correct@@1) (=> (= (ControlFlow 0 165113) 165119) anon10_Else_correct@@1)))))))))))))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'address'| (|$addr#$signer| _$t1@@2))) (=> (and (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |ValidatorOperatorConfigcvc5bpl.4836:20|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@5))
)) (= $t2@@2 (|$addr#$signer| _$t0@@3))) (and (= $t3@@2 (|$addr#$signer| _$t0@@3)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@2)))) (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@2 _$t1@@2)) (and (= $t4@@2 (|$addr#$signer| _$t0@@3)) (= $t5@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))))))) (and (=> (= (ControlFlow 0 165035) 165939) anon9_Then_correct@@0) (=> (= (ControlFlow 0 165035) 165113) anon9_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_70079| stream@@4) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream@@4) v@@39) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 164893) 165035)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 226936) 164893) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@3 () Int)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun _$t1@@3 () T@$signer)
(declare-fun $t3@@3 () Int)
(declare-fun $t6@@3 () Int)
(declare-fun $t9@@3 () Bool)
(declare-fun $t5@@4 () Bool)
(declare-fun $t4@@3 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_99564)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_99564)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_99564)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 227988) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 167076) (- 0 228817)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (=> (= (ControlFlow 0 167076) (- 0 228893)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t6@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@3))))))))
(let ((anon10_Then_correct@@2  (=> $t9@@3 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@3)) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 166844) 167076))) L2_correct@@3))))
(let ((anon9_Then_correct@@1  (=> (and (and $t5@@4 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@3)))) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 167148) 167076))) L2_correct@@3)))
(let ((anon7_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) 5)) (and (=> (= (ControlFlow 0 166802) (- 0 228409)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@3))) (and (=> (= (ControlFlow 0 166802) (- 0 228421)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (and (=> (= (ControlFlow 0 166802) (- 0 228439)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 166802) (- 0 228453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 166802) (- 0 228464)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 166802) (- 0 228476)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (and (=> (= (ControlFlow 0 166802) (- 0 228494)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 166802) (- 0 228508)) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3)) (and (=> (= (ControlFlow 0 166802) (- 0 228517)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) 5)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) 5) (and (=> (= (ControlFlow 0 166802) (- 0 228532)) (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@47)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@47)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.5273:15|
 :skolemid |143|
))) (=> (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@48)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@48)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.5273:15|
 :skolemid |143|
)) (and (=> (= (ControlFlow 0 166802) (- 0 228579)) (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@49)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@49)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.5277:15|
 :skolemid |144|
))) (=> (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@50)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@50)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.5277:15|
 :skolemid |144|
)) (and (=> (= (ControlFlow 0 166802) (- 0 228626)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@51)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@51)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.5281:15|
 :skolemid |145|
))) (=> (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@52)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@52)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.5281:15|
 :skolemid |145|
)) (and (=> (= (ControlFlow 0 166802) (- 0 228673)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@53)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@53)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.5285:15|
 :skolemid |146|
))) (=> (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@54)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@54)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.5285:15|
 :skolemid |146|
)) (and (=> (= (ControlFlow 0 166802) (- 0 228720)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@55)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@55)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.5289:15|
 :skolemid |147|
))) (=> (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@56)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@56)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.5289:15|
 :skolemid |147|
)) (=> (= (ControlFlow 0 166802) (- 0 228767)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@3) addr@@57)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@57)) 6))))
 :qid |ValidatorOperatorConfigcvc5bpl.5293:15|
 :skolemid |148|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@3|) (= $1_Roles_RoleId_$memory@1@@4 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) false) (|contents#$Memory_99564| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@1@@4) (= (ControlFlow 0 166342) 166802))) anon7_correct@@1)))
(let ((anon11_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@3| (= $1_Roles_RoleId_$memory@0@@4 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) |$temp_0'$1_Roles_RoleId'@0@@3|)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@0@@4) (= (ControlFlow 0 166816) 166802))) anon7_correct@@1)))
(let ((anon10_Else_correct@@2  (=> (not $t9@@3) (and (=> (= (ControlFlow 0 166328) 166816) anon11_Then_correct@@3) (=> (= (ControlFlow 0 166328) 166342) anon11_Else_correct@@3)))))
(let ((anon9_Else_correct@@1  (=> (not $t5@@4) (=> (and (|$IsValid'u64'| 5) (= $t8@@1 (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 166322) (- 0 228259)) (=> (= 5 0) (= $t8@@1 173345816))) (=> (=> (= 5 0) (= $t8@@1 173345816)) (and (=> (= (ControlFlow 0 166322) (- 0 228275)) (=> (= 5 1) (= $t8@@1 186537453))) (=> (=> (= 5 1) (= $t8@@1 186537453)) (and (=> (= (ControlFlow 0 166322) (- 0 228291)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@3)) (=> (= $t9@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 166322) 166844) anon10_Then_correct@@2) (=> (= (ControlFlow 0 166322) 166328) anon10_Else_correct@@2)))))))))))))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3))) (=> (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |ValidatorOperatorConfigcvc5bpl.5094:20|
 :skolemid |142|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@6))
)) (= $t2@@3 (|$addr#$signer| _$t0@@4))) (and (= $t3@@3 (|$addr#$signer| _$t0@@4)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@3)))) (and (and (= _$t0@@4 _$t0@@4) (= _$t1@@3 _$t1@@3)) (and (= $t4@@3 (|$addr#$signer| _$t0@@4)) (= $t5@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))))))) (and (=> (= (ControlFlow 0 166244) 167148) anon9_Then_correct@@1) (=> (= (ControlFlow 0 166244) 166322) anon9_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_70079| stream@@5) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream@@5) v@@40) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 166102) 166244)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 227988) 166102) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@4 () Int)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun _$t1@@4 () T@$signer)
(declare-fun $t3@@4 () Int)
(declare-fun $t6@@4 () Int)
(declare-fun $t9@@4 () Bool)
(declare-fun $t5@@5 () Bool)
(declare-fun $t4@@4 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_99564)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_99564)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_99564)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@2 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 229040) (let ((L2_correct@@4  (and (=> (= (ControlFlow 0 168297) (- 0 229899)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))) (=> (= (ControlFlow 0 168297) (- 0 229975)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@4)) (= 5 $t6@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4))))))))
(let ((anon10_Then_correct@@3  (=> $t9@@4 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@4)) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 168065) 168297))) L2_correct@@4))))
(let ((anon9_Then_correct@@2  (=> (and (and $t5@@5 (or (or (or (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4)))) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 168389) 168297))) L2_correct@@4)))
(let ((anon7_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) 4)) (and (=> (= (ControlFlow 0 168023) (- 0 229491)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@4))) (and (=> (= (ControlFlow 0 168023) (- 0 229503)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (and (=> (= (ControlFlow 0 168023) (- 0 229521)) (not (not (= (|$addr#$signer| _$t0@@5) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 173345816))) (and (=> (= (ControlFlow 0 168023) (- 0 229535)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 168023) (- 0 229546)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@4))) (and (=> (= (ControlFlow 0 168023) (- 0 229558)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (and (=> (= (ControlFlow 0 168023) (- 0 229576)) (not (not (= (|$addr#$signer| _$t0@@5) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 173345816))) (and (=> (= (ControlFlow 0 168023) (- 0 229590)) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4)) (and (=> (= (ControlFlow 0 168023) (- 0 229599)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) 4)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) 4) (and (=> (= (ControlFlow 0 168023) (- 0 229614)) (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@58)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@58)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.5531:15|
 :skolemid |150|
))) (=> (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@59)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@59)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.5531:15|
 :skolemid |150|
)) (and (=> (= (ControlFlow 0 168023) (- 0 229661)) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@60)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@60)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.5535:15|
 :skolemid |151|
))) (=> (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@61)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@61)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.5535:15|
 :skolemid |151|
)) (and (=> (= (ControlFlow 0 168023) (- 0 229708)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@62)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@62)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.5539:15|
 :skolemid |152|
))) (=> (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@63)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@63)) 3))))
 :qid |ValidatorOperatorConfigcvc5bpl.5539:15|
 :skolemid |152|
)) (and (=> (= (ControlFlow 0 168023) (- 0 229755)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@64)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@64)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.5543:15|
 :skolemid |153|
))) (=> (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@65)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@65)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.5543:15|
 :skolemid |153|
)) (and (=> (= (ControlFlow 0 168023) (- 0 229802)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@66)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@66)) 5))))
 :qid |ValidatorOperatorConfigcvc5bpl.5547:15|
 :skolemid |154|
))) (=> (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@67)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@67)) 5))))
 :qid |ValidatorOperatorConfigcvc5bpl.5547:15|
 :skolemid |154|
)) (=> (= (ControlFlow 0 168023) (- 0 229849)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@4) addr@@68)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@68)) 6))))
 :qid |ValidatorOperatorConfigcvc5bpl.5551:15|
 :skolemid |155|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@4|) (= $1_Roles_RoleId_$memory@1@@5 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) false) (|contents#$Memory_99564| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@1@@5) (= (ControlFlow 0 167563) 168023))) anon7_correct@@2)))
(let ((anon11_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@4| (= $1_Roles_RoleId_$memory@0@@5 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) |$temp_0'$1_Roles_RoleId'@0@@4|)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@0@@5) (= (ControlFlow 0 168037) 168023))) anon7_correct@@2)))
(let ((anon10_Else_correct@@3  (=> (not $t9@@4) (and (=> (= (ControlFlow 0 167549) 168037) anon11_Then_correct@@4) (=> (= (ControlFlow 0 167549) 167563) anon11_Else_correct@@4)))))
(let ((anon9_Else_correct@@2  (=> (not $t5@@5) (=> (and (|$IsValid'u64'| 4) (= $t8@@2 (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 167543) (- 0 229341)) (=> (= 4 0) (= $t8@@2 173345816))) (=> (=> (= 4 0) (= $t8@@2 173345816)) (and (=> (= (ControlFlow 0 167543) (- 0 229357)) (=> (= 4 1) (= $t8@@2 186537453))) (=> (=> (= 4 1) (= $t8@@2 186537453)) (and (=> (= (ControlFlow 0 167543) (- 0 229373)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@4)) (=> (= $t9@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 167543) 168065) anon10_Then_correct@@3) (=> (= (ControlFlow 0 167543) 167549) anon10_Else_correct@@3)))))))))))))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4))) (=> (and (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |ValidatorOperatorConfigcvc5bpl.5352:20|
 :skolemid |149|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@7))
)) (= $t2@@4 (|$addr#$signer| _$t0@@5))) (and (= $t3@@4 (|$addr#$signer| _$t0@@5)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@4)))) (and (and (= _$t0@@5 _$t0@@5) (= _$t1@@4 _$t1@@4)) (and (= $t4@@4 (|$addr#$signer| _$t0@@5)) (= $t5@@5  (or (or (or (not (= (|$addr#$signer| _$t0@@5) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))))))) (and (=> (= (ControlFlow 0 167465) 168389) anon9_Then_correct@@2) (=> (= (ControlFlow 0 167465) 167543) anon9_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_70079| stream@@6) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream@@6) v@@41) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 167311) 167465)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 229040) 167311) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@5 () Int)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun _$t1@@5 () T@$signer)
(declare-fun $t3@@5 () Int)
(declare-fun $t6@@5 () Int)
(declare-fun $t9@@5 () Bool)
(declare-fun $t5@@6 () Bool)
(declare-fun $t4@@5 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_99564)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_99564)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_99564)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 230122) (let ((L2_correct@@5  (and (=> (= (ControlFlow 0 169540) (- 0 230981)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (=> (= (ControlFlow 0 169540) (- 0 231057)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@5)) (= 5 $t6@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@5))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5))))))))
(let ((anon10_Then_correct@@4  (=> $t9@@5 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@5)) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 169308) 169540))) L2_correct@@5))))
(let ((anon9_Then_correct@@3  (=> (and (and $t5@@6 (or (or (or (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5)))) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 169632) 169540))) L2_correct@@5)))
(let ((anon7_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) 3)) (and (=> (= (ControlFlow 0 169266) (- 0 230573)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@5))) (and (=> (= (ControlFlow 0 169266) (- 0 230585)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (and (=> (= (ControlFlow 0 169266) (- 0 230603)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 169266) (- 0 230617)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 169266) (- 0 230628)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@5))) (and (=> (= (ControlFlow 0 169266) (- 0 230640)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (and (=> (= (ControlFlow 0 169266) (- 0 230658)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 169266) (- 0 230672)) (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5)) (and (=> (= (ControlFlow 0 169266) (- 0 230681)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) 3)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) 3) (and (=> (= (ControlFlow 0 169266) (- 0 230696)) (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@69)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@69)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.5789:15|
 :skolemid |157|
))) (=> (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@70)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@70)) 0))))
 :qid |ValidatorOperatorConfigcvc5bpl.5789:15|
 :skolemid |157|
)) (and (=> (= (ControlFlow 0 169266) (- 0 230743)) (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@71)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@71)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.5793:15|
 :skolemid |158|
))) (=> (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@72)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@72)) 1))))
 :qid |ValidatorOperatorConfigcvc5bpl.5793:15|
 :skolemid |158|
)) (and (=> (= (ControlFlow 0 169266) (- 0 230790)) (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@73)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@73)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.5797:15|
 :skolemid |159|
))) (=> (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@74)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@74)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.5797:15|
 :skolemid |159|
)) (and (=> (= (ControlFlow 0 169266) (- 0 230837)) (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@75)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@75)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.5801:15|
 :skolemid |160|
))) (=> (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@76)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@76)) 2))))
 :qid |ValidatorOperatorConfigcvc5bpl.5801:15|
 :skolemid |160|
)) (and (=> (= (ControlFlow 0 169266) (- 0 230884)) (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@77)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@77)) 5))))
 :qid |ValidatorOperatorConfigcvc5bpl.5805:15|
 :skolemid |161|
))) (=> (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@78)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@78)) 5))))
 :qid |ValidatorOperatorConfigcvc5bpl.5805:15|
 :skolemid |161|
)) (=> (= (ControlFlow 0 169266) (- 0 230931)) (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory@2@@5) addr@@79)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@79)) 6))))
 :qid |ValidatorOperatorConfigcvc5bpl.5809:15|
 :skolemid |162|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_Roles_RoleId_$memory@1@@6 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) false) (|contents#$Memory_99564| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@1@@6) (= (ControlFlow 0 168806) 169266))) anon7_correct@@3)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@5| (= $1_Roles_RoleId_$memory@0@@6 ($Memory_99564 (|Store__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) |$temp_0'$1_Roles_RoleId'@0@@5|)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@0@@6) (= (ControlFlow 0 169280) 169266))) anon7_correct@@3)))
(let ((anon10_Else_correct@@4  (=> (not $t9@@5) (and (=> (= (ControlFlow 0 168792) 169280) anon11_Then_correct@@5) (=> (= (ControlFlow 0 168792) 168806) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct@@3  (=> (not $t5@@6) (=> (and (|$IsValid'u64'| 3) (= $t8@@3 (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 168786) (- 0 230423)) (=> (= 3 0) (= $t8@@3 173345816))) (=> (=> (= 3 0) (= $t8@@3 173345816)) (and (=> (= (ControlFlow 0 168786) (- 0 230439)) (=> (= 3 1) (= $t8@@3 186537453))) (=> (=> (= 3 1) (= $t8@@3 186537453)) (and (=> (= (ControlFlow 0 168786) (- 0 230455)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@5)) (=> (= $t9@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 168786) 169308) anon10_Then_correct@@4) (=> (= (ControlFlow 0 168786) 168792) anon10_Else_correct@@4)))))))))))))
(let ((anon0$1_correct@@6  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) (|$IsValid'address'| (|$addr#$signer| _$t1@@5))) (=> (and (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |ValidatorOperatorConfigcvc5bpl.5610:20|
 :skolemid |156|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@8))
)) (= $t2@@5 (|$addr#$signer| _$t0@@6))) (and (= $t3@@5 (|$addr#$signer| _$t0@@6)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@5)))) (and (and (= _$t0@@6 _$t0@@6) (= _$t1@@5 _$t1@@5)) (and (= $t4@@5 (|$addr#$signer| _$t0@@6)) (= $t5@@6  (or (or (or (not (= (|$addr#$signer| _$t0@@6) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t4@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))))))) (and (=> (= (ControlFlow 0 168708) 169632) anon9_Then_correct@@3) (=> (= (ControlFlow 0 168708) 168786) anon9_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_70079| stream@@7) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream@@7) v@@42) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 168554) 168708)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 230122) 168554) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t8@0 () (Seq Int))
(declare-fun $t7@1 () T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun _$t0@@7 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| Int) T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun $t4@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t7@@0 () T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun $t7@0 () T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 () Bool)
(declare-fun $t6@@6 () Int)
(push 1)
(set-info :boogie-vc-id $1_ValidatorOperatorConfig_get_human_name$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 231204) (let ((anon15_Else_correct@@0  (=> (not $abort_flag@0@@0) (=> (and (= $t8@0 (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| $t7@1)) (= $t8@0 $t8@0)) (and (=> (= (ControlFlow 0 170123) (- 0 231578)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@7))) (=> (= (ControlFlow 0 170123) (- 0 231589)) (= $t8@0 (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@7))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 170059) (- 0 231531)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@7))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@7)) (=> (= (ControlFlow 0 170059) (- 0 231537)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@7)) (= 5 $t4@0)))))))
(let ((anon15_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t4@0 $abort_code@1@@0) (= (ControlFlow 0 170137) 170059))) L3_correct@@0)))
(let ((anon14_Then$1_correct  (=> (= $t7@1 $t7@@0) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 170189) 170137) anon15_Then_correct@@0) (=> (= (ControlFlow 0 170189) 170123) anon15_Else_correct@@0))))))
(let ((anon14_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@7)) (= (ControlFlow 0 170187) 170189)) anon14_Then$1_correct)))
(let ((anon14_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@7) (=> (and (and (= $t7@0 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@7)) (= $t7@1 $t7@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 170077) 170137) anon15_Then_correct@@0) (=> (= (ControlFlow 0 170077) 170123) anon15_Else_correct@@0))))))
(let ((anon13_Then_correct@@1  (=> inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 (and (=> (= (ControlFlow 0 170063) 170187) anon14_Then_correct@@1) (=> (= (ControlFlow 0 170063) 170077) anon14_Else_correct@@1)))))
(let ((anon13_Else_correct@@1  (=> (and (and (not inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1) (= $t6@@6 $t6@@6)) (and (= $t4@0 $t6@@6) (= (ControlFlow 0 170027) 170059))) L3_correct@@0)))
(let ((anon12_Else_correct@@1  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t6@@6) (= $t6@@6 5)) (and (= $t6@@6 $t6@@6) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1))) (and (=> (= (ControlFlow 0 170011) 170063) anon13_Then_correct@@1) (=> (= (ControlFlow 0 170011) 170027) anon13_Else_correct@@1))))))
(let ((anon12_Then_correct@@1 true))
(let ((inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct  (=> (= _$t0@@7 _$t0@@7) (=> (and (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@7)) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1)) (and (=> (= (ControlFlow 0 169969) 170203) anon12_Then_correct@@1) (=> (= (ControlFlow 0 169969) 170011) anon12_Else_correct@@1))))))
(let ((anon0$1_correct@@7  (=> (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@80) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@80)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.5885:20|
 :skolemid |164|
)) (=> (and (and (|$IsValid'address'| _$t0@@7) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@9)))
(|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| $rsc@@9))
 :qid |ValidatorOperatorConfigcvc5bpl.5892:20|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@9))
))) (and (= _$t0@@7 _$t0@@7) (= (ControlFlow 0 169975) 169969))) inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_70079| stream@@8) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream@@8) v@@43) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 169795) 169975)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 231204) 169795) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@8 () Int)
(declare-fun $t1@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_ValidatorOperatorConfig_has_validator_operator_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 231605) (let ((anon0$1_correct@@8  (=> (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@81) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@81)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.6061:20|
 :skolemid |166|
)) (=> (and (|$IsValid'address'| _$t0@@8) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@10)))
(|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| $rsc@@10))
 :qid |ValidatorOperatorConfigcvc5bpl.6068:20|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@10))
))) (=> (and (and (= _$t0@@8 _$t0@@8) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@8))) (and (= $t1@0 $t1@0) (= (ControlFlow 0 170389) (- 0 231724)))) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t0@@8)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_70079| stream@@9) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream@@9) v@@44) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 170286) 170389)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 231605) 170286) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 () T@$Memory_101608)
(declare-fun $t5@@7 () Int)
(declare-fun _$t1@@6 () T@$signer)
(declare-fun _$t0@@9 () T@$signer)
(declare-fun $t6@@7 () Int)
(declare-fun $t8@0@@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0 () T@$Memory_101608)
(declare-fun |Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| Int T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun $t17@0 () T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun _$t2 () (Seq Int))
(declare-fun $t16 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 () Bool)
(declare-fun $t11 () Bool)
(declare-fun $t8@@4 () Int)
(declare-fun $t10@@0 () Bool)
(declare-fun $t9@@6 () Int)
(declare-fun $t7@@1 () Bool)
(declare-fun $t12 () Int)
(push 1)
(set-info :boogie-vc-id $1_ValidatorOperatorConfig_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 231744) (let ((anon24_Else_correct  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 171659) (- 0 232913)) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@82) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@82)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.6385:15|
 :skolemid |172|
))) (=> (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@83) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@83)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.6385:15|
 :skolemid |172|
)) (and (=> (= (ControlFlow 0 171659) (- 0 232938)) (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@84) (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@84)))
 :qid |ValidatorOperatorConfigcvc5bpl.6391:15|
 :skolemid |173|
))) (=> (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@85) (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@85)))
 :qid |ValidatorOperatorConfigcvc5bpl.6391:15|
 :skolemid |173|
)) (and (=> (= (ControlFlow 0 171659) (- 0 232965)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t5@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t5@@7))) (and (=> (= (ControlFlow 0 171659) (- 0 232977)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t5@@7)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t5@@7)) 0))) (and (=> (= (ControlFlow 0 171659) (- 0 232995)) (not (not (= (|$addr#$signer| _$t1@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@6) 173345816))) (and (=> (= (ControlFlow 0 171659) (- 0 233009)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9)))) (and (=> (= (ControlFlow 0 171659) (- 0 233022)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4))) (and (=> (= (ControlFlow 0 171659) (- 0 233041)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@9)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@9))) (and (=> (= (ControlFlow 0 171659) (- 0 233052)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 171659) (- 0 233062)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@7))) (and (=> (= (ControlFlow 0 171659) (- 0 233074)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@7)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@7)) 0))) (and (=> (= (ControlFlow 0 171659) (- 0 233092)) (not (not (= (|$addr#$signer| _$t1@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@6) 173345816))) (and (=> (= (ControlFlow 0 171659) (- 0 233106)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9)))) (and (=> (= (ControlFlow 0 171659) (- 0 233119)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4))) (=> (= (ControlFlow 0 171659) (- 0 233138)) (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) (|$addr#$signer| _$t0@@9))))))))))))))))))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 171375) (- 0 232548)) (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t5@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t5@@7)) 0))) (not (= (|$addr#$signer| _$t1@@6) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4))) (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@9))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@7)) 0))) (not (= (|$addr#$signer| _$t1@@6) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4)))) (=> (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t5@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t5@@7)) 0))) (not (= (|$addr#$signer| _$t1@@6) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4))) (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@9))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@7)) 0))) (not (= (|$addr#$signer| _$t1@@6) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4))) (=> (= (ControlFlow 0 171375) (- 0 232683)) (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t5@@7)) (= 5 $t8@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t5@@7)) 0)) (= 3 $t8@0@@0))) (and (not (= (|$addr#$signer| _$t1@@6) 173345816)) (= 2 $t8@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) (= 5 $t8@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4)) (= 3 $t8@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@9)) (= 6 $t8@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t8@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@7)) (= 5 $t8@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t6@@7)) 0)) (= 3 $t8@0@@0))) (and (not (= (|$addr#$signer| _$t1@@6) 173345816)) (= 2 $t8@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) (= 5 $t8@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4)) (= 3 $t8@0@@0))))))))
(let ((anon24_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t8@0@@0 $abort_code@1@@1) (= (ControlFlow 0 171673) 171375))) L3_correct@@1)))
(let ((anon23_Then$1_correct  (=> (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 171725) 171673) anon24_Then_correct) (=> (= (ControlFlow 0 171725) 171659) anon24_Else_correct))))))
(let ((anon23_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@9)) (= (ControlFlow 0 171723) 171725)) anon23_Then$1_correct)))
(let ((anon23_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@9))) (=> (and (and (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0 ($Memory_101608 (|Store__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@9) true) (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@9) $t17@0))) (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 171411) 171673) anon24_Then_correct) (=> (= (ControlFlow 0 171411) 171659) anon24_Else_correct))))))
(let ((anon22_Then_correct  (=> (and inline$$Not$0$dst@1@@0 (= $t17@0 ($1_ValidatorOperatorConfig_ValidatorOperatorConfig _$t2))) (and (=> (= (ControlFlow 0 171389) 171723) anon23_Then_correct) (=> (= (ControlFlow 0 171389) 171411) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t16 $t16)) (and (= $t8@0@@0 $t16) (= (ControlFlow 0 170967) 171375))) L3_correct@@1)))
(let ((anon21_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t16) (= $t16 6)) (and (= $t16 $t16) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 170951) 171389) anon22_Then_correct) (=> (= (ControlFlow 0 170951) 170967) anon22_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0)) (= (ControlFlow 0 170911) 170951)) anon21_Else$1_correct)))
(let ((anon21_Else_correct  (=> (and (not false) (= (ControlFlow 0 170917) 170911)) inline$$Not$0$anon0_correct@@0)))
(let ((anon20_Then_correct  (=> $t11 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) (= 5 $t8@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4)) (= 3 $t8@@4))) (= $t8@@4 $t8@@4)) (and (= $t8@0@@0 $t8@@4) (= (ControlFlow 0 171795) 171375))) L3_correct@@1))))
(let ((anon19_Then_correct  (=> $t10@@0 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t1@@6) 173345816)) (= 2 $t8@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t9@@6)) (= 5 $t8@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t9@@6)) 0)) (= 3 $t8@@4))) (and (not (= (|$addr#$signer| _$t1@@6) 173345816)) (= 2 $t8@@4))) (= $t8@@4 $t8@@4)) (and (= $t8@0@@0 $t8@@4) (= (ControlFlow 0 171887) 171375))) L3_correct@@1))))
(let ((anon18_Then_correct  (=> $t7@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t8@@4)) (= $t8@@4 $t8@@4)) (and (= $t8@0@@0 $t8@@4) (= (ControlFlow 0 171913) 171375))) L3_correct@@1))))
(let ((anon21_Then_correct true))
(let ((inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct@@0  (=> (= $t12 $t12) (=> (and (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t12)) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 170867) 171739) anon21_Then_correct) (=> (= (ControlFlow 0 170867) 170917) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (and (and (not $t11) (|$IsValid'address'| $t12)) (and (= $t12 (|$addr#$signer| _$t0@@9)) (= (ControlFlow 0 170873) 170867))) inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct@@0)))
(let ((anon19_Else_correct  (=> (and (not $t10@@0) (= $t11  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 4))))) (and (=> (= (ControlFlow 0 170750) 171795) anon20_Then_correct) (=> (= (ControlFlow 0 170750) 170873) anon20_Else_correct)))))
(let ((anon18_Else_correct  (=> (not $t7@@1) (=> (and (= $t9@@6 (|$addr#$signer| _$t1@@6)) (= $t10@@0  (or (or (or (not (= (|$addr#$signer| _$t1@@6) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) $t9@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $t9@@6)) 0))) (not (= (|$addr#$signer| _$t1@@6) 173345816))))) (and (=> (= (ControlFlow 0 170710) 171887) anon19_Then_correct) (=> (= (ControlFlow 0 170710) 170750) anon19_Else_correct))))))
(let ((anon0$1_correct@@9  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@86) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99564| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) addr@@86)) 4))))
 :qid |ValidatorOperatorConfigcvc5bpl.6142:20|
 :skolemid |168|
))) (=> (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@9)) (|$IsValid'address'| (|$addr#$signer| _$t1@@6))) (and (|$IsValid'vec'u8''| _$t2) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@11))
 :qid |ValidatorOperatorConfigcvc5bpl.6154:20|
 :skolemid |169|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11))
)))) (=> (and (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@12)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@12))
 :qid |ValidatorOperatorConfigcvc5bpl.6158:20|
 :skolemid |170|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99564| $1_Roles_RoleId_$memory) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@13)))
(|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| $rsc@@13))
 :qid |ValidatorOperatorConfigcvc5bpl.6162:20|
 :skolemid |171|
 :pattern ( (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_101608| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@13))
))) (and (= $t5@@7 (|$addr#$signer| _$t1@@6)) (= $t6@@7 (|$addr#$signer| _$t1@@6)))) (and (and (= _$t0@@9 _$t0@@9) (= _$t1@@6 _$t1@@6)) (and (= _$t2 _$t2) (= $t7@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_99070| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 170638) 171913) anon18_Then_correct) (=> (= (ControlFlow 0 170638) 170710) anon18_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_70079_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_70079| stream@@10) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_70079| stream@@10) v@@45) 0)
 :qid |ValidatorOperatorConfigcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigcvc5bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 170455) 170638)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 231744) 170455) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9)))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 233162) true)
))
(check-sat)
(pop 1)
; Valid
