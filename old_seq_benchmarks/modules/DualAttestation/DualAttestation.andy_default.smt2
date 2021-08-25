(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_116501 0)) ((($Memory_116501 (|domain#$Memory_116501| |T@[Int]Bool|) (|contents#$Memory_116501| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_200063 0)) ((($Memory_200063 (|domain#$Memory_200063| |T@[Int]Bool|) (|contents#$Memory_200063| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_196952 0)) ((($Memory_196952 (|domain#$Memory_196952| |T@[Int]Bool|) (|contents#$Memory_196952| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_194746 0)) ((($Memory_194746 (|domain#$Memory_194746| |T@[Int]Bool|) (|contents#$Memory_194746| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_195026 0)) ((($Memory_195026 (|domain#$Memory_195026| |T@[Int]Bool|) (|contents#$Memory_195026| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_194713 0)) ((($Memory_194713 (|domain#$Memory_194713| |T@[Int]Bool|) (|contents#$Memory_194713| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_194498 0)) ((($Memory_194498 (|domain#$Memory_194498| |T@[Int]Bool|) (|contents#$Memory_194498| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_124816 0)) ((($Memory_124816 (|domain#$Memory_124816| |T@[Int]Bool|) (|contents#$Memory_124816| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_127241 0)) ((($Memory_127241 (|domain#$Memory_127241| |T@[Int]Bool|) (|contents#$Memory_127241| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_161384 0)) ((($Memory_161384 (|domain#$Memory_161384| |T@[Int]Bool|) (|contents#$Memory_161384| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_161320 0)) ((($Memory_161320 (|domain#$Memory_161320| |T@[Int]Bool|) (|contents#$Memory_161320| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_161008 0)) ((($Memory_161008 (|domain#$Memory_161008| |T@[Int]Bool|) (|contents#$Memory_161008| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_157742 0)) ((($Memory_157742 (|domain#$Memory_157742| |T@[Int]Bool|) (|contents#$Memory_157742| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_157455 0)) ((($Memory_157455 (|domain#$Memory_157455| |T@[Int]Bool|) (|contents#$Memory_157455| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_157168 0)) ((($Memory_157168 (|domain#$Memory_157168| |T@[Int]Bool|) (|contents#$Memory_157168| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_156949 0)) ((($Memory_156949 (|domain#$Memory_156949| |T@[Int]Bool|) (|contents#$Memory_156949| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_196559 0)) ((($Memory_196559 (|domain#$Memory_196559| |T@[Int]Bool|) (|contents#$Memory_196559| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_149409 0)) ((($Memory_149409 (|domain#$Memory_149409| |T@[Int]Bool|) (|contents#$Memory_149409| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_149322 0)) ((($Memory_149322 (|domain#$Memory_149322| |T@[Int]Bool|) (|contents#$Memory_149322| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_144689 0)) ((($Memory_144689 (|domain#$Memory_144689| |T@[Int]Bool|) (|contents#$Memory_144689| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_144602 0)) ((($Memory_144602 (|domain#$Memory_144602| |T@[Int]Bool|) (|contents#$Memory_144602| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_149764 0)) ((($Memory_149764 (|domain#$Memory_149764| |T@[Int]Bool|) (|contents#$Memory_149764| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_150189 0)) ((($Memory_150189 (|domain#$Memory_150189| |T@[Int]Bool|) (|contents#$Memory_150189| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_196785 0)) ((($Memory_196785 (|domain#$Memory_196785| |T@[Int]Bool|) (|contents#$Memory_196785| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_149673 0)) ((($Memory_149673 (|domain#$Memory_149673| |T@[Int]Bool|) (|contents#$Memory_149673| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_159675 0)) ((($Memory_159675 (|domain#$Memory_159675| |T@[Int]Bool|) (|contents#$Memory_159675| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_150090 0)) ((($Memory_150090 (|domain#$Memory_150090| |T@[Int]Bool|) (|contents#$Memory_150090| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_196694 0)) ((($Memory_196694 (|domain#$Memory_196694| |T@[Int]Bool|) (|contents#$Memory_196694| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_149582 0)) ((($Memory_149582 (|domain#$Memory_149582| |T@[Int]Bool|) (|contents#$Memory_149582| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_161657 0)) ((($Memory_161657 (|domain#$Memory_161657| |T@[Int]Bool|) (|contents#$Memory_161657| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_149991 0)) ((($Memory_149991 (|domain#$Memory_149991| |T@[Int]Bool|) (|contents#$Memory_149991| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_144149 0)) ((($Memory_144149 (|domain#$Memory_144149| |T@[Int]Bool|) (|contents#$Memory_144149| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_144013 0)) ((($Memory_144013 (|domain#$Memory_144013| |T@[Int]Bool|) (|contents#$Memory_144013| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_143949 0)) ((($Memory_143949 (|domain#$Memory_143949| |T@[Int]Bool|) (|contents#$Memory_143949| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_139896 0)) ((($Memory_139896 (|domain#$Memory_139896| |T@[Int]Bool|) (|contents#$Memory_139896| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_139809 0)) ((($Memory_139809 (|domain#$Memory_139809| |T@[Int]Bool|) (|contents#$Memory_139809| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_139722 0)) ((($Memory_139722 (|domain#$Memory_139722| |T@[Int]Bool|) (|contents#$Memory_139722| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_139635 0)) ((($Memory_139635 (|domain#$Memory_139635| |T@[Int]Bool|) (|contents#$Memory_139635| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_139548 0)) ((($Memory_139548 (|domain#$Memory_139548| |T@[Int]Bool|) (|contents#$Memory_139548| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_140161 0)) ((($Memory_140161 (|domain#$Memory_140161| |T@[Int]Bool|) (|contents#$Memory_140161| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_138674 0)) ((($Memory_138674 (|domain#$Memory_138674| |T@[Int]Bool|) (|contents#$Memory_138674| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_138740 0)) ((($Memory_138740 (|domain#$Memory_138740| |T@[Int]Bool|) (|contents#$Memory_138740| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_138593 0)) ((($Memory_138593 (|domain#$Memory_138593| |T@[Int]Bool|) (|contents#$Memory_138593| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_138512 0)) ((($Memory_138512 (|domain#$Memory_138512| |T@[Int]Bool|) (|contents#$Memory_138512| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_138431 0)) ((($Memory_138431 (|domain#$Memory_138431| |T@[Int]Bool|) (|contents#$Memory_138431| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_138350 0)) ((($Memory_138350 (|domain#$Memory_138350| |T@[Int]Bool|) (|contents#$Memory_138350| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_138236 0)) ((($Memory_138236 (|domain#$Memory_138236| |T@[Int]Bool|) (|contents#$Memory_138236| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_195696 0)) ((($Memory_195696 (|domain#$Memory_195696| |T@[Int]Bool|) (|contents#$Memory_195696| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_138269 0)) ((($Memory_138269 (|domain#$Memory_138269| |T@[Int]Bool|) (|contents#$Memory_138269| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_137725 0)) ((($Memory_137725 (|domain#$Memory_137725| |T@[Int]Bool|) (|contents#$Memory_137725| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_137155 0)) ((($Memory_137155 (|domain#$Memory_137155| |T@[Int]Bool|) (|contents#$Memory_137155| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_125197 0)) ((($Memory_125197 (|domain#$Memory_125197| |T@[Int]Bool|) (|contents#$Memory_125197| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_123348 0)) ((($Memory_123348 (|domain#$Memory_123348| |T@[Int]Bool|) (|contents#$Memory_123348| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_91856 0)) (((Multiset_91856 (|v#Multiset_91856| |T@[$EventRep]Int|) (|l#Multiset_91856| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_91856| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_91856|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_197780 0)) ((($Mutation_197780 (|l#$Mutation_197780| T@$Location) (|p#$Mutation_197780| (Seq Int)) (|v#$Mutation_197780| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_197736 0)) ((($Mutation_197736 (|l#$Mutation_197736| T@$Location) (|p#$Mutation_197736| (Seq Int)) (|v#$Mutation_197736| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_191610 0)) ((($Mutation_191610 (|l#$Mutation_191610| T@$Location) (|p#$Mutation_191610| (Seq Int)) (|v#$Mutation_191610| T@$1_DualAttestation_Limit) ) ) ))
(declare-datatypes ((T@$Mutation_188019 0)) ((($Mutation_188019 (|l#$Mutation_188019| T@$Location) (|p#$Mutation_188019| (Seq Int)) (|v#$Mutation_188019| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_42012 0)) ((($Mutation_42012 (|l#$Mutation_42012| T@$Location) (|p#$Mutation_42012| (Seq Int)) (|v#$Mutation_42012| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_155669 0)) ((($Mutation_155669 (|l#$Mutation_155669| T@$Location) (|p#$Mutation_155669| (Seq Int)) (|v#$Mutation_155669| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_142690 0)) ((($Mutation_142690 (|l#$Mutation_142690| T@$Location) (|p#$Mutation_142690| (Seq Int)) (|v#$Mutation_142690| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_123867 0)) ((($Mutation_123867 (|l#$Mutation_123867| T@$Location) (|p#$Mutation_123867| (Seq Int)) (|v#$Mutation_123867| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_117132 0)) ((($Mutation_117132 (|l#$Mutation_117132| T@$Location) (|p#$Mutation_117132| (Seq Int)) (|v#$Mutation_117132| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13434 0)) ((($Mutation_13434 (|l#$Mutation_13434| T@$Location) (|p#$Mutation_13434| (Seq Int)) (|v#$Mutation_13434| Int) ) ) ))
(declare-datatypes ((T@$Mutation_112184 0)) ((($Mutation_112184 (|l#$Mutation_112184| T@$Location) (|p#$Mutation_112184| (Seq Int)) (|v#$Mutation_112184| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_111438 0)) ((($Mutation_111438 (|l#$Mutation_111438| T@$Location) (|p#$Mutation_111438| (Seq Int)) (|v#$Mutation_111438| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_109998 0)) ((($Mutation_109998 (|l#$Mutation_109998| T@$Location) (|p#$Mutation_109998| (Seq Int)) (|v#$Mutation_109998| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_109252 0)) ((($Mutation_109252 (|l#$Mutation_109252| T@$Location) (|p#$Mutation_109252| (Seq Int)) (|v#$Mutation_109252| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_107812 0)) ((($Mutation_107812 (|l#$Mutation_107812| T@$Location) (|p#$Mutation_107812| (Seq Int)) (|v#$Mutation_107812| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_107066 0)) ((($Mutation_107066 (|l#$Mutation_107066| T@$Location) (|p#$Mutation_107066| (Seq Int)) (|v#$Mutation_107066| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_105626 0)) ((($Mutation_105626 (|l#$Mutation_105626| T@$Location) (|p#$Mutation_105626| (Seq Int)) (|v#$Mutation_105626| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_104880 0)) ((($Mutation_104880 (|l#$Mutation_104880| T@$Location) (|p#$Mutation_104880| (Seq Int)) (|v#$Mutation_104880| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_103440 0)) ((($Mutation_103440 (|l#$Mutation_103440| T@$Location) (|p#$Mutation_103440| (Seq Int)) (|v#$Mutation_103440| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_102694 0)) ((($Mutation_102694 (|l#$Mutation_102694| T@$Location) (|p#$Mutation_102694| (Seq Int)) (|v#$Mutation_102694| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_101254 0)) ((($Mutation_101254 (|l#$Mutation_101254| T@$Location) (|p#$Mutation_101254| (Seq Int)) (|v#$Mutation_101254| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_100508 0)) ((($Mutation_100508 (|l#$Mutation_100508| T@$Location) (|p#$Mutation_100508| (Seq Int)) (|v#$Mutation_100508| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_99068 0)) ((($Mutation_99068 (|l#$Mutation_99068| T@$Location) (|p#$Mutation_99068| (Seq Int)) (|v#$Mutation_99068| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_98322 0)) ((($Mutation_98322 (|l#$Mutation_98322| T@$Location) (|p#$Mutation_98322| (Seq Int)) (|v#$Mutation_98322| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_96882 0)) ((($Mutation_96882 (|l#$Mutation_96882| T@$Location) (|p#$Mutation_96882| (Seq Int)) (|v#$Mutation_96882| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_96136 0)) ((($Mutation_96136 (|l#$Mutation_96136| T@$Location) (|p#$Mutation_96136| (Seq Int)) (|v#$Mutation_96136| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_94658 0)) ((($Mutation_94658 (|l#$Mutation_94658| T@$Location) (|p#$Mutation_94658| (Seq Int)) (|v#$Mutation_94658| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_93912 0)) ((($Mutation_93912 (|l#$Mutation_93912| T@$Location) (|p#$Mutation_93912| (Seq Int)) (|v#$Mutation_93912| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun |$1_BCS_serialize'u64'| (Int) (Seq Int))
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_91856_| (|T@[$1_Event_EventHandle]Multiset_91856| T@$1_Event_EventHandle) T@Multiset_91856)
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
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int (Seq Int) Int) (Seq Int))
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
(declare-fun ReverseVec_13287 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_83578 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_82396 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_82593 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_82790 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_83775 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_83381 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_83184 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_82987 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_82199 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_91856| |T@[$1_Event_EventHandle]Multiset_91856|) |T@[$1_Event_EventHandle]Multiset_91856|)
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
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |DualAttestationandybpl.1310:13|
 :skolemid |35|
))))
 :qid |DualAttestationandybpl.1308:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DualAttestationandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DualAttestationandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DualAttestationandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |DualAttestationandybpl.1490:13|
 :skolemid |40|
))))
 :qid |DualAttestationandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DualAttestationandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DualAttestationandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DualAttestationandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |DualAttestationandybpl.1670:13|
 :skolemid |45|
))))
 :qid |DualAttestationandybpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DualAttestationandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DualAttestationandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DualAttestationandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |DualAttestationandybpl.1850:13|
 :skolemid |50|
))))
 :qid |DualAttestationandybpl.1848:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DualAttestationandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DualAttestationandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DualAttestationandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |DualAttestationandybpl.2030:13|
 :skolemid |55|
))))
 :qid |DualAttestationandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DualAttestationandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DualAttestationandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DualAttestationandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |DualAttestationandybpl.2210:13|
 :skolemid |60|
))))
 :qid |DualAttestationandybpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DualAttestationandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DualAttestationandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DualAttestationandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |DualAttestationandybpl.2390:13|
 :skolemid |65|
))))
 :qid |DualAttestationandybpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DualAttestationandybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DualAttestationandybpl.2403:17|
 :skolemid |68|
)))))
 :qid |DualAttestationandybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DualAttestationandybpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DualAttestationandybpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DualAttestationandybpl.2659:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DualAttestationandybpl.2662:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 Int) (v2@@1 Int) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1)))
 :qid |DualAttestationandybpl.2689:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1))
)))
(assert (forall ((v@@26 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'address'| v@@26)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |DualAttestationandybpl.2694:15|
 :skolemid |75|
 :pattern ( (|$1_BCS_serialize'address'| v@@26))
)))
(assert (forall ((v@@27 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@27)))
(= (seq.len r@@1) $serialized_address_len))
 :qid |DualAttestationandybpl.2708:15|
 :skolemid |76|
 :pattern ( (|$1_BCS_serialize'address'| v@@27))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'u64'| v1@@2) (|$1_BCS_serialize'u64'| v2@@2)))
 :qid |DualAttestationandybpl.2721:15|
 :skolemid |77|
 :pattern ( (|$1_BCS_serialize'u64'| v1@@2) (|$1_BCS_serialize'u64'| v2@@2))
)))
(assert (forall ((v@@28 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'u64'| v@@28)))
 (and (|$IsValid'vec'u8''| r@@2) (> (seq.len r@@2) 0)))
 :qid |DualAttestationandybpl.2726:15|
 :skolemid |78|
 :pattern ( (|$1_BCS_serialize'u64'| v@@28))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_91856| stream) 0) (forall ((v@@29 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream) v@@29) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DualAttestationandybpl.2823:80|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@3 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@3 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@3)))
 :qid |DualAttestationandybpl.2829:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@3))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DualAttestationandybpl.2879:82|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@4 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@4 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@4) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@4)))
 :qid |DualAttestationandybpl.2885:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@4) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@4))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DualAttestationandybpl.2935:80|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@5 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@5 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@5)))
 :qid |DualAttestationandybpl.2941:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@5))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DualAttestationandybpl.2991:79|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_AdminTransactionEvent) (v2@@6 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@6)))
 :qid |DualAttestationandybpl.2997:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@6))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DualAttestationandybpl.3047:76|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_CreateAccountEvent) (v2@@7 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@7)))
 :qid |DualAttestationandybpl.3053:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@7))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DualAttestationandybpl.3103:78|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@8 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@8 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@8)))
 :qid |DualAttestationandybpl.3109:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@8))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DualAttestationandybpl.3159:74|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@9 T@$1_DiemAccount_SentPaymentEvent) (v2@@9 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@9) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@9)))
 :qid |DualAttestationandybpl.3165:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@9) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@9))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DualAttestationandybpl.3215:69|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@10 T@$1_DiemBlock_NewBlockEvent) (v2@@10 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@10) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@10)))
 :qid |DualAttestationandybpl.3221:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@10) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@10))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DualAttestationandybpl.3271:70|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@11 T@$1_DiemConfig_NewEpochEvent) (v2@@11 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@11)))
 :qid |DualAttestationandybpl.3277:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@11))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DualAttestationandybpl.3327:60|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@12 T@$1_Diem_BurnEvent) (v2@@12 T@$1_Diem_BurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@12)))
 :qid |DualAttestationandybpl.3333:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@12))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DualAttestationandybpl.3383:66|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@13 T@$1_Diem_CancelBurnEvent) (v2@@13 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@13) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@13)))
 :qid |DualAttestationandybpl.3389:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@13) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@13))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DualAttestationandybpl.3439:60|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@14 T@$1_Diem_MintEvent) (v2@@14 T@$1_Diem_MintEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@14) (|$ToEventRep'$1_Diem_MintEvent'| v2@@14)))
 :qid |DualAttestationandybpl.3445:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@14) (|$ToEventRep'$1_Diem_MintEvent'| v2@@14))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DualAttestationandybpl.3495:63|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@15 T@$1_Diem_PreburnEvent) (v2@@15 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@15) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@15)))
 :qid |DualAttestationandybpl.3501:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@15) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@15))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DualAttestationandybpl.3551:79|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@16 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@16 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@16) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@16)))
 :qid |DualAttestationandybpl.3557:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@16) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@16))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DualAttestationandybpl.3607:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@17 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@17)))
 :qid |DualAttestationandybpl.3613:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@17))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DualAttestationandybpl.3663:88|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@18 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@18 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@18) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@18)))
 :qid |DualAttestationandybpl.3669:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@18) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@18))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DualAttestationandybpl.3719:72|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@19 T@$1_VASPDomain_VASPDomainEvent) (v2@@19 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@19) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@19)))
 :qid |DualAttestationandybpl.3725:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@19) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@19))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |DualAttestationandybpl.3779:15|
 :skolemid |115|
)))
(assert (forall ((addr Int) ) (! true
 :qid |DualAttestationandybpl.3788:15|
 :skolemid |116|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |DualAttestationandybpl.3818:61|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DualAttestationandybpl.4374:36|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |DualAttestationandybpl.6468:71|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DualAttestationandybpl.6537:46|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DualAttestationandybpl.6550:64|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DualAttestationandybpl.6563:75|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DualAttestationandybpl.6576:72|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DualAttestationandybpl.6605:55|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DualAttestationandybpl.6627:46|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DualAttestationandybpl.6645:49|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DualAttestationandybpl.6720:71|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DualAttestationandybpl.6734:91|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DualAttestationandybpl.6748:113|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DualAttestationandybpl.6762:75|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DualAttestationandybpl.6776:73|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |DualAttestationandybpl.6796:48|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |DualAttestationandybpl.6812:57|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |DualAttestationandybpl.6826:83|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |DualAttestationandybpl.6840:103|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |DualAttestationandybpl.6854:125|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |DualAttestationandybpl.6868:87|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |DualAttestationandybpl.6882:85|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |DualAttestationandybpl.6896:48|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |DualAttestationandybpl.6917:45|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |DualAttestationandybpl.6931:51|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |DualAttestationandybpl.6954:48|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |DualAttestationandybpl.7265:49|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |DualAttestationandybpl.7278:65|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |DualAttestationandybpl.7817:45|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |DualAttestationandybpl.7830:45|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |DualAttestationandybpl.7843:37|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |DualAttestationandybpl.7856:55|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |DualAttestationandybpl.7870:55|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |DualAttestationandybpl.7890:38|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |DualAttestationandybpl.7911:44|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |DualAttestationandybpl.7962:53|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |DualAttestationandybpl.8024:53|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |DualAttestationandybpl.8086:45|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |DualAttestationandybpl.8112:55|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |DualAttestationandybpl.8126:55|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@40)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@40))))
 :qid |DualAttestationandybpl.8143:38|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@41)))
 :qid |DualAttestationandybpl.8157:48|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@42)))
 :qid |DualAttestationandybpl.8171:48|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@43) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@43)))
 :qid |DualAttestationandybpl.8185:40|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@43))
)))
(assert (forall ((s@@44 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@44)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@44)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@44))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@44))))
 :qid |DualAttestationandybpl.8205:41|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@45)))
 :qid |DualAttestationandybpl.8220:53|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@46)))
 :qid |DualAttestationandybpl.8234:53|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@47)))
 :qid |DualAttestationandybpl.8248:45|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48))))
 :qid |DualAttestationandybpl.8265:60|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49))))
 :qid |DualAttestationandybpl.8282:60|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@50))))
 :qid |DualAttestationandybpl.8299:52|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50))
)))
(assert (forall ((s@@51 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51))))
 :qid |DualAttestationandybpl.8316:57|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52) true)
 :qid |DualAttestationandybpl.10517:68|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))))
 :qid |DualAttestationandybpl.10539:66|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))))
 :qid |DualAttestationandybpl.10565:66|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))))
 :qid |DualAttestationandybpl.10594:56|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))))
 :qid |DualAttestationandybpl.10624:56|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@57) true)
 :qid |DualAttestationandybpl.10958:31|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@57))
)))
(assert (forall ((s@@58 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@58) true)
 :qid |DualAttestationandybpl.11302:31|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@58))
)))
(assert (forall ((s@@59 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@59)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@59)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@59))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@59))))
 :qid |DualAttestationandybpl.11321:35|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@60)))
 :qid |DualAttestationandybpl.11742:45|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@61))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@61))))
 :qid |DualAttestationandybpl.11761:50|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@62)))
 :qid |DualAttestationandybpl.11776:52|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@63) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@63)))
 :qid |DualAttestationandybpl.11810:38|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@64) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@64)))
 :qid |DualAttestationandybpl.11824:39|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@64))
)))
(assert (forall ((s@@65 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@65)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@65)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@65))))
 :qid |DualAttestationandybpl.11851:65|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@65))
)))
(assert (forall ((payer Int) (metadata (Seq Int)) (deposit_value Int) ) (! (let (($$res ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res))
 :qid |DualAttestationandybpl.12259:15|
 :skolemid |238|
)))
(assert (forall ((s@@66 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@66)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@66))))
 :qid |DualAttestationandybpl.12287:60|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67))))
 :qid |DualAttestationandybpl.12304:66|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@68)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@68))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@68))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@68))))
 :qid |DualAttestationandybpl.12333:50|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@69) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@69)))
 :qid |DualAttestationandybpl.12352:45|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@70)) true))
 :qid |DualAttestationandybpl.18960:87|
 :skolemid |419|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@71)))
 :qid |DualAttestationandybpl.19172:47|
 :skolemid |420|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@72)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@72))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@72))))
 :qid |DualAttestationandybpl.19192:58|
 :skolemid |421|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@73) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@73)))
 :qid |DualAttestationandybpl.19207:39|
 :skolemid |422|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@74))))
 :qid |DualAttestationandybpl.19229:58|
 :skolemid |423|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75))))
 :qid |DualAttestationandybpl.19246:58|
 :skolemid |424|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76) true)
 :qid |DualAttestationandybpl.19261:51|
 :skolemid |425|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77))))
 :qid |DualAttestationandybpl.19278:60|
 :skolemid |426|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@78)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@78))))
 :qid |DualAttestationandybpl.19576:47|
 :skolemid |427|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@79))))
 :qid |DualAttestationandybpl.19598:63|
 :skolemid |428|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@80)))
 :qid |DualAttestationandybpl.19613:57|
 :skolemid |429|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80))
)))
(assert (forall ((s@@81 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@81)))
 :qid |DualAttestationandybpl.19626:55|
 :skolemid |430|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@82)))
 :qid |DualAttestationandybpl.19640:55|
 :skolemid |431|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@83)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@83))))
 :qid |DualAttestationandybpl.19657:54|
 :skolemid |432|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@84) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@84)))
 :qid |DualAttestationandybpl.19671:55|
 :skolemid |433|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@85) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@85)))
 :qid |DualAttestationandybpl.19685:57|
 :skolemid |434|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@86)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@86))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@86))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@86))))
 :qid |DualAttestationandybpl.19707:56|
 :skolemid |435|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@87)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@87)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@87))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@87))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@87))))
 :qid |DualAttestationandybpl.19732:52|
 :skolemid |436|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@88) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@88)))
 :qid |DualAttestationandybpl.19748:54|
 :skolemid |437|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@89)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@89)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@89))))
 :qid |DualAttestationandybpl.20620:47|
 :skolemid |438|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@90)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@90))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@90))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@90))))
 :qid |DualAttestationandybpl.20644:47|
 :skolemid |439|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@91) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@91)))
 :qid |DualAttestationandybpl.20885:49|
 :skolemid |440|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@92)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@92)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@92))))
 :qid |DualAttestationandybpl.20928:49|
 :skolemid |441|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@93)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@93)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@93))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@93))))
 :qid |DualAttestationandybpl.20957:48|
 :skolemid |442|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@94) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@94)))
 :qid |DualAttestationandybpl.21252:47|
 :skolemid |443|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@94))
)))
(assert (forall ((v@@30 (Seq Int)) ) (! (let ((r@@3 (ReverseVec_13287 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@30 (- (- (seq.len v@@30) i@@33) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13287 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@4 (ReverseVec_83578 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@31 (- (- (seq.len v@@31) i@@34) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83578 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@5 (ReverseVec_82396 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@32 (- (- (seq.len v@@32) i@@35) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_82396 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@6 (ReverseVec_82593 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@33 (- (- (seq.len v@@33) i@@36) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_82593 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@7 (ReverseVec_82790 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@34 (- (- (seq.len v@@34) i@@37) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_82790 v@@34))
)))
(assert (forall ((v@@35 (Seq (Seq Int))) ) (! (let ((r@@8 (ReverseVec_83775 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@35 (- (- (seq.len v@@35) i@@38) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83775 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@9 (ReverseVec_83381 v@@36)))
 (and (= (seq.len r@@9) (seq.len v@@36)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@9))) (= (seq.nth r@@9 i@@39) (seq.nth v@@36 (- (- (seq.len v@@36) i@@39) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@39))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83381 v@@36))
)))
(assert (forall ((v@@37 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@10 (ReverseVec_83184 v@@37)))
 (and (= (seq.len r@@10) (seq.len v@@37)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@10))) (= (seq.nth r@@10 i@@40) (seq.nth v@@37 (- (- (seq.len v@@37) i@@40) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@40))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83184 v@@37))
)))
(assert (forall ((v@@38 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@11 (ReverseVec_82987 v@@38)))
 (and (= (seq.len r@@11) (seq.len v@@38)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@11))) (= (seq.nth r@@11 i@@41) (seq.nth v@@38 (- (- (seq.len v@@38) i@@41) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@41))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_82987 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@#0|)) ) (! (let ((r@@12 (ReverseVec_82199 v@@39)))
 (and (= (seq.len r@@12) (seq.len v@@39)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@12))) (= (seq.nth r@@12 i@@42) (seq.nth v@@39 (- (- (seq.len v@@39) i@@42) 1))))
 :qid |DualAttestationandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@12 i@@42))
))))
 :qid |DualAttestationandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_82199 v@@39))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |DualAttestationandybpl.245:54|
 :skolemid |521|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_91856|) (|l#1| |T@[$1_Event_EventHandle]Multiset_91856|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| |l#1| handle@@0))))
(Multiset_91856 (|lambda#3| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| |l#0@@0| handle@@0)) (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DualAttestationandybpl.2792:13|
 :skolemid |522|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@40) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@40) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@40)))
 :qid |DualAttestationandybpl.124:29|
 :skolemid |523|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@40))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_13434)
(declare-fun $t14@1 () T@$Mutation_123867)
(declare-fun $t24@1 () T@$Mutation_13434)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_123867)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_123348)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_124816)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_123348)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $t25 () Int)
(declare-fun _$t0 () T@$signer)
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
(declare-fun |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| () T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $abort_code@1 () Int)
(declare-fun $t14 () T@$Mutation_123867)
(declare-fun $t14@0 () T@$Mutation_123867)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_123867)
(declare-fun $t24 () T@$Mutation_13434)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 299717) (let ((L5_correct  (=> (= $t24@0 ($Mutation_13434 (|l#$Mutation_123867| $t14@1) (seq.++ (|p#$Mutation_123867| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_123867| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_13434 (|l#$Mutation_13434| $t24@0) (|p#$Mutation_13434| $t24@0) _$t2)) (= $t14@2 ($Mutation_123867 (|l#$Mutation_123867| $t14@1) (|p#$Mutation_123867| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_13434| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_123348 (|Store__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_123867| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_123867| $t14@2)) (|v#$Mutation_123867| $t14@2)))))) (and (=> (= (ControlFlow 0 215974) (- 0 300339)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 215974) (- 0 300364)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 215974) (- 0 300374)) (not (not (= (|$addr#$signer| _$t0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0) 0))) (and (=> (= (ControlFlow 0 215974) (- 0 300388)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 215974) (- 0 300412)) (= $t25 _$t2)))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 216032) 215974)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 215832) 215974)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 215828) (- 0 300456)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 215828) (- 0 300493)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 216028) 215828))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 216012) 216032) anon25_Then_correct) (=> (= (ControlFlow 0 216012) 216028) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 215712) 215828))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 215696) 215832) anon26_Then_correct) (=> (= (ControlFlow 0 215696) 215712) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 215660) 215696)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 215666) 215660)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_123867| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_123867| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 215614) 216012) anon24_Then_correct) (=> (= (ControlFlow 0 215614) 215666) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 216046) 215828))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 216098) 216046) anon23_Then_correct) (=> (= (ControlFlow 0 216098) 215614) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 216096) 216098)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_123867 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 215568) 216046) anon23_Then_correct) (=> (= (ControlFlow 0 215568) 215614) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 215546) (- 0 300015)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 215546) 216096) anon22_Then_correct) (=> (= (ControlFlow 0 215546) 215568) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 216128) 215828))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= (|$addr#$signer| _$t0) 0)))) (and (=> (= (ControlFlow 0 215526) 216128) anon21_Then_correct) (=> (= (ControlFlow 0 215526) 215546) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 216154) 215828))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DualAttestationandybpl.4007:20|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 215504) 216154) anon20_Then_correct) (=> (= (ControlFlow 0 215504) 215526) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_91856| stream@@0) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@0) v@@41) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 215392) 215504)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_123867| $t7)) 0) (= (seq.len (|p#$Mutation_123867| $t14)) 0)) (and (= (seq.len (|p#$Mutation_13434| $t24)) 0) (= (ControlFlow 0 215402) 215392))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 299717) 215402) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_125197)
(declare-fun $t2 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t3 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_125197)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_125197)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_125197)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 300754) (let ((L2_correct  (and (=> (= (ControlFlow 0 217062) (- 0 301500)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 217062) (- 0 301531)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct  (=> $t6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 216950) 217062))) L2_correct))))
(let ((anon12_Then_correct  (=> $t3 (=> (and (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 217092) 217062))) L2_correct))))
(let ((anon11_Then_correct  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 217118) 217062))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (and (=> (= (ControlFlow 0 216908) (- 0 301146)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 216908) (- 0 301156)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 216908) (- 0 301170)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 216908) (- 0 301181)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 216908) (- 0 301191)) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (and (=> (= (ControlFlow 0 216908) (- 0 301200)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0) (and (=> (= (ControlFlow 0 216908) (- 0 301215)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@0)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@0)) 1))))
 :qid |DualAttestationandybpl.4600:15|
 :skolemid |122|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@1)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@1)) 1))))
 :qid |DualAttestationandybpl.4600:15|
 :skolemid |122|
)) (and (=> (= (ControlFlow 0 216908) (- 0 301262)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@2)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |DualAttestationandybpl.4604:15|
 :skolemid |123|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@3)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |DualAttestationandybpl.4604:15|
 :skolemid |123|
)) (and (=> (= (ControlFlow 0 216908) (- 0 301309)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@4)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@4)) 4))))
 :qid |DualAttestationandybpl.4608:15|
 :skolemid |124|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@5)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@5)) 4))))
 :qid |DualAttestationandybpl.4608:15|
 :skolemid |124|
)) (and (=> (= (ControlFlow 0 216908) (- 0 301356)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@6)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@6)) 2))))
 :qid |DualAttestationandybpl.4612:15|
 :skolemid |125|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@7)) 2))))
 :qid |DualAttestationandybpl.4612:15|
 :skolemid |125|
)) (and (=> (= (ControlFlow 0 216908) (- 0 301403)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@8)) 5))))
 :qid |DualAttestationandybpl.4616:15|
 :skolemid |126|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@9)) 5))))
 :qid |DualAttestationandybpl.4616:15|
 :skolemid |126|
)) (=> (= (ControlFlow 0 216908) (- 0 301450)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2) addr@@10)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@10)) 6))))
 :qid |DualAttestationandybpl.4620:15|
 :skolemid |127|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) false) (|contents#$Memory_125197| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 216502) 216908))) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 216922) 216908))) anon9_correct)))
(let ((anon13_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 216488) 216922) anon14_Then_correct) (=> (= (ControlFlow 0 216488) 216502) anon14_Else_correct)))))
(let ((anon12_Else_correct  (=> (not $t3) (=> (and (|$IsValid'u64'| 0) (= $t5 (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 216482) (- 0 300996)) (=> (= 0 0) (= $t5 173345816))) (=> (=> (= 0 0) (= $t5 173345816)) (and (=> (= (ControlFlow 0 216482) (- 0 301012)) (=> (= 0 1) (= $t5 186537453))) (=> (=> (= 0 1) (= $t5 186537453)) (and (=> (= (ControlFlow 0 216482) (- 0 301028)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0)) (=> (= $t6 (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 216482) 216950) anon13_Then_correct) (=> (= (ControlFlow 0 216482) 216488) anon13_Else_correct)))))))))))))
(let ((anon11_Else_correct  (=> (and (not $t1) (= $t3  (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (and (=> (= (ControlFlow 0 216404) 217092) anon12_Then_correct) (=> (= (ControlFlow 0 216404) 216482) anon12_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |DualAttestationandybpl.4414:20|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
))) (=> (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |DualAttestationandybpl.4418:20|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@1))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 216382) 217118) anon11_Then_correct) (=> (= (ControlFlow 0 216382) 216404) anon11_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_91856| stream@@1) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@1) v@@42) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 216274) 216382)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 300754) 216274) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_127241)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_125197)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_125197)
(declare-fun $t11@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t9@@0 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 301609) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 217668) (- 0 302034)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@1@@0) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@1@@0) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@1@@0) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@1@@0) addr1)) 2)))))
 :qid |DualAttestationandybpl.4805:15|
 :skolemid |130|
))) (=> (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@0) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@1@@0) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@1@@0) addr1@@0)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@1@@0) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@1@@0) addr1@@0)) 2)))))
 :qid |DualAttestationandybpl.4805:15|
 :skolemid |130|
)) (and (=> (= (ControlFlow 0 217668) (- 0 302069)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 217668) (- 0 302080)) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 217668) (- 0 302089)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) _$t1@@0)))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 217514) (- 0 302004)) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 217514) (- 0 302010)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t10@0)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0 $abort_code@1@@0) (= (ControlFlow 0 217682) 217514))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 217734) 217682) anon12_Then_correct@@0) (=> (= (ControlFlow 0 217734) 217668) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 217732) 217734)) anon11_Then$1_correct)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) $t11@0@@0))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 217587) 217682) anon12_Then_correct@@0) (=> (= (ControlFlow 0 217587) 217668) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0@@0 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 217565) (- 0 301853)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1)) (=> (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@1)) 2)))))
 :qid |DualAttestationandybpl.4785:20|
 :skolemid |129|
)) (and (=> (= (ControlFlow 0 217565) 217732) anon11_Then_correct@@0) (=> (= (ControlFlow 0 217565) 217587) anon11_Else_correct@@0))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@0 $t9@@0)) (and (= $t10@0 $t9@@0) (= (ControlFlow 0 217482) 217514))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 6)) (and (= $t9@@0 $t9@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 217466) 217565) anon10_Then_correct) (=> (= (ControlFlow 0 217466) 217482) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 217430) 217466)) anon0$2_correct)))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |DualAttestationandybpl.4681:20|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@2))
))) (and (= $t4 (|$addr#$signer| _$t0@@1)) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (and (= _$t0@@1 _$t0@@1) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5@@0) (= $t5@@0 (|$addr#$signer| _$t0@@1))) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t5@@0)) (= (ControlFlow 0 217436) 217430)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_91856| stream@@2) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@2) v@@43) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 217268) 217436)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 301609) 217268) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@2 () T@$signer)
(declare-fun $t2@@0 () Int)
(declare-fun _$t1@@1 () T@$signer)
(declare-fun $t4@@0 () Int)
(declare-fun $t10@@0 () Bool)
(declare-fun $t7@@0 () Bool)
(declare-fun $t6@@0 () Int)
(declare-fun $t5@@1 () Bool)
(declare-fun $t3@@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_125197)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_125197)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_125197)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 302109) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 218863) (- 0 303082)) (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 218863) (- 0 303148)) (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t4@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)) (= 6 $t4@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0))))))))
(let ((anon16_Then_correct  (=> $t10@@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)) (= 6 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 218651) 218863))) L2_correct@@0))))
(let ((anon15_Then_correct  (=> (and (and $t7@@0 (or (or (or (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t6@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)))) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 218955) 218863))) L2_correct@@0)))
(let ((anon14_Then_correct@@0  (=> $t5@@1 (=> (and (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 218985) 218863))) L2_correct@@0))))
(let ((anon13_Then_correct@@0  (=> $t3@@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 219011) 218863))) L2_correct@@0))))
(let ((anon11_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1)) (and (=> (= (ControlFlow 0 218609) (- 0 302684)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 218609) (- 0 302694)) (not (not (= (|$addr#$signer| _$t0@@2) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@2) 186537453))) (and (=> (= (ControlFlow 0 218609) (- 0 302708)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 218609) (- 0 302720)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 218609) (- 0 302738)) (not (not (= (|$addr#$signer| _$t1@@1) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@1) 173345816))) (and (=> (= (ControlFlow 0 218609) (- 0 302752)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 218609) (- 0 302763)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 218609) (- 0 302773)) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2)) (and (=> (= (ControlFlow 0 218609) (- 0 302782)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1) (and (=> (= (ControlFlow 0 218609) (- 0 302797)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@11)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@11)) 0))))
 :qid |DualAttestationandybpl.5132:15|
 :skolemid |133|
))) (=> (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@12)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@12)) 0))))
 :qid |DualAttestationandybpl.5132:15|
 :skolemid |133|
)) (and (=> (= (ControlFlow 0 218609) (- 0 302844)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@13)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |DualAttestationandybpl.5136:15|
 :skolemid |134|
))) (=> (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@14)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@14)) 3))))
 :qid |DualAttestationandybpl.5136:15|
 :skolemid |134|
)) (and (=> (= (ControlFlow 0 218609) (- 0 302891)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@15)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@15)) 4))))
 :qid |DualAttestationandybpl.5140:15|
 :skolemid |135|
))) (=> (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@16)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@16)) 4))))
 :qid |DualAttestationandybpl.5140:15|
 :skolemid |135|
)) (and (=> (= (ControlFlow 0 218609) (- 0 302938)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@17)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@17)) 2))))
 :qid |DualAttestationandybpl.5144:15|
 :skolemid |136|
))) (=> (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@18)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@18)) 2))))
 :qid |DualAttestationandybpl.5144:15|
 :skolemid |136|
)) (and (=> (= (ControlFlow 0 218609) (- 0 302985)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@19)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@19)) 5))))
 :qid |DualAttestationandybpl.5148:15|
 :skolemid |137|
))) (=> (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@20)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@20)) 5))))
 :qid |DualAttestationandybpl.5148:15|
 :skolemid |137|
)) (=> (= (ControlFlow 0 218609) (- 0 303032)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@0) addr@@21)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@21)) 6))))
 :qid |DualAttestationandybpl.5152:15|
 :skolemid |138|
))))))))))))))))))))))))))))))))))
(let ((anon17_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_Roles_RoleId_$memory@1@@1 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) false) (|contents#$Memory_125197| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@1) (= (ControlFlow 0 218159) 218609))) anon11_correct)))
(let ((anon17_Then_correct  (=> (and (and |$temp_0'bool'@0@@0| (= $1_Roles_RoleId_$memory@0@@1 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) |$temp_0'$1_Roles_RoleId'@0@@0|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@1) (= (ControlFlow 0 218623) 218609))) anon11_correct)))
(let ((anon16_Else_correct  (=> (not $t10@@0) (and (=> (= (ControlFlow 0 218145) 218623) anon17_Then_correct) (=> (= (ControlFlow 0 218145) 218159) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (not $t7@@0) (=> (and (|$IsValid'u64'| 1) (= $t9@@1 (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 218139) (- 0 302534)) (=> (= 1 0) (= $t9@@1 173345816))) (=> (=> (= 1 0) (= $t9@@1 173345816)) (and (=> (= (ControlFlow 0 218139) (- 0 302550)) (=> (= 1 1) (= $t9@@1 186537453))) (=> (=> (= 1 1) (= $t9@@1 186537453)) (and (=> (= (ControlFlow 0 218139) (- 0 302566)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2)) (=> (= $t10@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 218139) 218651) anon16_Then_correct) (=> (= (ControlFlow 0 218139) 218145) anon16_Else_correct)))))))))))))
(let ((anon14_Else_correct@@0  (=> (not $t5@@1) (=> (and (= $t6@@0 (|$addr#$signer| _$t1@@1)) (= $t7@@0  (or (or (or (not (= (|$addr#$signer| _$t1@@1) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t6@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))))) (and (=> (= (ControlFlow 0 218061) 218955) anon15_Then_correct) (=> (= (ControlFlow 0 218061) 218139) anon15_Else_correct))))))
(let ((anon13_Else_correct@@0  (=> (and (not $t3@@0) (= $t5@@1  (not (= (|$addr#$signer| _$t0@@2) 186537453)))) (and (=> (= (ControlFlow 0 217989) 218985) anon14_Then_correct@@0) (=> (= (ControlFlow 0 217989) 218061) anon14_Else_correct@@0)))))
(let ((anon0$1_correct@@2  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@2))) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@1)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@3))
 :qid |DualAttestationandybpl.4889:20|
 :skolemid |131|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |DualAttestationandybpl.4893:20|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@4))
)) (= $t2@@0 (|$addr#$signer| _$t1@@1)))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2)) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@1 _$t1@@1) (= $t3@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 217967) 219011) anon13_Then_correct@@0) (=> (= (ControlFlow 0 217967) 217989) anon13_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_91856| stream@@3) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@3) v@@44) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 217839) 217967)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 302109) 217839) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@1 () Int)
(declare-fun _$t1@@2 () T@$signer)
(declare-fun $t3@@1 () Int)
(declare-fun $t6@@1 () Int)
(declare-fun $t9@@2 () Bool)
(declare-fun $t5@@2 () Bool)
(declare-fun $t4@@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_125197)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_125197)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_125197)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@3 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 303285) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 220058) (- 0 304056)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (=> (= (ControlFlow 0 220058) (- 0 304110)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $t6@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@1)) (= 5 $t6@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@1)) 5)) (= 3 $t6@@1))))))))
(let ((anon10_Then_correct@@0  (=> $t9@@2 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@1)) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 219890) 220058))) L2_correct@@1))))
(let ((anon9_Then_correct  (=> (and (and $t5@@2 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@1)) 5)) (= 3 $t6@@1)))) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 220110) 220058))) L2_correct@@1)))
(let ((anon7_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6)) (and (=> (= (ControlFlow 0 219848) (- 0 303676)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 219848) (- 0 303688)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 219848) (- 0 303706)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 219848) (- 0 303717)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 219848) (- 0 303729)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (and (=> (= (ControlFlow 0 219848) (- 0 303747)) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2)) (and (=> (= (ControlFlow 0 219848) (- 0 303756)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6) (and (=> (= (ControlFlow 0 219848) (- 0 303771)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@22)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@22)) 0))))
 :qid |DualAttestationandybpl.5380:15|
 :skolemid |140|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@23)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@23)) 0))))
 :qid |DualAttestationandybpl.5380:15|
 :skolemid |140|
)) (and (=> (= (ControlFlow 0 219848) (- 0 303818)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@24)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@24)) 1))))
 :qid |DualAttestationandybpl.5384:15|
 :skolemid |141|
))) (=> (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@25)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@25)) 1))))
 :qid |DualAttestationandybpl.5384:15|
 :skolemid |141|
)) (and (=> (= (ControlFlow 0 219848) (- 0 303865)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@26)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@26)) 3))))
 :qid |DualAttestationandybpl.5388:15|
 :skolemid |142|
))) (=> (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@27)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@27)) 3))))
 :qid |DualAttestationandybpl.5388:15|
 :skolemid |142|
)) (and (=> (= (ControlFlow 0 219848) (- 0 303912)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@28)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@28)) 4))))
 :qid |DualAttestationandybpl.5392:15|
 :skolemid |143|
))) (=> (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@29)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@29)) 4))))
 :qid |DualAttestationandybpl.5392:15|
 :skolemid |143|
)) (and (=> (= (ControlFlow 0 219848) (- 0 303959)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@30)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@30)) 2))))
 :qid |DualAttestationandybpl.5396:15|
 :skolemid |144|
))) (=> (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@31)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@31)) 2))))
 :qid |DualAttestationandybpl.5396:15|
 :skolemid |144|
)) (=> (= (ControlFlow 0 219848) (- 0 304006)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@1) addr@@32)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@32)) 5))))
 :qid |DualAttestationandybpl.5400:15|
 :skolemid |145|
))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_Roles_RoleId_$memory@1@@2 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) false) (|contents#$Memory_125197| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@1@@2) (= (ControlFlow 0 219416) 219848))) anon7_correct)))
(let ((anon11_Then_correct@@1  (=> (and (and |$temp_0'bool'@0@@1| (= $1_Roles_RoleId_$memory@0@@2 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) |$temp_0'$1_Roles_RoleId'@0@@1|)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@0@@2) (= (ControlFlow 0 219862) 219848))) anon7_correct)))
(let ((anon10_Else_correct@@0  (=> (not $t9@@2) (and (=> (= (ControlFlow 0 219402) 219862) anon11_Then_correct@@1) (=> (= (ControlFlow 0 219402) 219416) anon11_Else_correct@@1)))))
(let ((anon9_Else_correct  (=> (not $t5@@2) (=> (and (|$IsValid'u64'| 6) (= $t8 (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 219396) (- 0 303526)) (=> (= 6 0) (= $t8 173345816))) (=> (=> (= 6 0) (= $t8 173345816)) (and (=> (= (ControlFlow 0 219396) (- 0 303542)) (=> (= 6 1) (= $t8 186537453))) (=> (=> (= 6 1) (= $t8 186537453)) (and (=> (= (ControlFlow 0 219396) (- 0 303558)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2)) (=> (= $t9@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 219396) 219890) anon10_Then_correct@@0) (=> (= (ControlFlow 0 219396) 219402) anon10_Else_correct@@0)))))))))))))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'address'| (|$addr#$signer| _$t1@@2))) (=> (and (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |DualAttestationandybpl.5211:20|
 :skolemid |139|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@5))
)) (= $t2@@1 (|$addr#$signer| _$t0@@3))) (and (= $t3@@1 (|$addr#$signer| _$t0@@3)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2)))) (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@2 _$t1@@2)) (and (= $t4@@1 (|$addr#$signer| _$t0@@3)) (= $t5@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@1)) 5))))))) (and (=> (= (ControlFlow 0 219318) 220110) anon9_Then_correct) (=> (= (ControlFlow 0 219318) 219396) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_91856| stream@@4) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@4) v@@45) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 219188) 219318)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 303285) 219188) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@2 () Int)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun _$t1@@3 () T@$signer)
(declare-fun $t3@@2 () Int)
(declare-fun $t6@@2 () Int)
(declare-fun $t9@@3 () Bool)
(declare-fun $t5@@3 () Bool)
(declare-fun $t4@@2 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_125197)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_125197)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_125197)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 304219) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 221239) (- 0 305048)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (=> (= (ControlFlow 0 221239) (- 0 305124)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@2)) (= 5 $t6@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2))))))))
(let ((anon10_Then_correct@@1  (=> $t9@@3 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@2)) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 221007) 221239))) L2_correct@@2))))
(let ((anon9_Then_correct@@0  (=> (and (and $t5@@3 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2)))) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 221311) 221239))) L2_correct@@2)))
(let ((anon7_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2)) (and (=> (= (ControlFlow 0 220965) (- 0 304640)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@2))) (and (=> (= (ControlFlow 0 220965) (- 0 304652)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (and (=> (= (ControlFlow 0 220965) (- 0 304670)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 220965) (- 0 304684)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 220965) (- 0 304695)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@2))) (and (=> (= (ControlFlow 0 220965) (- 0 304707)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (and (=> (= (ControlFlow 0 220965) (- 0 304725)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 220965) (- 0 304739)) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3)) (and (=> (= (ControlFlow 0 220965) (- 0 304748)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2) (and (=> (= (ControlFlow 0 220965) (- 0 304763)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@33)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@33)) 0))))
 :qid |DualAttestationandybpl.5638:15|
 :skolemid |147|
))) (=> (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@34)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@34)) 0))))
 :qid |DualAttestationandybpl.5638:15|
 :skolemid |147|
)) (and (=> (= (ControlFlow 0 220965) (- 0 304810)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@35)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@35)) 1))))
 :qid |DualAttestationandybpl.5642:15|
 :skolemid |148|
))) (=> (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@36)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@36)) 1))))
 :qid |DualAttestationandybpl.5642:15|
 :skolemid |148|
)) (and (=> (= (ControlFlow 0 220965) (- 0 304857)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@37)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@37)) 3))))
 :qid |DualAttestationandybpl.5646:15|
 :skolemid |149|
))) (=> (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@38)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@38)) 3))))
 :qid |DualAttestationandybpl.5646:15|
 :skolemid |149|
)) (and (=> (= (ControlFlow 0 220965) (- 0 304904)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@39)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@39)) 4))))
 :qid |DualAttestationandybpl.5650:15|
 :skolemid |150|
))) (=> (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@40)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@40)) 4))))
 :qid |DualAttestationandybpl.5650:15|
 :skolemid |150|
)) (and (=> (= (ControlFlow 0 220965) (- 0 304951)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@41)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@41)) 5))))
 :qid |DualAttestationandybpl.5654:15|
 :skolemid |151|
))) (=> (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@42)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@42)) 5))))
 :qid |DualAttestationandybpl.5654:15|
 :skolemid |151|
)) (=> (= (ControlFlow 0 220965) (- 0 304998)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@2) addr@@43)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@43)) 6))))
 :qid |DualAttestationandybpl.5658:15|
 :skolemid |152|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@0@@2|) (= $1_Roles_RoleId_$memory@1@@3 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) false) (|contents#$Memory_125197| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@1@@3) (= (ControlFlow 0 220505) 220965))) anon7_correct@@0)))
(let ((anon11_Then_correct@@2  (=> (and (and |$temp_0'bool'@0@@2| (= $1_Roles_RoleId_$memory@0@@3 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) |$temp_0'$1_Roles_RoleId'@0@@2|)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@0@@3) (= (ControlFlow 0 220979) 220965))) anon7_correct@@0)))
(let ((anon10_Else_correct@@1  (=> (not $t9@@3) (and (=> (= (ControlFlow 0 220491) 220979) anon11_Then_correct@@2) (=> (= (ControlFlow 0 220491) 220505) anon11_Else_correct@@2)))))
(let ((anon9_Else_correct@@0  (=> (not $t5@@3) (=> (and (|$IsValid'u64'| 2) (= $t8@@0 (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 220485) (- 0 304490)) (=> (= 2 0) (= $t8@@0 173345816))) (=> (=> (= 2 0) (= $t8@@0 173345816)) (and (=> (= (ControlFlow 0 220485) (- 0 304506)) (=> (= 2 1) (= $t8@@0 186537453))) (=> (=> (= 2 1) (= $t8@@0 186537453)) (and (=> (= (ControlFlow 0 220485) (- 0 304522)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3)) (=> (= $t9@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 220485) 221007) anon10_Then_correct@@1) (=> (= (ControlFlow 0 220485) 220491) anon10_Else_correct@@1)))))))))))))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3))) (=> (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |DualAttestationandybpl.5459:20|
 :skolemid |146|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@6))
)) (= $t2@@2 (|$addr#$signer| _$t0@@4))) (and (= $t3@@2 (|$addr#$signer| _$t0@@4)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3)))) (and (and (= _$t0@@4 _$t0@@4) (= _$t1@@3 _$t1@@3)) (and (= $t4@@2 (|$addr#$signer| _$t0@@4)) (= $t5@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))))))) (and (=> (= (ControlFlow 0 220407) 221311) anon9_Then_correct@@0) (=> (= (ControlFlow 0 220407) 220485) anon9_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_91856| stream@@5) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@5) v@@46) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 220265) 220407)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 304219) 220265) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@3 () Int)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun _$t1@@4 () T@$signer)
(declare-fun $t3@@3 () Int)
(declare-fun $t6@@3 () Int)
(declare-fun $t9@@4 () Bool)
(declare-fun $t5@@4 () Bool)
(declare-fun $t4@@3 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_125197)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_125197)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_125197)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 305271) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 222448) (- 0 306100)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (=> (= (ControlFlow 0 222448) (- 0 306176)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t6@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3))))))))
(let ((anon10_Then_correct@@2  (=> $t9@@4 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@3)) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 222216) 222448))) L2_correct@@3))))
(let ((anon9_Then_correct@@1  (=> (and (and $t5@@4 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3)))) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 222520) 222448))) L2_correct@@3)))
(let ((anon7_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5)) (and (=> (= (ControlFlow 0 222174) (- 0 305692)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@3))) (and (=> (= (ControlFlow 0 222174) (- 0 305704)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (and (=> (= (ControlFlow 0 222174) (- 0 305722)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 222174) (- 0 305736)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 222174) (- 0 305747)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 222174) (- 0 305759)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (and (=> (= (ControlFlow 0 222174) (- 0 305777)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 222174) (- 0 305791)) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4)) (and (=> (= (ControlFlow 0 222174) (- 0 305800)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5) (and (=> (= (ControlFlow 0 222174) (- 0 305815)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@44)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@44)) 0))))
 :qid |DualAttestationandybpl.5896:15|
 :skolemid |154|
))) (=> (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@45)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@45)) 0))))
 :qid |DualAttestationandybpl.5896:15|
 :skolemid |154|
)) (and (=> (= (ControlFlow 0 222174) (- 0 305862)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@46)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@46)) 1))))
 :qid |DualAttestationandybpl.5900:15|
 :skolemid |155|
))) (=> (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@47)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@47)) 1))))
 :qid |DualAttestationandybpl.5900:15|
 :skolemid |155|
)) (and (=> (= (ControlFlow 0 222174) (- 0 305909)) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@48)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@48)) 3))))
 :qid |DualAttestationandybpl.5904:15|
 :skolemid |156|
))) (=> (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@49)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@49)) 3))))
 :qid |DualAttestationandybpl.5904:15|
 :skolemid |156|
)) (and (=> (= (ControlFlow 0 222174) (- 0 305956)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@50)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@50)) 4))))
 :qid |DualAttestationandybpl.5908:15|
 :skolemid |157|
))) (=> (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@51)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@51)) 4))))
 :qid |DualAttestationandybpl.5908:15|
 :skolemid |157|
)) (and (=> (= (ControlFlow 0 222174) (- 0 306003)) (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@52)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@52)) 2))))
 :qid |DualAttestationandybpl.5912:15|
 :skolemid |158|
))) (=> (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@53)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@53)) 2))))
 :qid |DualAttestationandybpl.5912:15|
 :skolemid |158|
)) (=> (= (ControlFlow 0 222174) (- 0 306050)) (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@3) addr@@54)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@54)) 6))))
 :qid |DualAttestationandybpl.5916:15|
 :skolemid |159|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@3|) (= $1_Roles_RoleId_$memory@1@@4 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) false) (|contents#$Memory_125197| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@1@@4) (= (ControlFlow 0 221714) 222174))) anon7_correct@@1)))
(let ((anon11_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@3| (= $1_Roles_RoleId_$memory@0@@4 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) |$temp_0'$1_Roles_RoleId'@0@@3|)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@0@@4) (= (ControlFlow 0 222188) 222174))) anon7_correct@@1)))
(let ((anon10_Else_correct@@2  (=> (not $t9@@4) (and (=> (= (ControlFlow 0 221700) 222188) anon11_Then_correct@@3) (=> (= (ControlFlow 0 221700) 221714) anon11_Else_correct@@3)))))
(let ((anon9_Else_correct@@1  (=> (not $t5@@4) (=> (and (|$IsValid'u64'| 5) (= $t8@@1 (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 221694) (- 0 305542)) (=> (= 5 0) (= $t8@@1 173345816))) (=> (=> (= 5 0) (= $t8@@1 173345816)) (and (=> (= (ControlFlow 0 221694) (- 0 305558)) (=> (= 5 1) (= $t8@@1 186537453))) (=> (=> (= 5 1) (= $t8@@1 186537453)) (and (=> (= (ControlFlow 0 221694) (- 0 305574)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4)) (=> (= $t9@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 221694) 222216) anon10_Then_correct@@2) (=> (= (ControlFlow 0 221694) 221700) anon10_Else_correct@@2)))))))))))))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4))) (=> (and (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |DualAttestationandybpl.5717:20|
 :skolemid |153|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@7))
)) (= $t2@@3 (|$addr#$signer| _$t0@@5))) (and (= $t3@@3 (|$addr#$signer| _$t0@@5)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4)))) (and (and (= _$t0@@5 _$t0@@5) (= _$t1@@4 _$t1@@4)) (and (= $t4@@3 (|$addr#$signer| _$t0@@5)) (= $t5@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))))))) (and (=> (= (ControlFlow 0 221616) 222520) anon9_Then_correct@@1) (=> (= (ControlFlow 0 221616) 221694) anon9_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_91856| stream@@6) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@6) v@@47) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 221474) 221616)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 305271) 221474) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@4 () Int)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun _$t1@@5 () T@$signer)
(declare-fun $t3@@4 () Int)
(declare-fun $t6@@4 () Int)
(declare-fun $t9@@5 () Bool)
(declare-fun $t5@@5 () Bool)
(declare-fun $t4@@4 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_125197)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_125197)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_125197)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@2 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 306323) (let ((L2_correct@@4  (and (=> (= (ControlFlow 0 223669) (- 0 307182)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (=> (= (ControlFlow 0 223669) (- 0 307258)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@4)) (= 5 $t6@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4))))))))
(let ((anon10_Then_correct@@3  (=> $t9@@5 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@4)) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 223437) 223669))) L2_correct@@4))))
(let ((anon9_Then_correct@@2  (=> (and (and $t5@@5 (or (or (or (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4)))) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 223761) 223669))) L2_correct@@4)))
(let ((anon7_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4)) (and (=> (= (ControlFlow 0 223395) (- 0 306774)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@4))) (and (=> (= (ControlFlow 0 223395) (- 0 306786)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (and (=> (= (ControlFlow 0 223395) (- 0 306804)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 223395) (- 0 306818)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 223395) (- 0 306829)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@4))) (and (=> (= (ControlFlow 0 223395) (- 0 306841)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (and (=> (= (ControlFlow 0 223395) (- 0 306859)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 223395) (- 0 306873)) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5)) (and (=> (= (ControlFlow 0 223395) (- 0 306882)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4) (and (=> (= (ControlFlow 0 223395) (- 0 306897)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@55)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@55)) 0))))
 :qid |DualAttestationandybpl.6154:15|
 :skolemid |161|
))) (=> (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@56)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@56)) 0))))
 :qid |DualAttestationandybpl.6154:15|
 :skolemid |161|
)) (and (=> (= (ControlFlow 0 223395) (- 0 306944)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@57)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@57)) 1))))
 :qid |DualAttestationandybpl.6158:15|
 :skolemid |162|
))) (=> (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@58)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@58)) 1))))
 :qid |DualAttestationandybpl.6158:15|
 :skolemid |162|
)) (and (=> (= (ControlFlow 0 223395) (- 0 306991)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@59)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@59)) 3))))
 :qid |DualAttestationandybpl.6162:15|
 :skolemid |163|
))) (=> (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@60)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@60)) 3))))
 :qid |DualAttestationandybpl.6162:15|
 :skolemid |163|
)) (and (=> (= (ControlFlow 0 223395) (- 0 307038)) (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@61)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@61)) 2))))
 :qid |DualAttestationandybpl.6166:15|
 :skolemid |164|
))) (=> (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@62)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@62)) 2))))
 :qid |DualAttestationandybpl.6166:15|
 :skolemid |164|
)) (and (=> (= (ControlFlow 0 223395) (- 0 307085)) (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@63)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@63)) 5))))
 :qid |DualAttestationandybpl.6170:15|
 :skolemid |165|
))) (=> (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@64)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@64)) 5))))
 :qid |DualAttestationandybpl.6170:15|
 :skolemid |165|
)) (=> (= (ControlFlow 0 223395) (- 0 307132)) (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@4) addr@@65)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@65)) 6))))
 :qid |DualAttestationandybpl.6174:15|
 :skolemid |166|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@4|) (= $1_Roles_RoleId_$memory@1@@5 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) false) (|contents#$Memory_125197| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@1@@5) (= (ControlFlow 0 222935) 223395))) anon7_correct@@2)))
(let ((anon11_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@4| (= $1_Roles_RoleId_$memory@0@@5 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) |$temp_0'$1_Roles_RoleId'@0@@4|)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@0@@5) (= (ControlFlow 0 223409) 223395))) anon7_correct@@2)))
(let ((anon10_Else_correct@@3  (=> (not $t9@@5) (and (=> (= (ControlFlow 0 222921) 223409) anon11_Then_correct@@4) (=> (= (ControlFlow 0 222921) 222935) anon11_Else_correct@@4)))))
(let ((anon9_Else_correct@@2  (=> (not $t5@@5) (=> (and (|$IsValid'u64'| 4) (= $t8@@2 (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 222915) (- 0 306624)) (=> (= 4 0) (= $t8@@2 173345816))) (=> (=> (= 4 0) (= $t8@@2 173345816)) (and (=> (= (ControlFlow 0 222915) (- 0 306640)) (=> (= 4 1) (= $t8@@2 186537453))) (=> (=> (= 4 1) (= $t8@@2 186537453)) (and (=> (= (ControlFlow 0 222915) (- 0 306656)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5)) (=> (= $t9@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 222915) 223437) anon10_Then_correct@@3) (=> (= (ControlFlow 0 222915) 222921) anon10_Else_correct@@3)))))))))))))
(let ((anon0$1_correct@@6  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) (|$IsValid'address'| (|$addr#$signer| _$t1@@5))) (=> (and (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |DualAttestationandybpl.5975:20|
 :skolemid |160|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@8))
)) (= $t2@@4 (|$addr#$signer| _$t0@@6))) (and (= $t3@@4 (|$addr#$signer| _$t0@@6)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5)))) (and (and (= _$t0@@6 _$t0@@6) (= _$t1@@5 _$t1@@5)) (and (= $t4@@4 (|$addr#$signer| _$t0@@6)) (= $t5@@5  (or (or (or (not (= (|$addr#$signer| _$t0@@6) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))))))) (and (=> (= (ControlFlow 0 222837) 223761) anon9_Then_correct@@2) (=> (= (ControlFlow 0 222837) 222915) anon9_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_91856| stream@@7) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@7) v@@48) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 222683) 222837)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 306323) 222683) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@5 () Int)
(declare-fun _$t0@@7 () T@$signer)
(declare-fun _$t1@@6 () T@$signer)
(declare-fun $t3@@5 () Int)
(declare-fun $t6@@5 () Int)
(declare-fun $t9@@6 () Bool)
(declare-fun $t5@@6 () Bool)
(declare-fun $t4@@5 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_125197)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_125197)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_125197)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 307405) (let ((L2_correct@@5  (and (=> (= (ControlFlow 0 224912) (- 0 308264)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (=> (= (ControlFlow 0 224912) (- 0 308340)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@5)) (= 5 $t6@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@5))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5))))))))
(let ((anon10_Then_correct@@4  (=> $t9@@6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@5)) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 224680) 224912))) L2_correct@@5))))
(let ((anon9_Then_correct@@3  (=> (and (and $t5@@6 (or (or (or (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5)))) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 225004) 224912))) L2_correct@@5)))
(let ((anon7_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3)) (and (=> (= (ControlFlow 0 224638) (- 0 307856)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@5))) (and (=> (= (ControlFlow 0 224638) (- 0 307868)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (and (=> (= (ControlFlow 0 224638) (- 0 307886)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 224638) (- 0 307900)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 224638) (- 0 307911)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@5))) (and (=> (= (ControlFlow 0 224638) (- 0 307923)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (and (=> (= (ControlFlow 0 224638) (- 0 307941)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 224638) (- 0 307955)) (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6)) (and (=> (= (ControlFlow 0 224638) (- 0 307964)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3) (and (=> (= (ControlFlow 0 224638) (- 0 307979)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@66)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@66)) 0))))
 :qid |DualAttestationandybpl.6412:15|
 :skolemid |168|
))) (=> (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@67)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@67)) 0))))
 :qid |DualAttestationandybpl.6412:15|
 :skolemid |168|
)) (and (=> (= (ControlFlow 0 224638) (- 0 308026)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@68)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@68)) 1))))
 :qid |DualAttestationandybpl.6416:15|
 :skolemid |169|
))) (=> (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@69)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@69)) 1))))
 :qid |DualAttestationandybpl.6416:15|
 :skolemid |169|
)) (and (=> (= (ControlFlow 0 224638) (- 0 308073)) (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@70)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@70)) 4))))
 :qid |DualAttestationandybpl.6420:15|
 :skolemid |170|
))) (=> (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@71)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@71)) 4))))
 :qid |DualAttestationandybpl.6420:15|
 :skolemid |170|
)) (and (=> (= (ControlFlow 0 224638) (- 0 308120)) (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@72)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@72)) 2))))
 :qid |DualAttestationandybpl.6424:15|
 :skolemid |171|
))) (=> (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@73)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@73)) 2))))
 :qid |DualAttestationandybpl.6424:15|
 :skolemid |171|
)) (and (=> (= (ControlFlow 0 224638) (- 0 308167)) (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@74)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@74)) 5))))
 :qid |DualAttestationandybpl.6428:15|
 :skolemid |172|
))) (=> (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@75)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@75)) 5))))
 :qid |DualAttestationandybpl.6428:15|
 :skolemid |172|
)) (=> (= (ControlFlow 0 224638) (- 0 308214)) (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory@2@@5) addr@@76)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr@@76)) 6))))
 :qid |DualAttestationandybpl.6432:15|
 :skolemid |173|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_Roles_RoleId_$memory@1@@6 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) false) (|contents#$Memory_125197| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@1@@6) (= (ControlFlow 0 224178) 224638))) anon7_correct@@3)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@5| (= $1_Roles_RoleId_$memory@0@@6 ($Memory_125197 (|Store__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) |$temp_0'$1_Roles_RoleId'@0@@5|)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@0@@6) (= (ControlFlow 0 224652) 224638))) anon7_correct@@3)))
(let ((anon10_Else_correct@@4  (=> (not $t9@@6) (and (=> (= (ControlFlow 0 224164) 224652) anon11_Then_correct@@5) (=> (= (ControlFlow 0 224164) 224178) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct@@3  (=> (not $t5@@6) (=> (and (|$IsValid'u64'| 3) (= $t8@@3 (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 224158) (- 0 307706)) (=> (= 3 0) (= $t8@@3 173345816))) (=> (=> (= 3 0) (= $t8@@3 173345816)) (and (=> (= (ControlFlow 0 224158) (- 0 307722)) (=> (= 3 1) (= $t8@@3 186537453))) (=> (=> (= 3 1) (= $t8@@3 186537453)) (and (=> (= (ControlFlow 0 224158) (- 0 307738)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6)) (=> (= $t9@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 224158) 224680) anon10_Then_correct@@4) (=> (= (ControlFlow 0 224158) 224164) anon10_Else_correct@@4)))))))))))))
(let ((anon0$1_correct@@7  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@7)) (|$IsValid'address'| (|$addr#$signer| _$t1@@6))) (=> (and (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |DualAttestationandybpl.6233:20|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@9))
)) (= $t2@@5 (|$addr#$signer| _$t0@@7))) (and (= $t3@@5 (|$addr#$signer| _$t0@@7)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6)))) (and (and (= _$t0@@7 _$t0@@7) (= _$t1@@6 _$t1@@6)) (and (= $t4@@5 (|$addr#$signer| _$t0@@7)) (= $t5@@6  (or (or (or (not (= (|$addr#$signer| _$t0@@7) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))))))) (and (=> (= (ControlFlow 0 224080) 225004) anon9_Then_correct@@3) (=> (= (ControlFlow 0 224080) 224158) anon9_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_91856| stream@@8) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@8) v@@49) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 223926) 224080)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 307405) 223926) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@6 () Bool)
(declare-fun $1_DualAttestation_Limit_$memory@1 () T@$Memory_124816)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t6@@6 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_144013)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun |Select__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int) T@$1_DualAttestation_Credential)
(declare-fun $t8@0 () Int)
(declare-fun $abort_code@7 () Int)
(declare-fun $1_DualAttestation_Limit_$memory@0 () T@$Memory_124816)
(declare-fun |Store__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int T@$1_DualAttestation_Limit) |T@[Int]$1_DualAttestation_Limit|)
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Limit|) ( ?x1 Int) ( ?x2 T@$1_DualAttestation_Limit)) (! (= (|Select__T@[Int]$1_DualAttestation_Limit_| (|Store__T@[Int]$1_DualAttestation_Limit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Limit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DualAttestation_Limit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DualAttestation_Limit_| (|Store__T@[Int]$1_DualAttestation_Limit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DualAttestation_Limit_| ?x0 ?y1))) :weight 0)))
(declare-fun $t25@0 () T@$1_DualAttestation_Limit)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun inline$$CastU64$0$dst@1 () Int)
(declare-fun inline$$CastU64$0$dst@0 () Int)
(declare-fun inline$$MulU128$0$dst@2 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t23@@0 () Int)
(declare-fun inline$$MulU128$0$dst@0 () Int)
(declare-fun inline$$CastU128$0$dst@1 () Int)
(declare-fun inline$$CastU128$1$dst@1 () Int)
(declare-fun inline$$MulU128$0$dst@1 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$CastU128$1$dst@0 () Int)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1| () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1| () Int)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@0| () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1| () Int)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@2| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun inline$$CastU128$0$dst@0 () Int)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t14@@0 () Int)
(declare-fun $t11@0@@1 () Bool)
(declare-fun $t9@@7 () Bool)
(declare-fun $t8@@4 () Int)
(declare-fun $t7@@1 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_138740)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_138350)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_149582)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_143949)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_149673)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_149764)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_144149)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_149991)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_150090)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_150189)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_159675)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_157168)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 308486) (let ((anon37_Else_correct  (=> (not $abort_flag@6) (and (=> (= (ControlFlow 0 227093) (- 0 310063)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 227093) (- 0 310078)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 227093) (- 0 310088)) (not (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@8) 173345816))) (and (=> (= (ControlFlow 0 227093) (- 0 310102)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (and (=> (= (ControlFlow 0 227093) (- 0 310112)) (not (> $t6@@6 18446744073709551615))) (=> (not (> $t6@@6 18446744073709551615)) (and (=> (= (ControlFlow 0 227093) (- 0 310123)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 227093) (- 0 310133)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@2)))
 :qid |DualAttestationandybpl.13060:15|
 :skolemid |252|
))) (=> (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@3)))
 :qid |DualAttestationandybpl.13060:15|
 :skolemid |252|
)) (and (=> (= (ControlFlow 0 227093) (- 0 310158)) (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@4))))
 :qid |DualAttestationandybpl.13065:15|
 :skolemid |253|
))) (=> (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@5))))
 :qid |DualAttestationandybpl.13065:15|
 :skolemid |253|
)) (and (=> (= (ControlFlow 0 227093) (- 0 310187)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory@1) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory@1) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 227093) (- 0 310203)) (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@6) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@6)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@6)))))
 :qid |DualAttestationandybpl.13075:15|
 :skolemid |254|
))) (=> (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@7) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@7)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@7)))))
 :qid |DualAttestationandybpl.13075:15|
 :skolemid |254|
)) (=> (= (ControlFlow 0 227093) (- 0 310239)) (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@8) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@8)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@8)))))
 :qid |DualAttestationandybpl.13080:15|
 :skolemid |255|
))))))))))))))))))))))))))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 225779) (- 0 309941)) (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (> $t6@@6 18446744073709551615)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (> $t6@@6 18446744073709551615)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (= (ControlFlow 0 225779) (- 0 309979)) (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t8@0)) (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t8@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= 6 $t8@0))) (and (> $t6@@6 18446744073709551615) (= 8 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t8@0))))))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t8@0 $abort_code@7) (= (ControlFlow 0 227107) 225779))) L5_correct@@0)))
(let ((anon36_Then$1_correct  (=> (= $1_DualAttestation_Limit_$memory@1 $1_DualAttestation_Limit_$memory) (=> (and (= $abort_flag@6 true) (= $abort_code@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 227159) 227107) anon37_Then_correct) (=> (= (ControlFlow 0 227159) 227093) anon37_Else_correct))))))
(let ((anon36_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) (|$addr#$signer| _$t0@@8)) (= (ControlFlow 0 227157) 227159)) anon36_Then$1_correct)))
(let ((anon36_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) (|$addr#$signer| _$t0@@8))) (=> (and (and (= $1_DualAttestation_Limit_$memory@0 ($Memory_124816 (|Store__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) (|$addr#$signer| _$t0@@8) true) (|Store__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) (|$addr#$signer| _$t0@@8) $t25@0))) (= $1_DualAttestation_Limit_$memory@1 $1_DualAttestation_Limit_$memory@0)) (and (= $abort_flag@6 $abort_flag@5) (= $abort_code@7 $abort_code@6))) (and (=> (= (ControlFlow 0 226871) 227107) anon37_Then_correct) (=> (= (ControlFlow 0 226871) 227093) anon37_Else_correct))))))
(let ((anon35_Else_correct  (=> (and (not $abort_flag@5) (= $t25@0 ($1_DualAttestation_Limit inline$$CastU64$0$dst@1))) (and (=> (= (ControlFlow 0 226849) 227157) anon36_Then_correct) (=> (= (ControlFlow 0 226849) 226871) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= $t8@0 $abort_code@6) (= (ControlFlow 0 227173) 225779))) L5_correct@@0)))
(let ((inline$$CastU64$0$anon3_Then$1_correct  (=> (= $abort_code@6 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@5 true) (= inline$$CastU64$0$dst@1 inline$$CastU64$0$dst@0)) (and (=> (= (ControlFlow 0 226827) 227173) anon35_Then_correct) (=> (= (ControlFlow 0 226827) 226849) anon35_Else_correct))))))
(let ((inline$$CastU64$0$anon3_Then_correct  (=> (and (> inline$$MulU128$0$dst@2 $MAX_U64) (= (ControlFlow 0 226825) 226827)) inline$$CastU64$0$anon3_Then$1_correct)))
(let ((inline$$CastU64$0$anon3_Else_correct  (=> (and (and (>= $MAX_U64 inline$$MulU128$0$dst@2) (= $abort_code@6 $abort_code@5)) (and (= $abort_flag@5 $abort_flag@4) (= inline$$CastU64$0$dst@1 inline$$MulU128$0$dst@2))) (and (=> (= (ControlFlow 0 226777) 227173) anon35_Then_correct) (=> (= (ControlFlow 0 226777) 226849) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> inline$$Le$0$dst@1 (and (=> (= (ControlFlow 0 226833) 226825) inline$$CastU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 226833) 226777) inline$$CastU64$0$anon3_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= $t23@@0 $t23@@0)) (and (= $t8@0 $t23@@0) (= (ControlFlow 0 226702) 225779))) L5_correct@@0)))
(let ((anon33_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 8)) (and (= $t23@@0 $t23@@0) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 226686) 226833) anon34_Then_correct) (=> (= (ControlFlow 0 226686) 226702) anon34_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= inline$$MulU128$0$dst@2 18446744073709551615)) (= (ControlFlow 0 226650) 226686)) anon33_Else$1_correct)))
(let ((anon33_Else_correct  (=> (and (and (not $abort_flag@4) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@2)) (and (|$IsValid'u128'| 18446744073709551615) (= (ControlFlow 0 226656) 226650))) inline$$Le$0$anon0_correct)))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t8@0 $abort_code@5) (= (ControlFlow 0 227187) 225779))) L5_correct@@0)))
(let ((inline$$MulU128$0$anon3_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@0)) (and (=> (= (ControlFlow 0 226582) 227187) anon33_Then_correct) (=> (= (ControlFlow 0 226582) 226656) anon33_Else_correct))))))
(let ((inline$$MulU128$0$anon3_Then_correct  (=> (and (> (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1) $MAX_U128) (= (ControlFlow 0 226580) 226582)) inline$$MulU128$0$anon3_Then$1_correct)))
(let ((inline$$MulU128$0$anon3_Else_correct  (=> (>= $MAX_U128 (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1)) (=> (and (and (= inline$$MulU128$0$dst@1 (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1)) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@1))) (and (=> (= (ControlFlow 0 226528) 227187) anon33_Then_correct) (=> (= (ControlFlow 0 226528) 226656) anon33_Else_correct))))))
(let ((anon32_Else_correct  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 226588) 226580) inline$$MulU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 226588) 226528) inline$$MulU128$0$anon3_Else_correct)))))
(let ((anon32_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t8@0 $abort_code@4) (= (ControlFlow 0 227201) 225779))) L5_correct@@0)))
(let ((inline$$CastU128$1$anon3_Then$1_correct  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@3 true) (= inline$$CastU128$1$dst@1 inline$$CastU128$1$dst@0)) (and (=> (= (ControlFlow 0 226421) 227201) anon32_Then_correct) (=> (= (ControlFlow 0 226421) 226588) anon32_Else_correct))))))
(let ((inline$$CastU128$1$anon3_Then_correct  (=> (and (> |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1| $MAX_U128) (= (ControlFlow 0 226419) 226421)) inline$$CastU128$1$anon3_Then$1_correct)))
(let ((inline$$CastU128$1$anon3_Else_correct  (=> (and (and (>= $MAX_U128 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1|) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@3 $abort_flag@2) (= inline$$CastU128$1$dst@1 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 226371) 227201) anon32_Then_correct) (=> (= (ControlFlow 0 226371) 226588) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 226427) 226419) inline$$CastU128$1$anon3_Then_correct) (=> (= (ControlFlow 0 226427) 226371) inline$$CastU128$1$anon3_Else_correct)))))
(let ((anon31_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t8@0 $abort_code@3) (= (ControlFlow 0 227215) 225779))) L5_correct@@0)))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$L2_correct|  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1|) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@0|)) (and (=> (= (ControlFlow 0 226210) 227215) anon31_Then_correct) (=> (= (ControlFlow 0 226210) 226427) anon31_Else_correct))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Then_correct|  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1| $abort_code@2) (= (ControlFlow 0 226204) 226210))) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$L2_correct|)))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon8_Then_correct|  (=> |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t0@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0|)) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0|)) (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0|) (= (ControlFlow 0 226288) 226210))) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Else_correct|  (=> (and (not $abort_flag@1) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@2|))) (=> (and (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1|) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1|))) (and (=> (= (ControlFlow 0 226190) 227215) anon31_Then_correct) (=> (= (ControlFlow 0 226190) 226427) anon31_Else_correct))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@2| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@0|)) (and (=> (= (ControlFlow 0 226262) 226204) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 226262) 226190) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Else_correct|))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (ControlFlow 0 226260) 226262)) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Then$1_correct|)))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (=> (and (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@1| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $abort_code@2 $abort_code@1@@1)) (and (= $abort_flag@1 $abort_flag@0@@1) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@2| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 226168) 226204) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 226168) 226190) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Else_correct|))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon8_Else_correct|  (=> (and (not |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t0@0|) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 226154) 226260) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 226154) 226168) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Else_correct|)))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 226140) 226288) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon8_Then_correct|) (=> (= (ControlFlow 0 226140) 226154) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon8_Else_correct|)))))
(let ((anon30_Else_correct  (=> (and (not $abort_flag@0@@1) (= (ControlFlow 0 226294) 226140)) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon0_correct|)))
(let ((anon30_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t8@0 $abort_code@1@@1) (= (ControlFlow 0 227229) 225779))) L5_correct@@0)))
(let ((inline$$CastU128$0$anon3_Then$1_correct  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$CastU128$0$dst@1 inline$$CastU128$0$dst@0)) (and (=> (= (ControlFlow 0 225908) 227229) anon30_Then_correct) (=> (= (ControlFlow 0 225908) 226294) anon30_Else_correct))))))
(let ((inline$$CastU128$0$anon3_Then_correct  (=> (and (> 1000 $MAX_U128) (= (ControlFlow 0 225906) 225908)) inline$$CastU128$0$anon3_Then$1_correct)))
(let ((inline$$CastU128$0$anon3_Else_correct  (=> (and (and (>= $MAX_U128 1000) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$CastU128$0$dst@1 1000))) (and (=> (= (ControlFlow 0 225858) 227229) anon30_Then_correct) (=> (= (ControlFlow 0 225858) 226294) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and inline$$Not$0$dst@1@@0 (|$IsValid'u64'| 1000)) (and (=> (= (ControlFlow 0 225914) 225906) inline$$CastU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 225914) 225858) inline$$CastU128$0$anon3_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t14@@0 $t14@@0)) (and (= $t8@0 $t14@@0) (= (ControlFlow 0 225647) 225779))) L5_correct@@0)))
(let ((anon28_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t14@@0) (= $t14@@0 6)) (and (= $t14@@0 $t14@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 225631) 225914) anon29_Then_correct) (=> (= (ControlFlow 0 225631) 225647) anon29_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t11@0@@1)) (= (ControlFlow 0 225595) 225631)) anon28_Else$1_correct)))
(let ((anon28_Else_correct  (=> (and (and (not $t9@@7) (|$IsValid'address'| 173345816)) (and (= $t11@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= (ControlFlow 0 225601) 225595))) inline$$Not$0$anon0_correct@@0)))
(let ((anon28_Then_correct  (=> $t9@@7 (=> (and (and (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t8@@4)) (= $t8@@4 $t8@@4)) (and (= $t8@0 $t8@@4) (= (ControlFlow 0 227259) 225779))) L5_correct@@0))))
(let ((anon27_Else_correct  (=> (and (not $t7@@1) (= $t9@@7  (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (and (=> (= (ControlFlow 0 225545) 227259) anon28_Then_correct) (=> (= (ControlFlow 0 225545) 225601) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> $t7@@1 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t8@@4)) (= $t8@@4 $t8@@4)) (and (= $t8@0 $t8@@4) (= (ControlFlow 0 227285) 225779))) L5_correct@@0))))
(let ((anon0$1_correct@@8  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138740| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138350| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (and (and (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149582| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@77) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.12725:22|
 :skolemid |243|
)) (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149673| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@78) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.12725:222|
 :skolemid |244|
))) (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149764| |$1_Diem_Preburn'#0'_$memory|) addr@@79) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.12725:423|
 :skolemid |245|
))) (=> (and (and (and (and (and (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149991| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@80) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.12729:22|
 :skolemid |246|
)) (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150090| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@81) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.12729:227|
 :skolemid |247|
))) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150189| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@82) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.12729:433|
 :skolemid |248|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_159675| $1_XDX_Reserve_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_157168| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@8))) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@10))
 :qid |DualAttestationandybpl.12751:20|
 :skolemid |249|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@11)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@11) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@11)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@11) 10000000000))))
 :qid |DualAttestationandybpl.12755:20|
 :skolemid |250|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@11))
)))) (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@12)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@12))
 :qid |DualAttestationandybpl.12759:20|
 :skolemid |251|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@12))
)) (= $t6@@6 (* 1000 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (= _$t0@@8 _$t0@@8) (= $t7@@1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 225523) 227285) anon27_Then_correct) (=> (= (ControlFlow 0 225523) 225545) anon27_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_91856| stream@@9) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@9) v@@50) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 225167) 225523)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 308486) 225167) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8)))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t8@0@@0 () (Seq Int))
(declare-fun $t7@1 () T@$1_DualAttestation_Credential)
(declare-fun _$t0@@9 () Int)
(declare-fun $t6@0@@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t7@@2 () T@$1_DualAttestation_Credential)
(declare-fun $t7@0 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t5@@7 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_human_name$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 310281) (let ((anon12_Else_correct@@1  (=> (not $abort_flag@0@@2) (=> (and (= $t8@0@@0 (|$human_name#$1_DualAttestation_Credential| $t7@1)) (= $t8@0@@0 $t8@0@@0)) (and (=> (= (ControlFlow 0 227832) (- 0 310605)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@9)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@9))) (and (=> (= (ControlFlow 0 227832) (- 0 310616)) (= $t8@0@@0 (|$human_name#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@9)))) (=> (= $t8@0@@0 (|$human_name#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@9))) (and (=> (= (ControlFlow 0 227832) (- 0 310629)) (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@9)))
 :qid |DualAttestationandybpl.13236:15|
 :skolemid |258|
))) (=> (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@10)))
 :qid |DualAttestationandybpl.13236:15|
 :skolemid |258|
)) (and (=> (= (ControlFlow 0 227832) (- 0 310654)) (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@11))))
 :qid |DualAttestationandybpl.13241:15|
 :skolemid |259|
))) (=> (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@12)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@12))))
 :qid |DualAttestationandybpl.13241:15|
 :skolemid |259|
)) (and (=> (= (ControlFlow 0 227832) (- 0 310683)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 227832) (- 0 310700)) (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@13) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@13)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@13)))))
 :qid |DualAttestationandybpl.13251:15|
 :skolemid |260|
))) (=> (forall ((addr1@@14 Int) ) (!  (=> (|$IsValid'address'| addr1@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@14) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@14)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@14)))))
 :qid |DualAttestationandybpl.13251:15|
 :skolemid |260|
)) (=> (= (ControlFlow 0 227832) (- 0 310736)) (forall ((addr1@@15 Int) ) (!  (=> (|$IsValid'address'| addr1@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@15) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@15)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@15)))))
 :qid |DualAttestationandybpl.13256:15|
 :skolemid |261|
)))))))))))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 227620) (- 0 310558)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@9))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@9)) (=> (= (ControlFlow 0 227620) (- 0 310564)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@9)) (= 5 $t6@0@@0)))))))
(let ((anon12_Then_correct@@1  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t6@0@@0 $abort_code@1@@2) (= (ControlFlow 0 227846) 227620))) L3_correct@@0)))
(let ((anon11_Then$1_correct@@0  (=> (= $t7@1 $t7@@2) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 227898) 227846) anon12_Then_correct@@1) (=> (= (ControlFlow 0 227898) 227832) anon12_Else_correct@@1))))))
(let ((anon11_Then_correct@@6  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@9)) (= (ControlFlow 0 227896) 227898)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@6  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@9) (=> (and (and (= $t7@0 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@9)) (= $t7@1 $t7@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 227638) 227846) anon12_Then_correct@@1) (=> (= (ControlFlow 0 227638) 227832) anon12_Else_correct@@1))))))
(let ((anon10_Then_correct@@5  (=> $t3@0 (and (=> (= (ControlFlow 0 227624) 227896) anon11_Then_correct@@6) (=> (= (ControlFlow 0 227624) 227638) anon11_Else_correct@@6)))))
(let ((anon10_Else_correct@@5  (=> (and (and (not $t3@0) (= $t5@@7 $t5@@7)) (and (= $t6@0@@0 $t5@@7) (= (ControlFlow 0 227588) 227620))) L3_correct@@0)))
(let ((anon0$1_correct@@9  (=> (and (forall ((addr1@@16 Int) ) (!  (=> (|$IsValid'address'| addr1@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@16) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@16)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@16)) 2)))))
 :qid |DualAttestationandybpl.13133:20|
 :skolemid |256|
)) (|$IsValid'address'| _$t0@@9)) (=> (and (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@13)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@13))
 :qid |DualAttestationandybpl.13140:20|
 :skolemid |257|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@13))
)) (= _$t0@@9 _$t0@@9)) (and (= $t3@0 (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@9)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@7) (= $t5@@7 5)) (and (= $t5@@7 $t5@@7) (= $t3@0 $t3@0)))) (and (=> (= (ControlFlow 0 227572) 227624) anon10_Then_correct@@5) (=> (= (ControlFlow 0 227572) 227588) anon10_Else_correct@@5))))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_91856| stream@@10) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@10) v@@51) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 227451) 227572)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 310281) 227451) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t4 () (Seq Int))
(declare-fun $t6@@7 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t2@@0 () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun _$t0@@10 () Int)
(declare-fun _$t1@@7 () Int)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_161384)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_161320)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun _$t3 () (Seq Int))
(declare-fun $t8@0@@1 () Int)
(declare-fun $t14@@1 () Bool)
(declare-fun $t8@@5 () Int)
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
 (=> (= (ControlFlow 0 0) 310783) (let ((L8_correct@@0  (and (=> (= (ControlFlow 0 229626) (- 0 311900)) (or (or (or (or (or (or (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (let ((payee_compliance_key (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0))))))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))) (=> (or (or (or (or (or (or (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (let ((payee_compliance_key@@0 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@0) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@0 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0))))))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7))))) (=> (= (ControlFlow 0 229626) (- 0 312088)) (or (or (or (or (or (or (and (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (= 5 $t8@0@@1)) (and (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t8@0@@1))) (and (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (= 8 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0)) (= 1 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0)) (= 1 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (let ((payee_compliance_key@@1 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@1) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@1 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0)))))) (= 7 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) (= 5 $t8@0@@1))))))))
(let ((anon18_Then_correct  (=> $t14@@1 (=> (and (and (or (or (or (and (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0) (= 1 $t8@@5)) (and (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0) (= 1 $t8@@5))) (and (not (let ((payee_compliance_key@@2 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@2) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@2 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0))))) (= 7 $t8@@5))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7))) (= 5 $t8@@5))) (= $t8@@5 $t8@@5)) (and (= $t8@0@@1 $t8@@5) (= (ControlFlow 0 229070) 229626))) L8_correct@@0))))
(let ((anon16_Then_correct@@0  (=> $t13 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t8@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t8@@5))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t8@@5))) (= $t8@@5 $t8@@5)) (and (= $t8@0@@1 $t8@@5) (= (ControlFlow 0 229688) 229626))) L8_correct@@0))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 228874) (- 0 311675)) (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 228874) (- 0 311694)) (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 228874) (- 0 311713)) (not (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (=> (not (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (=> (= (ControlFlow 0 228874) (- 0 311736)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (=> (= (ControlFlow 0 228874) (- 0 311773)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (=> (= (ControlFlow 0 228874) (- 0 311810)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (let ((payee_compliance_key@@3 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@3) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@3 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0)))))))) (=> (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (let ((payee_compliance_key@@4 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@4) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@4 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0))))))) (=> (= (ControlFlow 0 228874) (- 0 311849)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7))))))))))))))))))))
(let ((anon18_Else_correct  (=> (and (not $t14@@1) (= (ControlFlow 0 228958) 228874)) L6_correct)))
(let ((anon17_Then_correct@@0  (=> (and $t5@0 (= $t14@@1  (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0)) (not (let ((payee_compliance_key@@5 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@5) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@5 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))) (and (=> (= (ControlFlow 0 228950) 229070) anon18_Then_correct) (=> (= (ControlFlow 0 228950) 228958) anon18_Else_correct)))))
(let ((anon17_Else_correct@@0  (=> (and (not $t5@0) (= (ControlFlow 0 228608) 228874)) L6_correct)))
(let ((anon16_Else_correct@@0  (=> (and (and (not $t13) (= $t12@@0  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@7))))))))) (and (= $t12@@0 $t12@@0) (= $t5@0 $t12@@0))) (and (=> (= (ControlFlow 0 228600) 228950) anon17_Then_correct@@0) (=> (= (ControlFlow 0 228600) 228608) anon17_Else_correct@@0)))))
(let ((anon15_Else_correct@@0  (=> (not inline$$Not$0$dst@1@@1) (=> (and (= $t11@@0 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t13  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (and (=> (= (ControlFlow 0 228560) 229688) anon16_Then_correct@@0) (=> (= (ControlFlow 0 228560) 228600) anon16_Else_correct@@0))))))
(let ((anon15_Then_correct@@0  (=> inline$$Not$0$dst@1@@1 (=> (and (= true true) (= $t5@0 true)) (and (=> (= (ControlFlow 0 229706) 228950) anon17_Then_correct@@0) (=> (= (ControlFlow 0 229706) 228608) anon17_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (= inline$$Not$0$dst@1@@1  (not |inline$$1_Vector_is_empty'u8'$0$b@1|)) (and (=> (= (ControlFlow 0 228504) 229706) anon15_Then_correct@@0) (=> (= (ControlFlow 0 228504) 228560) anon15_Else_correct@@0)))))
(let ((anon14_Else_correct@@1  (=> (and (not false) (= (ControlFlow 0 228510) 228504)) inline$$Not$0$anon0_correct@@1)))
(let ((anon14_Then_correct@@1 true))
(let ((|inline$$1_Vector_is_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u8'$0$b@1| (= (seq.len _$t4) 0)) (and (=> (= (ControlFlow 0 228460) 229720) anon14_Then_correct@@1) (=> (= (ControlFlow 0 228460) 228510) anon14_Else_correct@@1)))))
(let ((anon0$1_correct@@10  (=> (and (and (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149582| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@83) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13327:22|
 :skolemid |262|
)) (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149673| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@84) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13327:222|
 :skolemid |263|
))) (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149764| |$1_Diem_Preburn'#0'_$memory|) addr@@85) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13327:423|
 :skolemid |264|
))) (=> (and (and (and (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149991| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@86) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13331:22|
 :skolemid |265|
)) (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150090| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@87) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13331:227|
 :skolemid |266|
))) (forall ((addr@@88 Int) ) (!  (=> (|$IsValid'address'| addr@@88) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150189| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@88) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13331:433|
 :skolemid |267|
))) (and (and (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |DualAttestationandybpl.13335:20|
 :skolemid |268|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1@@17 Int) ) (!  (=> (|$IsValid'address'| addr1@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@17) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@17)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@17)) 2)))))
 :qid |DualAttestationandybpl.13343:20|
 :skolemid |269|
)) (|$IsValid'address'| _$t0@@10)))) (=> (and (and (and (and (|$IsValid'address'| _$t1@@7) (|$IsValid'u64'| _$t2@@0)) (and (|$IsValid'vec'u8''| _$t3) (|$IsValid'vec'u8''| _$t4))) (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@14)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@14) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@14)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@14) 10000000000))))
 :qid |DualAttestationandybpl.13361:20|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@14))
)) (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@15)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@15))
 :qid |DualAttestationandybpl.13365:20|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@15))
))) (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@16)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@16))
 :qid |DualAttestationandybpl.13369:20|
 :skolemid |272|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@16))
)) (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@17)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@17))
 :qid |DualAttestationandybpl.13373:20|
 :skolemid |273|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@17))
))))) (and (and (and (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@18)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@18))
 :qid |DualAttestationandybpl.13377:20|
 :skolemid |274|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@18))
)) (= $t6@@7 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= _$t0@@10 _$t0@@10) (= _$t1@@7 _$t1@@7))) (and (and (= _$t2@@0 _$t2@@0) (= _$t3 _$t3)) (and (= _$t4 _$t4) (= (ControlFlow 0 228466) 228460))))) |inline$$1_Vector_is_empty'u8'$0$anon0_correct|)))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_91856| stream@@11) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@11) v@@52) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 228006) 228466)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 310783) 228006) inline$$InitEventStore$0$anon0_correct@@10)))
anon0_correct@@10))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t4@@0 () (Seq Int))
(declare-fun $t6@@8 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t2@@1 () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun _$t0@@11 () Int)
(declare-fun _$t1@@8 () Int)
(declare-fun _$t3@@0 () (Seq Int))
(declare-fun $t8@0@@2 () Int)
(declare-fun $t14@@2 () Bool)
(declare-fun $t8@@6 () Int)
(declare-fun $t13@@0 () Bool)
(declare-fun $t11@@1 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun $t5@0@@0 () Bool)
(declare-fun $t12@@1 () Bool)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun |inline$$1_Vector_is_empty'u8'$0$b@1@@0| () Bool)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_assert_payment_ok$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 312343) (let ((L8_correct@@1  (and (=> (= (ControlFlow 0 231643) (- 0 313460)) (or (or (or (or (or (or (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (= (seq.len _$t4@@0) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (let ((payee_compliance_key@@6 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@6) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@6 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1))))))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))) (=> (or (or (or (or (or (or (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (= (seq.len _$t4@@0) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (let ((payee_compliance_key@@7 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@7) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@7 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1))))))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8))))) (=> (= (ControlFlow 0 231643) (- 0 313648)) (or (or (or (or (or (or (and (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (= 5 $t8@0@@2)) (and (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t8@0@@2))) (and (and (= (seq.len _$t4@@0) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (= 8 $t8@0@@2))) (and (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0)) (= 1 $t8@0@@2))) (and (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0)) (= 1 $t8@0@@2))) (and (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (let ((payee_compliance_key@@8 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@8) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@8 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1)))))) (= 7 $t8@0@@2))) (and (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) (= 5 $t8@0@@2))))))))
(let ((anon18_Then_correct@@0  (=> $t14@@2 (=> (and (and (or (or (or (and (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0) (= 1 $t8@@6)) (and (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0) (= 1 $t8@@6))) (and (not (let ((payee_compliance_key@@9 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@9) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@9 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1))))) (= 7 $t8@@6))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8))) (= 5 $t8@@6))) (= $t8@@6 $t8@@6)) (and (= $t8@0@@2 $t8@@6) (= (ControlFlow 0 231087) 231643))) L8_correct@@1))))
(let ((anon16_Then_correct@@1  (=> $t13@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t8@@6)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t8@@6))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t8@@6))) (= $t8@@6 $t8@@6)) (and (= $t8@0@@2 $t8@@6) (= (ControlFlow 0 231705) 231643))) L8_correct@@1))))
(let ((L6_correct@@0  (and (=> (= (ControlFlow 0 230891) (- 0 313235)) (not (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (not (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 230891) (- 0 313254)) (not (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 230891) (- 0 313273)) (not (and (= (seq.len _$t4@@0) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (=> (not (and (= (seq.len _$t4@@0) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (=> (= (ControlFlow 0 230891) (- 0 313296)) (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (=> (= (ControlFlow 0 230891) (- 0 313333)) (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (=> (= (ControlFlow 0 230891) (- 0 313370)) (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (let ((payee_compliance_key@@10 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@10) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@10 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1)))))))) (=> (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (let ((payee_compliance_key@@11 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@11) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@11 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1))))))) (=> (= (ControlFlow 0 230891) (- 0 313409)) (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8))))))))))))))))))))
(let ((anon18_Else_correct@@0  (=> (and (not $t14@@2) (= (ControlFlow 0 230975) 230891)) L6_correct@@0)))
(let ((anon17_Then_correct@@1  (=> (and $t5@0@@0 (= $t14@@2  (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0)) (not (let ((payee_compliance_key@@12 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@12) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@12 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))) (and (=> (= (ControlFlow 0 230967) 231087) anon18_Then_correct@@0) (=> (= (ControlFlow 0 230967) 230975) anon18_Else_correct@@0)))))
(let ((anon17_Else_correct@@1  (=> (and (not $t5@0@@0) (= (ControlFlow 0 230625) 230891)) L6_correct@@0)))
(let ((anon16_Else_correct@@1  (=> (and (and (not $t13@@0) (= $t12@@1  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@8))))))))) (and (= $t12@@1 $t12@@1) (= $t5@0@@0 $t12@@1))) (and (=> (= (ControlFlow 0 230617) 230967) anon17_Then_correct@@1) (=> (= (ControlFlow 0 230617) 230625) anon17_Else_correct@@1)))))
(let ((anon15_Else_correct@@1  (=> (not inline$$Not$0$dst@1@@2) (=> (and (= $t11@@1 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= $t13@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (and (=> (= (ControlFlow 0 230577) 231705) anon16_Then_correct@@1) (=> (= (ControlFlow 0 230577) 230617) anon16_Else_correct@@1))))))
(let ((anon15_Then_correct@@1  (=> inline$$Not$0$dst@1@@2 (=> (and (= true true) (= $t5@0@@0 true)) (and (=> (= (ControlFlow 0 231723) 230967) anon17_Then_correct@@1) (=> (= (ControlFlow 0 231723) 230625) anon17_Else_correct@@1))))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (= inline$$Not$0$dst@1@@2  (not |inline$$1_Vector_is_empty'u8'$0$b@1@@0|)) (and (=> (= (ControlFlow 0 230521) 231723) anon15_Then_correct@@1) (=> (= (ControlFlow 0 230521) 230577) anon15_Else_correct@@1)))))
(let ((anon14_Else_correct@@2  (=> (and (not false) (= (ControlFlow 0 230527) 230521)) inline$$Not$0$anon0_correct@@2)))
(let ((anon14_Then_correct@@2 true))
(let ((|inline$$1_Vector_is_empty'u8'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_is_empty'u8'$0$b@1@@0| (= (seq.len _$t4@@0) 0)) (and (=> (= (ControlFlow 0 230477) 231737) anon14_Then_correct@@2) (=> (= (ControlFlow 0 230477) 230527) anon14_Else_correct@@2)))))
(let ((anon0$1_correct@@11  (=> (and (and (forall ((addr@@89 Int) ) (!  (=> (|$IsValid'address'| addr@@89) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149582| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@89) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13663:22|
 :skolemid |275|
)) (forall ((addr@@90 Int) ) (!  (=> (|$IsValid'address'| addr@@90) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149673| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@90) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13663:222|
 :skolemid |276|
))) (forall ((addr@@91 Int) ) (!  (=> (|$IsValid'address'| addr@@91) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149764| |$1_Diem_Preburn'#0'_$memory|) addr@@91) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13663:423|
 :skolemid |277|
))) (=> (and (and (and (forall ((addr@@92 Int) ) (!  (=> (|$IsValid'address'| addr@@92) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149991| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@92) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13667:22|
 :skolemid |278|
)) (forall ((addr@@93 Int) ) (!  (=> (|$IsValid'address'| addr@@93) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150090| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@93) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13667:227|
 :skolemid |279|
))) (forall ((addr@@94 Int) ) (!  (=> (|$IsValid'address'| addr@@94) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150189| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@94) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13667:433|
 :skolemid |280|
))) (and (and (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |DualAttestationandybpl.13671:20|
 :skolemid |281|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1@@18 Int) ) (!  (=> (|$IsValid'address'| addr1@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@18) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@18)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@18)) 2)))))
 :qid |DualAttestationandybpl.13679:20|
 :skolemid |282|
)) (|$IsValid'address'| _$t0@@11)))) (=> (and (and (and (and (|$IsValid'address'| _$t1@@8) (|$IsValid'u64'| _$t2@@1)) (and (|$IsValid'vec'u8''| _$t3@@0) (|$IsValid'vec'u8''| _$t4@@0))) (and (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@19)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@19) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@19)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@19) 10000000000))))
 :qid |DualAttestationandybpl.13697:20|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@19))
)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@20)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@20))
 :qid |DualAttestationandybpl.13701:20|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@20))
))) (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@21)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@21))
 :qid |DualAttestationandybpl.13705:20|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@21))
)) (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@22)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@22))
 :qid |DualAttestationandybpl.13709:20|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@22))
))))) (and (and (and (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@23)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@23))
 :qid |DualAttestationandybpl.13713:20|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@23))
)) (= $t6@@8 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (= _$t0@@11 _$t0@@11) (= _$t1@@8 _$t1@@8))) (and (and (= _$t2@@1 _$t2@@1) (= _$t3@@0 _$t3@@0)) (and (= _$t4@@0 _$t4@@0) (= (ControlFlow 0 230483) 230477))))) |inline$$1_Vector_is_empty'u8'$0$anon0_correct@@0|)))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_91856| stream@@12) 0) (forall ((v@@53 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@12) v@@53) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 230023) 230483)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (= (ControlFlow 0 312343) 230023) inline$$InitEventStore$0$anon0_correct@@11)))
anon0_correct@@11))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t4@@1 () (Seq Int))
(declare-fun $t6@@9 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t2@@2 () Int)
(declare-fun _$t0@@12 () Int)
(declare-fun _$t1@@9 () Int)
(declare-fun _$t3@@1 () (Seq Int))
(declare-fun $t8@0@@3 () Int)
(declare-fun $t14@@3 () Bool)
(declare-fun $t8@@7 () Int)
(declare-fun $t13@@1 () Bool)
(declare-fun $t11@@2 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun $t5@0@@1 () Bool)
(declare-fun $t12@@2 () Bool)
(declare-fun inline$$Not$0$dst@1@@3 () Bool)
(declare-fun |inline$$1_Vector_is_empty'u8'$0$b@1@@1| () Bool)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_assert_payment_ok$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 313903) (let ((L8_correct@@2  (and (=> (= (ControlFlow 0 233670) (- 0 315030)) (or (or (or (or (or (or (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= (seq.len _$t4@@1) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (let ((payee_compliance_key@@13 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@13) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@13 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2))))))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))) (=> (or (or (or (or (or (or (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= (seq.len _$t4@@1) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (let ((payee_compliance_key@@14 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@14) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@14 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2))))))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9))))) (=> (= (ControlFlow 0 233670) (- 0 315218)) (or (or (or (or (or (or (and (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (= 5 $t8@0@@3)) (and (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t8@0@@3))) (and (and (= (seq.len _$t4@@1) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (= 8 $t8@0@@3))) (and (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0)) (= 1 $t8@0@@3))) (and (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0)) (= 1 $t8@0@@3))) (and (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (let ((payee_compliance_key@@15 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@15) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@15 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2)))))) (= 7 $t8@0@@3))) (and (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) (= 5 $t8@0@@3))))))))
(let ((anon18_Then_correct@@1  (=> $t14@@3 (=> (and (and (or (or (or (and (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0) (= 1 $t8@@7)) (and (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0) (= 1 $t8@@7))) (and (not (let ((payee_compliance_key@@16 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@16) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@16 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2))))) (= 7 $t8@@7))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9))) (= 5 $t8@@7))) (= $t8@@7 $t8@@7)) (and (= $t8@0@@3 $t8@@7) (= (ControlFlow 0 233114) 233670))) L8_correct@@2))))
(let ((anon16_Then_correct@@2  (=> $t13@@1 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t8@@7)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t8@@7))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t8@@7))) (= $t8@@7 $t8@@7)) (and (= $t8@0@@3 $t8@@7) (= (ControlFlow 0 233732) 233670))) L8_correct@@2))))
(let ((L6_correct@@1  (and (=> (= (ControlFlow 0 232918) (- 0 314805)) (not (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (not (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 232918) (- 0 314824)) (not (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 232918) (- 0 314843)) (not (and (= (seq.len _$t4@@1) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (=> (not (and (= (seq.len _$t4@@1) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (=> (= (ControlFlow 0 232918) (- 0 314866)) (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (=> (= (ControlFlow 0 232918) (- 0 314903)) (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (=> (= (ControlFlow 0 232918) (- 0 314940)) (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (let ((payee_compliance_key@@17 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@17) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@17 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2)))))))) (=> (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (let ((payee_compliance_key@@18 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@18) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@18 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2))))))) (=> (= (ControlFlow 0 232918) (- 0 314979)) (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9))))))))))))))))))))
(let ((anon18_Else_correct@@1  (=> (and (not $t14@@3) (= (ControlFlow 0 233002) 232918)) L6_correct@@1)))
(let ((anon17_Then_correct@@2  (=> (and $t5@0@@1 (= $t14@@3  (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0)) (not (let ((payee_compliance_key@@19 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@19) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@19 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))) (and (=> (= (ControlFlow 0 232994) 233114) anon18_Then_correct@@1) (=> (= (ControlFlow 0 232994) 233002) anon18_Else_correct@@1)))))
(let ((anon17_Else_correct@@2  (=> (and (not $t5@0@@1) (= (ControlFlow 0 232652) 232918)) L6_correct@@1)))
(let ((anon16_Else_correct@@2  (=> (and (and (not $t13@@1) (= $t12@@2  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@9))))))))) (and (= $t12@@2 $t12@@2) (= $t5@0@@1 $t12@@2))) (and (=> (= (ControlFlow 0 232644) 232994) anon17_Then_correct@@2) (=> (= (ControlFlow 0 232644) 232652) anon17_Else_correct@@2)))))
(let ((anon15_Else_correct@@2  (=> (not inline$$Not$0$dst@1@@3) (=> (and (= $t11@@2 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= $t13@@1  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (and (=> (= (ControlFlow 0 232604) 233732) anon16_Then_correct@@2) (=> (= (ControlFlow 0 232604) 232644) anon16_Else_correct@@2))))))
(let ((anon15_Then_correct@@2  (=> inline$$Not$0$dst@1@@3 (=> (and (= true true) (= $t5@0@@1 true)) (and (=> (= (ControlFlow 0 233750) 232994) anon17_Then_correct@@2) (=> (= (ControlFlow 0 233750) 232652) anon17_Else_correct@@2))))))
(let ((inline$$Not$0$anon0_correct@@3  (=> (= inline$$Not$0$dst@1@@3  (not |inline$$1_Vector_is_empty'u8'$0$b@1@@1|)) (and (=> (= (ControlFlow 0 232548) 233750) anon15_Then_correct@@2) (=> (= (ControlFlow 0 232548) 232604) anon15_Else_correct@@2)))))
(let ((anon14_Else_correct@@3  (=> (and (not false) (= (ControlFlow 0 232554) 232548)) inline$$Not$0$anon0_correct@@3)))
(let ((anon14_Then_correct@@3 true))
(let ((|inline$$1_Vector_is_empty'u8'$0$anon0_correct@@1|  (=> (= |inline$$1_Vector_is_empty'u8'$0$b@1@@1| (= (seq.len _$t4@@1) 0)) (and (=> (= (ControlFlow 0 232504) 233764) anon14_Then_correct@@3) (=> (= (ControlFlow 0 232504) 232554) anon14_Else_correct@@3)))))
(let ((anon0$1_correct@@12  (=> (and (and (forall ((addr@@95 Int) ) (!  (=> (|$IsValid'address'| addr@@95) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149582| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@95) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13999:22|
 :skolemid |288|
)) (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149673| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@96) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13999:222|
 :skolemid |289|
))) (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149764| |$1_Diem_Preburn'#0'_$memory|) addr@@97) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.13999:423|
 :skolemid |290|
))) (=> (and (and (and (and (and (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149991| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@98) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.14003:22|
 :skolemid |291|
)) (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150090| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@99) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.14003:227|
 :skolemid |292|
))) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150189| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@100) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.14003:433|
 :skolemid |293|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (and (forall ((child_addr@@1 Int) ) (!  (=> (|$IsValid'address'| child_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@1)))))
 :qid |DualAttestationandybpl.14011:20|
 :skolemid |294|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1@@19 Int) ) (!  (=> (|$IsValid'address'| addr1@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@19) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@19)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@19)) 2)))))
 :qid |DualAttestationandybpl.14019:20|
 :skolemid |295|
)) (|$IsValid'address'| _$t0@@12)))) (and (and (and (and (|$IsValid'address'| _$t1@@9) (|$IsValid'u64'| _$t2@@2)) (and (|$IsValid'vec'u8''| _$t3@@1) (|$IsValid'vec'u8''| _$t4@@1))) (and (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@24)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@24) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@24)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@24) 10000000000))))
 :qid |DualAttestationandybpl.14037:20|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@24))
)) (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@25)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@25))
 :qid |DualAttestationandybpl.14041:20|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@25))
))) (and (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@26)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@26))
 :qid |DualAttestationandybpl.14045:20|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@26))
)) (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@27)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@27))
 :qid |DualAttestationandybpl.14049:20|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@27))
))))) (and (and (and (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@28)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@28))
 :qid |DualAttestationandybpl.14053:20|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@28))
)) (= $t6@@9 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= _$t0@@12 _$t0@@12) (= _$t1@@9 _$t1@@9))) (and (and (= _$t2@@2 _$t2@@2) (= _$t3@@1 _$t3@@1)) (and (= _$t4@@1 _$t4@@1) (= (ControlFlow 0 232510) 232504)))))) |inline$$1_Vector_is_empty'u8'$0$anon0_correct@@1|))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_91856| stream@@13) 0) (forall ((v@@54 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@13) v@@54) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 232040) 232510)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (= (ControlFlow 0 313903) 232040) inline$$InitEventStore$0$anon0_correct@@12)))
anon0_correct@@12))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun inline$$1_Signature_ed25519_verify$0$res@1 () Bool)
(declare-fun _$t1@@10 () Int)
(declare-fun _$t2@@3 () (Seq Int))
(declare-fun _$t0@@13 () Int)
(declare-fun _$t3@@2 () (Seq Int))
(declare-fun _$t4@@2 () Int)
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
(declare-fun inline$$Not$0$dst@1@@4 () Bool)
(declare-fun $t28 () Int)
(declare-fun |inline$$1_Vector_is_empty'u8'$0$b@1@@2| () Bool)
(declare-fun $t24@@0 () Bool)
(declare-fun $t22 () Int)
(declare-fun $t19@0 () Bool)
(declare-fun $t21 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_assert_signature_is_valid$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 315473) (let ((anon35_Then_correct@@0  (=> inline$$1_Signature_ed25519_verify$0$res@1 (and (=> (= (ControlFlow 0 235301) (- 0 316348)) (not (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0))) (=> (not (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0)) (and (=> (= (ControlFlow 0 235301) (- 0 316363)) (not (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0))) (=> (not (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0)) (and (=> (= (ControlFlow 0 235301) (- 0 316378)) (not (not (let ((payee_compliance_key@@20 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))))
 (and (and (= (seq.len _$t2@@3) 64) (not (= (seq.len payee_compliance_key@@20) 0))) ($1_Signature_$ed25519_verify _$t2@@3 payee_compliance_key@@20 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2))))))) (=> (not (not (let ((payee_compliance_key@@21 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))))
 (and (and (= (seq.len _$t2@@3) 64) (not (= (seq.len payee_compliance_key@@21) 0))) ($1_Signature_$ed25519_verify _$t2@@3 payee_compliance_key@@21 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2)))))) (and (=> (= (ControlFlow 0 235301) (- 0 316395)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) (and (=> (= (ControlFlow 0 235301) (- 0 316410)) (forall ((addr1@@20 Int) ) (!  (=> (|$IsValid'address'| addr1@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@20)))
 :qid |DualAttestationandybpl.14794:15|
 :skolemid |306|
))) (=> (forall ((addr1@@21 Int) ) (!  (=> (|$IsValid'address'| addr1@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@21)))
 :qid |DualAttestationandybpl.14794:15|
 :skolemid |306|
)) (and (=> (= (ControlFlow 0 235301) (- 0 316435)) (forall ((addr1@@22 Int) ) (!  (=> (|$IsValid'address'| addr1@@22) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@22)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@22))))
 :qid |DualAttestationandybpl.14799:15|
 :skolemid |307|
))) (=> (forall ((addr1@@23 Int) ) (!  (=> (|$IsValid'address'| addr1@@23) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@23)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@23))))
 :qid |DualAttestationandybpl.14799:15|
 :skolemid |307|
)) (and (=> (= (ControlFlow 0 235301) (- 0 316464)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 235301) (- 0 316481)) (forall ((addr1@@24 Int) ) (!  (=> (|$IsValid'address'| addr1@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@24) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@24)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@24)))))
 :qid |DualAttestationandybpl.14809:15|
 :skolemid |308|
))) (=> (forall ((addr1@@25 Int) ) (!  (=> (|$IsValid'address'| addr1@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@25) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@25)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@25)))))
 :qid |DualAttestationandybpl.14809:15|
 :skolemid |308|
)) (=> (= (ControlFlow 0 235301) (- 0 316517)) (forall ((addr1@@26 Int) ) (!  (=> (|$IsValid'address'| addr1@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@26) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@26)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@26)))))
 :qid |DualAttestationandybpl.14814:15|
 :skolemid |309|
))))))))))))))))))))))
(let ((anon34_Then_correct@@0 true))
(let ((anon32_Then_correct@@0 true))
(let ((anon29_Then_correct@@0 true))
(let ((L9_correct  (and (=> (= (ControlFlow 0 234549) (- 0 316604)) (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0)) (not (let ((payee_compliance_key@@22 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))))
 (and (and (= (seq.len _$t2@@3) 64) (not (= (seq.len payee_compliance_key@@22) 0))) ($1_Signature_$ed25519_verify _$t2@@3 payee_compliance_key@@22 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10))))) (=> (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0)) (not (let ((payee_compliance_key@@23 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))))
 (and (and (= (seq.len _$t2@@3) 64) (not (= (seq.len payee_compliance_key@@23) 0))) ($1_Signature_$ed25519_verify _$t2@@3 payee_compliance_key@@23 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) (=> (= (ControlFlow 0 234549) (- 0 316652)) (or (or (or (and (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0) (= 1 $t17@0@@0)) (and (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0) (= 1 $t17@0@@0))) (and (not (let ((payee_compliance_key@@24 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))))
 (and (and (= (seq.len _$t2@@3) 64) (not (= (seq.len payee_compliance_key@@24) 0))) ($1_Signature_$ed25519_verify _$t2@@3 payee_compliance_key@@24 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2))))) (= 7 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10))) (= 5 $t17@0@@0))))))))
(let ((anon35_Else_correct@@0  (=> (and (and (not inline$$1_Signature_ed25519_verify$0$res@1) (= $t39 $t39)) (and (= $t17@0@@0 $t39) (= (ControlFlow 0 235071) 234549))) L9_correct)))
(let ((anon34_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t39) (= $t39 7)) (and (= $t39 $t39) (= inline$$1_Signature_ed25519_verify$0$res@1 inline$$1_Signature_ed25519_verify$0$res@1))) (and (=> (= (ControlFlow 0 235055) 235301) anon35_Then_correct@@0) (=> (= (ControlFlow 0 235055) 235071) anon35_Else_correct@@0))))))
(let ((inline$$1_Signature_ed25519_verify$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_verify$0$res@1 ($1_Signature_$ed25519_verify _$t2@@3 $t23@@1 $t36)) (and (=> (= (ControlFlow 0 235009) 235315) anon34_Then_correct@@0) (=> (= (ControlFlow 0 235009) 235055) anon34_Else_correct@@0)))))
(let ((anon33_Then_correct@@0  (=> inline$$Not$1$dst@1 (=> (and (and (|$IsValid'vec'u8''| $t36) (= $t36 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2))) (and (= $t36 $t36) (= (ControlFlow 0 235015) 235009))) inline$$1_Signature_ed25519_verify$0$anon0_correct))))
(let ((anon33_Else_correct@@0  (=> (and (and (not inline$$Not$1$dst@1) (= $t35 $t35)) (and (= $t17@0@@0 $t35) (= (ControlFlow 0 234931) 234549))) L9_correct)))
(let ((anon32_Else$1_correct  (=> (|$IsValid'u64'| 6) (=> (and (and (|$IsValid'u64'| $t35) (= $t35 1)) (and (= $t35 $t35) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 234915) 235015) anon33_Then_correct@@0) (=> (= (ControlFlow 0 234915) 234931) anon33_Else_correct@@0))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_Vector_is_empty'u8'$1$b@1|)) (= (ControlFlow 0 234875) 234915)) anon32_Else$1_correct)))
(let ((anon32_Else_correct@@0  (=> (and (not false) (= (ControlFlow 0 234881) 234875)) inline$$Not$1$anon0_correct)))
(let ((|inline$$1_Vector_is_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u8'$1$b@1| (= (seq.len $t30) 0)) (and (=> (= (ControlFlow 0 234831) 235329) anon32_Then_correct@@0) (=> (= (ControlFlow 0 234831) 234881) anon32_Else_correct@@0)))))
(let ((anon31_Else_correct@@0  (=> (not $t31) (=> (and (and (|$IsValid'vec'u8''| $t30) (= $t30 (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $t29)))) (and (= $t30 $t30) (= (ControlFlow 0 234837) 234831))) |inline$$1_Vector_is_empty'u8'$1$anon0_correct|))))
(let ((anon31_Then_correct@@0  (=> $t31 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t29)) (= 5 $t17)) (= $t17 $t17)) (and (= $t17@0@@0 $t17) (= (ControlFlow 0 235357) 234549))) L9_correct))))
(let ((anon30_Then_correct@@0  (=> (and (and inline$$Not$0$dst@1@@4 (|$IsValid'address'| $t29)) (and (= $t29 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)) (= $t31  (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t29))))) (and (=> (= (ControlFlow 0 234771) 235357) anon31_Then_correct@@0) (=> (= (ControlFlow 0 234771) 234837) anon31_Else_correct@@0)))))
(let ((anon30_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@4) (= $t28 $t28)) (and (= $t17@0@@0 $t28) (= (ControlFlow 0 234739) 234549))) L9_correct)))
(let ((anon29_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t28) (= $t28 1)) (and (= $t28 $t28) (= inline$$Not$0$dst@1@@4 inline$$Not$0$dst@1@@4))) (and (=> (= (ControlFlow 0 234723) 234771) anon30_Then_correct@@0) (=> (= (ControlFlow 0 234723) 234739) anon30_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@4  (=> (and (= inline$$Not$0$dst@1@@4  (not |inline$$1_Vector_is_empty'u8'$0$b@1@@2|)) (= (ControlFlow 0 234683) 234723)) anon29_Else$1_correct)))
(let ((anon29_Else_correct@@0  (=> (and (not false) (= (ControlFlow 0 234689) 234683)) inline$$Not$0$anon0_correct@@4)))
(let ((|inline$$1_Vector_is_empty'u8'$0$anon0_correct@@2|  (=> (= |inline$$1_Vector_is_empty'u8'$0$b@1@@2| (= (seq.len $t23@@1) 0)) (and (=> (= (ControlFlow 0 234639) 235371) anon29_Then_correct@@0) (=> (= (ControlFlow 0 234639) 234689) anon29_Else_correct@@0)))))
(let ((anon28_Else_correct@@0  (=> (not $t24@@0) (=> (and (and (|$IsValid'vec'u8''| $t23@@1) (= $t23@@1 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $t22)))) (and (= $t23@@1 $t23@@1) (= (ControlFlow 0 234645) 234639))) |inline$$1_Vector_is_empty'u8'$0$anon0_correct@@2|))))
(let ((anon28_Then_correct@@0  (=> $t24@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t22)) (= 5 $t17)) (= $t17 $t17)) (and (= $t17@0@@0 $t17) (= (ControlFlow 0 235399) 234549))) L9_correct))))
(let ((anon27_Then_correct@@0  (=> (and (and $t19@0 (|$IsValid'address'| $t22)) (and (= $t22 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)) (= $t24@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t22))))) (and (=> (= (ControlFlow 0 234581) 235399) anon28_Then_correct@@0) (=> (= (ControlFlow 0 234581) 234645) anon28_Else_correct@@0)))))
(let ((anon27_Else_correct@@0  (=> (and (and (not $t19@0) (= $t21 $t21)) (and (= $t17@0@@0 $t21) (= (ControlFlow 0 234373) 234549))) L9_correct)))
(let ((anon26_Else_correct@@0  (=> (and (and (and (not false) (|$IsValid'u64'| 64)) (and (= $t19@0 (= |inline$$1_Vector_length'u8'$0$l@1| 64)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t21) (= $t21 7)) (and (= $t21 $t21) (= $t19@0 $t19@0)))) (and (=> (= (ControlFlow 0 234357) 234581) anon27_Then_correct@@0) (=> (= (ControlFlow 0 234357) 234373) anon27_Else_correct@@0)))))
(let ((anon26_Then_correct@@0 true))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t2@@3)) (and (=> (= (ControlFlow 0 234299) 235413) anon26_Then_correct@@0) (=> (= (ControlFlow 0 234299) 234357) anon26_Else_correct@@0)))))
(let ((anon0$1_correct@@13  (=> (and (and (and (and (forall ((child_addr@@2 Int) ) (!  (=> (|$IsValid'address'| child_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@2)))))
 :qid |DualAttestationandybpl.14356:20|
 :skolemid |301|
)) (forall ((addr1@@27 Int) ) (!  (=> (|$IsValid'address'| addr1@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@27) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@27)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@27)) 2)))))
 :qid |DualAttestationandybpl.14360:20|
 :skolemid |302|
))) (and (|$IsValid'address'| _$t0@@13) (|$IsValid'address'| _$t1@@10))) (and (and (|$IsValid'vec'u8''| _$t2@@3) (|$IsValid'vec'u8''| _$t3@@2)) (and (|$IsValid'u64'| _$t4@@2) (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@29)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@29))
 :qid |DualAttestationandybpl.14378:20|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@29))
))))) (and (and (and (forall (($a_0@@30 Int) ) (! (let (($rsc@@30 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@30)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@30))
 :qid |DualAttestationandybpl.14382:20|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@30))
)) (forall (($a_0@@31 Int) ) (! (let (($rsc@@31 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@31)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@31))
 :qid |DualAttestationandybpl.14386:20|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@31))
))) (and (= _$t0@@13 _$t0@@13) (= _$t1@@10 _$t1@@10))) (and (and (= _$t2@@3 _$t2@@3) (= _$t3@@2 _$t3@@2)) (and (= _$t4@@2 _$t4@@2) (= (ControlFlow 0 234305) 234299))))) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((inline$$InitEventStore$0$anon0_correct@@13  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@15 T@$1_Event_EventHandle) ) (! (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@15)))
 (and (= (|l#Multiset_91856| stream@@14) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@14) v@@55) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 234069) 234305)) anon0$1_correct@@13)))
(let ((anon0_correct@@13  (=> (= (ControlFlow 0 315473) 234069) inline$$InitEventStore$0$anon0_correct@@13)))
anon0_correct@@13)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $t8@0@@4 () (Seq Int))
(declare-fun $t7@1@@0 () T@$1_DualAttestation_Credential)
(declare-fun _$t0@@14 () Int)
(declare-fun $t6@0@@1 () Int)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t7@@3 () T@$1_DualAttestation_Credential)
(declare-fun $t7@0@@0 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t3@0@@0 () Bool)
(declare-fun $t5@@8 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_base_url$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 316746) (let ((anon12_Else_correct@@2  (=> (not $abort_flag@0@@3) (=> (and (= $t8@0@@4 (|$base_url#$1_DualAttestation_Credential| $t7@1@@0)) (= $t8@0@@4 $t8@0@@4)) (and (=> (= (ControlFlow 0 236002) (- 0 317070)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@14)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@14))) (and (=> (= (ControlFlow 0 236002) (- 0 317081)) (= $t8@0@@4 (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@14)))) (=> (= $t8@0@@4 (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@14))) (and (=> (= (ControlFlow 0 236002) (- 0 317094)) (forall ((addr1@@28 Int) ) (!  (=> (|$IsValid'address'| addr1@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@28)))
 :qid |DualAttestationandybpl.14970:15|
 :skolemid |312|
))) (=> (forall ((addr1@@29 Int) ) (!  (=> (|$IsValid'address'| addr1@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@29)))
 :qid |DualAttestationandybpl.14970:15|
 :skolemid |312|
)) (and (=> (= (ControlFlow 0 236002) (- 0 317119)) (forall ((addr1@@30 Int) ) (!  (=> (|$IsValid'address'| addr1@@30) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@30)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@30))))
 :qid |DualAttestationandybpl.14975:15|
 :skolemid |313|
))) (=> (forall ((addr1@@31 Int) ) (!  (=> (|$IsValid'address'| addr1@@31) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@31)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@31))))
 :qid |DualAttestationandybpl.14975:15|
 :skolemid |313|
)) (and (=> (= (ControlFlow 0 236002) (- 0 317148)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 236002) (- 0 317165)) (forall ((addr1@@32 Int) ) (!  (=> (|$IsValid'address'| addr1@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@32) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@32)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@32)))))
 :qid |DualAttestationandybpl.14985:15|
 :skolemid |314|
))) (=> (forall ((addr1@@33 Int) ) (!  (=> (|$IsValid'address'| addr1@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@33) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@33)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@33)))))
 :qid |DualAttestationandybpl.14985:15|
 :skolemid |314|
)) (=> (= (ControlFlow 0 236002) (- 0 317201)) (forall ((addr1@@34 Int) ) (!  (=> (|$IsValid'address'| addr1@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@34) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@34)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@34)))))
 :qid |DualAttestationandybpl.14990:15|
 :skolemid |315|
)))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 235790) (- 0 317023)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@14))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@14)) (=> (= (ControlFlow 0 235790) (- 0 317029)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@14)) (= 5 $t6@0@@1)))))))
(let ((anon12_Then_correct@@2  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t6@0@@1 $abort_code@1@@3) (= (ControlFlow 0 236016) 235790))) L3_correct@@1)))
(let ((anon11_Then$1_correct@@1  (=> (= $t7@1@@0 $t7@@3) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 236068) 236016) anon12_Then_correct@@2) (=> (= (ControlFlow 0 236068) 236002) anon12_Else_correct@@2))))))
(let ((anon11_Then_correct@@7  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@14)) (= (ControlFlow 0 236066) 236068)) anon11_Then$1_correct@@1)))
(let ((anon11_Else_correct@@7  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@14) (=> (and (and (= $t7@0@@0 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@14)) (= $t7@1@@0 $t7@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 235808) 236016) anon12_Then_correct@@2) (=> (= (ControlFlow 0 235808) 236002) anon12_Else_correct@@2))))))
(let ((anon10_Then_correct@@6  (=> $t3@0@@0 (and (=> (= (ControlFlow 0 235794) 236066) anon11_Then_correct@@7) (=> (= (ControlFlow 0 235794) 235808) anon11_Else_correct@@7)))))
(let ((anon10_Else_correct@@6  (=> (and (and (not $t3@0@@0) (= $t5@@8 $t5@@8)) (and (= $t6@0@@1 $t5@@8) (= (ControlFlow 0 235758) 235790))) L3_correct@@1)))
(let ((anon0$1_correct@@14  (=> (and (forall ((addr1@@35 Int) ) (!  (=> (|$IsValid'address'| addr1@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@35) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@35)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@35)) 2)))))
 :qid |DualAttestationandybpl.14867:20|
 :skolemid |310|
)) (|$IsValid'address'| _$t0@@14)) (=> (and (and (and (forall (($a_0@@32 Int) ) (! (let (($rsc@@32 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@32)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@32))
 :qid |DualAttestationandybpl.14874:20|
 :skolemid |311|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@32))
)) (= _$t0@@14 _$t0@@14)) (and (= $t3@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@14)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@8) (= $t5@@8 5)) (and (= $t5@@8 $t5@@8) (= $t3@0@@0 $t3@0@@0)))) (and (=> (= (ControlFlow 0 235742) 235794) anon10_Then_correct@@6) (=> (= (ControlFlow 0 235742) 235758) anon10_Else_correct@@6))))))
(let ((inline$$InitEventStore$0$anon0_correct@@14  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@16 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@16)))
 (and (= (|l#Multiset_91856| stream@@15) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@15) v@@56) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 235621) 235742)) anon0$1_correct@@14)))
(let ((anon0_correct@@14  (=> (= (ControlFlow 0 316746) 235621) inline$$InitEventStore$0$anon0_correct@@14)))
anon0_correct@@14))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $t8@0@@5 () (Seq Int))
(declare-fun $t7@1@@1 () T@$1_DualAttestation_Credential)
(declare-fun _$t0@@15 () Int)
(declare-fun $t6@0@@2 () Int)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t7@@4 () T@$1_DualAttestation_Credential)
(declare-fun $t7@0@@1 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t3@0@@1 () Bool)
(declare-fun $t5@@9 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_compliance_public_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 317245) (let ((anon12_Else_correct@@3  (=> (not $abort_flag@0@@4) (=> (and (= $t8@0@@5 (|$compliance_public_key#$1_DualAttestation_Credential| $t7@1@@1)) (= $t8@0@@5 $t8@0@@5)) (and (=> (= (ControlFlow 0 236547) (- 0 317569)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@15)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@15))) (and (=> (= (ControlFlow 0 236547) (- 0 317580)) (= $t8@0@@5 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@15)))) (=> (= $t8@0@@5 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@15))) (and (=> (= (ControlFlow 0 236547) (- 0 317591)) (forall ((addr1@@36 Int) ) (!  (=> (|$IsValid'address'| addr1@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@36) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@36)))
 :qid |DualAttestationandybpl.15147:15|
 :skolemid |318|
))) (=> (forall ((addr1@@37 Int) ) (!  (=> (|$IsValid'address'| addr1@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@37) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@37)))
 :qid |DualAttestationandybpl.15147:15|
 :skolemid |318|
)) (and (=> (= (ControlFlow 0 236547) (- 0 317616)) (forall ((addr1@@38 Int) ) (!  (=> (|$IsValid'address'| addr1@@38) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@38)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@38))))
 :qid |DualAttestationandybpl.15152:15|
 :skolemid |319|
))) (=> (forall ((addr1@@39 Int) ) (!  (=> (|$IsValid'address'| addr1@@39) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@39)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@39))))
 :qid |DualAttestationandybpl.15152:15|
 :skolemid |319|
)) (and (=> (= (ControlFlow 0 236547) (- 0 317645)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 236547) (- 0 317662)) (forall ((addr1@@40 Int) ) (!  (=> (|$IsValid'address'| addr1@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@40) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@40)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@40)))))
 :qid |DualAttestationandybpl.15162:15|
 :skolemid |320|
))) (=> (forall ((addr1@@41 Int) ) (!  (=> (|$IsValid'address'| addr1@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@41) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@41)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@41)))))
 :qid |DualAttestationandybpl.15162:15|
 :skolemid |320|
)) (=> (= (ControlFlow 0 236547) (- 0 317698)) (forall ((addr1@@42 Int) ) (!  (=> (|$IsValid'address'| addr1@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@42) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@42)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@42)))))
 :qid |DualAttestationandybpl.15167:15|
 :skolemid |321|
)))))))))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 236337) (- 0 317522)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@15))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@15)) (=> (= (ControlFlow 0 236337) (- 0 317528)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@15)) (= 5 $t6@0@@2)))))))
(let ((anon12_Then_correct@@3  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t6@0@@2 $abort_code@1@@4) (= (ControlFlow 0 236561) 236337))) L3_correct@@2)))
(let ((anon11_Then$1_correct@@2  (=> (= $t7@1@@1 $t7@@4) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 236613) 236561) anon12_Then_correct@@3) (=> (= (ControlFlow 0 236613) 236547) anon12_Else_correct@@3))))))
(let ((anon11_Then_correct@@8  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@15)) (= (ControlFlow 0 236611) 236613)) anon11_Then$1_correct@@2)))
(let ((anon11_Else_correct@@8  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@15) (=> (and (and (= $t7@0@@1 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@15)) (= $t7@1@@1 $t7@0@@1)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 236355) 236561) anon12_Then_correct@@3) (=> (= (ControlFlow 0 236355) 236547) anon12_Else_correct@@3))))))
(let ((anon10_Then_correct@@7  (=> $t3@0@@1 (and (=> (= (ControlFlow 0 236341) 236611) anon11_Then_correct@@8) (=> (= (ControlFlow 0 236341) 236355) anon11_Else_correct@@8)))))
(let ((anon10_Else_correct@@7  (=> (and (and (not $t3@0@@1) (= $t5@@9 $t5@@9)) (and (= $t6@0@@2 $t5@@9) (= (ControlFlow 0 236305) 236337))) L3_correct@@2)))
(let ((anon0$1_correct@@15  (=> (and (forall ((addr1@@43 Int) ) (!  (=> (|$IsValid'address'| addr1@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@43) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@43)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@43)) 2)))))
 :qid |DualAttestationandybpl.15044:20|
 :skolemid |316|
)) (|$IsValid'address'| _$t0@@15)) (=> (and (and (and (forall (($a_0@@33 Int) ) (! (let (($rsc@@33 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@33)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@33))
 :qid |DualAttestationandybpl.15051:20|
 :skolemid |317|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@33))
)) (= _$t0@@15 _$t0@@15)) (and (= $t3@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@15)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@9) (= $t5@@9 5)) (and (= $t5@@9 $t5@@9) (= $t3@0@@1 $t3@0@@1)))) (and (=> (= (ControlFlow 0 236289) 236341) anon10_Then_correct@@7) (=> (= (ControlFlow 0 236289) 236305) anon10_Else_correct@@7))))))
(let ((inline$$InitEventStore$0$anon0_correct@@15  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@17 T@$1_Event_EventHandle) ) (! (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@17)))
 (and (= (|l#Multiset_91856| stream@@16) 0) (forall ((v@@57 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@16) v@@57) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 236168) 236289)) anon0$1_correct@@15)))
(let ((anon0_correct@@15  (=> (= (ControlFlow 0 317245) 236168) inline$$InitEventStore$0$anon0_correct@@15)))
anon0_correct@@15))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t4@@6 () Bool)
(declare-fun _$t0@@16 () Int)
(declare-fun $t5@@10 () Int)
(declare-fun $t1@0 () Int)
(declare-fun $t3@@6 () Int)
(declare-fun $t2@@6 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_credential_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 317742) (let ((anon7_Then_correct  (=> $t4@@6 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@16)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@16))) (= 7 $t5@@10)) (and (= $t5@@10 $t5@@10) (= (ControlFlow 0 237128) (- 0 317968)))) false))))
(let ((L3_correct@@3  (=> (= $t1@0 $t1@0) (and (=> (= (ControlFlow 0 237026) (- 0 318025)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 237026) (- 0 318032)) (= $t1@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@16) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@16) _$t0@@16 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@16))) _$t0@@16))) (=> (= $t1@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@16) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@16) _$t0@@16 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@16))) _$t0@@16)) (and (=> (= (ControlFlow 0 237026) (- 0 318045)) (forall ((addr1@@44 Int) ) (!  (=> (|$IsValid'address'| addr1@@44) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@44) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@44)))
 :qid |DualAttestationandybpl.15341:15|
 :skolemid |325|
))) (=> (forall ((addr1@@45 Int) ) (!  (=> (|$IsValid'address'| addr1@@45) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@45) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@45)))
 :qid |DualAttestationandybpl.15341:15|
 :skolemid |325|
)) (and (=> (= (ControlFlow 0 237026) (- 0 318070)) (forall ((addr1@@46 Int) ) (!  (=> (|$IsValid'address'| addr1@@46) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@46)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@46))))
 :qid |DualAttestationandybpl.15346:15|
 :skolemid |326|
))) (=> (forall ((addr1@@47 Int) ) (!  (=> (|$IsValid'address'| addr1@@47) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@47)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@47))))
 :qid |DualAttestationandybpl.15346:15|
 :skolemid |326|
)) (and (=> (= (ControlFlow 0 237026) (- 0 318099)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 237026) (- 0 318116)) (forall ((addr1@@48 Int) ) (!  (=> (|$IsValid'address'| addr1@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@48) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@48)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@48)))))
 :qid |DualAttestationandybpl.15356:15|
 :skolemid |327|
))) (=> (forall ((addr1@@49 Int) ) (!  (=> (|$IsValid'address'| addr1@@49) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@49) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@49)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@49)))))
 :qid |DualAttestationandybpl.15356:15|
 :skolemid |327|
)) (=> (= (ControlFlow 0 237026) (- 0 318152)) (forall ((addr1@@50 Int) ) (!  (=> (|$IsValid'address'| addr1@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@50) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@50)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@50)))))
 :qid |DualAttestationandybpl.15361:15|
 :skolemid |328|
))))))))))))))))))
(let ((anon7_Else_correct  (=> (and (not $t4@@6) (|$IsValid'address'| $t3@@6)) (=> (and (and (= $t3@@6 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@16) _$t0@@16 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@16)))) (= $t3@@6 $t3@@6)) (and (= $t1@0 $t3@@6) (= (ControlFlow 0 237082) 237026))) L3_correct@@3))))
(let ((anon6_Then_correct  (=> (and $t2@@6 (= $t4@@6  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@16)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@16))))) (and (=> (= (ControlFlow 0 237052) 237128) anon7_Then_correct) (=> (= (ControlFlow 0 237052) 237082) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (and (not $t2@@6) (= _$t0@@16 _$t0@@16)) (and (= $t1@0 _$t0@@16) (= (ControlFlow 0 236848) 237026))) L3_correct@@3)))
(let ((anon0$1_correct@@16  (=> (and (forall ((child_addr@@3 Int) ) (!  (=> (|$IsValid'address'| child_addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@3)))))
 :qid |DualAttestationandybpl.15215:20|
 :skolemid |322|
)) (|$IsValid'address'| _$t0@@16)) (=> (and (and (forall (($a_0@@34 Int) ) (! (let (($rsc@@34 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@34)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@34))
 :qid |DualAttestationandybpl.15222:20|
 :skolemid |323|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@34))
)) (forall (($a_0@@35 Int) ) (! (let (($rsc@@35 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@35)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@35))
 :qid |DualAttestationandybpl.15226:20|
 :skolemid |324|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@35))
))) (and (= _$t0@@16 _$t0@@16) (= $t2@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@16)))) (and (=> (= (ControlFlow 0 236834) 237052) anon6_Then_correct) (=> (= (ControlFlow 0 236834) 236848) anon6_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@16  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_91856| stream@@17) 0) (forall ((v@@58 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@17) v@@58) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 236713) 236834)) anon0$1_correct@@16)))
(let ((anon0_correct@@16  (=> (= (ControlFlow 0 317742) 236713) inline$$InitEventStore$0$anon0_correct@@16)))
anon0_correct@@16)))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t3@2 () (Seq Int))
(declare-fun |inline$$1_Vector_append'u8'$2$m'@1| () T@$Mutation_112184)
(declare-fun $t9@0 () T@$Mutation_112184)
(declare-fun $t10@0@@0 () (Seq Int))
(declare-fun $t3@1 () (Seq Int))
(declare-fun |inline$$1_Vector_append'u8'$1$m'@1| () T@$Mutation_112184)
(declare-fun $t7@0@@2 () T@$Mutation_112184)
(declare-fun call1formal@res@0 () (Seq Int))
(declare-fun $t3@0@@2 () (Seq Int))
(declare-fun |inline$$1_Vector_append'u8'$0$m'@1| () T@$Mutation_112184)
(declare-fun _$t2@@4 () Int)
(declare-fun $t4@0 () T@$Mutation_112184)
(declare-fun call1formal@res@0@@0 () (Seq Int))
(declare-fun _$t0@@17 () Int)
(declare-fun _$t1@@11 () (Seq Int))
(declare-fun $t4@@7 () T@$Mutation_112184)
(declare-fun $t7@@5 () T@$Mutation_112184)
(declare-fun $t9@@8 () T@$Mutation_112184)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_dual_attestation_message$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 318199) (let ((anon16_Else_correct@@3  (=> (not false) (=> (and (= $t3@2 (|v#$Mutation_112184| |inline$$1_Vector_append'u8'$2$m'@1|)) (= $t3@2 $t3@2)) (and (=> (= (ControlFlow 0 237782) (- 0 318738)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 237782) (- 0 318745)) (forall ((addr1@@51 Int) ) (!  (=> (|$IsValid'address'| addr1@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@51) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@51)))
 :qid |DualAttestationandybpl.15536:15|
 :skolemid |329|
))) (=> (forall ((addr1@@52 Int) ) (!  (=> (|$IsValid'address'| addr1@@52) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@52) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@52)))
 :qid |DualAttestationandybpl.15536:15|
 :skolemid |329|
)) (and (=> (= (ControlFlow 0 237782) (- 0 318770)) (forall ((addr1@@53 Int) ) (!  (=> (|$IsValid'address'| addr1@@53) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@53)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@53))))
 :qid |DualAttestationandybpl.15541:15|
 :skolemid |330|
))) (=> (forall ((addr1@@54 Int) ) (!  (=> (|$IsValid'address'| addr1@@54) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@54)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@54))))
 :qid |DualAttestationandybpl.15541:15|
 :skolemid |330|
)) (and (=> (= (ControlFlow 0 237782) (- 0 318799)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 237782) (- 0 318816)) (forall ((addr1@@55 Int) ) (!  (=> (|$IsValid'address'| addr1@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@55) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@55)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@55)))))
 :qid |DualAttestationandybpl.15551:15|
 :skolemid |331|
))) (=> (forall ((addr1@@56 Int) ) (!  (=> (|$IsValid'address'| addr1@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@56) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@56)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@56)))))
 :qid |DualAttestationandybpl.15551:15|
 :skolemid |331|
)) (=> (= (ControlFlow 0 237782) (- 0 318852)) (forall ((addr1@@57 Int) ) (!  (=> (|$IsValid'address'| addr1@@57) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@57) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@57)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@57)))))
 :qid |DualAttestationandybpl.15556:15|
 :skolemid |332|
)))))))))))))))))
(let ((anon16_Then_correct@@3 true))
(let ((|inline$$1_Vector_append'u8'$2$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$2$m'@1| ($Mutation_112184 (|l#$Mutation_112184| $t9@0) (|p#$Mutation_112184| $t9@0) (seq.++ (|v#$Mutation_112184| $t9@0) $t10@0@@0))) (and (=> (= (ControlFlow 0 237598) 237796) anon16_Then_correct@@3) (=> (= (ControlFlow 0 237598) 237782) anon16_Else_correct@@3)))))
(let ((anon15_Else_correct@@3  (=> (and (not false) (= $t3@1 (|v#$Mutation_112184| |inline$$1_Vector_append'u8'$1$m'@1|))) (=> (and (and (= $t9@0 ($Mutation_112184 ($Local 3) (as seq.empty (Seq Int)) $t3@1)) (= $t10@0@@0 (seq.++ (seq.++ (seq.++ (seq.++ (seq.++ (seq.++ (seq.++ (seq.unit 64) (seq.unit 64)) (seq.unit 36)) (seq.unit 36)) (seq.++ (seq.++ (seq.++ (seq.unit 68) (seq.unit 73)) (seq.unit 69)) (seq.unit 77))) (seq.++ (seq.++ (seq.++ (seq.unit 95) (seq.unit 65)) (seq.unit 84)) (seq.unit 84))) (seq.++ (seq.++ (seq.++ (seq.unit 69) (seq.unit 83)) (seq.unit 84)) (seq.unit 36))) (seq.++ (seq.++ (seq.unit 36) (seq.unit 64)) (seq.unit 64))))) (and (|$IsValid'vec'u8''| $t10@0@@0) (= (ControlFlow 0 237604) 237598))) |inline$$1_Vector_append'u8'$2$anon0_correct|))))
(let ((anon15_Then_correct@@3 true))
(let ((|inline$$1_Vector_append'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$1$m'@1| ($Mutation_112184 (|l#$Mutation_112184| $t7@0@@2) (|p#$Mutation_112184| $t7@0@@2) (seq.++ (|v#$Mutation_112184| $t7@0@@2) call1formal@res@0))) (and (=> (= (ControlFlow 0 237457) 237820) anon15_Then_correct@@3) (=> (= (ControlFlow 0 237457) 237604) anon15_Else_correct@@3)))))
(let ((anon14_Else_correct@@4  (=> (and (not false) (= (ControlFlow 0 237463) 237457)) |inline$$1_Vector_append'u8'$1$anon0_correct|)))
(let ((anon14_Then_correct@@4 true))
(let ((anon13_Else_correct@@1  (=> (and (and (not false) (= $t3@0@@2 (|v#$Mutation_112184| |inline$$1_Vector_append'u8'$0$m'@1|))) (and (= $t7@0@@2 ($Mutation_112184 ($Local 3) (as seq.empty (Seq Int)) $t3@0@@2)) (= call1formal@res@0 (|$1_BCS_serialize'u64'| _$t2@@4)))) (and (=> (= (ControlFlow 0 237400) 237834) anon14_Then_correct@@4) (=> (= (ControlFlow 0 237400) 237463) anon14_Else_correct@@4)))))
(let ((anon13_Then_correct@@1 true))
(let ((|inline$$1_Vector_append'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$0$m'@1| ($Mutation_112184 (|l#$Mutation_112184| $t4@0) (|p#$Mutation_112184| $t4@0) (seq.++ (|v#$Mutation_112184| $t4@0) call1formal@res@0@@0))) (and (=> (= (ControlFlow 0 237370) 237848) anon13_Then_correct@@1) (=> (= (ControlFlow 0 237370) 237400) anon13_Else_correct@@1)))))
(let ((anon12_Else_correct@@4  (=> (and (not false) (= (ControlFlow 0 237376) 237370)) |inline$$1_Vector_append'u8'$0$anon0_correct|)))
(let ((anon12_Then_correct@@4 true))
(let ((anon0$1_correct@@17  (=> (|$IsValid'address'| _$t0@@17) (=> (and (and (and (|$IsValid'vec'u8''| _$t1@@11) (|$IsValid'u64'| _$t2@@4)) (and (= _$t0@@17 _$t0@@17) (= _$t1@@11 _$t1@@11))) (and (and (= _$t2@@4 _$t2@@4) (= _$t1@@11 _$t1@@11)) (and (= $t4@0 ($Mutation_112184 ($Local 3) (as seq.empty (Seq Int)) _$t1@@11)) (= call1formal@res@0@@0 (|$1_BCS_serialize'address'| _$t0@@17))))) (and (=> (= (ControlFlow 0 237313) 237862) anon12_Then_correct@@4) (=> (= (ControlFlow 0 237313) 237376) anon12_Else_correct@@4))))))
(let ((inline$$InitEventStore$0$anon0_correct@@17  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@19 T@$1_Event_EventHandle) ) (! (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@19)))
 (and (= (|l#Multiset_91856| stream@@18) 0) (forall ((v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@18) v@@59) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 237243) 237313)) anon0$1_correct@@17)))
(let ((anon0_correct@@17  (=> (and (and (= (seq.len (|p#$Mutation_112184| $t4@@7)) 0) (= (seq.len (|p#$Mutation_112184| $t7@@5)) 0)) (and (= (seq.len (|p#$Mutation_112184| $t9@@8)) 0) (= (ControlFlow 0 237253) 237243))) inline$$InitEventStore$0$anon0_correct@@17)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 318199) 237253) anon0_correct@@17)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t8@@8 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t2@@5 () Int)
(declare-fun $t11@@3 () Int)
(declare-fun $t27 () Bool)
(declare-fun _$t1@@12 () Int)
(declare-fun $t25@@0 () Bool)
(declare-fun _$t0@@18 () Int)
(declare-fun $t14@@4 () Bool)
(declare-fun $t12@@3 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun $t10@@1 () Bool)
(declare-fun $t18@0@@0 () Bool)
(declare-fun $t4@0@@0 () Bool)
(declare-fun $t26 () Int)
(declare-fun $t28@0 () Bool)
(declare-fun $t24@@1 () Int)
(declare-fun $t3@0@@3 () Bool)
(declare-fun $t21@@0 () Bool)
(declare-fun $t22@@0 () Bool)
(declare-fun $t19@0@@0 () Bool)
(declare-fun inline$$Not$0$dst@1@@5 () Bool)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun $t13@@2 () Int)
(declare-fun $t9@@9 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_dual_attestation_required$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 318913) (let ((L15_correct  (and (=> (= (ControlFlow 0 238946) (- 0 319943)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 238946) (- 0 319966)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@3)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t11@@3))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@3))))))))
(let ((anon30_Then_correct@@1  (=> $t27 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@12)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@12))) (= 7 $t11@@3)) (and (= $t11@@3 $t11@@3) (= (ControlFlow 0 238862) 238946))) L15_correct))))
(let ((anon29_Then_correct@@1  (=> $t25@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@18)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@18))) (= 7 $t11@@3)) (and (= $t11@@3 $t11@@3) (= (ControlFlow 0 238984) 238946))) L15_correct))))
(let ((anon24_Then_correct@@0  (=> (and (and $t14@@4 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t11@@3)) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@3)))) (and (= $t11@@3 $t11@@3) (= (ControlFlow 0 239094) 238946))) L15_correct)))
(let ((anon23_Then_correct@@0  (=> $t10@@1 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@3)) (and (= $t11@@3 $t11@@3) (= (ControlFlow 0 239120) 238946))) L15_correct))))
(let ((L14_correct  (and (=> (= (ControlFlow 0 238714) (- 0 319888)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 238714) (- 0 319898)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 238714) (- 0 319908)) (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 238714) (- 0 319922)) (= $t18@0@@0  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@18 _$t1@@12))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@18)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@12))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@18) _$t0@@18 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@18))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@12) _$t1@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@12)))))))))))))))))
(let ((L13_correct  (=> (= $t4@0@@0 $t4@0@@0) (=> (and (= $t18@0@@0 $t4@0@@0) (= (ControlFlow 0 238654) 238714)) L14_correct))))
(let ((anon30_Else_correct@@1  (=> (not $t27) (=> (and (|$IsValid'address'| $t26) (= $t26 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@12) _$t1@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@12))))) (=> (and (and (= $t28@0  (not (= $t24@@1 $t26))) (= $t28@0 $t28@0)) (and (= $t4@0@@0 $t28@0) (= (ControlFlow 0 238824) 238654))) L13_correct)))))
(let ((anon29_Else_correct@@1  (=> (and (and (not $t25@@0) (|$IsValid'address'| $t24@@1)) (and (= $t24@@1 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@18) _$t0@@18 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@18)))) (= $t27  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@12)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@12)))))) (and (=> (= (ControlFlow 0 238784) 238862) anon30_Then_correct@@1) (=> (= (ControlFlow 0 238784) 238824) anon30_Else_correct@@1)))))
(let ((anon28_Then_correct@@1  (=> (and $t3@0@@3 (= $t25@@0  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@18)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@18))))) (and (=> (= (ControlFlow 0 238740) 238984) anon29_Then_correct@@1) (=> (= (ControlFlow 0 238740) 238784) anon29_Else_correct@@1)))))
(let ((anon28_Else_correct@@1  (=> (and (and (not $t3@0@@3) (= false false)) (and (= $t4@0@@0 false) (= (ControlFlow 0 238642) 238654))) L13_correct)))
(let ((anon27_Else_correct@@1  (=> (not $t21@@0) (=> (and (= false false) (= $t3@0@@3 false)) (and (=> (= (ControlFlow 0 238620) 238740) anon28_Then_correct@@1) (=> (= (ControlFlow 0 238620) 238642) anon28_Else_correct@@1))))))
(let ((anon27_Then_correct@@1  (=> (and (and $t21@@0 (= $t22@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@12)))) (and (= $t22@@0 $t22@@0) (= $t3@0@@3 $t22@@0))) (and (=> (= (ControlFlow 0 239012) 238740) anon28_Then_correct@@1) (=> (= (ControlFlow 0 239012) 238642) anon28_Else_correct@@1)))))
(let ((anon26_Else_correct@@1  (=> (and (not $t19@0@@0) (= $t21@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@18)))) (and (=> (= (ControlFlow 0 238600) 239012) anon27_Then_correct@@1) (=> (= (ControlFlow 0 238600) 238620) anon27_Else_correct@@1)))))
(let ((anon26_Then_correct@@1  (=> (and (and $t19@0@@0 (= false false)) (and (= $t18@0@@0 false) (= (ControlFlow 0 239030) 238714))) L14_correct)))
(let ((anon25_Else_correct@@0  (=> (and (not inline$$Not$0$dst@1@@5) (= $t19@0@@0 (= _$t0@@18 _$t1@@12))) (and (=> (= (ControlFlow 0 238578) 239030) anon26_Then_correct@@1) (=> (= (ControlFlow 0 238578) 238600) anon26_Else_correct@@1)))))
(let ((anon25_Then_correct@@0  (=> (and (and inline$$Not$0$dst@1@@5 (= false false)) (and (= $t18@0@@0 false) (= (ControlFlow 0 239048) 238714))) L14_correct)))
(let ((inline$$Not$0$anon0_correct@@5  (=> (= inline$$Not$0$dst@1@@5  (not inline$$Ge$0$dst@1)) (and (=> (= (ControlFlow 0 238558) 239048) anon25_Then_correct@@0) (=> (= (ControlFlow 0 238558) 238578) anon25_Else_correct@@0)))))
(let ((anon24_Else$1_correct@@0  (=> (and (= inline$$Ge$0$dst@1 inline$$Ge$0$dst@1) (= (ControlFlow 0 238564) 238558)) inline$$Not$0$anon0_correct@@5)))
(let ((inline$$Ge$0$anon0_correct  (=> (and (= inline$$Ge$0$dst@1 (>= $t13@@2 $t9@@9)) (= (ControlFlow 0 238512) 238564)) anon24_Else$1_correct@@0)))
(let ((anon24_Else_correct@@0  (=> (not $t14@@4) (=> (and (and (|$IsValid'u64'| $t13@@2) (= $t13@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))))) (and (= $t13@@2 $t13@@2) (= (ControlFlow 0 238518) 238512))) inline$$Ge$0$anon0_correct))))
(let ((anon23_Else_correct@@0  (=> (and (not $t10@@1) (|$IsValid'u64'| $t9@@9)) (=> (and (and (= $t9@@9 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (= $t9@@9 $t9@@9)) (and (= $t12@@3 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t14@@4  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615))))) (and (=> (= (ControlFlow 0 238444) 239094) anon24_Then_correct@@0) (=> (= (ControlFlow 0 238444) 238518) anon24_Else_correct@@0))))))
(let ((anon0$1_correct@@18  (=> (and (and (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149582| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@101) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.15632:22|
 :skolemid |333|
)) (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149673| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@102) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.15632:222|
 :skolemid |334|
))) (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149764| |$1_Diem_Preburn'#0'_$memory|) addr@@103) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.15632:423|
 :skolemid |335|
))) (=> (and (and (and (and (and (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149991| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@104) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.15636:22|
 :skolemid |336|
)) (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150090| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@105) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.15636:227|
 :skolemid |337|
))) (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150189| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@106) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.15636:433|
 :skolemid |338|
))) (and (forall ((child_addr@@4 Int) ) (!  (=> (|$IsValid'address'| child_addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@4)))))
 :qid |DualAttestationandybpl.15640:20|
 :skolemid |339|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (and (|$IsValid'address'| _$t0@@18) (|$IsValid'address'| _$t1@@12)) (and (|$IsValid'u64'| _$t2@@5) (forall (($a_0@@36 Int) ) (! (let (($rsc@@36 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@36)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@36) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@36)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@36) 10000000000))))
 :qid |DualAttestationandybpl.15657:20|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@36))
))))) (and (and (and (forall (($a_0@@37 Int) ) (! (let (($rsc@@37 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@37)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@37))
 :qid |DualAttestationandybpl.15661:20|
 :skolemid |341|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@37))
)) (forall (($a_0@@38 Int) ) (! (let (($rsc@@38 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@38)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@38))
 :qid |DualAttestationandybpl.15665:20|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@38))
))) (and (forall (($a_0@@39 Int) ) (! (let (($rsc@@39 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@39)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@39))
 :qid |DualAttestationandybpl.15669:20|
 :skolemid |343|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@39))
)) (= $t8@@8 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (and (= _$t0@@18 _$t0@@18) (= _$t1@@12 _$t1@@12)) (and (= _$t2@@5 _$t2@@5) (= $t10@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 238384) 239120) anon23_Then_correct@@0) (=> (= (ControlFlow 0 238384) 238444) anon23_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@18  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@20 T@$1_Event_EventHandle) ) (! (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@20)))
 (and (= (|l#Multiset_91856| stream@@19) 0) (forall ((v@@60 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@19) v@@60) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 238027) 238384)) anon0$1_correct@@18)))
(let ((anon0_correct@@18  (=> (= (ControlFlow 0 318913) 238027) inline$$InitEventStore$0$anon0_correct@@18)))
anon0_correct@@18))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t8@@9 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t2@@6 () Int)
(declare-fun $t11@@4 () Int)
(declare-fun $t27@@0 () Bool)
(declare-fun _$t1@@13 () Int)
(declare-fun $t25@@1 () Bool)
(declare-fun _$t0@@19 () Int)
(declare-fun $t14@@5 () Bool)
(declare-fun $t12@@4 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun $t10@@2 () Bool)
(declare-fun $t18@0@@1 () Bool)
(declare-fun $t4@0@@1 () Bool)
(declare-fun $t26@@0 () Int)
(declare-fun $t28@0@@0 () Bool)
(declare-fun $t24@@2 () Int)
(declare-fun $t3@0@@4 () Bool)
(declare-fun $t21@@1 () Bool)
(declare-fun $t22@@1 () Bool)
(declare-fun $t19@0@@1 () Bool)
(declare-fun inline$$Not$0$dst@1@@6 () Bool)
(declare-fun inline$$Ge$0$dst@1@@0 () Bool)
(declare-fun $t13@@3 () Int)
(declare-fun $t9@@10 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_dual_attestation_required$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 320030) (let ((L15_correct@@0  (and (=> (= (ControlFlow 0 240181) (- 0 321060)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 240181) (- 0 321083)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t11@@4))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@4))))))))
(let ((anon30_Then_correct@@2  (=> $t27@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@13)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@13))) (= 7 $t11@@4)) (and (= $t11@@4 $t11@@4) (= (ControlFlow 0 240097) 240181))) L15_correct@@0))))
(let ((anon29_Then_correct@@2  (=> $t25@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@19)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@19))) (= 7 $t11@@4)) (and (= $t11@@4 $t11@@4) (= (ControlFlow 0 240219) 240181))) L15_correct@@0))))
(let ((anon24_Then_correct@@1  (=> (and (and $t14@@5 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t11@@4)) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@4)))) (and (= $t11@@4 $t11@@4) (= (ControlFlow 0 240329) 240181))) L15_correct@@0)))
(let ((anon23_Then_correct@@1  (=> $t10@@2 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@4)) (and (= $t11@@4 $t11@@4) (= (ControlFlow 0 240355) 240181))) L15_correct@@0))))
(let ((L14_correct@@0  (and (=> (= (ControlFlow 0 239949) (- 0 321005)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 239949) (- 0 321015)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 239949) (- 0 321025)) (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 239949) (- 0 321039)) (= $t18@0@@1  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@19 _$t1@@13))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@19)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@13))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@19) _$t0@@19 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@19))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@13) _$t1@@13 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@13)))))))))))))))))
(let ((L13_correct@@0  (=> (= $t4@0@@1 $t4@0@@1) (=> (and (= $t18@0@@1 $t4@0@@1) (= (ControlFlow 0 239889) 239949)) L14_correct@@0))))
(let ((anon30_Else_correct@@2  (=> (not $t27@@0) (=> (and (|$IsValid'address'| $t26@@0) (= $t26@@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@13) _$t1@@13 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@13))))) (=> (and (and (= $t28@0@@0  (not (= $t24@@2 $t26@@0))) (= $t28@0@@0 $t28@0@@0)) (and (= $t4@0@@1 $t28@0@@0) (= (ControlFlow 0 240059) 239889))) L13_correct@@0)))))
(let ((anon29_Else_correct@@2  (=> (and (and (not $t25@@1) (|$IsValid'address'| $t24@@2)) (and (= $t24@@2 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@19) _$t0@@19 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@19)))) (= $t27@@0  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@13)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@13)))))) (and (=> (= (ControlFlow 0 240019) 240097) anon30_Then_correct@@2) (=> (= (ControlFlow 0 240019) 240059) anon30_Else_correct@@2)))))
(let ((anon28_Then_correct@@2  (=> (and $t3@0@@4 (= $t25@@1  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@19)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@19))))) (and (=> (= (ControlFlow 0 239975) 240219) anon29_Then_correct@@2) (=> (= (ControlFlow 0 239975) 240019) anon29_Else_correct@@2)))))
(let ((anon28_Else_correct@@2  (=> (and (and (not $t3@0@@4) (= false false)) (and (= $t4@0@@1 false) (= (ControlFlow 0 239877) 239889))) L13_correct@@0)))
(let ((anon27_Else_correct@@2  (=> (not $t21@@1) (=> (and (= false false) (= $t3@0@@4 false)) (and (=> (= (ControlFlow 0 239855) 239975) anon28_Then_correct@@2) (=> (= (ControlFlow 0 239855) 239877) anon28_Else_correct@@2))))))
(let ((anon27_Then_correct@@2  (=> (and (and $t21@@1 (= $t22@@1  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@13)))) (and (= $t22@@1 $t22@@1) (= $t3@0@@4 $t22@@1))) (and (=> (= (ControlFlow 0 240247) 239975) anon28_Then_correct@@2) (=> (= (ControlFlow 0 240247) 239877) anon28_Else_correct@@2)))))
(let ((anon26_Else_correct@@2  (=> (and (not $t19@0@@1) (= $t21@@1  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@19)))) (and (=> (= (ControlFlow 0 239835) 240247) anon27_Then_correct@@2) (=> (= (ControlFlow 0 239835) 239855) anon27_Else_correct@@2)))))
(let ((anon26_Then_correct@@2  (=> (and (and $t19@0@@1 (= false false)) (and (= $t18@0@@1 false) (= (ControlFlow 0 240265) 239949))) L14_correct@@0)))
(let ((anon25_Else_correct@@1  (=> (and (not inline$$Not$0$dst@1@@6) (= $t19@0@@1 (= _$t0@@19 _$t1@@13))) (and (=> (= (ControlFlow 0 239813) 240265) anon26_Then_correct@@2) (=> (= (ControlFlow 0 239813) 239835) anon26_Else_correct@@2)))))
(let ((anon25_Then_correct@@1  (=> (and (and inline$$Not$0$dst@1@@6 (= false false)) (and (= $t18@0@@1 false) (= (ControlFlow 0 240283) 239949))) L14_correct@@0)))
(let ((inline$$Not$0$anon0_correct@@6  (=> (= inline$$Not$0$dst@1@@6  (not inline$$Ge$0$dst@1@@0)) (and (=> (= (ControlFlow 0 239793) 240283) anon25_Then_correct@@1) (=> (= (ControlFlow 0 239793) 239813) anon25_Else_correct@@1)))))
(let ((anon24_Else$1_correct@@1  (=> (and (= inline$$Ge$0$dst@1@@0 inline$$Ge$0$dst@1@@0) (= (ControlFlow 0 239799) 239793)) inline$$Not$0$anon0_correct@@6)))
(let ((inline$$Ge$0$anon0_correct@@0  (=> (and (= inline$$Ge$0$dst@1@@0 (>= $t13@@3 $t9@@10)) (= (ControlFlow 0 239747) 239799)) anon24_Else$1_correct@@1)))
(let ((anon24_Else_correct@@1  (=> (not $t14@@5) (=> (and (and (|$IsValid'u64'| $t13@@3) (= $t13@@3 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))))) (and (= $t13@@3 $t13@@3) (= (ControlFlow 0 239753) 239747))) inline$$Ge$0$anon0_correct@@0))))
(let ((anon23_Else_correct@@1  (=> (and (not $t10@@2) (|$IsValid'u64'| $t9@@10)) (=> (and (and (= $t9@@10 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (= $t9@@10 $t9@@10)) (and (= $t12@@4 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= $t14@@5  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615))))) (and (=> (= (ControlFlow 0 239679) 240329) anon24_Then_correct@@1) (=> (= (ControlFlow 0 239679) 239753) anon24_Else_correct@@1))))))
(let ((anon0$1_correct@@19  (=> (and (and (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149582| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@107) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16135:22|
 :skolemid |344|
)) (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149673| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@108) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16135:222|
 :skolemid |345|
))) (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149764| |$1_Diem_Preburn'#0'_$memory|) addr@@109) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16135:423|
 :skolemid |346|
))) (=> (and (and (and (and (and (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149991| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@110) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16139:22|
 :skolemid |347|
)) (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150090| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@111) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16139:227|
 :skolemid |348|
))) (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150189| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@112) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16139:433|
 :skolemid |349|
))) (and (forall ((child_addr@@5 Int) ) (!  (=> (|$IsValid'address'| child_addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@5)))))
 :qid |DualAttestationandybpl.16143:20|
 :skolemid |350|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (and (|$IsValid'address'| _$t0@@19) (|$IsValid'address'| _$t1@@13)) (and (|$IsValid'u64'| _$t2@@6) (forall (($a_0@@40 Int) ) (! (let (($rsc@@40 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@40)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@40) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@40)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@40) 10000000000))))
 :qid |DualAttestationandybpl.16160:20|
 :skolemid |351|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@40))
))))) (and (and (and (forall (($a_0@@41 Int) ) (! (let (($rsc@@41 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@41)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@41))
 :qid |DualAttestationandybpl.16164:20|
 :skolemid |352|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@41))
)) (forall (($a_0@@42 Int) ) (! (let (($rsc@@42 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@42)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@42))
 :qid |DualAttestationandybpl.16168:20|
 :skolemid |353|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@42))
))) (and (forall (($a_0@@43 Int) ) (! (let (($rsc@@43 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@43)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@43))
 :qid |DualAttestationandybpl.16172:20|
 :skolemid |354|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@43))
)) (= $t8@@9 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (and (= _$t0@@19 _$t0@@19) (= _$t1@@13 _$t1@@13)) (and (= _$t2@@6 _$t2@@6) (= $t10@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 239619) 240355) anon23_Then_correct@@1) (=> (= (ControlFlow 0 239619) 239679) anon23_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@19  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@21 T@$1_Event_EventHandle) ) (! (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@21)))
 (and (= (|l#Multiset_91856| stream@@20) 0) (forall ((v@@61 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@20) v@@61) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 239262) 239619)) anon0$1_correct@@19)))
(let ((anon0_correct@@19  (=> (= (ControlFlow 0 320030) 239262) inline$$InitEventStore$0$anon0_correct@@19)))
anon0_correct@@19))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t8@@10 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun _$t2@@7 () Int)
(declare-fun $t11@@5 () Int)
(declare-fun $t27@@1 () Bool)
(declare-fun _$t1@@14 () Int)
(declare-fun $t25@@2 () Bool)
(declare-fun _$t0@@20 () Int)
(declare-fun $t14@@6 () Bool)
(declare-fun $t12@@5 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun $t10@@3 () Bool)
(declare-fun $t18@0@@2 () Bool)
(declare-fun $t4@0@@2 () Bool)
(declare-fun $t26@@1 () Int)
(declare-fun $t28@0@@1 () Bool)
(declare-fun $t24@@3 () Int)
(declare-fun $t3@0@@5 () Bool)
(declare-fun $t21@@2 () Bool)
(declare-fun $t22@@2 () Bool)
(declare-fun $t19@0@@2 () Bool)
(declare-fun inline$$Not$0$dst@1@@7 () Bool)
(declare-fun inline$$Ge$0$dst@1@@1 () Bool)
(declare-fun $t13@@4 () Int)
(declare-fun $t9@@11 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_dual_attestation_required$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 321147) (let ((L15_correct@@1  (and (=> (= (ControlFlow 0 241426) (- 0 322187)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 241426) (- 0 322210)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t11@@5))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@5))))))))
(let ((anon30_Then_correct@@3  (=> $t27@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@14)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@14))) (= 7 $t11@@5)) (and (= $t11@@5 $t11@@5) (= (ControlFlow 0 241342) 241426))) L15_correct@@1))))
(let ((anon29_Then_correct@@3  (=> $t25@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@20)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@20))) (= 7 $t11@@5)) (and (= $t11@@5 $t11@@5) (= (ControlFlow 0 241464) 241426))) L15_correct@@1))))
(let ((anon24_Then_correct@@2  (=> (and (and $t14@@6 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t11@@5)) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@5)))) (and (= $t11@@5 $t11@@5) (= (ControlFlow 0 241574) 241426))) L15_correct@@1)))
(let ((anon23_Then_correct@@2  (=> $t10@@3 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@5)) (and (= $t11@@5 $t11@@5) (= (ControlFlow 0 241600) 241426))) L15_correct@@1))))
(let ((L14_correct@@1  (and (=> (= (ControlFlow 0 241194) (- 0 322132)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 241194) (- 0 322142)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 241194) (- 0 322152)) (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 241194) (- 0 322166)) (= $t18@0@@2  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@20 _$t1@@14))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@20)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@14))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@20) _$t0@@20 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@20))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@14) _$t1@@14 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@14)))))))))))))))))
(let ((L13_correct@@1  (=> (= $t4@0@@2 $t4@0@@2) (=> (and (= $t18@0@@2 $t4@0@@2) (= (ControlFlow 0 241134) 241194)) L14_correct@@1))))
(let ((anon30_Else_correct@@3  (=> (not $t27@@1) (=> (and (|$IsValid'address'| $t26@@1) (= $t26@@1 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@14) _$t1@@14 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@14))))) (=> (and (and (= $t28@0@@1  (not (= $t24@@3 $t26@@1))) (= $t28@0@@1 $t28@0@@1)) (and (= $t4@0@@2 $t28@0@@1) (= (ControlFlow 0 241304) 241134))) L13_correct@@1)))))
(let ((anon29_Else_correct@@3  (=> (and (and (not $t25@@2) (|$IsValid'address'| $t24@@3)) (and (= $t24@@3 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@20) _$t0@@20 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@20)))) (= $t27@@1  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@14)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@14)))))) (and (=> (= (ControlFlow 0 241264) 241342) anon30_Then_correct@@3) (=> (= (ControlFlow 0 241264) 241304) anon30_Else_correct@@3)))))
(let ((anon28_Then_correct@@3  (=> (and $t3@0@@5 (= $t25@@2  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@20)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@20))))) (and (=> (= (ControlFlow 0 241220) 241464) anon29_Then_correct@@3) (=> (= (ControlFlow 0 241220) 241264) anon29_Else_correct@@3)))))
(let ((anon28_Else_correct@@3  (=> (and (and (not $t3@0@@5) (= false false)) (and (= $t4@0@@2 false) (= (ControlFlow 0 241122) 241134))) L13_correct@@1)))
(let ((anon27_Else_correct@@3  (=> (not $t21@@2) (=> (and (= false false) (= $t3@0@@5 false)) (and (=> (= (ControlFlow 0 241100) 241220) anon28_Then_correct@@3) (=> (= (ControlFlow 0 241100) 241122) anon28_Else_correct@@3))))))
(let ((anon27_Then_correct@@3  (=> (and (and $t21@@2 (= $t22@@2  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t1@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t1@@14)))) (and (= $t22@@2 $t22@@2) (= $t3@0@@5 $t22@@2))) (and (=> (= (ControlFlow 0 241492) 241220) anon28_Then_correct@@3) (=> (= (ControlFlow 0 241492) 241122) anon28_Else_correct@@3)))))
(let ((anon26_Else_correct@@3  (=> (and (not $t19@0@@2) (= $t21@@2  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) _$t0@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) _$t0@@20)))) (and (=> (= (ControlFlow 0 241080) 241492) anon27_Then_correct@@3) (=> (= (ControlFlow 0 241080) 241100) anon27_Else_correct@@3)))))
(let ((anon26_Then_correct@@3  (=> (and (and $t19@0@@2 (= false false)) (and (= $t18@0@@2 false) (= (ControlFlow 0 241510) 241194))) L14_correct@@1)))
(let ((anon25_Else_correct@@2  (=> (and (not inline$$Not$0$dst@1@@7) (= $t19@0@@2 (= _$t0@@20 _$t1@@14))) (and (=> (= (ControlFlow 0 241058) 241510) anon26_Then_correct@@3) (=> (= (ControlFlow 0 241058) 241080) anon26_Else_correct@@3)))))
(let ((anon25_Then_correct@@2  (=> (and (and inline$$Not$0$dst@1@@7 (= false false)) (and (= $t18@0@@2 false) (= (ControlFlow 0 241528) 241194))) L14_correct@@1)))
(let ((inline$$Not$0$anon0_correct@@7  (=> (= inline$$Not$0$dst@1@@7  (not inline$$Ge$0$dst@1@@1)) (and (=> (= (ControlFlow 0 241038) 241528) anon25_Then_correct@@2) (=> (= (ControlFlow 0 241038) 241058) anon25_Else_correct@@2)))))
(let ((anon24_Else$1_correct@@2  (=> (and (= inline$$Ge$0$dst@1@@1 inline$$Ge$0$dst@1@@1) (= (ControlFlow 0 241044) 241038)) inline$$Not$0$anon0_correct@@7)))
(let ((inline$$Ge$0$anon0_correct@@1  (=> (and (= inline$$Ge$0$dst@1@@1 (>= $t13@@4 $t9@@11)) (= (ControlFlow 0 240992) 241044)) anon24_Else$1_correct@@2)))
(let ((anon24_Else_correct@@2  (=> (not $t14@@6) (=> (and (and (|$IsValid'u64'| $t13@@4) (= $t13@@4 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))))) (and (= $t13@@4 $t13@@4) (= (ControlFlow 0 240998) 240992))) inline$$Ge$0$anon0_correct@@1))))
(let ((anon23_Else_correct@@2  (=> (and (not $t10@@3) (|$IsValid'u64'| $t9@@11)) (=> (and (and (= $t9@@11 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (= $t9@@11 $t9@@11)) (and (= $t12@@5 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= $t14@@6  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615))))) (and (=> (= (ControlFlow 0 240924) 241574) anon24_Then_correct@@2) (=> (= (ControlFlow 0 240924) 240998) anon24_Else_correct@@2))))))
(let ((anon0$1_correct@@20  (=> (and (and (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149582| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@113) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16638:22|
 :skolemid |355|
)) (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149673| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@114) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16638:222|
 :skolemid |356|
))) (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149764| |$1_Diem_Preburn'#0'_$memory|) addr@@115) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16638:423|
 :skolemid |357|
))) (=> (and (and (and (and (and (and (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149991| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@116) (|Select__T@[Int]Bool_| (|domain#$Memory_143949| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16642:22|
 :skolemid |358|
)) (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150090| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@117) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16642:227|
 :skolemid |359|
))) (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150189| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@118) (|Select__T@[Int]Bool_| (|domain#$Memory_144149| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DualAttestationandybpl.16642:433|
 :skolemid |360|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (forall ((child_addr@@6 Int) ) (!  (=> (|$IsValid'address'| child_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_161384| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) child_addr@@6)))))
 :qid |DualAttestationandybpl.16650:20|
 :skolemid |361|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (and (|$IsValid'address'| _$t0@@20) (|$IsValid'address'| _$t1@@14)) (and (|$IsValid'u64'| _$t2@@7) (forall (($a_0@@44 Int) ) (! (let (($rsc@@44 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@44)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@44) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@44)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@44) 10000000000))))
 :qid |DualAttestationandybpl.16667:20|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@44))
))))) (and (and (and (forall (($a_0@@45 Int) ) (! (let (($rsc@@45 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@45)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@45))
 :qid |DualAttestationandybpl.16671:20|
 :skolemid |363|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_161320| $1_VASP_ChildVASP_$memory) $a_0@@45))
)) (forall (($a_0@@46 Int) ) (! (let (($rsc@@46 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@46)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@46))
 :qid |DualAttestationandybpl.16675:20|
 :skolemid |364|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161384| $1_VASP_ParentVASP_$memory) $a_0@@46))
))) (and (forall (($a_0@@47 Int) ) (! (let (($rsc@@47 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@47)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@47))
 :qid |DualAttestationandybpl.16679:20|
 :skolemid |365|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@47))
)) (= $t8@@10 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (and (= _$t0@@20 _$t0@@20) (= _$t1@@14 _$t1@@14)) (and (= _$t2@@7 _$t2@@7) (= $t10@@3  (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 240864) 241600) anon23_Then_correct@@2) (=> (= (ControlFlow 0 240864) 240924) anon23_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@20  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@22 T@$1_Event_EventHandle) ) (! (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@22)))
 (and (= (|l#Multiset_91856| stream@@21) 0) (forall ((v@@62 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@21) v@@62) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 240497) 240864)) anon0$1_correct@@20)))
(let ((anon0_correct@@20  (=> (= (ControlFlow 0 321147) 240497) inline$$InitEventStore$0$anon0_correct@@20)))
anon0_correct@@20))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t8@0@@6 () Int)
(declare-fun $t7@1@@2 () T@$1_DualAttestation_Credential)
(declare-fun _$t0@@21 () Int)
(declare-fun $t6@0@@3 () Int)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $t7@@6 () T@$1_DualAttestation_Credential)
(declare-fun $t7@0@@3 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t3@0@@6 () Bool)
(declare-fun $t5@@11 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_expiration_date$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 322272) (let ((anon12_Else_correct@@5  (=> (not $abort_flag@0@@5) (=> (and (= $t8@0@@6 (|$expiration_date#$1_DualAttestation_Credential| $t7@1@@2)) (= $t8@0@@6 $t8@0@@6)) (and (=> (= (ControlFlow 0 242121) (- 0 322596)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@21)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@21))) (and (=> (= (ControlFlow 0 242121) (- 0 322607)) (= $t8@0@@6 (|$expiration_date#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@21)))) (=> (= $t8@0@@6 (|$expiration_date#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@21))) (and (=> (= (ControlFlow 0 242121) (- 0 322620)) (forall ((addr1@@58 Int) ) (!  (=> (|$IsValid'address'| addr1@@58) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@58) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@58)))
 :qid |DualAttestationandybpl.17218:15|
 :skolemid |368|
))) (=> (forall ((addr1@@59 Int) ) (!  (=> (|$IsValid'address'| addr1@@59) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@59) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@59)))
 :qid |DualAttestationandybpl.17218:15|
 :skolemid |368|
)) (and (=> (= (ControlFlow 0 242121) (- 0 322645)) (forall ((addr1@@60 Int) ) (!  (=> (|$IsValid'address'| addr1@@60) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@60)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@60))))
 :qid |DualAttestationandybpl.17223:15|
 :skolemid |369|
))) (=> (forall ((addr1@@61 Int) ) (!  (=> (|$IsValid'address'| addr1@@61) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@61)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@61))))
 :qid |DualAttestationandybpl.17223:15|
 :skolemid |369|
)) (and (=> (= (ControlFlow 0 242121) (- 0 322674)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 242121) (- 0 322691)) (forall ((addr1@@62 Int) ) (!  (=> (|$IsValid'address'| addr1@@62) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@62) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@62)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@62)))))
 :qid |DualAttestationandybpl.17233:15|
 :skolemid |370|
))) (=> (forall ((addr1@@63 Int) ) (!  (=> (|$IsValid'address'| addr1@@63) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@63) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@63)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@63)))))
 :qid |DualAttestationandybpl.17233:15|
 :skolemid |370|
)) (=> (= (ControlFlow 0 242121) (- 0 322727)) (forall ((addr1@@64 Int) ) (!  (=> (|$IsValid'address'| addr1@@64) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@64) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@64)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@64)))))
 :qid |DualAttestationandybpl.17238:15|
 :skolemid |371|
)))))))))))))))))))
(let ((L3_correct@@4  (and (=> (= (ControlFlow 0 241909) (- 0 322549)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@21))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@21)) (=> (= (ControlFlow 0 241909) (- 0 322555)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@21)) (= 5 $t6@0@@3)))))))
(let ((anon12_Then_correct@@5  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t6@0@@3 $abort_code@1@@5) (= (ControlFlow 0 242135) 241909))) L3_correct@@4)))
(let ((anon11_Then$1_correct@@3  (=> (= $t7@1@@2 $t7@@6) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 242187) 242135) anon12_Then_correct@@5) (=> (= (ControlFlow 0 242187) 242121) anon12_Else_correct@@5))))))
(let ((anon11_Then_correct@@9  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@21)) (= (ControlFlow 0 242185) 242187)) anon11_Then$1_correct@@3)))
(let ((anon11_Else_correct@@9  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@21) (=> (and (and (= $t7@0@@3 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@21)) (= $t7@1@@2 $t7@0@@3)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 241927) 242135) anon12_Then_correct@@5) (=> (= (ControlFlow 0 241927) 242121) anon12_Else_correct@@5))))))
(let ((anon10_Then_correct@@8  (=> $t3@0@@6 (and (=> (= (ControlFlow 0 241913) 242185) anon11_Then_correct@@9) (=> (= (ControlFlow 0 241913) 241927) anon11_Else_correct@@9)))))
(let ((anon10_Else_correct@@8  (=> (and (and (not $t3@0@@6) (= $t5@@11 $t5@@11)) (and (= $t6@0@@3 $t5@@11) (= (ControlFlow 0 241877) 241909))) L3_correct@@4)))
(let ((anon0$1_correct@@21  (=> (and (forall ((addr1@@65 Int) ) (!  (=> (|$IsValid'address'| addr1@@65) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@65) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@65)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@65)) 2)))))
 :qid |DualAttestationandybpl.17115:20|
 :skolemid |366|
)) (|$IsValid'address'| _$t0@@21)) (=> (and (and (and (forall (($a_0@@48 Int) ) (! (let (($rsc@@48 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@48)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@48))
 :qid |DualAttestationandybpl.17122:20|
 :skolemid |367|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@48))
)) (= _$t0@@21 _$t0@@21)) (and (= $t3@0@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) _$t0@@21)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@11) (= $t5@@11 5)) (and (= $t5@@11 $t5@@11) (= $t3@0@@6 $t3@0@@6)))) (and (=> (= (ControlFlow 0 241861) 241913) anon10_Then_correct@@8) (=> (= (ControlFlow 0 241861) 241877) anon10_Else_correct@@8))))))
(let ((inline$$InitEventStore$0$anon0_correct@@21  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@23 T@$1_Event_EventHandle) ) (! (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@23)))
 (and (= (|l#Multiset_91856| stream@@22) 0) (forall ((v@@63 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@22) v@@63) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 241740) 241861)) anon0$1_correct@@21)))
(let ((anon0_correct@@21  (=> (= (ControlFlow 0 322272) 241740) inline$$InitEventStore$0$anon0_correct@@21)))
anon0_correct@@21))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $t9@0@@0 () Int)
(declare-fun $t8@1 () T@$1_DualAttestation_Limit)
(declare-fun $t6@0@@4 () Int)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $t8@@11 () T@$1_DualAttestation_Limit)
(declare-fun $t8@0@@7 () T@$1_DualAttestation_Limit)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun $t3@0@@7 () Bool)
(declare-fun $t5@@12 () Int)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_get_cur_microdiem_limit$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 322770) (let ((anon12_Else_correct@@6  (=> (not $abort_flag@0@@6) (=> (and (= $t9@0@@0 (|$micro_xdx_limit#$1_DualAttestation_Limit| $t8@1)) (= $t9@0@@0 $t9@0@@0)) (and (=> (= (ControlFlow 0 242628) (- 0 323074)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 242628) (- 0 323084)) (= $t9@0@@0 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (= $t9@0@@0 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 242628) (- 0 323094)) (forall ((addr1@@66 Int) ) (!  (=> (|$IsValid'address'| addr1@@66) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@66) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@66)))
 :qid |DualAttestationandybpl.17395:15|
 :skolemid |373|
))) (=> (forall ((addr1@@67 Int) ) (!  (=> (|$IsValid'address'| addr1@@67) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@67) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@67)))
 :qid |DualAttestationandybpl.17395:15|
 :skolemid |373|
)) (and (=> (= (ControlFlow 0 242628) (- 0 323119)) (forall ((addr1@@68 Int) ) (!  (=> (|$IsValid'address'| addr1@@68) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@68)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@68))))
 :qid |DualAttestationandybpl.17400:15|
 :skolemid |374|
))) (=> (forall ((addr1@@69 Int) ) (!  (=> (|$IsValid'address'| addr1@@69) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@69)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@69))))
 :qid |DualAttestationandybpl.17400:15|
 :skolemid |374|
)) (and (=> (= (ControlFlow 0 242628) (- 0 323148)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 242628) (- 0 323165)) (forall ((addr1@@70 Int) ) (!  (=> (|$IsValid'address'| addr1@@70) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@70) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@70)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@70)))))
 :qid |DualAttestationandybpl.17410:15|
 :skolemid |375|
))) (=> (forall ((addr1@@71 Int) ) (!  (=> (|$IsValid'address'| addr1@@71) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@71) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@71)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@71)))))
 :qid |DualAttestationandybpl.17410:15|
 :skolemid |375|
)) (=> (= (ControlFlow 0 242628) (- 0 323201)) (forall ((addr1@@72 Int) ) (!  (=> (|$IsValid'address'| addr1@@72) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@72) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@72)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@72)))))
 :qid |DualAttestationandybpl.17415:15|
 :skolemid |376|
)))))))))))))))))))
(let ((L3_correct@@5  (and (=> (= (ControlFlow 0 242416) (- 0 323029)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (=> (= (ControlFlow 0 242416) (- 0 323034)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t6@0@@4)))))))
(let ((anon12_Then_correct@@6  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t6@0@@4 $abort_code@1@@6) (= (ControlFlow 0 242642) 242416))) L3_correct@@5)))
(let ((anon11_Then$1_correct@@4  (=> (= $t8@1 $t8@@11) (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 242694) 242642) anon12_Then_correct@@6) (=> (= (ControlFlow 0 242694) 242628) anon12_Else_correct@@6))))))
(let ((anon11_Then_correct@@10  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= (ControlFlow 0 242692) 242694)) anon11_Then$1_correct@@4)))
(let ((anon11_Else_correct@@10  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (=> (and (and (= $t8@0@@7 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= $t8@1 $t8@0@@7)) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 242440) 242642) anon12_Then_correct@@6) (=> (= (ControlFlow 0 242440) 242628) anon12_Else_correct@@6))))))
(let ((anon10_Then_correct@@9  (=> (and $t3@0@@7 (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 242426) 242692) anon11_Then_correct@@10) (=> (= (ControlFlow 0 242426) 242440) anon11_Else_correct@@10)))))
(let ((anon10_Else_correct@@9  (=> (and (and (not $t3@0@@7) (= $t5@@12 $t5@@12)) (and (= $t6@0@@4 $t5@@12) (= (ControlFlow 0 242388) 242416))) L3_correct@@5)))
(let ((anon0$1_correct@@22  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (=> (and (and (and (forall (($a_0@@49 Int) ) (! (let (($rsc@@49 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@49)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@49))
 :qid |DualAttestationandybpl.17294:20|
 :skolemid |372|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@49))
)) (|$IsValid'address'| 173345816)) (and (= $t3@0@@7 (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t5@@12) (= $t5@@12 5)) (and (= $t5@@12 $t5@@12) (= $t3@0@@7 $t3@0@@7)))) (and (=> (= (ControlFlow 0 242372) 242426) anon10_Then_correct@@9) (=> (= (ControlFlow 0 242372) 242388) anon10_Else_correct@@9))))))
(let ((inline$$InitEventStore$0$anon0_correct@@22  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@24 T@$1_Event_EventHandle) ) (! (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@24)))
 (and (= (|l#Multiset_91856| stream@@23) 0) (forall ((v@@64 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@23) v@@64) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 242276) 242372)) anon0$1_correct@@22)))
(let ((anon0_correct@@22  (=> (= (ControlFlow 0 322770) 242276) inline$$InitEventStore$0$anon0_correct@@22)))
anon0_correct@@22))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@1 () T@$Memory_127241)
(declare-fun $t5@@13 () Int)
(declare-fun $t6@@10 () Int)
(declare-fun $t7@@7 () Int)
(declare-fun _$t1@@15 () T@$signer)
(declare-fun _$t0@@22 () T@$signer)
(declare-fun $t8@@12 () Int)
(declare-fun $t9@@12 () Int)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $1_DualAttestation_Credential_$memory@0 () T@$Memory_127241)
(declare-fun |Store__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int T@$1_DualAttestation_Credential) |T@[Int]$1_DualAttestation_Credential|)
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DualAttestation_Credential_| ?x0 ?y1))) :weight 0)))
(declare-fun $t26@0 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun _$t2@@8 () (Seq Int))
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
(declare-fun inline$$Not$0$dst@1@@8 () Bool)
(declare-fun $t20@@0 () Int)
(declare-fun $t17@0@@1 () Bool)
(declare-fun $t15 () Bool)
(declare-fun $t16 () Int)
(declare-fun $t14@@7 () Int)
(declare-fun $t13@@5 () Int)
(declare-fun $t12@@6 () Bool)
(declare-fun $t10@@4 () Int)
(declare-fun $t11@@6 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_149322)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_149409)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_144602)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_144689)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_publish_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 323246) (let ((anon30_Else_correct@@4  (=> (not $abort_flag@0@@7) (and (=> (= (ControlFlow 0 244221) (- 0 324593)) (forall ((addr1@@73 Int) ) (!  (=> (|$IsValid'address'| addr1@@73) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@1) addr1@@73) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@73)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@73)) 2)))))
 :qid |DualAttestationandybpl.17771:15|
 :skolemid |386|
))) (=> (forall ((addr1@@74 Int) ) (!  (=> (|$IsValid'address'| addr1@@74) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@1) addr1@@74) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@74)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@74)) 2)))))
 :qid |DualAttestationandybpl.17771:15|
 :skolemid |386|
)) (and (=> (= (ControlFlow 0 244221) (- 0 324629)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t5@@13)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t5@@13))) (and (=> (= (ControlFlow 0 244221) (- 0 324641)) (not (and (not (= $t6@@10 5)) (not (= $t6@@10 2))))) (=> (not (and (not (= $t6@@10 5)) (not (= $t6@@10 2)))) (and (=> (= (ControlFlow 0 244221) (- 0 324664)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t7@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t7@@7))) (and (=> (= (ControlFlow 0 244221) (- 0 324676)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t7@@7)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t7@@7)) 1))) (and (=> (= (ControlFlow 0 244221) (- 0 324694)) (not (not (= (|$addr#$signer| _$t1@@15) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@15) 186537453))) (and (=> (= (ControlFlow 0 244221) (- 0 324708)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22))) (and (=> (= (ControlFlow 0 244221) (- 0 324719)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t8@@12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t8@@12))) (and (=> (= (ControlFlow 0 244221) (- 0 324731)) (not (and (not (= $t9@@12 5)) (not (= $t9@@12 2))))) (=> (not (and (not (= $t9@@12 5)) (not (= $t9@@12 2)))) (and (=> (= (ControlFlow 0 244221) (- 0 324754)) (forall ((addr1@@75 Int) ) (!  (=> (|$IsValid'address'| addr1@@75) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@75) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@1) addr1@@75)))
 :qid |DualAttestationandybpl.17820:15|
 :skolemid |387|
))) (=> (forall ((addr1@@76 Int) ) (!  (=> (|$IsValid'address'| addr1@@76) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@76) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@1) addr1@@76)))
 :qid |DualAttestationandybpl.17820:15|
 :skolemid |387|
)) (and (=> (= (ControlFlow 0 244221) (- 0 324778)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 244221) (- 0 324795)) (forall ((addr1@@77 Int) ) (!  (=> (|$IsValid'address'| addr1@@77) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@77) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@1) addr1@@77)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@77)))))
 :qid |DualAttestationandybpl.17830:15|
 :skolemid |388|
))) (=> (forall ((addr1@@78 Int) ) (!  (=> (|$IsValid'address'| addr1@@78) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@78) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@1) addr1@@78)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@78)))))
 :qid |DualAttestationandybpl.17830:15|
 :skolemid |388|
)) (=> (= (ControlFlow 0 244221) (- 0 324830)) (forall ((addr1@@79 Int) ) (!  (=> (|$IsValid'address'| addr1@@79) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@79) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@1) addr1@@79)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@79)))))
 :qid |DualAttestationandybpl.17835:15|
 :skolemid |389|
))))))))))))))))))))))))))))))
(let ((anon28_Then_correct@@4 true))
(let ((anon27_Then_correct@@4 true))
(let ((anon26_Then_correct@@4 true))
(let ((anon25_Then_correct@@3 true))
(let ((L3_correct@@6  (and (=> (= (ControlFlow 0 243651) (- 0 324328)) (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t5@@13)) (and (not (= $t6@@10 5)) (not (= $t6@@10 2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t7@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t7@@7)) 1))) (not (= (|$addr#$signer| _$t1@@15) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t8@@12))) (and (not (= $t9@@12 5)) (not (= $t9@@12 2))))) (=> (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t5@@13)) (and (not (= $t6@@10 5)) (not (= $t6@@10 2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t7@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t7@@7)) 1))) (not (= (|$addr#$signer| _$t1@@15) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t8@@12))) (and (not (= $t9@@12 5)) (not (= $t9@@12 2)))) (=> (= (ControlFlow 0 243651) (- 0 324427)) (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t5@@13)) (= 5 $t13@0)) (and (and (not (= $t6@@10 5)) (not (= $t6@@10 2))) (= 3 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t7@@7)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t7@@7)) 1)) (= 3 $t13@0))) (and (not (= (|$addr#$signer| _$t1@@15) 186537453)) (= 2 $t13@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22)) (= 6 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t8@@12)) (= 5 $t13@0))) (and (and (not (= $t9@@12 5)) (not (= $t9@@12 2))) (= 3 $t13@0))))))))
(let ((anon30_Then_correct@@4  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t13@0 $abort_code@1@@7) (= (ControlFlow 0 244235) 243651))) L3_correct@@6)))
(let ((anon29_Then$1_correct  (=> (= $1_DualAttestation_Credential_$memory@1 $1_DualAttestation_Credential_$memory) (=> (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 244287) 244235) anon30_Then_correct@@4) (=> (= (ControlFlow 0 244287) 244221) anon30_Else_correct@@4))))))
(let ((anon29_Then_correct@@4  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22)) (= (ControlFlow 0 244285) 244287)) anon29_Then$1_correct)))
(let ((anon29_Else_correct@@4  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22))) (=> (and (and (= $1_DualAttestation_Credential_$memory@0 ($Memory_127241 (|Store__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22) $t26@0))) (= $1_DualAttestation_Credential_$memory@1 $1_DualAttestation_Credential_$memory@0)) (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7))) (and (=> (= (ControlFlow 0 243937) 244235) anon30_Then_correct@@4) (=> (= (ControlFlow 0 243937) 244221) anon30_Else_correct@@4))))))
(let ((anon28_Else_correct@@4  (=> (and (not false) (= $t26@0 ($1_DualAttestation_Credential _$t2@@8 |inline$$1_Vector_empty'u8'$0$v@1| |inline$$1_Vector_empty'u8'$1$v@1| 18446744073709551615 |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 243915) 244285) anon29_Then_correct@@4) (=> (= (ControlFlow 0 243915) 243937) anon29_Else_correct@@4)))))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 243885) 244301) anon28_Then_correct@@4) (=> (= (ControlFlow 0 243885) 243915) anon28_Else_correct@@4)))))
(let ((anon27_Else_correct@@4  (=> (and (not false) (= (ControlFlow 0 243891) 243885)) |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 243803) 244315) anon27_Then_correct@@4) (=> (= (ControlFlow 0 243803) 243891) anon27_Else_correct@@4)))))
(let ((anon26_Else_correct@@4  (=> (not false) (=> (and (|$IsValid'u64'| 18446744073709551615) (= (ControlFlow 0 243809) 243803)) |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((|inline$$1_Vector_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 243713) 244329) anon26_Then_correct@@4) (=> (= (ControlFlow 0 243713) 243809) anon26_Else_correct@@4)))))
(let ((anon25_Else_correct@@3  (=> (and (not false) (= (ControlFlow 0 243719) 243713)) |inline$$1_Vector_empty'u8'$1$anon0_correct|)))
(let ((|inline$$1_Vector_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 243677) 244343) anon25_Then_correct@@3) (=> (= (ControlFlow 0 243677) 243719) anon25_Else_correct@@3)))))
(let ((anon24_Then_correct@@3  (=> (and inline$$Not$0$dst@1@@8 (= (ControlFlow 0 243683) 243677)) |inline$$1_Vector_empty'u8'$0$anon0_correct|)))
(let ((anon24_Else_correct@@3  (=> (and (and (not inline$$Not$0$dst@1@@8) (= $t20@@0 $t20@@0)) (and (= $t13@0 $t20@@0) (= (ControlFlow 0 243367) 243651))) L3_correct@@6)))
(let ((anon23_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t20@@0) (= $t20@@0 6)) (and (= $t20@@0 $t20@@0) (= inline$$Not$0$dst@1@@8 inline$$Not$0$dst@1@@8))) (and (=> (= (ControlFlow 0 243351) 243683) anon24_Then_correct@@3) (=> (= (ControlFlow 0 243351) 243367) anon24_Else_correct@@3))))))
(let ((inline$$Not$0$anon0_correct@@8  (=> (and (= inline$$Not$0$dst@1@@8  (not $t17@0@@1)) (= (ControlFlow 0 243311) 243351)) anon23_Else$1_correct)))
(let ((anon23_Else_correct@@3  (=> (not $t15) (=> (and (and (|$IsValid'address'| $t16) (= $t16 (|$addr#$signer| _$t0@@22))) (and (= $t17@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t16)) (= (ControlFlow 0 243317) 243311))) inline$$Not$0$anon0_correct@@8))))
(let ((anon23_Then_correct@@3  (=> $t15 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t14@@7)) (= 5 $t13@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t14@@7)) 1)) (= 3 $t13@@5))) (and (not (= (|$addr#$signer| _$t1@@15) 186537453)) (= 2 $t13@@5))) (= $t13@@5 $t13@@5)) (and (= $t13@0 $t13@@5) (= (ControlFlow 0 244415) 243651))) L3_correct@@6))))
(let ((anon22_Else_correct@@0  (=> (not $t12@@6) (=> (and (= $t14@@7 (|$addr#$signer| _$t1@@15)) (= $t15  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t14@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t14@@7)) 1))) (not (= (|$addr#$signer| _$t1@@15) 186537453))))) (and (=> (= (ControlFlow 0 243255) 244415) anon23_Then_correct@@3) (=> (= (ControlFlow 0 243255) 243317) anon23_Else_correct@@3))))))
(let ((anon22_Then_correct@@0  (=> $t12@@6 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t10@@4)) (= 5 $t13@@5)) (and (and (not (= $t11@@6 5)) (not (= $t11@@6 2))) (= 3 $t13@@5))) (= $t13@@5 $t13@@5)) (and (= $t13@0 $t13@@5) (= (ControlFlow 0 244471) 243651))) L3_correct@@6))))
(let ((anon0$1_correct@@23  (=> (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149322| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |DualAttestationandybpl.17490:21|
 :skolemid |377|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149409| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |DualAttestationandybpl.17490:268|
 :skolemid |378|
))) (and (forall ((addr1@@80 Int) ) (!  (=> (|$IsValid'address'| addr1@@80) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144602| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@80) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@80)) 1))))
 :qid |DualAttestationandybpl.17494:21|
 :skolemid |379|
)) (forall ((addr1@@81 Int) ) (!  (=> (|$IsValid'address'| addr1@@81) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144689| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@81) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@81)) 1))))
 :qid |DualAttestationandybpl.17494:231|
 :skolemid |380|
)))) (and (and (forall ((addr1@@82 Int) ) (!  (=> (|$IsValid'address'| addr1@@82) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_149991| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@82) (|Select__T@[Int]Bool_| (|domain#$Memory_149582| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@82)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@82)) 2))))
 :qid |DualAttestationandybpl.17498:21|
 :skolemid |381|
)) (forall ((addr1@@83 Int) ) (!  (=> (|$IsValid'address'| addr1@@83) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_150090| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@83) (|Select__T@[Int]Bool_| (|domain#$Memory_149673| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@83)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@83)) 2))))
 :qid |DualAttestationandybpl.17498:292|
 :skolemid |382|
))) (forall ((addr1@@84 Int) ) (!  (=> (|$IsValid'address'| addr1@@84) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@84) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@84)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@84)) 2)))))
 :qid |DualAttestationandybpl.17506:20|
 :skolemid |383|
)))) (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@22)) (|$IsValid'address'| (|$addr#$signer| _$t1@@15))) (and (|$IsValid'vec'u8''| _$t2@@8) (forall (($a_0@@50 Int) ) (! (let (($rsc@@50 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@50)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@50))
 :qid |DualAttestationandybpl.17518:20|
 :skolemid |384|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@50))
)))) (and (and (forall (($a_0@@51 Int) ) (! (let (($rsc@@51 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@51)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@51))
 :qid |DualAttestationandybpl.17522:20|
 :skolemid |385|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@51))
)) (= $t5@@13 (|$addr#$signer| _$t0@@22))) (and (= $t6@@10 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t5@@13))) (= $t7@@7 (|$addr#$signer| _$t1@@15))))) (and (and (and (= $t8@@12 (|$addr#$signer| _$t0@@22)) (= $t9@@12 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t8@@12)))) (and (= _$t0@@22 _$t0@@22) (= _$t1@@15 _$t1@@15))) (and (and (= _$t2@@8 _$t2@@8) (= $t10@@4 (|$addr#$signer| _$t0@@22))) (and (= $t11@@6 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t10@@4))) (= $t12@@6  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t10@@4)) (and (not (= $t11@@6 5)) (not (= $t11@@6 2))))))))) (and (=> (= (ControlFlow 0 243195) 244471) anon22_Then_correct@@0) (=> (= (ControlFlow 0 243195) 243255) anon22_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@23  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@25 T@$1_Event_EventHandle) ) (! (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@25)))
 (and (= (|l#Multiset_91856| stream@@24) 0) (forall ((v@@65 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@24) v@@65) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 242788) 243195)) anon0$1_correct@@23)))
(let ((anon0_correct@@23  (=> (= (ControlFlow 0 323246) 242788) inline$$InitEventStore$0$anon0_correct@@23)))
anon0_correct@@23))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@0@@0 () T@$Memory_127241)
(declare-fun $t16@2 () T@$Mutation_188019)
(declare-fun $t6@@11 () Int)
(declare-fun $t7@@8 () Int)
(declare-fun _$t1@@16 () (Seq Int))
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t9@@13 () T@$1_Event_EventHandle)
(declare-fun $t10@@5 () T@$1_DualAttestation_BaseUrlRotationEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_91856_| (|T@[$1_Event_EventHandle]Multiset_91856| T@$1_Event_EventHandle T@Multiset_91856) |T@[$1_Event_EventHandle]Multiset_91856|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_91856|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_91856)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|Store__T@[$1_Event_EventHandle]Multiset_91856_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_91856|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_91856)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|Store__T@[$1_Event_EventHandle]Multiset_91856_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_91856_| ?x0 ?y1))) :weight 0)))
(declare-fun $t15@0@@0 () Int)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t18@0@@3 () T@$Mutation_117132)
(declare-fun $t21@0 () T@$1_DualAttestation_BaseUrlRotationEvent)
(declare-fun $t20@@1 () Bool)
(declare-fun $t19 () Int)
(declare-fun $t15@@0 () Int)
(declare-fun |$temp_0'$1_DualAttestation_Credential'@0| () T@$1_DualAttestation_Credential)
(declare-fun $t16@1 () T@$Mutation_188019)
(declare-fun $t17@0@@2 () T@$Mutation_112184)
(declare-fun $t17@1 () T@$Mutation_112184)
(declare-fun $t16@@0 () T@$Mutation_188019)
(declare-fun $t11@@7 () Int)
(declare-fun $t16@0 () T@$Mutation_188019)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t14@@8 () Int)
(declare-fun _$t0@@23 () T@$signer)
(declare-fun $t8@@13 () Int)
(declare-fun $t5@@14 () T@$Mutation_188019)
(declare-fun $t17@@0 () T@$Mutation_112184)
(declare-fun $t18 () T@$Mutation_117132)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_rotate_base_url$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 324875) (let ((anon19_Else_correct  (=> (and (not $abort_flag@0@@8) (= $1_DualAttestation_Credential_$memory@0@@0 ($Memory_127241 (|Store__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_188019| $t16@2)) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_188019| $t16@2)) (|v#$Mutation_188019| $t16@2))))) (and (=> (= (ControlFlow 0 245614) (- 0 325685)) (forall ((addr1@@85 Int) ) (!  (=> (|$IsValid'address'| addr1@@85) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) addr1@@85) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@85)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@85)) 2)))))
 :qid |DualAttestationandybpl.18141:15|
 :skolemid |393|
))) (=> (forall ((addr1@@86 Int) ) (!  (=> (|$IsValid'address'| addr1@@86) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) addr1@@86) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@86)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@86)) 2)))))
 :qid |DualAttestationandybpl.18141:15|
 :skolemid |393|
)) (and (=> (= (ControlFlow 0 245614) (- 0 325721)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t6@@11)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t6@@11))) (and (=> (= (ControlFlow 0 245614) (- 0 325733)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 245614) (- 0 325743)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) $t7@@8)) _$t1@@16)) (=> (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) $t7@@8)) _$t1@@16) (and (=> (= (ControlFlow 0 245614) (- 0 325756)) (forall ((addr1@@87 Int) ) (!  (=> (|$IsValid'address'| addr1@@87) (=> (not (= addr1@@87 $t7@@8)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) addr1@@87)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@87)))))
 :qid |DualAttestationandybpl.18165:15|
 :skolemid |394|
))) (=> (forall ((addr1@@88 Int) ) (!  (=> (|$IsValid'address'| addr1@@88) (=> (not (= addr1@@88 $t7@@8)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) addr1@@88)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@88)))))
 :qid |DualAttestationandybpl.18165:15|
 :skolemid |394|
)) (and (=> (= (ControlFlow 0 245614) (- 0 325794)) (forall ((addr1@@89 Int) ) (!  (=> (|$IsValid'address'| addr1@@89) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@89) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) addr1@@89)))
 :qid |DualAttestationandybpl.18170:15|
 :skolemid |395|
))) (=> (forall ((addr1@@90 Int) ) (!  (=> (|$IsValid'address'| addr1@@90) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@90) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) addr1@@90)))
 :qid |DualAttestationandybpl.18170:15|
 :skolemid |395|
)) (and (=> (= (ControlFlow 0 245614) (- 0 325818)) (forall ((addr1@@91 Int) ) (!  (=> (|$IsValid'address'| addr1@@91) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@91)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) addr1@@91))))
 :qid |DualAttestationandybpl.18175:15|
 :skolemid |396|
))) (=> (forall ((addr1@@92 Int) ) (!  (=> (|$IsValid'address'| addr1@@92) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@92)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) addr1@@92))))
 :qid |DualAttestationandybpl.18175:15|
 :skolemid |396|
)) (and (=> (= (ControlFlow 0 245614) (- 0 325846)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 245614) (- 0 325863)) (forall ((addr1@@93 Int) ) (!  (=> (|$IsValid'address'| addr1@@93) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@93) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) addr1@@93)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@93)))))
 :qid |DualAttestationandybpl.18185:15|
 :skolemid |397|
))) (=> (forall ((addr1@@94 Int) ) (!  (=> (|$IsValid'address'| addr1@@94) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@94) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@0) addr1@@94)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@94)))))
 :qid |DualAttestationandybpl.18185:15|
 :skolemid |397|
)) (and (=> (= (ControlFlow 0 245614) (- 0 325898)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t9@@13)))
(let ((stream_new (let ((len (|l#Multiset_91856| stream@@25)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5))))
(Multiset_91856 (|Store__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t9@@13 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@26 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected) handle@@26)) (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual) handle@@26))) (forall ((v@@66 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected) handle@@26)) v@@66) (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual) handle@@26)) v@@66))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2798:13|
 :skolemid |80|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@26 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t9@@13)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_91856| stream@@26)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5))))
(Multiset_91856 (|Store__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t9@@13 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@27 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected@@0) handle@@27)) (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual@@0) handle@@27))) (forall ((v@@67 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected@@0) handle@@27)) v@@67) (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual@@0) handle@@27)) v@@67))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2798:13|
 :skolemid |80|
))))) (=> (= (ControlFlow 0 245614) (- 0 325923)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@27 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t9@@13)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_91856| stream@@27)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5))))
(Multiset_91856 (|Store__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t9@@13 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@28 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual@@1) handle@@28)) (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected@@1) handle@@28))) (forall ((v@@68 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual@@1) handle@@28)) v@@68) (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected@@1) handle@@28)) v@@68))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2798:13|
 :skolemid |80|
)))))))))))))))))))))))))))))
(let ((L3_correct@@7  (and (=> (= (ControlFlow 0 245110) (- 0 325616)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t6@@11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t6@@11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (=> (= (ControlFlow 0 245110) (- 0 325630)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t6@@11)) (= 5 $t15@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@0@@0))))))))
(let ((anon19_Then_correct  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t15@0@@0 $abort_code@1@@8) (= (ControlFlow 0 245628) 245110))) L3_correct@@7)))
(let ((|inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| (|v#$Mutation_117132| $t18@0@@3)) (= $es@0 (let ((stream@@28 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_91856| stream@@28)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@28) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t21@0))))
(Multiset_91856 (|Store__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@28) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t21@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 245313) 245628) anon19_Then_correct) (=> (= (ControlFlow 0 245313) 245614) anon19_Else_correct)))))
(let ((anon18_Else_correct@@2  (=> (not $t20@@1) (=> (and (and (|$IsValid'u64'| $t19) (= $t19 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t21@0 ($1_DualAttestation_BaseUrlRotationEvent _$t1@@16 $t19)) (= (ControlFlow 0 245319) 245313))) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|))))
(let ((anon18_Then_correct@@2  (=> $t20@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@0)) (= $t15@@0 $t15@@0)) (and (= $t15@0@@0 $t15@@0) (= (ControlFlow 0 245654) 245110))) L3_correct@@7))))
(let ((anon17_Else_correct@@3  (=> (and (and (and (not $abort_flag@0@@8) (= |$temp_0'$1_DualAttestation_Credential'@0| (|v#$Mutation_188019| $t16@1))) (and (= |$temp_0'$1_DualAttestation_Credential'@0| |$temp_0'$1_DualAttestation_Credential'@0|) (= $t17@0@@2 ($Mutation_112184 (|l#$Mutation_188019| $t16@1) (seq.++ (|p#$Mutation_188019| $t16@1) (seq.unit 1)) (|$base_url#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t16@1)))))) (and (and (= $t17@1 ($Mutation_112184 (|l#$Mutation_112184| $t17@0@@2) (|p#$Mutation_112184| $t17@0@@2) _$t1@@16)) (= $t16@2 ($Mutation_188019 (|l#$Mutation_188019| $t16@1) (|p#$Mutation_188019| $t16@1) ($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t16@1)) (|v#$Mutation_112184| $t17@1) (|$compliance_public_key#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t16@1)) (|$expiration_date#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t16@1)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t16@1)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t16@1)))))) (and (= $t18@0@@3 ($Mutation_117132 (|l#$Mutation_188019| $t16@2) (seq.++ (|p#$Mutation_188019| $t16@2) (seq.unit 5)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t16@2)))) (= $t20@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 245214) 245654) anon18_Then_correct@@2) (=> (= (ControlFlow 0 245214) 245319) anon18_Else_correct@@2)))))
(let ((anon17_Then_correct@@3  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t15@0@@0 $abort_code@1@@8) (= (ControlFlow 0 245668) 245110))) L3_correct@@7)))
(let ((anon16_Then$1_correct  (=> (= $t16@1 $t16@@0) (=> (and (= $abort_flag@0@@8 true) (= $abort_code@1@@8 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 245720) 245668) anon17_Then_correct@@3) (=> (= (ControlFlow 0 245720) 245214) anon17_Else_correct@@3))))))
(let ((anon16_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t11@@7)) (= (ControlFlow 0 245718) 245720)) anon16_Then$1_correct)))
(let ((anon16_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t11@@7) (=> (and (and (= $t16@0 ($Mutation_188019 ($Global $t11@@7) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $t11@@7))) (= $t16@1 $t16@0)) (and (= $abort_flag@0@@8 false) (= $abort_code@1@@8 $abort_code@0@@8))) (and (=> (= (ControlFlow 0 245136) 245668) anon17_Then_correct@@3) (=> (= (ControlFlow 0 245136) 245214) anon17_Else_correct@@3))))))
(let ((anon15_Then_correct@@4  (=> $t12@0 (and (=> (= (ControlFlow 0 245114) 245718) anon16_Then_correct@@4) (=> (= (ControlFlow 0 245114) 245136) anon16_Else_correct@@4)))))
(let ((anon15_Else_correct@@4  (=> (and (and (not $t12@0) (= $t14@@8 $t14@@8)) (and (= $t15@0@@0 $t14@@8) (= (ControlFlow 0 245054) 245110))) L3_correct@@7)))
(let ((anon0$1_correct@@24  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138740| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138350| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_159675| $1_XDX_Reserve_$memory) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_157168| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@95 Int) ) (!  (=> (|$IsValid'address'| addr1@@95) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@95) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@95)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@95)) 2)))))
 :qid |DualAttestationandybpl.17937:20|
 :skolemid |390|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@23)) (|$IsValid'vec'u8''| _$t1@@16)) (and (forall (($a_0@@52 Int) ) (! (let (($rsc@@52 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@52)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@52))
 :qid |DualAttestationandybpl.17946:20|
 :skolemid |391|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@52))
)) (forall (($a_0@@53 Int) ) (! (let (($rsc@@53 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@53)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@53))
 :qid |DualAttestationandybpl.17950:20|
 :skolemid |392|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@53))
))))) (=> (and (and (and (and (= $t6@@11 (|$addr#$signer| _$t0@@23)) (= $t7@@8 (|$addr#$signer| _$t0@@23))) (and (= $t8@@13 (|$addr#$signer| _$t0@@23)) (= $t9@@13 (|$base_url_rotation_events#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $t8@@13))))) (and (and (= $t10@@5 ($1_DualAttestation_BaseUrlRotationEvent _$t1@@16 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (= _$t0@@23 _$t0@@23)) (and (= _$t1@@16 _$t1@@16) (|$IsValid'address'| $t11@@7)))) (and (and (and (= $t11@@7 (|$addr#$signer| _$t0@@23)) (= $t11@@7 $t11@@7)) (and (= $t12@0 (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t11@@7)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@8) (= $t14@@8 5)) (and (= $t14@@8 $t14@@8) (= $t12@0 $t12@0))))) (and (=> (= (ControlFlow 0 245038) 245114) anon15_Then_correct@@4) (=> (= (ControlFlow 0 245038) 245054) anon15_Else_correct@@4)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@24  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@29 T@$1_Event_EventHandle) ) (! (let ((stream@@29 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@29)))
 (and (= (|l#Multiset_91856| stream@@29) 0) (forall ((v@@69 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@29) v@@69) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 244733) 245038)) anon0$1_correct@@24)))
(let ((anon0_correct@@24  (=> (= (seq.len (|p#$Mutation_188019| $t5@@14)) 0) (=> (and (and (= (seq.len (|p#$Mutation_188019| $t16@@0)) 0) (= (seq.len (|p#$Mutation_112184| $t17@@0)) 0)) (and (= (seq.len (|p#$Mutation_117132| $t18)) 0) (= (ControlFlow 0 244743) 244733))) inline$$InitEventStore$0$anon0_correct@@24))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 324875) 244743) anon0_correct@@24)))
PreconditionGeneratedEntry_correct@@1))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@9 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@0@@1 () T@$Memory_127241)
(declare-fun $t21@2 () T@$Mutation_188019)
(declare-fun _$t1@@17 () (Seq Int))
(declare-fun $t8@@14 () Int)
(declare-fun $t9@@14 () Int)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t11@@8 () T@$1_Event_EventHandle)
(declare-fun $t12@@7 () T@$1_DualAttestation_ComplianceKeyRotationEvent)
(declare-fun $t17@0@@3 () Int)
(declare-fun $abort_code@1@@9 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t23@0 () T@$Mutation_117132)
(declare-fun $t26@0@@0 () T@$1_DualAttestation_ComplianceKeyRotationEvent)
(declare-fun $t25@@3 () Bool)
(declare-fun $t24@@4 () Int)
(declare-fun $t17@@1 () Int)
(declare-fun |$temp_0'$1_DualAttestation_Credential'@0@@0| () T@$1_DualAttestation_Credential)
(declare-fun $t21@1 () T@$Mutation_188019)
(declare-fun $t22@0 () T@$Mutation_112184)
(declare-fun $t22@1 () T@$Mutation_112184)
(declare-fun $t21@@3 () T@$Mutation_188019)
(declare-fun $t13@@6 () Int)
(declare-fun $t21@0@@0 () T@$Mutation_188019)
(declare-fun $abort_code@0@@9 () Int)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun $t20@@2 () Int)
(declare-fun $t14@0@@0 () Bool)
(declare-fun $t16@@1 () Int)
(declare-fun _$t0@@24 () T@$signer)
(declare-fun $t10@@6 () Int)
(declare-fun $t7@@9 () T@$Mutation_188019)
(declare-fun $t22@@3 () T@$Mutation_112184)
(declare-fun $t23@@2 () T@$Mutation_117132)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_rotate_compliance_public_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 325954) (let ((anon26_Else_correct@@5  (=> (and (not $abort_flag@0@@9) (= $1_DualAttestation_Credential_$memory@0@@1 ($Memory_127241 (|Store__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_188019| $t21@2)) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_188019| $t21@2)) (|v#$Mutation_188019| $t21@2))))) (and (=> (= (ControlFlow 0 246974) (- 0 326878)) (forall ((addr1@@96 Int) ) (!  (=> (|$IsValid'address'| addr1@@96) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) addr1@@96) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@96)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@96)) 2)))))
 :qid |DualAttestationandybpl.18569:15|
 :skolemid |401|
))) (=> (forall ((addr1@@97 Int) ) (!  (=> (|$IsValid'address'| addr1@@97) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) addr1@@97) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@97)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@97)) 2)))))
 :qid |DualAttestationandybpl.18569:15|
 :skolemid |401|
)) (and (=> (= (ControlFlow 0 246974) (- 0 326914)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@17)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@17))) (and (=> (= (ControlFlow 0 246974) (- 0 326924)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t8@@14)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t8@@14))) (and (=> (= (ControlFlow 0 246974) (- 0 326936)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 246974) (- 0 326946)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) $t9@@14)) _$t1@@17)) (=> (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) $t9@@14)) _$t1@@17) (and (=> (= (ControlFlow 0 246974) (- 0 326959)) (forall ((addr1@@98 Int) ) (!  (=> (|$IsValid'address'| addr1@@98) (=> (not (= addr1@@98 $t9@@14)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) addr1@@98)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@98)))))
 :qid |DualAttestationandybpl.18598:15|
 :skolemid |402|
))) (=> (forall ((addr1@@99 Int) ) (!  (=> (|$IsValid'address'| addr1@@99) (=> (not (= addr1@@99 $t9@@14)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) addr1@@99)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@99)))))
 :qid |DualAttestationandybpl.18598:15|
 :skolemid |402|
)) (and (=> (= (ControlFlow 0 246974) (- 0 326997)) (forall ((addr1@@100 Int) ) (!  (=> (|$IsValid'address'| addr1@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@100) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) addr1@@100)))
 :qid |DualAttestationandybpl.18603:15|
 :skolemid |403|
))) (=> (forall ((addr1@@101 Int) ) (!  (=> (|$IsValid'address'| addr1@@101) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@101) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) addr1@@101)))
 :qid |DualAttestationandybpl.18603:15|
 :skolemid |403|
)) (and (=> (= (ControlFlow 0 246974) (- 0 327021)) (forall ((addr1@@102 Int) ) (!  (=> (|$IsValid'address'| addr1@@102) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@102)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) addr1@@102))))
 :qid |DualAttestationandybpl.18608:15|
 :skolemid |404|
))) (=> (forall ((addr1@@103 Int) ) (!  (=> (|$IsValid'address'| addr1@@103) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@103)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) addr1@@103))))
 :qid |DualAttestationandybpl.18608:15|
 :skolemid |404|
)) (and (=> (= (ControlFlow 0 246974) (- 0 327049)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 246974) (- 0 327066)) (forall ((addr1@@104 Int) ) (!  (=> (|$IsValid'address'| addr1@@104) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@104) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) addr1@@104)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@104)))))
 :qid |DualAttestationandybpl.18618:15|
 :skolemid |405|
))) (=> (forall ((addr1@@105 Int) ) (!  (=> (|$IsValid'address'| addr1@@105) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@105) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory@0@@1) addr1@@105)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@105)))))
 :qid |DualAttestationandybpl.18618:15|
 :skolemid |405|
)) (and (=> (= (ControlFlow 0 246974) (- 0 327101)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (let ((stream@@30 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t11@@8)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_91856| stream@@30)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7))))
(Multiset_91856 (|Store__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t11@@8 stream_new@@3))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@30 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected@@2) handle@@30)) (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual@@2) handle@@30))) (forall ((v@@70 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected@@2) handle@@30)) v@@70) (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual@@2) handle@@30)) v@@70))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2798:13|
 :skolemid |80|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (let ((stream@@31 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t11@@8)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_91856| stream@@31)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7))))
(Multiset_91856 (|Store__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t11@@8 stream_new@@4))))))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@31 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected@@3) handle@@31)) (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual@@3) handle@@31))) (forall ((v@@71 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected@@3) handle@@31)) v@@71) (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual@@3) handle@@31)) v@@71))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2798:13|
 :skolemid |80|
))))) (=> (= (ControlFlow 0 246974) (- 0 327126)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t11@@8)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_91856| stream@@32)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@32) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7))))
(Multiset_91856 (|Store__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@32) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $EmptyEventStore) $t11@@8 stream_new@@5))))))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@32 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual@@4) handle@@32)) (|l#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected@@4) handle@@32))) (forall ((v@@72 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| actual@@4) handle@@32)) v@@72) (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| expected@@4) handle@@32)) v@@72))
 :qid |DualAttestationandybpl.134:13|
 :skolemid |3|
)))
 :qid |DualAttestationandybpl.2798:13|
 :skolemid |80|
)))))))))))))))))))))))))))))))
(let ((anon21_Then_correct@@0 true))
(let ((L5_correct@@1  (and (=> (= (ControlFlow 0 246368) (- 0 326788)) (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@17)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t8@@14))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@17)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t8@@14))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (=> (= (ControlFlow 0 246368) (- 0 326809)) (or (or (and (not ($1_Signature_$ed25519_validate_pubkey _$t1@@17)) (= 7 $t17@0@@3)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t8@@14)) (= 5 $t17@0@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t17@0@@3))))))))
(let ((anon26_Then_correct@@5  (=> (and (and $abort_flag@0@@9 (= $abort_code@1@@9 $abort_code@1@@9)) (and (= $t17@0@@3 $abort_code@1@@9) (= (ControlFlow 0 246988) 246368))) L5_correct@@1)))
(let ((|inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| (|v#$Mutation_117132| $t23@0)) (= $es@0@@0 (let ((stream@@33 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1|)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_91856| stream@@33)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@33) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t26@0@@0))))
(Multiset_91856 (|Store__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@33) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t26@0@@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| stream_new@@6)))))) (and (=> (= (ControlFlow 0 246663) 246988) anon26_Then_correct@@5) (=> (= (ControlFlow 0 246663) 246974) anon26_Else_correct@@5)))))
(let ((anon25_Else_correct@@4  (=> (not $t25@@3) (=> (and (and (|$IsValid'u64'| $t24@@4) (= $t24@@4 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t26@0@@0 ($1_DualAttestation_ComplianceKeyRotationEvent _$t1@@17 $t24@@4)) (= (ControlFlow 0 246669) 246663))) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((anon25_Then_correct@@4  (=> $t25@@3 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t17@@1)) (= $t17@@1 $t17@@1)) (and (= $t17@0@@3 $t17@@1) (= (ControlFlow 0 247014) 246368))) L5_correct@@1))))
(let ((anon24_Else_correct@@4  (=> (and (and (and (not $abort_flag@0@@9) (= |$temp_0'$1_DualAttestation_Credential'@0@@0| (|v#$Mutation_188019| $t21@1))) (and (= |$temp_0'$1_DualAttestation_Credential'@0@@0| |$temp_0'$1_DualAttestation_Credential'@0@@0|) (= $t22@0 ($Mutation_112184 (|l#$Mutation_188019| $t21@1) (seq.++ (|p#$Mutation_188019| $t21@1) (seq.unit 2)) (|$compliance_public_key#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t21@1)))))) (and (and (= $t22@1 ($Mutation_112184 (|l#$Mutation_112184| $t22@0) (|p#$Mutation_112184| $t22@0) _$t1@@17)) (= $t21@2 ($Mutation_188019 (|l#$Mutation_188019| $t21@1) (|p#$Mutation_188019| $t21@1) ($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t21@1)) (|$base_url#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t21@1)) (|v#$Mutation_112184| $t22@1) (|$expiration_date#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t21@1)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t21@1)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t21@1)))))) (and (= $t23@0 ($Mutation_117132 (|l#$Mutation_188019| $t21@2) (seq.++ (|p#$Mutation_188019| $t21@2) (seq.unit 4)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_188019| $t21@2)))) (= $t25@@3  (not (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 246564) 247014) anon25_Then_correct@@4) (=> (= (ControlFlow 0 246564) 246669) anon25_Else_correct@@4)))))
(let ((anon24_Then_correct@@4  (=> (and (and $abort_flag@0@@9 (= $abort_code@1@@9 $abort_code@1@@9)) (and (= $t17@0@@3 $abort_code@1@@9) (= (ControlFlow 0 247028) 246368))) L5_correct@@1)))
(let ((anon23_Then$1_correct  (=> (= $t21@1 $t21@@3) (=> (and (= $abort_flag@0@@9 true) (= $abort_code@1@@9 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 247080) 247028) anon24_Then_correct@@4) (=> (= (ControlFlow 0 247080) 246564) anon24_Else_correct@@4))))))
(let ((anon23_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t13@@6)) (= (ControlFlow 0 247078) 247080)) anon23_Then$1_correct)))
(let ((anon23_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t13@@6) (=> (and (and (= $t21@0@@0 ($Mutation_188019 ($Global $t13@@6) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $t13@@6))) (= $t21@1 $t21@0@@0)) (and (= $abort_flag@0@@9 false) (= $abort_code@1@@9 $abort_code@0@@9))) (and (=> (= (ControlFlow 0 246486) 247028) anon24_Then_correct@@4) (=> (= (ControlFlow 0 246486) 246564) anon24_Else_correct@@4))))))
(let ((anon22_Then_correct@@1  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (and (=> (= (ControlFlow 0 246464) 247078) anon23_Then_correct@@4) (=> (= (ControlFlow 0 246464) 246486) anon23_Else_correct@@4)))))
(let ((anon22_Else_correct@@1  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= $t20@@2 $t20@@2)) (and (= $t17@0@@3 $t20@@2) (= (ControlFlow 0 246460) 246368))) L5_correct@@1)))
(let ((anon21_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20@@2) (= $t20@@2 7)) (and (= $t20@@2 $t20@@2) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 246444) 246464) anon22_Then_correct@@1) (=> (= (ControlFlow 0 246444) 246460) anon22_Else_correct@@1))))))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t1@@17)) (and (=> (= (ControlFlow 0 246402) 247094) anon21_Then_correct@@0) (=> (= (ControlFlow 0 246402) 246444) anon21_Else_correct@@0)))))
(let ((anon20_Then_correct@@0  (=> (and $t14@0@@0 (= (ControlFlow 0 246408) 246402)) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct)))
(let ((anon20_Else_correct@@0  (=> (and (and (not $t14@0@@0) (= $t16@@1 $t16@@1)) (and (= $t17@0@@3 $t16@@1) (= (ControlFlow 0 246288) 246368))) L5_correct@@1)))
(let ((anon0$1_correct@@25  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138740| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138350| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_159675| $1_XDX_Reserve_$memory) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_144013| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_157168| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@106 Int) ) (!  (=> (|$IsValid'address'| addr1@@106) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@106) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@106)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@106)) 2)))))
 :qid |DualAttestationandybpl.18313:20|
 :skolemid |398|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@24)) (|$IsValid'vec'u8''| _$t1@@17)) (and (forall (($a_0@@54 Int) ) (! (let (($rsc@@54 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@54)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@54))
 :qid |DualAttestationandybpl.18322:20|
 :skolemid |399|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@54))
)) (forall (($a_0@@55 Int) ) (! (let (($rsc@@55 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@55)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@55))
 :qid |DualAttestationandybpl.18326:20|
 :skolemid |400|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $a_0@@55))
))))) (=> (and (and (and (and (= $t8@@14 (|$addr#$signer| _$t0@@24)) (= $t9@@14 (|$addr#$signer| _$t0@@24))) (and (= $t10@@6 (|$addr#$signer| _$t0@@24)) (= $t11@@8 (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) $t10@@6))))) (and (and (= $t12@@7 ($1_DualAttestation_ComplianceKeyRotationEvent _$t1@@17 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (= _$t0@@24 _$t0@@24)) (and (= _$t1@@17 _$t1@@17) (|$IsValid'address'| $t13@@6)))) (and (and (and (= $t13@@6 (|$addr#$signer| _$t0@@24)) (= $t13@@6 $t13@@6)) (and (= $t14@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) $t13@@6)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t16@@1) (= $t16@@1 5)) (and (= $t16@@1 $t16@@1) (= $t14@0@@0 $t14@0@@0))))) (and (=> (= (ControlFlow 0 246272) 246408) anon20_Then_correct@@0) (=> (= (ControlFlow 0 246272) 246288) anon20_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@25  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@33 T@$1_Event_EventHandle) ) (! (let ((stream@@34 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@33)))
 (and (= (|l#Multiset_91856| stream@@34) 0) (forall ((v@@73 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@34) v@@73) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 245967) 246272)) anon0$1_correct@@25)))
(let ((anon0_correct@@25  (=> (= (seq.len (|p#$Mutation_188019| $t7@@9)) 0) (=> (and (and (= (seq.len (|p#$Mutation_188019| $t21@@3)) 0) (= (seq.len (|p#$Mutation_112184| $t22@@3)) 0)) (and (= (seq.len (|p#$Mutation_117132| $t23@@2)) 0) (= (ControlFlow 0 245977) 245967))) inline$$InitEventStore$0$anon0_correct@@25))))
(let ((PreconditionGeneratedEntry_correct@@2  (=> (= (ControlFlow 0 325954) 245977) anon0_correct@@25)))
PreconditionGeneratedEntry_correct@@2)))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@10 () Bool)
(declare-fun $t14@0@@1 () T@$Mutation_13434)
(declare-fun $t13@1 () T@$Mutation_191610)
(declare-fun $t14@1@@0 () T@$Mutation_13434)
(declare-fun _$t1@@18 () Int)
(declare-fun $t13@2 () T@$Mutation_191610)
(declare-fun $1_DualAttestation_Limit_$memory@0@@0 () T@$Memory_124816)
(declare-fun $t4@@8 () Int)
(declare-fun _$t0@@25 () T@$signer)
(declare-fun $t7@0@@4 () Int)
(declare-fun $abort_code@1@@10 () Int)
(declare-fun $t13@@7 () T@$Mutation_191610)
(declare-fun $t13@0@@0 () T@$Mutation_191610)
(declare-fun $abort_code@0@@10 () Int)
(declare-fun $t9@0@@1 () Bool)
(declare-fun $t11@@9 () Int)
(declare-fun $t6@@12 () Bool)
(declare-fun $t5@@15 () Int)
(declare-fun $t7@@10 () Int)
(declare-fun $t14@@9 () T@$Mutation_13434)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_set_microdiem_limit$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 327158) (let ((anon15_Else_correct@@5  (=> (not $abort_flag@0@@10) (=> (and (and (= $t14@0@@1 ($Mutation_13434 (|l#$Mutation_191610| $t13@1) (seq.++ (|p#$Mutation_191610| $t13@1) (seq.unit 0)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|v#$Mutation_191610| $t13@1)))) (= $t14@1@@0 ($Mutation_13434 (|l#$Mutation_13434| $t14@0@@1) (|p#$Mutation_13434| $t14@0@@1) _$t1@@18))) (and (= $t13@2 ($Mutation_191610 (|l#$Mutation_191610| $t13@1) (|p#$Mutation_191610| $t13@1) ($1_DualAttestation_Limit (|v#$Mutation_13434| $t14@1@@0)))) (= $1_DualAttestation_Limit_$memory@0@@0 ($Memory_124816 (|Store__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) (|a#$Global| (|l#$Mutation_191610| $t13@2)) true) (|Store__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) (|a#$Global| (|l#$Mutation_191610| $t13@2)) (|v#$Mutation_191610| $t13@2)))))) (and (=> (= (ControlFlow 0 248175) (- 0 328005)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory@0@@0) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory@0@@0) 173345816)) (and (=> (= (ControlFlow 0 248175) (- 0 328020)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@8))) (and (=> (= (ControlFlow 0 248175) (- 0 328032)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@8)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@8)) 1))) (and (=> (= (ControlFlow 0 248175) (- 0 328050)) (not (not (= (|$addr#$signer| _$t0@@25) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@25) 186537453))) (and (=> (= (ControlFlow 0 248175) (- 0 328064)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 248175) (- 0 328074)) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory@0@@0) 173345816)) _$t1@@18)) (=> (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory@0@@0) 173345816)) _$t1@@18) (and (=> (= (ControlFlow 0 248175) (- 0 328087)) (forall ((addr1@@107 Int) ) (!  (=> (|$IsValid'address'| addr1@@107) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@107) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@107)))
 :qid |DualAttestationandybpl.18911:15|
 :skolemid |415|
))) (=> (forall ((addr1@@108 Int) ) (!  (=> (|$IsValid'address'| addr1@@108) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@108) (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@108)))
 :qid |DualAttestationandybpl.18911:15|
 :skolemid |415|
)) (and (=> (= (ControlFlow 0 248175) (- 0 328112)) (forall ((addr1@@109 Int) ) (!  (=> (|$IsValid'address'| addr1@@109) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@109)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@109))))
 :qid |DualAttestationandybpl.18916:15|
 :skolemid |416|
))) (=> (forall ((addr1@@110 Int) ) (!  (=> (|$IsValid'address'| addr1@@110) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@110)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@110))))
 :qid |DualAttestationandybpl.18916:15|
 :skolemid |416|
)) (and (=> (= (ControlFlow 0 248175) (- 0 328141)) (forall ((addr1@@111 Int) ) (!  (=> (|$IsValid'address'| addr1@@111) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@111) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@111)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@111)))))
 :qid |DualAttestationandybpl.18921:15|
 :skolemid |417|
))) (=> (forall ((addr1@@112 Int) ) (!  (=> (|$IsValid'address'| addr1@@112) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@112) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@112)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@112)))))
 :qid |DualAttestationandybpl.18921:15|
 :skolemid |417|
)) (=> (= (ControlFlow 0 248175) (- 0 328177)) (forall ((addr1@@113 Int) ) (!  (=> (|$IsValid'address'| addr1@@113) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@113) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@113)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@113)))))
 :qid |DualAttestationandybpl.18926:15|
 :skolemid |418|
)))))))))))))))))))))))))
(let ((L3_correct@@8  (and (=> (= (ControlFlow 0 247881) (- 0 327827)) (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@8)) 1))) (not (= (|$addr#$signer| _$t0@@25) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@8)) 1))) (not (= (|$addr#$signer| _$t0@@25) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (=> (= (ControlFlow 0 247881) (- 0 327867)) (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@8)) (= 5 $t7@0@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t4@@8)) 1)) (= 3 $t7@0@@4))) (and (not (= (|$addr#$signer| _$t0@@25) 186537453)) (= 2 $t7@0@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t7@0@@4))))))))
(let ((anon15_Then_correct@@5  (=> (and (and $abort_flag@0@@10 (= $abort_code@1@@10 $abort_code@1@@10)) (and (= $t7@0@@4 $abort_code@1@@10) (= (ControlFlow 0 248189) 247881))) L3_correct@@8)))
(let ((anon14_Then$1_correct  (=> (= $t13@1 $t13@@7) (=> (and (= $abort_flag@0@@10 true) (= $abort_code@1@@10 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 248241) 248189) anon15_Then_correct@@5) (=> (= (ControlFlow 0 248241) 248175) anon15_Else_correct@@5))))))
(let ((anon14_Then_correct@@5  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (= (ControlFlow 0 248239) 248241)) anon14_Then$1_correct)))
(let ((anon14_Else_correct@@5  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816) (=> (and (and (= $t13@0@@0 ($Mutation_191610 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (= $t13@1 $t13@0@@0)) (and (= $abort_flag@0@@10 false) (= $abort_code@1@@10 $abort_code@0@@10))) (and (=> (= (ControlFlow 0 247913) 248189) anon15_Then_correct@@5) (=> (= (ControlFlow 0 247913) 248175) anon15_Else_correct@@5))))))
(let ((anon13_Then_correct@@2  (=> (and $t9@0@@1 (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 247891) 248239) anon14_Then_correct@@5) (=> (= (ControlFlow 0 247891) 247913) anon14_Else_correct@@5)))))
(let ((anon13_Else_correct@@2  (=> (and (and (not $t9@0@@1) (= $t11@@9 $t11@@9)) (and (= $t7@0@@4 $t11@@9) (= (ControlFlow 0 247753) 247881))) L3_correct@@8)))
(let ((anon12_Else_correct@@7  (=> (and (and (and (not $t6@@12) (|$IsValid'address'| 173345816)) (and (= $t9@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t11@@9) (= $t11@@9 5)) (and (= $t11@@9 $t11@@9) (= $t9@0@@1 $t9@0@@1)))) (and (=> (= (ControlFlow 0 247737) 247891) anon13_Then_correct@@2) (=> (= (ControlFlow 0 247737) 247753) anon13_Else_correct@@2)))))
(let ((anon12_Then_correct@@7  (=> $t6@@12 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t5@@15)) (= 5 $t7@@10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t5@@15)) 1)) (= 3 $t7@@10))) (and (not (= (|$addr#$signer| _$t0@@25) 186537453)) (= 2 $t7@@10))) (= $t7@@10 $t7@@10)) (and (= $t7@0@@4 $t7@@10) (= (ControlFlow 0 248313) 247881))) L3_correct@@8))))
(let ((anon0$1_correct@@26  (=> (and (and (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149322| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |DualAttestationandybpl.18701:21|
 :skolemid |406|
)) (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149409| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |DualAttestationandybpl.18701:268|
 :skolemid |407|
))) (and (forall ((addr1@@114 Int) ) (!  (=> (|$IsValid'address'| addr1@@114) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144602| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@114) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@114)) 1))))
 :qid |DualAttestationandybpl.18705:21|
 :skolemid |408|
)) (forall ((addr1@@115 Int) ) (!  (=> (|$IsValid'address'| addr1@@115) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144689| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@115) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@115)) 1))))
 :qid |DualAttestationandybpl.18705:231|
 :skolemid |409|
)))) (=> (and (and (and (and (forall ((addr1@@116 Int) ) (!  (=> (|$IsValid'address'| addr1@@116) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_149991| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@116) (|Select__T@[Int]Bool_| (|domain#$Memory_149582| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@116)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@116)) 2))))
 :qid |DualAttestationandybpl.18709:21|
 :skolemid |410|
)) (forall ((addr1@@117 Int) ) (!  (=> (|$IsValid'address'| addr1@@117) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_150090| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@117) (|Select__T@[Int]Bool_| (|domain#$Memory_149673| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@117)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@117) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@117)) 2))))
 :qid |DualAttestationandybpl.18709:292|
 :skolemid |411|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123348| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124816| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1@@118 Int) ) (!  (=> (|$IsValid'address'| addr1@@118) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127241| $1_DualAttestation_Credential_$memory) addr1@@118) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@118)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) addr1@@118)) 2)))))
 :qid |DualAttestationandybpl.18721:20|
 :skolemid |412|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@25)))) (and (and (and (|$IsValid'u64'| _$t1@@18) (forall (($a_0@@56 Int) ) (! (let (($rsc@@56 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@56)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@56))
 :qid |DualAttestationandybpl.18730:20|
 :skolemid |413|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $a_0@@56))
))) (and (forall (($a_0@@57 Int) ) (! (let (($rsc@@57 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@57)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@57))
 :qid |DualAttestationandybpl.18734:20|
 :skolemid |414|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124816| $1_DualAttestation_Limit_$memory) $a_0@@57))
)) (= $t4@@8 (|$addr#$signer| _$t0@@25)))) (and (and (= _$t0@@25 _$t0@@25) (= _$t1@@18 _$t1@@18)) (and (= $t5@@15 (|$addr#$signer| _$t0@@25)) (= $t6@@12  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125197| $1_Roles_RoleId_$memory) $t5@@15)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_125197| $1_Roles_RoleId_$memory) $t5@@15)) 1))) (not (= (|$addr#$signer| _$t0@@25) 186537453)))))))) (and (=> (= (ControlFlow 0 247689) 248313) anon12_Then_correct@@7) (=> (= (ControlFlow 0 247689) 247737) anon12_Else_correct@@7))))))
(let ((inline$$InitEventStore$0$anon0_correct@@26  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@34 T@$1_Event_EventHandle) ) (! (let ((stream@@35 (|Select__T@[$1_Event_EventHandle]Multiset_91856_| (|streams#$EventStore| $es) handle@@34)))
 (and (= (|l#Multiset_91856| stream@@35) 0) (forall ((v@@74 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91856| stream@@35) v@@74) 0)
 :qid |DualAttestationandybpl.129:13|
 :skolemid |2|
))))
 :qid |DualAttestationandybpl.2782:13|
 :skolemid |79|
))) (= (ControlFlow 0 247336) 247689)) anon0$1_correct@@26)))
(let ((anon0_correct@@26  (=> (= (seq.len (|p#$Mutation_191610| $t13@@7)) 0) (=> (and (= (seq.len (|p#$Mutation_13434| $t14@@9)) 0) (= (ControlFlow 0 247346) 247336)) inline$$InitEventStore$0$anon0_correct@@26))))
(let ((PreconditionGeneratedEntry_correct@@3  (=> (= (ControlFlow 0 327158) 247346) anon0_correct@@26)))
PreconditionGeneratedEntry_correct@@3)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 328227) true)
))
(check-sat)
(pop 1)
; Valid
