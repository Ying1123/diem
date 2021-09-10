(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update eager)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_98954 0)) ((($Memory_98954 (|domain#$Memory_98954| |T@[Int]Bool|) (|contents#$Memory_98954| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_162100 0)) ((($Memory_162100 (|domain#$Memory_162100| |T@[Int]Bool|) (|contents#$Memory_162100| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_158989 0)) ((($Memory_158989 (|domain#$Memory_158989| |T@[Int]Bool|) (|contents#$Memory_158989| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_156783 0)) ((($Memory_156783 (|domain#$Memory_156783| |T@[Int]Bool|) (|contents#$Memory_156783| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_157063 0)) ((($Memory_157063 (|domain#$Memory_157063| |T@[Int]Bool|) (|contents#$Memory_157063| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_156750 0)) ((($Memory_156750 (|domain#$Memory_156750| |T@[Int]Bool|) (|contents#$Memory_156750| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_156535 0)) ((($Memory_156535 (|domain#$Memory_156535| |T@[Int]Bool|) (|contents#$Memory_156535| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_154175 0)) ((($Memory_154175 (|domain#$Memory_154175| |T@[Int]Bool|) (|contents#$Memory_154175| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_154111 0)) ((($Memory_154111 (|domain#$Memory_154111| |T@[Int]Bool|) (|contents#$Memory_154111| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_152821 0)) ((($Memory_152821 (|domain#$Memory_152821| |T@[Int]Bool|) (|contents#$Memory_152821| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_152757 0)) ((($Memory_152757 (|domain#$Memory_152757| |T@[Int]Bool|) (|contents#$Memory_152757| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_152445 0)) ((($Memory_152445 (|domain#$Memory_152445| |T@[Int]Bool|) (|contents#$Memory_152445| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_149179 0)) ((($Memory_149179 (|domain#$Memory_149179| |T@[Int]Bool|) (|contents#$Memory_149179| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_148892 0)) ((($Memory_148892 (|domain#$Memory_148892| |T@[Int]Bool|) (|contents#$Memory_148892| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_148605 0)) ((($Memory_148605 (|domain#$Memory_148605| |T@[Int]Bool|) (|contents#$Memory_148605| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_148386 0)) ((($Memory_148386 (|domain#$Memory_148386| |T@[Int]Bool|) (|contents#$Memory_148386| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_158596 0)) ((($Memory_158596 (|domain#$Memory_158596| |T@[Int]Bool|) (|contents#$Memory_158596| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_141123 0)) ((($Memory_141123 (|domain#$Memory_141123| |T@[Int]Bool|) (|contents#$Memory_141123| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_141036 0)) ((($Memory_141036 (|domain#$Memory_141036| |T@[Int]Bool|) (|contents#$Memory_141036| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_137833 0)) ((($Memory_137833 (|domain#$Memory_137833| |T@[Int]Bool|) (|contents#$Memory_137833| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_137746 0)) ((($Memory_137746 (|domain#$Memory_137746| |T@[Int]Bool|) (|contents#$Memory_137746| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_158822 0)) ((($Memory_158822 (|domain#$Memory_158822| |T@[Int]Bool|) (|contents#$Memory_158822| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_141387 0)) ((($Memory_141387 (|domain#$Memory_141387| |T@[Int]Bool|) (|contents#$Memory_141387| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_151112 0)) ((($Memory_151112 (|domain#$Memory_151112| |T@[Int]Bool|) (|contents#$Memory_151112| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_141713 0)) ((($Memory_141713 (|domain#$Memory_141713| |T@[Int]Bool|) (|contents#$Memory_141713| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_158731 0)) ((($Memory_158731 (|domain#$Memory_158731| |T@[Int]Bool|) (|contents#$Memory_158731| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_141296 0)) ((($Memory_141296 (|domain#$Memory_141296| |T@[Int]Bool|) (|contents#$Memory_141296| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_153001 0)) ((($Memory_153001 (|domain#$Memory_153001| |T@[Int]Bool|) (|contents#$Memory_153001| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_141614 0)) ((($Memory_141614 (|domain#$Memory_141614| |T@[Int]Bool|) (|contents#$Memory_141614| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_137448 0)) ((($Memory_137448 (|domain#$Memory_137448| |T@[Int]Bool|) (|contents#$Memory_137448| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_137384 0)) ((($Memory_137384 (|domain#$Memory_137384| |T@[Int]Bool|) (|contents#$Memory_137384| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_111212 0)) ((($Memory_111212 (|domain#$Memory_111212| |T@[Int]Bool|) (|contents#$Memory_111212| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_111125 0)) ((($Memory_111125 (|domain#$Memory_111125| |T@[Int]Bool|) (|contents#$Memory_111125| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_111038 0)) ((($Memory_111038 (|domain#$Memory_111038| |T@[Int]Bool|) (|contents#$Memory_111038| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_110951 0)) ((($Memory_110951 (|domain#$Memory_110951| |T@[Int]Bool|) (|contents#$Memory_110951| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_110864 0)) ((($Memory_110864 (|domain#$Memory_110864| |T@[Int]Bool|) (|contents#$Memory_110864| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_110777 0)) ((($Memory_110777 (|domain#$Memory_110777| |T@[Int]Bool|) (|contents#$Memory_110777| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_134043 0)) ((($Memory_134043 (|domain#$Memory_134043| |T@[Int]Bool|) (|contents#$Memory_134043| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_110034 0)) ((($Memory_110034 (|domain#$Memory_110034| |T@[Int]Bool|) (|contents#$Memory_110034| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_107487 0)) ((($Memory_107487 (|domain#$Memory_107487| |T@[Int]Bool|) (|contents#$Memory_107487| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_106558 0)) ((($Memory_106558 (|domain#$Memory_106558| |T@[Int]Bool|) (|contents#$Memory_106558| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_106525 0)) ((($Memory_106525 (|domain#$Memory_106525| |T@[Int]Bool|) (|contents#$Memory_106525| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_106492 0)) ((($Memory_106492 (|domain#$Memory_106492| |T@[Int]Bool|) (|contents#$Memory_106492| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_106459 0)) ((($Memory_106459 (|domain#$Memory_106459| |T@[Int]Bool|) (|contents#$Memory_106459| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_106426 0)) ((($Memory_106426 (|domain#$Memory_106426| |T@[Int]Bool|) (|contents#$Memory_106426| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_109689 0)) ((($Memory_109689 (|domain#$Memory_109689| |T@[Int]Bool|) (|contents#$Memory_109689| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_157733 0)) ((($Memory_157733 (|domain#$Memory_157733| |T@[Int]Bool|) (|contents#$Memory_157733| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_106393 0)) ((($Memory_106393 (|domain#$Memory_106393| |T@[Int]Bool|) (|contents#$Memory_106393| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_109178 0)) ((($Memory_109178 (|domain#$Memory_109178| |T@[Int]Bool|) (|contents#$Memory_109178| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_108620 0)) ((($Memory_108620 (|domain#$Memory_108620| |T@[Int]Bool|) (|contents#$Memory_108620| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_108293 0)) ((($Memory_108293 (|domain#$Memory_108293| |T@[Int]Bool|) (|contents#$Memory_108293| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_105801 0)) ((($Memory_105801 (|domain#$Memory_105801| |T@[Int]Bool|) (|contents#$Memory_105801| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_77118 0)) (((Multiset_77118 (|v#Multiset_77118| |T@[$EventRep]Int|) (|l#Multiset_77118| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_77118| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_77118|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_159817 0)) ((($Mutation_159817 (|l#$Mutation_159817| T@$Location) (|p#$Mutation_159817| (Seq Int)) (|v#$Mutation_159817| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_159773 0)) ((($Mutation_159773 (|l#$Mutation_159773| T@$Location) (|p#$Mutation_159773| (Seq Int)) (|v#$Mutation_159773| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_46724 0)) ((($Mutation_46724 (|l#$Mutation_46724| T@$Location) (|p#$Mutation_46724| (Seq Int)) (|v#$Mutation_46724| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_147106 0)) ((($Mutation_147106 (|l#$Mutation_147106| T@$Location) (|p#$Mutation_147106| (Seq Int)) (|v#$Mutation_147106| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_136242 0)) ((($Mutation_136242 (|l#$Mutation_136242| T@$Location) (|p#$Mutation_136242| (Seq Int)) (|v#$Mutation_136242| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_112908 0)) ((($Mutation_112908 (|l#$Mutation_112908| T@$Location) (|p#$Mutation_112908| (Seq Int)) (|v#$Mutation_112908| T@$1_DiemConfig_Configuration) ) ) ))
(declare-datatypes ((T@$Mutation_106340 0)) ((($Mutation_106340 (|l#$Mutation_106340| T@$Location) (|p#$Mutation_106340| (Seq Int)) (|v#$Mutation_106340| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_99585 0)) ((($Mutation_99585 (|l#$Mutation_99585| T@$Location) (|p#$Mutation_99585| (Seq Int)) (|v#$Mutation_99585| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12338 0)) ((($Mutation_12338 (|l#$Mutation_12338| T@$Location) (|p#$Mutation_12338| (Seq Int)) (|v#$Mutation_12338| Int) ) ) ))
(declare-datatypes ((T@$Mutation_94962 0)) ((($Mutation_94962 (|l#$Mutation_94962| T@$Location) (|p#$Mutation_94962| (Seq Int)) (|v#$Mutation_94962| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_94216 0)) ((($Mutation_94216 (|l#$Mutation_94216| T@$Location) (|p#$Mutation_94216| (Seq Int)) (|v#$Mutation_94216| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_92812 0)) ((($Mutation_92812 (|l#$Mutation_92812| T@$Location) (|p#$Mutation_92812| (Seq Int)) (|v#$Mutation_92812| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_92066 0)) ((($Mutation_92066 (|l#$Mutation_92066| T@$Location) (|p#$Mutation_92066| (Seq Int)) (|v#$Mutation_92066| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_90662 0)) ((($Mutation_90662 (|l#$Mutation_90662| T@$Location) (|p#$Mutation_90662| (Seq Int)) (|v#$Mutation_90662| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_89916 0)) ((($Mutation_89916 (|l#$Mutation_89916| T@$Location) (|p#$Mutation_89916| (Seq Int)) (|v#$Mutation_89916| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_88512 0)) ((($Mutation_88512 (|l#$Mutation_88512| T@$Location) (|p#$Mutation_88512| (Seq Int)) (|v#$Mutation_88512| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_87766 0)) ((($Mutation_87766 (|l#$Mutation_87766| T@$Location) (|p#$Mutation_87766| (Seq Int)) (|v#$Mutation_87766| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_86362 0)) ((($Mutation_86362 (|l#$Mutation_86362| T@$Location) (|p#$Mutation_86362| (Seq Int)) (|v#$Mutation_86362| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_85616 0)) ((($Mutation_85616 (|l#$Mutation_85616| T@$Location) (|p#$Mutation_85616| (Seq Int)) (|v#$Mutation_85616| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_84212 0)) ((($Mutation_84212 (|l#$Mutation_84212| T@$Location) (|p#$Mutation_84212| (Seq Int)) (|v#$Mutation_84212| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_83466 0)) ((($Mutation_83466 (|l#$Mutation_83466| T@$Location) (|p#$Mutation_83466| (Seq Int)) (|v#$Mutation_83466| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_82062 0)) ((($Mutation_82062 (|l#$Mutation_82062| T@$Location) (|p#$Mutation_82062| (Seq Int)) (|v#$Mutation_82062| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_81316 0)) ((($Mutation_81316 (|l#$Mutation_81316| T@$Location) (|p#$Mutation_81316| (Seq Int)) (|v#$Mutation_81316| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_79874 0)) ((($Mutation_79874 (|l#$Mutation_79874| T@$Location) (|p#$Mutation_79874| (Seq Int)) (|v#$Mutation_79874| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_79128 0)) ((($Mutation_79128 (|l#$Mutation_79128| T@$Location) (|p#$Mutation_79128| (Seq Int)) (|v#$Mutation_79128| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_77118_| (|T@[$1_Event_EventHandle]Multiset_77118| T@$1_Event_EventHandle) T@Multiset_77118)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'#0''| (|T@$1_DiemConfig_DiemConfig'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| (|T@$1_DiemConfig_ModifyConfigCapability'#0'|) Bool)
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
(declare-fun ReverseVec_12191 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_69745 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_68760 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_68957 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_69154 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_69942 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_69548 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_69351 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_68563 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_77118| |T@[$1_Event_EventHandle]Multiset_77118|) |T@[$1_Event_EventHandle]Multiset_77118|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemConfigseqArraybpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemConfigseqArraybpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemConfigseqArraybpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemConfigseqArraybpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemConfigseqArraybpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemConfigseqArraybpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemConfigseqArraybpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemConfigseqArraybpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemConfigseqArraybpl.595:13|
 :skolemid |15|
))))
 :qid |DiemConfigseqArraybpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemConfigseqArraybpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemConfigseqArraybpl.608:17|
 :skolemid |18|
)))))
 :qid |DiemConfigseqArraybpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemConfigseqArraybpl.775:13|
 :skolemid |20|
))))
 :qid |DiemConfigseqArraybpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemConfigseqArraybpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemConfigseqArraybpl.788:17|
 :skolemid |23|
)))))
 :qid |DiemConfigseqArraybpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemConfigseqArraybpl.955:13|
 :skolemid |25|
))))
 :qid |DiemConfigseqArraybpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemConfigseqArraybpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemConfigseqArraybpl.968:17|
 :skolemid |28|
)))))
 :qid |DiemConfigseqArraybpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemConfigseqArraybpl.1135:13|
 :skolemid |30|
))))
 :qid |DiemConfigseqArraybpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemConfigseqArraybpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemConfigseqArraybpl.1148:17|
 :skolemid |33|
)))))
 :qid |DiemConfigseqArraybpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |DiemConfigseqArraybpl.1315:13|
 :skolemid |35|
))))
 :qid |DiemConfigseqArraybpl.1313:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemConfigseqArraybpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemConfigseqArraybpl.1328:17|
 :skolemid |38|
)))))
 :qid |DiemConfigseqArraybpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |DiemConfigseqArraybpl.1495:13|
 :skolemid |40|
))))
 :qid |DiemConfigseqArraybpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemConfigseqArraybpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemConfigseqArraybpl.1508:17|
 :skolemid |43|
)))))
 :qid |DiemConfigseqArraybpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |DiemConfigseqArraybpl.1675:13|
 :skolemid |45|
))))
 :qid |DiemConfigseqArraybpl.1673:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemConfigseqArraybpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemConfigseqArraybpl.1688:17|
 :skolemid |48|
)))))
 :qid |DiemConfigseqArraybpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |DiemConfigseqArraybpl.1855:13|
 :skolemid |50|
))))
 :qid |DiemConfigseqArraybpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemConfigseqArraybpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemConfigseqArraybpl.1868:17|
 :skolemid |53|
)))))
 :qid |DiemConfigseqArraybpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |DiemConfigseqArraybpl.2035:13|
 :skolemid |55|
))))
 :qid |DiemConfigseqArraybpl.2033:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemConfigseqArraybpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemConfigseqArraybpl.2048:17|
 :skolemid |58|
)))))
 :qid |DiemConfigseqArraybpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |DiemConfigseqArraybpl.2215:13|
 :skolemid |60|
))))
 :qid |DiemConfigseqArraybpl.2213:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemConfigseqArraybpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemConfigseqArraybpl.2228:17|
 :skolemid |63|
)))))
 :qid |DiemConfigseqArraybpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemConfigseqArraybpl.2401:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemConfigseqArraybpl.2417:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemConfigseqArraybpl.2484:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemConfigseqArraybpl.2487:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_77118| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream) v@@24) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemConfigseqArraybpl.2589:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemConfigseqArraybpl.2595:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemConfigseqArraybpl.2645:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemConfigseqArraybpl.2651:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemConfigseqArraybpl.2701:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemConfigseqArraybpl.2707:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemConfigseqArraybpl.2757:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemConfigseqArraybpl.2763:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemConfigseqArraybpl.2813:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemConfigseqArraybpl.2819:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemConfigseqArraybpl.2869:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemConfigseqArraybpl.2875:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemConfigseqArraybpl.2925:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemConfigseqArraybpl.2931:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemConfigseqArraybpl.2981:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemConfigseqArraybpl.2987:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemConfigseqArraybpl.3037:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemConfigseqArraybpl.3043:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemConfigseqArraybpl.3093:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DiemConfigseqArraybpl.3099:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemConfigseqArraybpl.3149:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DiemConfigseqArraybpl.3155:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemConfigseqArraybpl.3205:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DiemConfigseqArraybpl.3211:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemConfigseqArraybpl.3261:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DiemConfigseqArraybpl.3267:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemConfigseqArraybpl.3317:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DiemConfigseqArraybpl.3323:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemConfigseqArraybpl.3373:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DiemConfigseqArraybpl.3379:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemConfigseqArraybpl.3429:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DiemConfigseqArraybpl.3435:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemConfigseqArraybpl.3485:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DiemConfigseqArraybpl.3491:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |DiemConfigseqArraybpl.3545:15|
 :skolemid |105|
)))
(assert (forall ((addr Int) ) (! true
 :qid |DiemConfigseqArraybpl.3554:15|
 :skolemid |106|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |DiemConfigseqArraybpl.3579:61|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemConfigseqArraybpl.4205:36|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |DiemConfigseqArraybpl.4224:71|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DiemConfigseqArraybpl.4288:46|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DiemConfigseqArraybpl.4301:64|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DiemConfigseqArraybpl.4314:75|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DiemConfigseqArraybpl.4327:72|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DiemConfigseqArraybpl.4356:55|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DiemConfigseqArraybpl.4378:46|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DiemConfigseqArraybpl.4396:49|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DiemConfigseqArraybpl.4486:71|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DiemConfigseqArraybpl.4500:91|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DiemConfigseqArraybpl.4514:113|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemConfigseqArraybpl.4528:75|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemConfigseqArraybpl.4542:73|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15) true)
 :qid |DiemConfigseqArraybpl.4556:49|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@16)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@16)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@16))))
 :qid |DiemConfigseqArraybpl.4576:48|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17) true)
 :qid |DiemConfigseqArraybpl.4592:57|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18) true)
 :qid |DiemConfigseqArraybpl.4606:83|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19) true)
 :qid |DiemConfigseqArraybpl.4620:103|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20) true)
 :qid |DiemConfigseqArraybpl.4634:125|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |DiemConfigseqArraybpl.4648:87|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |DiemConfigseqArraybpl.4662:85|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@23) true)
 :qid |DiemConfigseqArraybpl.4676:61|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@24) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@24)))
 :qid |DiemConfigseqArraybpl.4690:48|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@25)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@25)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@25))))
 :qid |DiemConfigseqArraybpl.9880:45|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@26) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@26)))
 :qid |DiemConfigseqArraybpl.9894:51|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@27)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@27)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@27))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@27))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@27))))
 :qid |DiemConfigseqArraybpl.9917:48|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@27))
)))
(assert (forall ((s@@28 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@28) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@28)))
 :qid |DiemConfigseqArraybpl.10223:49|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@28))
)))
(assert (forall ((s@@29 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@29) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@29)))
 :qid |DiemConfigseqArraybpl.10236:65|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@30)))
 :qid |DiemConfigseqArraybpl.10740:45|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@31)))
 :qid |DiemConfigseqArraybpl.10753:45|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |DiemConfigseqArraybpl.10766:55|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |DiemConfigseqArraybpl.10780:55|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@34))))
 :qid |DiemConfigseqArraybpl.10800:38|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@35))))
 :qid |DiemConfigseqArraybpl.10821:44|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))))
 :qid |DiemConfigseqArraybpl.10872:53|
 :skolemid |255|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))))
 :qid |DiemConfigseqArraybpl.10934:53|
 :skolemid |256|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |DiemConfigseqArraybpl.10960:55|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |DiemConfigseqArraybpl.10974:55|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@40)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@40))))
 :qid |DiemConfigseqArraybpl.10991:38|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@41)))
 :qid |DiemConfigseqArraybpl.11005:48|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@42)))
 :qid |DiemConfigseqArraybpl.11019:48|
 :skolemid |261|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@43)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@43))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@43))))
 :qid |DiemConfigseqArraybpl.11039:41|
 :skolemid |262|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@44) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@44)))
 :qid |DiemConfigseqArraybpl.11054:53|
 :skolemid |263|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@45) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@45)))
 :qid |DiemConfigseqArraybpl.11068:53|
 :skolemid |264|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@46)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@46)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@46))))
 :qid |DiemConfigseqArraybpl.11085:60|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@47)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@47)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@47))))
 :qid |DiemConfigseqArraybpl.11102:60|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@47))
)))
(assert (forall ((s@@48 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@48)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@48)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@48))))
 :qid |DiemConfigseqArraybpl.11119:57|
 :skolemid |267|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@48))
)))
(assert (forall ((s@@49 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@49) true)
 :qid |DiemConfigseqArraybpl.13320:68|
 :skolemid |268|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@50)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50))))
 :qid |DiemConfigseqArraybpl.13342:66|
 :skolemid |269|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@51)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51))))
 :qid |DiemConfigseqArraybpl.13368:66|
 :skolemid |270|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@52)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))))
 :qid |DiemConfigseqArraybpl.13397:56|
 :skolemid |271|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@53)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))))
 :qid |DiemConfigseqArraybpl.13427:56|
 :skolemid |272|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@53))
)))
(assert (forall ((s@@54 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@54) true)
 :qid |DiemConfigseqArraybpl.13761:31|
 :skolemid |273|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@54))
)))
(assert (forall ((s@@55 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@55) true)
 :qid |DiemConfigseqArraybpl.14105:31|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@55))
)))
(assert (forall ((s@@56 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@56)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@56)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@56))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@56))))
 :qid |DiemConfigseqArraybpl.14124:35|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@57) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@57)))
 :qid |DiemConfigseqArraybpl.14545:45|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@58)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@58))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@58))))
 :qid |DiemConfigseqArraybpl.14564:50|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@59) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@59)))
 :qid |DiemConfigseqArraybpl.14579:52|
 :skolemid |278|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@60) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@60)))
 :qid |DiemConfigseqArraybpl.14603:38|
 :skolemid |279|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@61) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@61)))
 :qid |DiemConfigseqArraybpl.14617:39|
 :skolemid |280|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@61))
)))
(assert (forall ((s@@62 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@62)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@62)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@62))))
 :qid |DiemConfigseqArraybpl.14644:65|
 :skolemid |281|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@63))))
 :qid |DiemConfigseqArraybpl.15029:60|
 :skolemid |282|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@64)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@64)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@64))))
 :qid |DiemConfigseqArraybpl.15046:66|
 :skolemid |283|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@65)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@65))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@65))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@65))))
 :qid |DiemConfigseqArraybpl.15075:50|
 :skolemid |284|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@66) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@66)))
 :qid |DiemConfigseqArraybpl.15094:45|
 :skolemid |285|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@67)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@67)) true))
 :qid |DiemConfigseqArraybpl.15413:87|
 :skolemid |286|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@68) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@68)))
 :qid |DiemConfigseqArraybpl.15625:47|
 :skolemid |287|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@69)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@69)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@69))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@69))))
 :qid |DiemConfigseqArraybpl.15645:58|
 :skolemid |288|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@70) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@70)))
 :qid |DiemConfigseqArraybpl.15660:39|
 :skolemid |289|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@71)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@71))))
 :qid |DiemConfigseqArraybpl.15682:58|
 :skolemid |290|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@72)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@72)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@72))))
 :qid |DiemConfigseqArraybpl.15699:58|
 :skolemid |291|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@73) true)
 :qid |DiemConfigseqArraybpl.15714:51|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@74))))
 :qid |DiemConfigseqArraybpl.15731:60|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@75)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@75)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@75))))
 :qid |DiemConfigseqArraybpl.16029:47|
 :skolemid |294|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@76)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@76)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@76))))
 :qid |DiemConfigseqArraybpl.16051:63|
 :skolemid |295|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@77) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@77)))
 :qid |DiemConfigseqArraybpl.16066:57|
 :skolemid |296|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@77))
)))
(assert (forall ((s@@78 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@78) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@78)))
 :qid |DiemConfigseqArraybpl.16079:55|
 :skolemid |297|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@78))
)))
(assert (forall ((s@@79 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@79) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@79)))
 :qid |DiemConfigseqArraybpl.16093:55|
 :skolemid |298|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@80)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@80))))
 :qid |DiemConfigseqArraybpl.16110:54|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@81) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@81)))
 :qid |DiemConfigseqArraybpl.16124:55|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@82) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@82)))
 :qid |DiemConfigseqArraybpl.16138:57|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@83)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@83))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@83))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@83))))
 :qid |DiemConfigseqArraybpl.16160:56|
 :skolemid |302|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@84)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@84)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@84))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@84))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@84))))
 :qid |DiemConfigseqArraybpl.16185:52|
 :skolemid |303|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@85) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@85)))
 :qid |DiemConfigseqArraybpl.16201:54|
 :skolemid |304|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@86)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@86)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@86))))
 :qid |DiemConfigseqArraybpl.17073:47|
 :skolemid |305|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@87)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@87)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@87))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@87))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@87))))
 :qid |DiemConfigseqArraybpl.17097:47|
 :skolemid |306|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@88) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@88)))
 :qid |DiemConfigseqArraybpl.17338:49|
 :skolemid |307|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@89)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@89)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@89))))
 :qid |DiemConfigseqArraybpl.17381:49|
 :skolemid |308|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@90)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@90)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@90))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@90))))
 :qid |DiemConfigseqArraybpl.17410:48|
 :skolemid |309|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@91) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@91)))
 :qid |DiemConfigseqArraybpl.17705:47|
 :skolemid |310|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@91))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12191 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |DiemConfigseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |DiemConfigseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12191 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_69745 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |DiemConfigseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |DiemConfigseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_69745 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_68760 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |DiemConfigseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |DiemConfigseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68760 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_68957 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |DiemConfigseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |DiemConfigseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68957 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_69154 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |DiemConfigseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |DiemConfigseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_69154 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_69942 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |DiemConfigseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |DiemConfigseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_69942 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_69548 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |DiemConfigseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |DiemConfigseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_69548 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_69351 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |DiemConfigseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |DiemConfigseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_69351 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_68563 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |DiemConfigseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |DiemConfigseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68563 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |DiemConfigseqArraybpl.250:54|
 :skolemid |387|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_77118|) (|l#1| |T@[$1_Event_EventHandle]Multiset_77118|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| |l#1| handle@@0))))
(Multiset_77118 (|lambda#3| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| |l#0@@0| handle@@0)) (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemConfigseqArraybpl.2558:13|
 :skolemid |388|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |DiemConfigseqArraybpl.129:29|
 :skolemid |389|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12338)
(declare-fun $t14@1 () T@$Mutation_106340)
(declare-fun $t24@1 () T@$Mutation_12338)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_106340)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_105801)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_107487)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_105801)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_106393)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_106426)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_106459)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_106492)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_106525)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory| () T@$Memory_106558)
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
(declare-fun $t14 () T@$Mutation_106340)
(declare-fun $t14@0 () T@$Mutation_106340)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_106340)
(declare-fun $t24 () T@$Mutation_12338)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 247089) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12338 (|l#$Mutation_106340| $t14@1) (seq.++ (|p#$Mutation_106340| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_106340| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_12338 (|l#$Mutation_12338| $t24@0) (|p#$Mutation_12338| $t24@0) _$t2)) (= $t14@2 ($Mutation_106340 (|l#$Mutation_106340| $t14@1) (|p#$Mutation_106340| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12338| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_105801 (|Store__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_106340| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_106340| $t14@2)) (|v#$Mutation_106340| $t14@2)))))) (and (=> (= (ControlFlow 0 177729) (- 0 247741)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (and (=> (= (ControlFlow 0 177729) (- 0 247753)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)))) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 177729) (- 0 247838)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 177729) (- 0 247848)) (not (not (= (|$addr#$signer| _$t0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0) 0))) (and (=> (= (ControlFlow 0 177729) (- 0 247862)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 177729) (- 0 247886)) (= $t25 _$t2)))))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 177787) 177729)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 177497) 177729)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 177493) (- 0 247930)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 177493) (- 0 247967)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 177783) 177493))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 177767) 177787) anon25_Then_correct) (=> (= (ControlFlow 0 177767) 177783) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 177377) 177493))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 177361) 177497) anon26_Then_correct) (=> (= (ControlFlow 0 177361) 177377) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 177325) 177361)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 177331) 177325)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_106340| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_106340| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 177279) 177767) anon24_Then_correct) (=> (= (ControlFlow 0 177279) 177331) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 177801) 177493))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 177853) 177801) anon23_Then_correct) (=> (= (ControlFlow 0 177853) 177279) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 177851) 177853)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_106340 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 177233) 177801) anon23_Then_correct) (=> (= (ControlFlow 0 177233) 177279) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 177211) (- 0 247399)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 177211) 177851) anon22_Then_correct) (=> (= (ControlFlow 0 177211) 177233) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 177883) 177493))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= (|$addr#$signer| _$t0) 0)))) (and (=> (= (ControlFlow 0 177191) 177883) anon21_Then_correct) (=> (= (ControlFlow 0 177191) 177211) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 177909) 177493))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemConfigseqArraybpl.3808:20|
 :skolemid |108|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 177169) 177909) anon20_Then_correct) (=> (= (ControlFlow 0 177169) 177191) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_77118| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@0) v@@35) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 177057) 177169)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_106340| $t7)) 0) (= (seq.len (|p#$Mutation_106340| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12338| $t24)) 0) (= (ControlFlow 0 177067) 177057))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 247089) 177067) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_107487)
(declare-fun $t15 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $t4@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_107487)
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
(declare-fun $t3 () Bool)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 248221) (let ((anon21_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 178626) (- 0 248844)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory@1) 173345816)) (=> (= $t15 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 178626) (- 0 248871)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (and (=> (= (ControlFlow 0 178626) (- 0 248879)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 178626) (- 0 248889)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 178626) (- 0 248903)) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory@1) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory@1) 173345816) (and (=> (= (ControlFlow 0 178626) (- 0 248909)) (= (|$epoch#$1_DiemConfig_Configuration| $t15) 0)) (=> (= (|$epoch#$1_DiemConfig_Configuration| $t15) 0) (=> (= (ControlFlow 0 178626) (- 0 248920)) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t15) 0))))))))))))))))))
(let ((anon19_Then_correct true))
(let ((L3_correct  (and (=> (= (ControlFlow 0 178390) (- 0 248770)) (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (=> (= (ControlFlow 0 178390) (- 0 248791)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (= 6 $t4@0)) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@0))) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t4@0))))))))
(let ((anon21_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t4@0 $abort_code@1@@0) (= (ControlFlow 0 178640) 178390))) L3_correct)))
(let ((anon20_Then$1_correct  (=> (= $1_DiemConfig_Configuration_$memory@1 $1_DiemConfig_Configuration_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 178692) 178640) anon21_Then_correct@@0) (=> (= (ControlFlow 0 178692) 178626) anon21_Else_correct@@0))))))
(let ((anon20_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 178690) 178692)) anon20_Then$1_correct)))
(let ((anon20_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) (|$addr#$signer| _$t0@@0))) (=> (and (and (= $1_DiemConfig_Configuration_$memory@0 ($Memory_107487 (|Store__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) (|$addr#$signer| _$t0@@0) $t14@0@@0))) (= $1_DiemConfig_Configuration_$memory@1 $1_DiemConfig_Configuration_$memory@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 178534) 178640) anon21_Then_correct@@0) (=> (= (ControlFlow 0 178534) 178626) anon21_Else_correct@@0))))))
(let ((anon19_Else_correct  (=> (and (not false) (= $t14@0@@0 ($1_DiemConfig_Configuration 0 0 |inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 178512) (- 0 248661)) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies (|$addr#$signer| _$t0@@0)) (and (=> (= (ControlFlow 0 178512) 178690) anon20_Then_correct@@0) (=> (= (ControlFlow 0 178512) 178534) anon20_Else_correct@@0)))))))
(let ((|inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 178478) 178706) anon19_Then_correct) (=> (= (ControlFlow 0 178478) 178512) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (and (and inline$$Not$0$dst@1 (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 178484) 178478))) |inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$anon0_correct|)))
(let ((anon18_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t10@@0 $t10@@0)) (and (= $t4@0 $t10@@0) (= (ControlFlow 0 178310) 178390))) L3_correct)))
(let ((anon17_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t10@@0) (= $t10@@0 6)) (and (= $t10@@0 $t10@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 178294) 178484) anon18_Then_correct) (=> (= (ControlFlow 0 178294) 178310) anon18_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t7@0)) (= (ControlFlow 0 178258) 178294)) anon17_Else$1_correct)))
(let ((anon17_Else_correct  (=> (and (and (not $t5) (|$IsValid'address'| 173345816)) (and (= $t7@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= (ControlFlow 0 178264) 178258))) inline$$Not$0$anon0_correct)))
(let ((anon17_Then_correct  (=> $t5 (=> (and (and (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t4)) (= $t4 $t4)) (and (= $t4@0 $t4) (= (ControlFlow 0 178736) 178390))) L3_correct))))
(let ((anon16_Else_correct  (=> (and (not $t3) (= $t5  (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (and (=> (= (ControlFlow 0 178208) 178736) anon17_Then_correct) (=> (= (ControlFlow 0 178208) 178264) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> $t3 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4)) (= $t4 $t4)) (and (= $t4@0 $t4) (= (ControlFlow 0 178762) 178390))) L3_correct))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@0))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |DiemConfigseqArraybpl.4743:20|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) $a_0@@1)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@1))
 :qid |DiemConfigseqArraybpl.4747:20|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) $a_0@@1))
)))) (and (and (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies 173345816) (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= $t3  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 178186) 178762) anon16_Then_correct) (=> (= (ControlFlow 0 178186) 178208) anon16_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_77118| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@1) v@@36) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 178060) 178186)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 248221) 178060) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0)))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_disable_reconfiguration$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 248937) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@0 () T@$Memory_107487)
(declare-fun $t12@2 () T@$Mutation_112908)
(declare-fun $t27 () T@$1_DiemConfig_Configuration)
(declare-fun $t28 () T@$1_Event_EventHandle)
(declare-fun $t29 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_77118_| (|T@[$1_Event_EventHandle]Multiset_77118| T@$1_Event_EventHandle T@Multiset_77118) |T@[$1_Event_EventHandle]Multiset_77118|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_77118|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_77118)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|Store__T@[$1_Event_EventHandle]Multiset_77118_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_77118|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_77118)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|Store__T@[$1_Event_EventHandle]Multiset_77118_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_77118_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t24@0@@0 () T@$Mutation_99585)
(declare-fun $t26@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t4@0@@0 () Bool)
(declare-fun $t23@0 () T@$Mutation_12338)
(declare-fun $t12@1 () T@$Mutation_112908)
(declare-fun $t23@1 () T@$Mutation_12338)
(declare-fun $t25@0 () Int)
(declare-fun $t21 () Int)
(declare-fun $t15@0@@0 () Bool)
(declare-fun $t16@0 () Int)
(declare-fun $t18@0@@0 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t13@0 () Int)
(declare-fun $t12@@0 () T@$Mutation_112908)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t12@0 () T@$Mutation_112908)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t7@0@@0 () Bool)
(declare-fun $t9@@0 () Int)
(declare-fun $t5@@0 () T@$Mutation_112908)
(declare-fun $t23@@0 () T@$Mutation_12338)
(declare-fun $t24@@0 () T@$Mutation_99585)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_emit_genesis_reconfiguration_event$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 249533) (let ((anon22_Else_correct@@0  (=> (and (not $abort_flag@0@@1) (= $1_DiemConfig_Configuration_$memory@0@@0 ($Memory_107487 (|Store__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) (|a#$Global| (|l#$Mutation_112908| $t12@2)) true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) (|a#$Global| (|l#$Mutation_112908| $t12@2)) (|v#$Mutation_112908| $t12@2))))) (and (=> (= (ControlFlow 0 180156) (- 0 250173)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory@0@@0) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory@0@@0) 173345816)) (=> (= $t27 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory@0@@0) 173345816)) (=> (and (= $t28 (|$events#$1_DiemConfig_Configuration| $t27)) (= $t29 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t27)))) (and (=> (= (ControlFlow 0 180156) (- 0 250224)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t28)))
(let ((stream_new (let ((len (|l#Multiset_77118| stream@@2)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t28 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected) handle@@3)) (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual) handle@@3))) (forall ((v@@37 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected) handle@@3)) v@@37) (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual) handle@@3)) v@@37))
 :qid |DiemConfigseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigseqArraybpl.2564:13|
 :skolemid |70|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t28)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_77118| stream@@3)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t28 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@0) handle@@4)) (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@0) handle@@4))) (forall ((v@@38 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@0) handle@@4)) v@@38) (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@0) handle@@4)) v@@38))
 :qid |DiemConfigseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigseqArraybpl.2564:13|
 :skolemid |70|
))))) (=> (= (ControlFlow 0 180156) (- 0 250249)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t28)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_77118| stream@@4)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@4) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@4) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t28 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@5 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@1) handle@@5)) (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@1) handle@@5))) (forall ((v@@39 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@1) handle@@5)) v@@39) (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@1) handle@@5)) v@@39))
 :qid |DiemConfigseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigseqArraybpl.2564:13|
 :skolemid |70|
)))))))))))))))
(let ((anon22_Then_correct@@0 true))
(let ((|inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1| (|v#$Mutation_99585| $t24@0@@0)) (= $es@0 (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_77118| stream@@5)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@5) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t26@0))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@5) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t26@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 180026) 180170) anon22_Then_correct@@0) (=> (= (ControlFlow 0 180026) 180156) anon22_Else_correct@@0)))))
(let ((anon21_Then_correct@@1  (=> $t4@0@@0 (=> (and (and (and (|$IsValid'u64'| 1) (= $t23@0 ($Mutation_12338 (|l#$Mutation_112908| $t12@1) (seq.++ (|p#$Mutation_112908| $t12@1) (seq.unit 0)) (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t12@1))))) (and (= $t23@1 ($Mutation_12338 (|l#$Mutation_12338| $t23@0) (|p#$Mutation_12338| $t23@0) 1)) (= $t12@2 ($Mutation_112908 (|l#$Mutation_112908| $t12@1) (|p#$Mutation_112908| $t12@1) ($1_DiemConfig_Configuration (|v#$Mutation_12338| $t23@1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t12@1)) (|$events#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t12@1))))))) (and (and (= $t24@0@@0 ($Mutation_99585 (|l#$Mutation_112908| $t12@2) (seq.++ (|p#$Mutation_112908| $t12@2) (seq.unit 2)) (|$events#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t12@2)))) (= $t25@0 (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t12@2)))) (and (= $t26@0 ($1_DiemConfig_NewEpochEvent $t25@0)) (= (ControlFlow 0 180032) 180026)))) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$anon0_correct|))))
(let ((anon21_Else_correct@@1 true))
(let ((L5_correct@@0  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t21) (= $t21 1)) (and (= $t21 $t21) (= $t4@0@@0 $t4@0@@0))) (and (=> (= (ControlFlow 0 179869) 180032) anon21_Then_correct@@1) (=> (= (ControlFlow 0 179869) 179885) anon21_Else_correct@@1))))))
(let ((anon20_Else_correct@@1  (=> (and (and (not $t15@0@@0) (= false false)) (and (= $t4@0@@0 false) (= (ControlFlow 0 179839) 179869))) L5_correct@@0)))
(let ((anon20_Then_correct@@1  (=> $t15@0@@0 (=> (and (= $t16@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t12@1))) (|$IsValid'u64'| 0)) (=> (and (and (= $t18@0@@0 (= $t16@0 0)) (= $t18@0@@0 $t18@0@@0)) (and (= $t4@0@@0 $t18@0@@0) (= (ControlFlow 0 180200) 179869))) L5_correct@@0)))))
(let ((anon19_Else_correct@@0  (=> (and (not $abort_flag@0@@1) (= |$temp_0'$1_DiemConfig_Configuration'@0| (|v#$Mutation_112908| $t12@1))) (=> (and (and (= |$temp_0'$1_DiemConfig_Configuration'@0| |$temp_0'$1_DiemConfig_Configuration'@0|) (= $t13@0 (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t12@1)))) (and (|$IsValid'u64'| 0) (= $t15@0@@0 (= $t13@0 0)))) (and (=> (= (ControlFlow 0 179819) 180200) anon20_Then_correct@@1) (=> (= (ControlFlow 0 179819) 179839) anon20_Else_correct@@1))))))
(let ((anon19_Then_correct@@0 true))
(let ((anon18_Then$1_correct  (=> (= $t12@1 $t12@@0) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 180266) 180214) anon19_Then_correct@@0) (=> (= (ControlFlow 0 180266) 179819) anon19_Else_correct@@0))))))
(let ((anon18_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= (ControlFlow 0 180264) 180266)) anon18_Then$1_correct)))
(let ((anon18_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (=> (and (and (= $t12@0 ($Mutation_112908 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816))) (= $t12@1 $t12@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 179781) 180214) anon19_Then_correct@@0) (=> (= (ControlFlow 0 179781) 179819) anon19_Else_correct@@0))))))
(let ((anon17_Then_correct@@0  (=> (and $t7@0@@0 (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 179759) 180264) anon18_Then_correct@@0) (=> (= (ControlFlow 0 179759) 179781) anon18_Else_correct@@0)))))
(let ((anon17_Else_correct@@0 true))
(let ((anon0$1_correct@@1  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (and (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) $a_0@@2)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@2))
 :qid |DiemConfigseqArraybpl.5285:20|
 :skolemid |137|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) $a_0@@2))
)) (|$IsValid'address'| 173345816)) (and (= $t7@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 5)) (and (= $t9@@0 $t9@@0) (= $t7@0@@0 $t7@0@@0)))) (and (=> (= (ControlFlow 0 179727) 179759) anon17_Then_correct@@0) (=> (= (ControlFlow 0 179727) 179743) anon17_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_77118| stream@@6) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@6) v@@40) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 179639) 179727)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (seq.len (|p#$Mutation_112908| $t5@@0)) 0) (=> (and (and (= (seq.len (|p#$Mutation_112908| $t12@@0)) 0) (= (seq.len (|p#$Mutation_12338| $t23@@0)) 0)) (and (= (seq.len (|p#$Mutation_99585| $t24@@0)) 0) (= (ControlFlow 0 179649) 179639))) inline$$InitEventStore$0$anon0_correct@@1))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 249533) 179649) anon0_correct@@1)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_enable_reconfiguration$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 250279) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t9@0 () |T@#0|)
(declare-fun $t8@1 () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|T@[Int]$1_DiemConfig_DiemConfig'#0'| Int) |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t7@0@@1 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t8 () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t8@0 () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t4@0@@1 () Bool)
(declare-fun $t6 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_get$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 250912) (let ((anon12_Else_correct  (=> (not $abort_flag@0@@2) (=> (and (= $t9@0 (|$payload#$1_DiemConfig_DiemConfig'#0'| $t8@1)) (= $t9@0 $t9@0)) (and (=> (= (ControlFlow 0 181520) (- 0 251353)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 181520) (- 0 251365)) (= $t9@0 (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'#0'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) addr@@0)))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 181458) (- 0 251304)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (=> (= (ControlFlow 0 181458) (- 0 251311)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (= 5 $t7@0@@1)))))))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t7@0@@1 $abort_code@1@@2) (= (ControlFlow 0 181534) 181458))) L3_correct@@0)))
(let ((anon11_Then$1_correct  (=> (= $t8@1 $t8) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 181586) 181534) anon12_Then_correct) (=> (= (ControlFlow 0 181586) 181520) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (= (ControlFlow 0 181584) 181586)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (=> (and (and (= $t8@0 (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (= $t8@1 $t8@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 181476) 181534) anon12_Then_correct) (=> (= (ControlFlow 0 181476) 181520) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> $t4@0@@1 (and (=> (= (ControlFlow 0 181462) 181584) anon11_Then_correct) (=> (= (ControlFlow 0 181462) 181476) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (and (not $t4@0@@1) (= $t6 $t6)) (and (= $t7@0@@1 $t6) (= (ControlFlow 0 181426) 181458))) L3_correct@@0)))
(let ((anon0$1_correct@@2  (=> (and (and (and (and (and (and (and (forall ((config_address Int) ) (!  (=> (|$IsValid'address'| config_address) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address) (= config_address 173345816)))
 :qid |DiemConfigseqArraybpl.5832:25|
 :skolemid |140|
)) (forall ((config_address@@0 Int) ) (!  (=> (|$IsValid'address'| config_address@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@0) (= config_address@@0 173345816)))
 :qid |DiemConfigseqArraybpl.5832:244|
 :skolemid |141|
))) (forall ((config_address@@1 Int) ) (!  (=> (|$IsValid'address'| config_address@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@1) (= config_address@@1 173345816)))
 :qid |DiemConfigseqArraybpl.5832:484|
 :skolemid |142|
))) (forall ((config_address@@2 Int) ) (!  (=> (|$IsValid'address'| config_address@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@2) (= config_address@@2 173345816)))
 :qid |DiemConfigseqArraybpl.5832:746|
 :skolemid |143|
))) (forall ((config_address@@3 Int) ) (!  (=> (|$IsValid'address'| config_address@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@3) (= config_address@@3 173345816)))
 :qid |DiemConfigseqArraybpl.5832:970|
 :skolemid |144|
))) (forall ((config_address@@4 Int) ) (!  (=> (|$IsValid'address'| config_address@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@4) (= config_address@@4 173345816)))
 :qid |DiemConfigseqArraybpl.5832:1192|
 :skolemid |145|
))) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemConfig_DiemConfig'#0''| $rsc@@3))
 :qid |DiemConfigseqArraybpl.5836:20|
 :skolemid |146|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) $a_0@@3))
))) (and (and (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (= $t4@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t6) (= $t6 5)) (and (= $t6 $t6) (= $t4@0@@1 $t4@0@@1))))) (and (=> (= (ControlFlow 0 181410) 181462) anon10_Then_correct) (=> (= (ControlFlow 0 181410) 181426) anon10_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_77118| stream@@7) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@7) v@@41) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 181170) 181410)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 250912) 181170) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $t9@0@@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t8@1@@0 () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t7@0@@2 () Int)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t8@@0 () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t8@0@@0 () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t4@0@@2 () Bool)
(declare-fun $t6@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_get$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 251382) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0@@3) (=> (and (= $t9@0@@0 (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $t8@1@@0)) (= $t9@0@@0 $t9@0@@0)) (and (=> (= (ControlFlow 0 182021) (- 0 251823)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (= (ControlFlow 0 182021) (- 0 251835)) (= $t9@0@@0 (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@1)))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 181959) (- 0 251774)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (= (ControlFlow 0 181959) (- 0 251781)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t7@0@@2)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t7@0@@2 $abort_code@1@@3) (= (ControlFlow 0 182035) 181959))) L3_correct@@1)))
(let ((anon11_Then$1_correct@@0  (=> (= $t8@1@@0 $t8@@0) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 182087) 182035) anon12_Then_correct@@0) (=> (= (ControlFlow 0 182087) 182021) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= (ControlFlow 0 182085) 182087)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (=> (and (and (= $t8@0@@0 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= $t8@1@@0 $t8@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 181977) 182035) anon12_Then_correct@@0) (=> (= (ControlFlow 0 181977) 182021) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct@@0  (=> $t4@0@@2 (and (=> (= (ControlFlow 0 181963) 182085) anon11_Then_correct@@0) (=> (= (ControlFlow 0 181963) 181977) anon11_Else_correct@@0)))))
(let ((anon10_Else_correct@@0  (=> (and (and (not $t4@0@@2) (= $t6@@0 $t6@@0)) (and (= $t7@0@@2 $t6@@0) (= (ControlFlow 0 181927) 181959))) L3_correct@@1)))
(let ((anon0$1_correct@@3  (=> (and (and (and (and (and (and (and (forall ((config_address@@5 Int) ) (!  (=> (|$IsValid'address'| config_address@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@5) (= config_address@@5 173345816)))
 :qid |DiemConfigseqArraybpl.5985:25|
 :skolemid |147|
)) (forall ((config_address@@6 Int) ) (!  (=> (|$IsValid'address'| config_address@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@6) (= config_address@@6 173345816)))
 :qid |DiemConfigseqArraybpl.5985:244|
 :skolemid |148|
))) (forall ((config_address@@7 Int) ) (!  (=> (|$IsValid'address'| config_address@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@7) (= config_address@@7 173345816)))
 :qid |DiemConfigseqArraybpl.5985:484|
 :skolemid |149|
))) (forall ((config_address@@8 Int) ) (!  (=> (|$IsValid'address'| config_address@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@8) (= config_address@@8 173345816)))
 :qid |DiemConfigseqArraybpl.5985:746|
 :skolemid |150|
))) (forall ((config_address@@9 Int) ) (!  (=> (|$IsValid'address'| config_address@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@9) (= config_address@@9 173345816)))
 :qid |DiemConfigseqArraybpl.5985:970|
 :skolemid |151|
))) (forall ((config_address@@10 Int) ) (!  (=> (|$IsValid'address'| config_address@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@10) (= config_address@@10 173345816)))
 :qid |DiemConfigseqArraybpl.5985:1192|
 :skolemid |152|
))) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@4)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@4))
 :qid |DiemConfigseqArraybpl.5989:20|
 :skolemid |153|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@4))
))) (and (and (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (= $t4@0@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t6@@0) (= $t6@@0 5)) (and (= $t6@@0 $t6@@0) (= $t4@0@@2 $t4@0@@2))))) (and (=> (= (ControlFlow 0 181911) 181963) anon10_Then_correct@@0) (=> (= (ControlFlow 0 181911) 181927) anon10_Else_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_77118| stream@@8) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@8) v@@42) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 181671) 181911)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 251382) 181671) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $t9@0@@1 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $t8@1@@1 () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $t7@0@@3 () Int)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t8@@1 () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $t8@0@@1 () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t4@0@@3 () Bool)
(declare-fun $t6@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_get$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 251852) (let ((anon12_Else_correct@@1  (=> (not $abort_flag@0@@4) (=> (and (= $t9@0@@1 (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| $t8@1@@1)) (= $t9@0@@1 $t9@0@@1)) (and (=> (= (ControlFlow 0 182522) (- 0 252293)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (= (ControlFlow 0 182522) (- 0 252305)) (= $t9@0@@1 (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 182460) (- 0 252244)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (= (ControlFlow 0 182460) (- 0 252251)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 $t7@0@@3)))))))
(let ((anon12_Then_correct@@1  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t7@0@@3 $abort_code@1@@4) (= (ControlFlow 0 182536) 182460))) L3_correct@@2)))
(let ((anon11_Then$1_correct@@1  (=> (= $t8@1@@1 $t8@@1) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 182588) 182536) anon12_Then_correct@@1) (=> (= (ControlFlow 0 182588) 182522) anon12_Else_correct@@1))))))
(let ((anon11_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= (ControlFlow 0 182586) 182588)) anon11_Then$1_correct@@1)))
(let ((anon11_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (=> (and (and (= $t8@0@@1 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= $t8@1@@1 $t8@0@@1)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 182478) 182536) anon12_Then_correct@@1) (=> (= (ControlFlow 0 182478) 182522) anon12_Else_correct@@1))))))
(let ((anon10_Then_correct@@1  (=> $t4@0@@3 (and (=> (= (ControlFlow 0 182464) 182586) anon11_Then_correct@@1) (=> (= (ControlFlow 0 182464) 182478) anon11_Else_correct@@1)))))
(let ((anon10_Else_correct@@1  (=> (and (and (not $t4@0@@3) (= $t6@@1 $t6@@1)) (and (= $t7@0@@3 $t6@@1) (= (ControlFlow 0 182428) 182460))) L3_correct@@2)))
(let ((anon0$1_correct@@4  (=> (and (and (and (and (and (and (and (forall ((config_address@@11 Int) ) (!  (=> (|$IsValid'address'| config_address@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@11) (= config_address@@11 173345816)))
 :qid |DiemConfigseqArraybpl.6138:25|
 :skolemid |154|
)) (forall ((config_address@@12 Int) ) (!  (=> (|$IsValid'address'| config_address@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@12) (= config_address@@12 173345816)))
 :qid |DiemConfigseqArraybpl.6138:244|
 :skolemid |155|
))) (forall ((config_address@@13 Int) ) (!  (=> (|$IsValid'address'| config_address@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@13) (= config_address@@13 173345816)))
 :qid |DiemConfigseqArraybpl.6138:484|
 :skolemid |156|
))) (forall ((config_address@@14 Int) ) (!  (=> (|$IsValid'address'| config_address@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@14) (= config_address@@14 173345816)))
 :qid |DiemConfigseqArraybpl.6138:746|
 :skolemid |157|
))) (forall ((config_address@@15 Int) ) (!  (=> (|$IsValid'address'| config_address@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@15) (= config_address@@15 173345816)))
 :qid |DiemConfigseqArraybpl.6138:970|
 :skolemid |158|
))) (forall ((config_address@@16 Int) ) (!  (=> (|$IsValid'address'| config_address@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@16) (= config_address@@16 173345816)))
 :qid |DiemConfigseqArraybpl.6138:1192|
 :skolemid |159|
))) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@5)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@5))
 :qid |DiemConfigseqArraybpl.6142:20|
 :skolemid |160|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@5))
))) (and (and (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (= $t4@0@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t6@@1) (= $t6@@1 5)) (and (= $t6@@1 $t6@@1) (= $t4@0@@3 $t4@0@@3))))) (and (=> (= (ControlFlow 0 182412) 182464) anon10_Then_correct@@1) (=> (= (ControlFlow 0 182412) 182428) anon10_Else_correct@@1)))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_77118| stream@@9) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@9) v@@43) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 182172) 182412)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 251852) 182172) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t9@0@@2 () T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption)
(declare-fun $t8@1@@2 () |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun $t7@0@@4 () Int)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $t8@@2 () |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun $t8@0@@2 () |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t4@0@@4 () Bool)
(declare-fun $t6@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_get$verify_instantiated_2)
(assert (not
 (=> (= (ControlFlow 0 0) 252322) (let ((anon12_Else_correct@@2  (=> (not $abort_flag@0@@5) (=> (and (= $t9@0@@2 (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| $t8@1@@2)) (= $t9@0@@2 $t9@0@@2)) (and (=> (= (ControlFlow 0 183023) (- 0 252763)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (= (ControlFlow 0 183023) (- 0 252775)) (= $t9@0@@2 (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) addr@@3)))))))))))
(let ((L3_correct@@3  (and (=> (= (ControlFlow 0 182961) (- 0 252714)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (= (ControlFlow 0 182961) (- 0 252721)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= 5 $t7@0@@4)))))))
(let ((anon12_Then_correct@@2  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t7@0@@4 $abort_code@1@@5) (= (ControlFlow 0 183037) 182961))) L3_correct@@3)))
(let ((anon11_Then$1_correct@@2  (=> (= $t8@1@@2 $t8@@2) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 183089) 183037) anon12_Then_correct@@2) (=> (= (ControlFlow 0 183089) 183023) anon12_Else_correct@@2))))))
(let ((anon11_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= (ControlFlow 0 183087) 183089)) anon11_Then$1_correct@@2)))
(let ((anon11_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (=> (and (and (= $t8@0@@2 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (= $t8@1@@2 $t8@0@@2)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 182979) 183037) anon12_Then_correct@@2) (=> (= (ControlFlow 0 182979) 183023) anon12_Else_correct@@2))))))
(let ((anon10_Then_correct@@2  (=> $t4@0@@4 (and (=> (= (ControlFlow 0 182965) 183087) anon11_Then_correct@@2) (=> (= (ControlFlow 0 182965) 182979) anon11_Else_correct@@2)))))
(let ((anon10_Else_correct@@2  (=> (and (and (not $t4@0@@4) (= $t6@@2 $t6@@2)) (and (= $t7@0@@4 $t6@@2) (= (ControlFlow 0 182929) 182961))) L3_correct@@3)))
(let ((anon0$1_correct@@5  (=> (and (and (and (and (and (and (and (forall ((config_address@@17 Int) ) (!  (=> (|$IsValid'address'| config_address@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@17) (= config_address@@17 173345816)))
 :qid |DiemConfigseqArraybpl.6291:25|
 :skolemid |161|
)) (forall ((config_address@@18 Int) ) (!  (=> (|$IsValid'address'| config_address@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@18) (= config_address@@18 173345816)))
 :qid |DiemConfigseqArraybpl.6291:244|
 :skolemid |162|
))) (forall ((config_address@@19 Int) ) (!  (=> (|$IsValid'address'| config_address@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@19) (= config_address@@19 173345816)))
 :qid |DiemConfigseqArraybpl.6291:484|
 :skolemid |163|
))) (forall ((config_address@@20 Int) ) (!  (=> (|$IsValid'address'| config_address@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@20) (= config_address@@20 173345816)))
 :qid |DiemConfigseqArraybpl.6291:746|
 :skolemid |164|
))) (forall ((config_address@@21 Int) ) (!  (=> (|$IsValid'address'| config_address@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@21) (= config_address@@21 173345816)))
 :qid |DiemConfigseqArraybpl.6291:970|
 :skolemid |165|
))) (forall ((config_address@@22 Int) ) (!  (=> (|$IsValid'address'| config_address@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@22) (= config_address@@22 173345816)))
 :qid |DiemConfigseqArraybpl.6291:1192|
 :skolemid |166|
))) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@6)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $rsc@@6))
 :qid |DiemConfigseqArraybpl.6295:20|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@6))
))) (and (and (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (= $t4@0@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t6@@2) (= $t6@@2 5)) (and (= $t6@@2 $t6@@2) (= $t4@0@@4 $t4@0@@4))))) (and (=> (= (ControlFlow 0 182913) 182965) anon10_Then_correct@@2) (=> (= (ControlFlow 0 182913) 182929) anon10_Else_correct@@2)))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_77118| stream@@10) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@10) v@@44) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 182673) 182913)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 252322) 182673) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $t9@0@@3 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun $t8@1@@3 () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t7@0@@5 () Int)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $t8@@3 () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t8@0@@3 () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun $t4@0@@5 () Bool)
(declare-fun $t6@@3 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_get$verify_instantiated_3)
(assert (not
 (=> (= (ControlFlow 0 0) 252792) (let ((anon12_Else_correct@@3  (=> (not $abort_flag@0@@6) (=> (and (= $t9@0@@3 (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| $t8@1@@3)) (= $t9@0@@3 $t9@0@@3)) (and (=> (= (ControlFlow 0 183524) (- 0 253233)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (= (ControlFlow 0 183524) (- 0 253245)) (= $t9@0@@3 (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) addr@@4)))))))))))
(let ((L3_correct@@4  (and (=> (= (ControlFlow 0 183462) (- 0 253184)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (= (ControlFlow 0 183462) (- 0 253191)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (= 5 $t7@0@@5)))))))
(let ((anon12_Then_correct@@3  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t7@0@@5 $abort_code@1@@6) (= (ControlFlow 0 183538) 183462))) L3_correct@@4)))
(let ((anon11_Then$1_correct@@3  (=> (= $t8@1@@3 $t8@@3) (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 183590) 183538) anon12_Then_correct@@3) (=> (= (ControlFlow 0 183590) 183524) anon12_Else_correct@@3))))))
(let ((anon11_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (= (ControlFlow 0 183588) 183590)) anon11_Then$1_correct@@3)))
(let ((anon11_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (=> (and (and (= $t8@0@@3 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (= $t8@1@@3 $t8@0@@3)) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 183480) 183538) anon12_Then_correct@@3) (=> (= (ControlFlow 0 183480) 183524) anon12_Else_correct@@3))))))
(let ((anon10_Then_correct@@3  (=> $t4@0@@5 (and (=> (= (ControlFlow 0 183466) 183588) anon11_Then_correct@@3) (=> (= (ControlFlow 0 183466) 183480) anon11_Else_correct@@3)))))
(let ((anon10_Else_correct@@3  (=> (and (and (not $t4@0@@5) (= $t6@@3 $t6@@3)) (and (= $t7@0@@5 $t6@@3) (= (ControlFlow 0 183430) 183462))) L3_correct@@4)))
(let ((anon0$1_correct@@6  (=> (and (and (and (and (and (and (and (forall ((config_address@@23 Int) ) (!  (=> (|$IsValid'address'| config_address@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@23) (= config_address@@23 173345816)))
 :qid |DiemConfigseqArraybpl.6444:25|
 :skolemid |168|
)) (forall ((config_address@@24 Int) ) (!  (=> (|$IsValid'address'| config_address@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@24) (= config_address@@24 173345816)))
 :qid |DiemConfigseqArraybpl.6444:244|
 :skolemid |169|
))) (forall ((config_address@@25 Int) ) (!  (=> (|$IsValid'address'| config_address@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@25) (= config_address@@25 173345816)))
 :qid |DiemConfigseqArraybpl.6444:484|
 :skolemid |170|
))) (forall ((config_address@@26 Int) ) (!  (=> (|$IsValid'address'| config_address@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@26) (= config_address@@26 173345816)))
 :qid |DiemConfigseqArraybpl.6444:746|
 :skolemid |171|
))) (forall ((config_address@@27 Int) ) (!  (=> (|$IsValid'address'| config_address@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@27) (= config_address@@27 173345816)))
 :qid |DiemConfigseqArraybpl.6444:970|
 :skolemid |172|
))) (forall ((config_address@@28 Int) ) (!  (=> (|$IsValid'address'| config_address@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@28) (= config_address@@28 173345816)))
 :qid |DiemConfigseqArraybpl.6444:1192|
 :skolemid |173|
))) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@7)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| $rsc@@7))
 :qid |DiemConfigseqArraybpl.6448:20|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@7))
))) (and (and (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (= $t4@0@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t6@@3) (= $t6@@3 5)) (and (= $t6@@3 $t6@@3) (= $t4@0@@5 $t4@0@@5))))) (and (=> (= (ControlFlow 0 183414) 183466) anon10_Then_correct@@3) (=> (= (ControlFlow 0 183414) 183430) anon10_Else_correct@@3)))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_77118| stream@@11) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@11) v@@45) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 183174) 183414)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 252792) 183174) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $t9@0@@4 () T@$1_DiemVersion_DiemVersion)
(declare-fun $t8@1@@4 () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $t7@0@@6 () Int)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t8@@4 () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $t8@0@@4 () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun $t4@0@@6 () Bool)
(declare-fun $t6@@4 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_get$verify_instantiated_4)
(assert (not
 (=> (= (ControlFlow 0 0) 253262) (let ((anon12_Else_correct@@4  (=> (not $abort_flag@0@@7) (=> (and (= $t9@0@@4 (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| $t8@1@@4)) (= $t9@0@@4 $t9@0@@4)) (and (=> (= (ControlFlow 0 184025) (- 0 253703)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (= (ControlFlow 0 184025) (- 0 253715)) (= $t9@0@@4 (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) addr@@5)))))))))))
(let ((L3_correct@@5  (and (=> (= (ControlFlow 0 183963) (- 0 253654)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)) (=> (= (ControlFlow 0 183963) (- 0 253661)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)) (= 5 $t7@0@@6)))))))
(let ((anon12_Then_correct@@4  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t7@0@@6 $abort_code@1@@7) (= (ControlFlow 0 184039) 183963))) L3_correct@@5)))
(let ((anon11_Then$1_correct@@4  (=> (= $t8@1@@4 $t8@@4) (=> (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 184091) 184039) anon12_Then_correct@@4) (=> (= (ControlFlow 0 184091) 184025) anon12_Else_correct@@4))))))
(let ((anon11_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)) (= (ControlFlow 0 184089) 184091)) anon11_Then$1_correct@@4)))
(let ((anon11_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (=> (and (and (= $t8@0@@4 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)) (= $t8@1@@4 $t8@0@@4)) (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7))) (and (=> (= (ControlFlow 0 183981) 184039) anon12_Then_correct@@4) (=> (= (ControlFlow 0 183981) 184025) anon12_Else_correct@@4))))))
(let ((anon10_Then_correct@@4  (=> $t4@0@@6 (and (=> (= (ControlFlow 0 183967) 184089) anon11_Then_correct@@4) (=> (= (ControlFlow 0 183967) 183981) anon11_Else_correct@@4)))))
(let ((anon10_Else_correct@@4  (=> (and (and (not $t4@0@@6) (= $t6@@4 $t6@@4)) (and (= $t7@0@@6 $t6@@4) (= (ControlFlow 0 183931) 183963))) L3_correct@@5)))
(let ((anon0$1_correct@@7  (=> (and (and (and (and (and (and (and (forall ((config_address@@29 Int) ) (!  (=> (|$IsValid'address'| config_address@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@29) (= config_address@@29 173345816)))
 :qid |DiemConfigseqArraybpl.6597:25|
 :skolemid |175|
)) (forall ((config_address@@30 Int) ) (!  (=> (|$IsValid'address'| config_address@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@30) (= config_address@@30 173345816)))
 :qid |DiemConfigseqArraybpl.6597:244|
 :skolemid |176|
))) (forall ((config_address@@31 Int) ) (!  (=> (|$IsValid'address'| config_address@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@31) (= config_address@@31 173345816)))
 :qid |DiemConfigseqArraybpl.6597:484|
 :skolemid |177|
))) (forall ((config_address@@32 Int) ) (!  (=> (|$IsValid'address'| config_address@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@32) (= config_address@@32 173345816)))
 :qid |DiemConfigseqArraybpl.6597:746|
 :skolemid |178|
))) (forall ((config_address@@33 Int) ) (!  (=> (|$IsValid'address'| config_address@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@33) (= config_address@@33 173345816)))
 :qid |DiemConfigseqArraybpl.6597:970|
 :skolemid |179|
))) (forall ((config_address@@34 Int) ) (!  (=> (|$IsValid'address'| config_address@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@34) (= config_address@@34 173345816)))
 :qid |DiemConfigseqArraybpl.6597:1192|
 :skolemid |180|
))) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) $a_0@@8)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| $rsc@@8))
 :qid |DiemConfigseqArraybpl.6601:20|
 :skolemid |181|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) $a_0@@8))
))) (and (and (and (|$IsValid'address'| 173345816) (= 173345816 173345816)) (and (= $t4@0@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t6@@4) (= $t6@@4 5)) (and (= $t6@@4 $t6@@4) (= $t4@0@@6 $t4@0@@6))))) (and (=> (= (ControlFlow 0 183915) 183967) anon10_Then_correct@@4) (=> (= (ControlFlow 0 183915) 183931) anon10_Else_correct@@4)))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_77118| stream@@12) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@12) v@@46) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 183675) 183915)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 253262) 183675) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_110777)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_110864)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_110951)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_111038)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_111125)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory| () T@$Memory_111212)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1| () T@$Memory_111212)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_108293)
(declare-fun $t5@@1 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@2| () T@$Memory_106558)
(declare-fun _$t1@@0 () |T@#0|)
(declare-fun $t9@0@@5 () Int)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@0| () T@$Memory_111212)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| Int |T@$1_DiemConfig_ModifyConfigCapability'#0'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| Int) |T@$1_DiemConfig_ModifyConfigCapability'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'#0'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@0 () |T@$1_DiemConfig_ModifyConfigCapability'#0'|)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@0 () Int)
(declare-fun $t11@0@@0 () Bool)
(declare-fun $t10@@1 () Int)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@1| () T@$Memory_106558)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@0| () T@$Memory_106558)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|T@[Int]$1_DiemConfig_DiemConfig'#0'| Int |T@$1_DiemConfig_DiemConfig'#0'|) |T@[Int]$1_DiemConfig_DiemConfig'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'#0'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'#0''@0| () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t8@@5 () Bool)
(declare-fun $t6@@5 () Int)
(declare-fun $t9@@1 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$modifies| () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_publish_new_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 253733) (let ((anon19_Else_correct@@1  (=> (not $abort_flag@0@@8) (and (=> (= (ControlFlow 0 185086) (- 0 254676)) (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1|) 173345816)))) (=> (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1|) 173345816))) (and (=> (= (ControlFlow 0 185086) (- 0 254769)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 185086) (- 0 254777)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 185086) (- 0 254788)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@1))) (and (=> (= (ControlFlow 0 185086) (- 0 254800)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@1)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@1)) 0))) (and (=> (= (ControlFlow 0 185086) (- 0 254818)) (not (not (= (|$addr#$signer| _$t0@@1) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@1) 173345816))) (and (=> (= (ControlFlow 0 185086) (- 0 254832)) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1|) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1|) (|$addr#$signer| _$t0@@1)) (and (=> (= (ControlFlow 0 185086) (- 0 254841)) (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 185086) (- 0 254847)) (= (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'#0'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) addr@@6))) _$t1@@0)) (=> (= (let ((addr@@7 173345816))
(|$payload#$1_DiemConfig_DiemConfig'#0'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) addr@@7))) _$t1@@0) (=> (= (ControlFlow 0 185086) (- 0 254856)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816))))))))))))))))))))))))
(let ((L3_correct@@6  (and (=> (= (ControlFlow 0 184828) (- 0 254552)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) (|$addr#$signer| _$t0@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@1)) 0))) (not (= (|$addr#$signer| _$t0@@1) 173345816)))) (=> (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) (|$addr#$signer| _$t0@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@1)) 0))) (not (= (|$addr#$signer| _$t0@@1) 173345816))) (=> (= (ControlFlow 0 184828) (- 0 254598)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) (|$addr#$signer| _$t0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@1)) (= 5 $t9@0@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@1)) 0)) (= 3 $t9@0@@5))) (and (not (= (|$addr#$signer| _$t0@@1) 173345816)) (= 2 $t9@0@@5))))))))
(let ((anon19_Then_correct@@1  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t9@0@@5 $abort_code@1@@8) (= (ControlFlow 0 185100) 184828))) L3_correct@@6)))
(let ((anon18_Then$1_correct@@0  (=> (= |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) (=> (and (= $abort_flag@0@@8 true) (= $abort_code@1@@8 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 185152) 185100) anon19_Then_correct@@1) (=> (= (ControlFlow 0 185152) 185086) anon19_Else_correct@@1))))))
(let ((anon18_Then_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 185150) 185152)) anon18_Then$1_correct@@0)))
(let ((anon18_Else_correct@@1  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) (|$addr#$signer| _$t0@@1))) (=> (and (and (= |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@0| ($Memory_111212 (|Store__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|contents#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) (|$addr#$signer| _$t0@@1) $t7@@0))) (= |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@0|)) (and (= $abort_flag@0@@8 false) (= $abort_code@1@@8 $abort_code@0@@8))) (and (=> (= (ControlFlow 0 184878) 185100) anon19_Then_correct@@1) (=> (= (ControlFlow 0 184878) 185086) anon19_Else_correct@@1))))))
(let ((anon17_Then_correct@@1  (=> inline$$Not$0$dst@1@@0 (and (=> (= (ControlFlow 0 184856) (- 0 254409)) (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'#0'_$modifies| (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'#0'_$modifies| (|$addr#$signer| _$t0@@1)) (and (=> (= (ControlFlow 0 184856) 185150) anon18_Then_correct@@1) (=> (= (ControlFlow 0 184856) 184878) anon18_Else_correct@@1)))))))
(let ((anon17_Else_correct@@1  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t14@@0 $t14@@0)) (and (= $t9@0@@5 $t14@@0) (= (ControlFlow 0 184692) 184828))) L3_correct@@6)))
(let ((anon5$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t14@@0) (= $t14@@0 6)) (and (= $t14@@0 $t14@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 184676) 184856) anon17_Then_correct@@1) (=> (= (ControlFlow 0 184676) 184692) anon17_Else_correct@@1))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t11@0@@0)) (= (ControlFlow 0 184636) 184676)) anon5$1_correct)))
(let ((anon5_correct  (=> (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| $t7@@0) (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) 173345816) (= (let ((addr@@8 173345816))
(|$payload#$1_DiemConfig_DiemConfig'#0'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory@2|) addr@@8))) _$t1@@0)) (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t7@@0 $t7@@0))) (and (and (|$IsValid'address'| $t10@@1) (= $t10@@1 (|$addr#$signer| _$t0@@1))) (and (= $t11@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) $t10@@1)) (= (ControlFlow 0 184642) 184636)))) inline$$Not$0$anon0_correct@@0))))
(let ((anon16_Else_correct@@0  (=> (and (and (not |$temp_0'bool'@0|) (= |$1_DiemConfig_DiemConfig'#0'_$memory@1| ($Memory_106558 (|Store__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816 false) (|contents#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'#0'_$memory@2| |$1_DiemConfig_DiemConfig'#0'_$memory@1|) (= (ControlFlow 0 184552) 184642))) anon5_correct)))
(let ((anon16_Then_correct@@0  (=> (and (and |$temp_0'bool'@0| (= |$1_DiemConfig_DiemConfig'#0'_$memory@0| ($Memory_106558 (|Store__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'#0''@0|)))) (and (= |$1_DiemConfig_DiemConfig'#0'_$memory@2| |$1_DiemConfig_DiemConfig'#0'_$memory@0|) (= (ControlFlow 0 185164) 184642))) anon5_correct)))
(let ((anon15_Else_correct  (=> (not $t8@@5) (and (=> (= (ControlFlow 0 184540) 185164) anon16_Then_correct@@0) (=> (= (ControlFlow 0 184540) 184552) anon16_Else_correct@@0)))))
(let ((anon15_Then_correct  (=> $t8@@5 (=> (and (and (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@5)) (= 5 $t9@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@5)) 0)) (= 3 $t9@@1))) (and (not (= (|$addr#$signer| _$t0@@1) 173345816)) (= 2 $t9@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816) (= 6 $t9@@1))) (= $t9@@1 $t9@@1)) (and (= $t9@0@@5 $t9@@1) (= (ControlFlow 0 185252) 184828))) L3_correct@@6))))
(let ((anon0$1_correct@@8  (=> (and (and (and (and (and (and (and (forall ((config_address@@35 Int) ) (!  (=> (|$IsValid'address'| config_address@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@35) (= config_address@@35 173345816)))
 :qid |DiemConfigseqArraybpl.6768:25|
 :skolemid |182|
)) (forall ((config_address@@36 Int) ) (!  (=> (|$IsValid'address'| config_address@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@36) (= config_address@@36 173345816)))
 :qid |DiemConfigseqArraybpl.6768:244|
 :skolemid |183|
))) (forall ((config_address@@37 Int) ) (!  (=> (|$IsValid'address'| config_address@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@37) (= config_address@@37 173345816)))
 :qid |DiemConfigseqArraybpl.6768:484|
 :skolemid |184|
))) (forall ((config_address@@38 Int) ) (!  (=> (|$IsValid'address'| config_address@@38) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@38) (= config_address@@38 173345816)))
 :qid |DiemConfigseqArraybpl.6768:746|
 :skolemid |185|
))) (forall ((config_address@@39 Int) ) (!  (=> (|$IsValid'address'| config_address@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@39) (= config_address@@39 173345816)))
 :qid |DiemConfigseqArraybpl.6768:970|
 :skolemid |186|
))) (forall ((config_address@@40 Int) ) (!  (=> (|$IsValid'address'| config_address@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@40) (= config_address@@40 173345816)))
 :qid |DiemConfigseqArraybpl.6768:1192|
 :skolemid |187|
))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |DiemConfigseqArraybpl.6777:20|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@9))
)))) (and (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) $a_0@@10)))
(|$IsValid'$1_DiemConfig_DiemConfig'#0''| $rsc@@10))
 :qid |DiemConfigseqArraybpl.6781:20|
 :skolemid |189|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|contents#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|contents#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) $a_0@@11)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| $rsc@@11))
 :qid |DiemConfigseqArraybpl.6785:20|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|contents#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) $a_0@@11))
))) (and (= $t5@@1 (|$addr#$signer| _$t0@@1)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'#0'_$modifies| 173345816))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'#0'_$modifies| 173345816) (= _$t0@@1 _$t0@@1)) (and (= _$t1@@0 _$t1@@0) (= $t6@@5 (|$addr#$signer| _$t0@@1)))))) (and (=> (= (ControlFlow 0 184532) (- 0 254112)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'#0'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'#0'_$modifies| 173345816) (=> (= $t8@@5  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@5)) 0))) (not (= (|$addr#$signer| _$t0@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 184532) 185252) anon15_Then_correct) (=> (= (ControlFlow 0 184532) 184540) anon15_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_77118| stream@@13) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@13) v@@47) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 184180) 184532)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 253733) 184180) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@9 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_110777)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun $t5@@2 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| () T@$Memory_106393)
(declare-fun _$t1@@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t9@0@@6 () Int)
(declare-fun $abort_code@1@@9 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_110777)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@1 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun $abort_code@0@@9 () Int)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@1 () Int)
(declare-fun $t11@0@@1 () Bool)
(declare-fun $t10@@2 () Int)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_106393)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_106393)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t8@@6 () Bool)
(declare-fun $t6@@6 () Int)
(declare-fun $t9@@2 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_publish_new_config$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 254874) (let ((anon19_Else_correct@@2  (=> (not $abort_flag@0@@9) (and (=> (= (ControlFlow 0 186362) (- 0 255817)) (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@1|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816)))) (=> (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@1|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 186362) (- 0 255910)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 186362) (- 0 255918)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) (|$addr#$signer| _$t0@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 186362) (- 0 255929)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@2))) (and (=> (= (ControlFlow 0 186362) (- 0 255941)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@2)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@2)) 0))) (and (=> (= (ControlFlow 0 186362) (- 0 255959)) (not (not (= (|$addr#$signer| _$t0@@2) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@2) 173345816))) (and (=> (= (ControlFlow 0 186362) (- 0 255973)) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@1|) (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@1|) (|$addr#$signer| _$t0@@2)) (and (=> (= (ControlFlow 0 186362) (- 0 255982)) (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 186362) (- 0 255988)) (= (let ((addr@@9 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@9))) _$t1@@1)) (=> (= (let ((addr@@10 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@10))) _$t1@@1) (=> (= (ControlFlow 0 186362) (- 0 255997)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816))))))))))))))))))))))))
(let ((L3_correct@@7  (and (=> (= (ControlFlow 0 186104) (- 0 255693)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) (|$addr#$signer| _$t0@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@2)) 0))) (not (= (|$addr#$signer| _$t0@@2) 173345816)))) (=> (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) (|$addr#$signer| _$t0@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@2)) 0))) (not (= (|$addr#$signer| _$t0@@2) 173345816))) (=> (= (ControlFlow 0 186104) (- 0 255739)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) (|$addr#$signer| _$t0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@2)) (= 5 $t9@0@@6))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@2)) 0)) (= 3 $t9@0@@6))) (and (not (= (|$addr#$signer| _$t0@@2) 173345816)) (= 2 $t9@0@@6))))))))
(let ((anon19_Then_correct@@2  (=> (and (and $abort_flag@0@@9 (= $abort_code@1@@9 $abort_code@1@@9)) (and (= $t9@0@@6 $abort_code@1@@9) (= (ControlFlow 0 186376) 186104))) L3_correct@@7)))
(let ((anon18_Then$1_correct@@1  (=> (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) (=> (and (= $abort_flag@0@@9 true) (= $abort_code@1@@9 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 186428) 186376) anon19_Then_correct@@2) (=> (= (ControlFlow 0 186428) 186362) anon19_Else_correct@@2))))))
(let ((anon18_Then_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) (|$addr#$signer| _$t0@@2)) (= (ControlFlow 0 186426) 186428)) anon18_Then$1_correct@@1)))
(let ((anon18_Else_correct@@2  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) (|$addr#$signer| _$t0@@2))) (=> (and (and (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@0| ($Memory_110777 (|Store__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) (|$addr#$signer| _$t0@@2) true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) (|$addr#$signer| _$t0@@2) $t7@@1))) (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@0|)) (and (= $abort_flag@0@@9 false) (= $abort_code@1@@9 $abort_code@0@@9))) (and (=> (= (ControlFlow 0 186154) 186376) anon19_Then_correct@@2) (=> (= (ControlFlow 0 186154) 186362) anon19_Else_correct@@2))))))
(let ((anon17_Then_correct@@2  (=> inline$$Not$0$dst@1@@1 (and (=> (= (ControlFlow 0 186132) (- 0 255550)) (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$modifies| (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$modifies| (|$addr#$signer| _$t0@@2)) (and (=> (= (ControlFlow 0 186132) 186426) anon18_Then_correct@@2) (=> (= (ControlFlow 0 186132) 186154) anon18_Else_correct@@2)))))))
(let ((anon17_Else_correct@@2  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t14@@1 $t14@@1)) (and (= $t9@0@@6 $t14@@1) (= (ControlFlow 0 185968) 186104))) L3_correct@@7)))
(let ((anon5$1_correct@@0  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t14@@1) (= $t14@@1 6)) (and (= $t14@@1 $t14@@1) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 185952) 186132) anon17_Then_correct@@2) (=> (= (ControlFlow 0 185952) 185968) anon17_Else_correct@@2))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t11@0@@1)) (= (ControlFlow 0 185912) 185952)) anon5$1_correct@@0)))
(let ((anon5_correct@@0  (=> (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| $t7@@1) (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816) (= (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@11))) _$t1@@1)) (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t7@@1 $t7@@1))) (and (and (|$IsValid'address'| $t10@@2) (= $t10@@2 (|$addr#$signer| _$t0@@2))) (and (= $t11@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) $t10@@2)) (= (ControlFlow 0 185918) 185912)))) inline$$Not$0$anon0_correct@@1))))
(let ((anon16_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0@@0|) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| ($Memory_106393 (|Store__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1|) (= (ControlFlow 0 185828) 185918))) anon5_correct@@0)))
(let ((anon16_Then_correct@@1  (=> (and (and |$temp_0'bool'@0@@0| (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| ($Memory_106393 (|Store__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0|) (= (ControlFlow 0 186440) 185918))) anon5_correct@@0)))
(let ((anon15_Else_correct@@0  (=> (not $t8@@6) (and (=> (= (ControlFlow 0 185816) 186440) anon16_Then_correct@@1) (=> (= (ControlFlow 0 185816) 185828) anon16_Else_correct@@1)))))
(let ((anon15_Then_correct@@0  (=> $t8@@6 (=> (and (and (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@6)) (= 5 $t9@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@6)) 0)) (= 3 $t9@@2))) (and (not (= (|$addr#$signer| _$t0@@2) 173345816)) (= 2 $t9@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (= 6 $t9@@2))) (= $t9@@2 $t9@@2)) (and (= $t9@0@@6 $t9@@2) (= (ControlFlow 0 186528) 186104))) L3_correct@@7))))
(let ((anon0$1_correct@@9  (=> (and (and (and (and (and (and (and (and (forall ((config_address@@41 Int) ) (!  (=> (|$IsValid'address'| config_address@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@41) (= config_address@@41 173345816)))
 :qid |DiemConfigseqArraybpl.7124:25|
 :skolemid |191|
)) (forall ((config_address@@42 Int) ) (!  (=> (|$IsValid'address'| config_address@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@42) (= config_address@@42 173345816)))
 :qid |DiemConfigseqArraybpl.7124:244|
 :skolemid |192|
))) (forall ((config_address@@43 Int) ) (!  (=> (|$IsValid'address'| config_address@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@43) (= config_address@@43 173345816)))
 :qid |DiemConfigseqArraybpl.7124:484|
 :skolemid |193|
))) (forall ((config_address@@44 Int) ) (!  (=> (|$IsValid'address'| config_address@@44) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@44) (= config_address@@44 173345816)))
 :qid |DiemConfigseqArraybpl.7124:746|
 :skolemid |194|
))) (forall ((config_address@@45 Int) ) (!  (=> (|$IsValid'address'| config_address@@45) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@45) (= config_address@@45 173345816)))
 :qid |DiemConfigseqArraybpl.7124:970|
 :skolemid |195|
))) (forall ((config_address@@46 Int) ) (!  (=> (|$IsValid'address'| config_address@@46) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@46) (= config_address@@46 173345816)))
 :qid |DiemConfigseqArraybpl.7124:1192|
 :skolemid |196|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@2))) (and (|$IsValid'$1_DiemSystem_DiemSystem'| _$t1@@1) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@12)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@12))
 :qid |DiemConfigseqArraybpl.7133:20|
 :skolemid |197|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@12))
)))) (and (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@13)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@13))
 :qid |DiemConfigseqArraybpl.7137:20|
 :skolemid |198|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@14)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| $rsc@@14))
 :qid |DiemConfigseqArraybpl.7141:20|
 :skolemid |199|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@14))
))) (and (= $t5@@2 (|$addr#$signer| _$t0@@2)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$modifies| 173345816) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@1 _$t1@@1) (= $t6@@6 (|$addr#$signer| _$t0@@2)))))) (and (=> (= (ControlFlow 0 185808) (- 0 255253)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816) (=> (= $t8@@6  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@6)) 0))) (not (= (|$addr#$signer| _$t0@@2) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 185808) 186528) anon15_Then_correct@@0) (=> (= (ControlFlow 0 185808) 185816) anon15_Else_correct@@0))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_77118| stream@@14) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@14) v@@48) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 185456) 185808)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 254874) 185456) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@10 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_110864)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun $t5@@3 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_106426)
(declare-fun _$t1@@2 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $t9@0@@7 () Int)
(declare-fun $abort_code@1@@10 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_110864)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@2 () |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $abort_code@0@@10 () Int)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@2 () Int)
(declare-fun $t11@0@@2 () Bool)
(declare-fun $t10@@3 () Int)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_106426)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_106426)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@0| () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $t8@@7 () Bool)
(declare-fun $t6@@7 () Int)
(declare-fun $t9@@3 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$modifies| () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_publish_new_config$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 256015) (let ((anon19_Else_correct@@3  (=> (not $abort_flag@0@@10) (and (=> (= (ControlFlow 0 187638) (- 0 256958)) (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816)))) (=> (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 187638) (- 0 257051)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 187638) (- 0 257059)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@3)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@3))) (and (=> (= (ControlFlow 0 187638) (- 0 257070)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@3))) (and (=> (= (ControlFlow 0 187638) (- 0 257082)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@3)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@3)) 0))) (and (=> (= (ControlFlow 0 187638) (- 0 257100)) (not (not (= (|$addr#$signer| _$t0@@3) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@3) 173345816))) (and (=> (= (ControlFlow 0 187638) (- 0 257114)) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (|$addr#$signer| _$t0@@3))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (|$addr#$signer| _$t0@@3)) (and (=> (= (ControlFlow 0 187638) (- 0 257123)) (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 187638) (- 0 257129)) (= (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@12))) _$t1@@2)) (=> (= (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@13))) _$t1@@2) (=> (= (ControlFlow 0 187638) (- 0 257138)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816))))))))))))))))))))))))
(let ((L3_correct@@8  (and (=> (= (ControlFlow 0 187380) (- 0 256834)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@3)) 0))) (not (= (|$addr#$signer| _$t0@@3) 173345816)))) (=> (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@3)) 0))) (not (= (|$addr#$signer| _$t0@@3) 173345816))) (=> (= (ControlFlow 0 187380) (- 0 256880)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@3)) (= 5 $t9@0@@7))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@3)) 0)) (= 3 $t9@0@@7))) (and (not (= (|$addr#$signer| _$t0@@3) 173345816)) (= 2 $t9@0@@7))))))))
(let ((anon19_Then_correct@@3  (=> (and (and $abort_flag@0@@10 (= $abort_code@1@@10 $abort_code@1@@10)) (and (= $t9@0@@7 $abort_code@1@@10) (= (ControlFlow 0 187652) 187380))) L3_correct@@8)))
(let ((anon18_Then$1_correct@@2  (=> (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (=> (and (= $abort_flag@0@@10 true) (= $abort_code@1@@10 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 187704) 187652) anon19_Then_correct@@3) (=> (= (ControlFlow 0 187704) 187638) anon19_Else_correct@@3))))))
(let ((anon18_Then_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@3)) (= (ControlFlow 0 187702) 187704)) anon18_Then$1_correct@@2)))
(let ((anon18_Else_correct@@3  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@3))) (=> (and (and (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_110864 (|Store__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@3) true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@3) $t7@@2))) (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|)) (and (= $abort_flag@0@@10 false) (= $abort_code@1@@10 $abort_code@0@@10))) (and (=> (= (ControlFlow 0 187430) 187652) anon19_Then_correct@@3) (=> (= (ControlFlow 0 187430) 187638) anon19_Else_correct@@3))))))
(let ((anon17_Then_correct@@3  (=> inline$$Not$0$dst@1@@2 (and (=> (= (ControlFlow 0 187408) (- 0 256691)) (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$modifies| (|$addr#$signer| _$t0@@3))) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$modifies| (|$addr#$signer| _$t0@@3)) (and (=> (= (ControlFlow 0 187408) 187702) anon18_Then_correct@@3) (=> (= (ControlFlow 0 187408) 187430) anon18_Else_correct@@3)))))))
(let ((anon17_Else_correct@@3  (=> (and (and (not inline$$Not$0$dst@1@@2) (= $t14@@2 $t14@@2)) (and (= $t9@0@@7 $t14@@2) (= (ControlFlow 0 187244) 187380))) L3_correct@@8)))
(let ((anon5$1_correct@@1  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t14@@2) (= $t14@@2 6)) (and (= $t14@@2 $t14@@2) (= inline$$Not$0$dst@1@@2 inline$$Not$0$dst@1@@2))) (and (=> (= (ControlFlow 0 187228) 187408) anon17_Then_correct@@3) (=> (= (ControlFlow 0 187228) 187244) anon17_Else_correct@@3))))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (and (= inline$$Not$0$dst@1@@2  (not $t11@0@@2)) (= (ControlFlow 0 187188) 187228)) anon5$1_correct@@1)))
(let ((anon5_correct@@1  (=> (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| $t7@@2) (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816) (= (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@14))) _$t1@@2)) (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t7@@2 $t7@@2))) (and (and (|$IsValid'address'| $t10@@3) (= $t10@@3 (|$addr#$signer| _$t0@@3))) (and (= $t11@0@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $t10@@3)) (= (ControlFlow 0 187194) 187188)))) inline$$Not$0$anon0_correct@@2))))
(let ((anon16_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@0@@1|) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_106426 (|Store__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (= (ControlFlow 0 187104) 187194))) anon5_correct@@1)))
(let ((anon16_Then_correct@@2  (=> (and (and |$temp_0'bool'@0@@1| (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_106426 (|Store__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|) (= (ControlFlow 0 187716) 187194))) anon5_correct@@1)))
(let ((anon15_Else_correct@@1  (=> (not $t8@@7) (and (=> (= (ControlFlow 0 187092) 187716) anon16_Then_correct@@2) (=> (= (ControlFlow 0 187092) 187104) anon16_Else_correct@@2)))))
(let ((anon15_Then_correct@@1  (=> $t8@@7 (=> (and (and (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@7)) (= 5 $t9@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@7)) 0)) (= 3 $t9@@3))) (and (not (= (|$addr#$signer| _$t0@@3) 173345816)) (= 2 $t9@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (= 6 $t9@@3))) (= $t9@@3 $t9@@3)) (and (= $t9@0@@7 $t9@@3) (= (ControlFlow 0 187804) 187380))) L3_correct@@8))))
(let ((anon0$1_correct@@10  (=> (and (and (and (and (and (and (and (and (forall ((config_address@@47 Int) ) (!  (=> (|$IsValid'address'| config_address@@47) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@47) (= config_address@@47 173345816)))
 :qid |DiemConfigseqArraybpl.7480:25|
 :skolemid |200|
)) (forall ((config_address@@48 Int) ) (!  (=> (|$IsValid'address'| config_address@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@48) (= config_address@@48 173345816)))
 :qid |DiemConfigseqArraybpl.7480:244|
 :skolemid |201|
))) (forall ((config_address@@49 Int) ) (!  (=> (|$IsValid'address'| config_address@@49) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@49) (= config_address@@49 173345816)))
 :qid |DiemConfigseqArraybpl.7480:484|
 :skolemid |202|
))) (forall ((config_address@@50 Int) ) (!  (=> (|$IsValid'address'| config_address@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@50) (= config_address@@50 173345816)))
 :qid |DiemConfigseqArraybpl.7480:746|
 :skolemid |203|
))) (forall ((config_address@@51 Int) ) (!  (=> (|$IsValid'address'| config_address@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@51) (= config_address@@51 173345816)))
 :qid |DiemConfigseqArraybpl.7480:970|
 :skolemid |204|
))) (forall ((config_address@@52 Int) ) (!  (=> (|$IsValid'address'| config_address@@52) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@52) (= config_address@@52 173345816)))
 :qid |DiemConfigseqArraybpl.7480:1192|
 :skolemid |205|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@3))) (and (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| _$t1@@2) (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@15)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@15))
 :qid |DiemConfigseqArraybpl.7489:20|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@15))
)))) (and (and (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@16)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@16))
 :qid |DiemConfigseqArraybpl.7493:20|
 :skolemid |207|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@16))
)) (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@17)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@17))
 :qid |DiemConfigseqArraybpl.7497:20|
 :skolemid |208|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@17))
))) (and (= $t5@@3 (|$addr#$signer| _$t0@@3)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$modifies| 173345816))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$modifies| 173345816) (= _$t0@@3 _$t0@@3)) (and (= _$t1@@2 _$t1@@2) (= $t6@@7 (|$addr#$signer| _$t0@@3)))))) (and (=> (= (ControlFlow 0 187084) (- 0 256394)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$modifies| 173345816) (=> (= $t8@@7  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@7)) 0))) (not (= (|$addr#$signer| _$t0@@3) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 187084) 187804) anon15_Then_correct@@1) (=> (= (ControlFlow 0 187084) 187092) anon15_Else_correct@@1))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@15 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@15)))
 (and (= (|l#Multiset_77118| stream@@15) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@15) v@@49) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 186732) 187084)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 256015) 186732) inline$$InitEventStore$0$anon0_correct@@10)))
anon0_correct@@10)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@11 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1| () T@$Memory_110951)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun $t5@@4 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2| () T@$Memory_106459)
(declare-fun _$t1@@3 () T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption)
(declare-fun $t9@0@@8 () Int)
(declare-fun $abort_code@1@@11 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0| () T@$Memory_110951)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@3 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun $abort_code@0@@11 () Int)
(declare-fun inline$$Not$0$dst@1@@3 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@3 () Int)
(declare-fun $t11@0@@3 () Bool)
(declare-fun $t10@@4 () Int)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1| () T@$Memory_106459)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0| () T@$Memory_106459)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun $t8@@8 () Bool)
(declare-fun $t6@@8 () Int)
(declare-fun $t9@@4 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$modifies| () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_publish_new_config$verify_instantiated_2)
(assert (not
 (=> (= (ControlFlow 0 0) 257156) (let ((anon19_Else_correct@@4  (=> (not $abort_flag@0@@11) (and (=> (= (ControlFlow 0 188914) (- 0 258099)) (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816)))) (=> (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 188914) (- 0 258192)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 188914) (- 0 258200)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) (|$addr#$signer| _$t0@@4)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) (|$addr#$signer| _$t0@@4))) (and (=> (= (ControlFlow 0 188914) (- 0 258211)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@4))) (and (=> (= (ControlFlow 0 188914) (- 0 258223)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@4)) 0))) (and (=> (= (ControlFlow 0 188914) (- 0 258241)) (not (not (= (|$addr#$signer| _$t0@@4) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 173345816))) (and (=> (= (ControlFlow 0 188914) (- 0 258255)) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1|) (|$addr#$signer| _$t0@@4))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1|) (|$addr#$signer| _$t0@@4)) (and (=> (= (ControlFlow 0 188914) (- 0 258264)) (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 188914) (- 0 258270)) (= (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) addr@@15))) _$t1@@3)) (=> (= (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) addr@@16))) _$t1@@3) (=> (= (ControlFlow 0 188914) (- 0 258279)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816))))))))))))))))))))))))
(let ((L3_correct@@9  (and (=> (= (ControlFlow 0 188656) (- 0 257975)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) (|$addr#$signer| _$t0@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@4)) 0))) (not (= (|$addr#$signer| _$t0@@4) 173345816)))) (=> (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) (|$addr#$signer| _$t0@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@4)) 0))) (not (= (|$addr#$signer| _$t0@@4) 173345816))) (=> (= (ControlFlow 0 188656) (- 0 258021)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) (|$addr#$signer| _$t0@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@4)) (= 5 $t9@0@@8))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@4)) 0)) (= 3 $t9@0@@8))) (and (not (= (|$addr#$signer| _$t0@@4) 173345816)) (= 2 $t9@0@@8))))))))
(let ((anon19_Then_correct@@4  (=> (and (and $abort_flag@0@@11 (= $abort_code@1@@11 $abort_code@1@@11)) (and (= $t9@0@@8 $abort_code@1@@11) (= (ControlFlow 0 188928) 188656))) L3_correct@@9)))
(let ((anon18_Then$1_correct@@3  (=> (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) (=> (and (= $abort_flag@0@@11 true) (= $abort_code@1@@11 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 188980) 188928) anon19_Then_correct@@4) (=> (= (ControlFlow 0 188980) 188914) anon19_Else_correct@@4))))))
(let ((anon18_Then_correct@@4  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) (|$addr#$signer| _$t0@@4)) (= (ControlFlow 0 188978) 188980)) anon18_Then$1_correct@@3)))
(let ((anon18_Else_correct@@4  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) (|$addr#$signer| _$t0@@4))) (=> (and (and (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0| ($Memory_110951 (|Store__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) (|$addr#$signer| _$t0@@4) true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) (|$addr#$signer| _$t0@@4) $t7@@3))) (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0|)) (and (= $abort_flag@0@@11 false) (= $abort_code@1@@11 $abort_code@0@@11))) (and (=> (= (ControlFlow 0 188706) 188928) anon19_Then_correct@@4) (=> (= (ControlFlow 0 188706) 188914) anon19_Else_correct@@4))))))
(let ((anon17_Then_correct@@4  (=> inline$$Not$0$dst@1@@3 (and (=> (= (ControlFlow 0 188684) (- 0 257832)) (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$modifies| (|$addr#$signer| _$t0@@4))) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$modifies| (|$addr#$signer| _$t0@@4)) (and (=> (= (ControlFlow 0 188684) 188978) anon18_Then_correct@@4) (=> (= (ControlFlow 0 188684) 188706) anon18_Else_correct@@4)))))))
(let ((anon17_Else_correct@@4  (=> (and (and (not inline$$Not$0$dst@1@@3) (= $t14@@3 $t14@@3)) (and (= $t9@0@@8 $t14@@3) (= (ControlFlow 0 188520) 188656))) L3_correct@@9)))
(let ((anon5$1_correct@@2  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t14@@3) (= $t14@@3 6)) (and (= $t14@@3 $t14@@3) (= inline$$Not$0$dst@1@@3 inline$$Not$0$dst@1@@3))) (and (=> (= (ControlFlow 0 188504) 188684) anon17_Then_correct@@4) (=> (= (ControlFlow 0 188504) 188520) anon17_Else_correct@@4))))))
(let ((inline$$Not$0$anon0_correct@@3  (=> (and (= inline$$Not$0$dst@1@@3  (not $t11@0@@3)) (= (ControlFlow 0 188464) 188504)) anon5$1_correct@@2)))
(let ((anon5_correct@@2  (=> (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $t7@@3) (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) 173345816) (= (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2|) addr@@17))) _$t1@@3)) (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t7@@3 $t7@@3))) (and (and (|$IsValid'address'| $t10@@4) (= $t10@@4 (|$addr#$signer| _$t0@@4))) (and (= $t11@0@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $t10@@4)) (= (ControlFlow 0 188470) 188464)))) inline$$Not$0$anon0_correct@@3))))
(let ((anon16_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@2|) (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1| ($Memory_106459 (|Store__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 false) (|contents#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@1|) (= (ControlFlow 0 188380) 188470))) anon5_correct@@2)))
(let ((anon16_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@2| (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0| ($Memory_106459 (|Store__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory@0|) (= (ControlFlow 0 188992) 188470))) anon5_correct@@2)))
(let ((anon15_Else_correct@@2  (=> (not $t8@@8) (and (=> (= (ControlFlow 0 188368) 188992) anon16_Then_correct@@3) (=> (= (ControlFlow 0 188368) 188380) anon16_Else_correct@@3)))))
(let ((anon15_Then_correct@@2  (=> $t8@@8 (=> (and (and (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@8)) (= 5 $t9@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@8)) 0)) (= 3 $t9@@4))) (and (not (= (|$addr#$signer| _$t0@@4) 173345816)) (= 2 $t9@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (= 6 $t9@@4))) (= $t9@@4 $t9@@4)) (and (= $t9@0@@8 $t9@@4) (= (ControlFlow 0 189080) 188656))) L3_correct@@9))))
(let ((anon0$1_correct@@11  (=> (and (and (and (and (and (and (and (and (forall ((config_address@@53 Int) ) (!  (=> (|$IsValid'address'| config_address@@53) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@53) (= config_address@@53 173345816)))
 :qid |DiemConfigseqArraybpl.7836:25|
 :skolemid |209|
)) (forall ((config_address@@54 Int) ) (!  (=> (|$IsValid'address'| config_address@@54) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@54) (= config_address@@54 173345816)))
 :qid |DiemConfigseqArraybpl.7836:244|
 :skolemid |210|
))) (forall ((config_address@@55 Int) ) (!  (=> (|$IsValid'address'| config_address@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@55) (= config_address@@55 173345816)))
 :qid |DiemConfigseqArraybpl.7836:484|
 :skolemid |211|
))) (forall ((config_address@@56 Int) ) (!  (=> (|$IsValid'address'| config_address@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@56) (= config_address@@56 173345816)))
 :qid |DiemConfigseqArraybpl.7836:746|
 :skolemid |212|
))) (forall ((config_address@@57 Int) ) (!  (=> (|$IsValid'address'| config_address@@57) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@57) (= config_address@@57 173345816)))
 :qid |DiemConfigseqArraybpl.7836:970|
 :skolemid |213|
))) (forall ((config_address@@58 Int) ) (!  (=> (|$IsValid'address'| config_address@@58) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@58) (= config_address@@58 173345816)))
 :qid |DiemConfigseqArraybpl.7836:1192|
 :skolemid |214|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@4))) (and (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| _$t1@@3) (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@18)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@18))
 :qid |DiemConfigseqArraybpl.7845:20|
 :skolemid |215|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@18))
)))) (and (and (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@19)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $rsc@@19))
 :qid |DiemConfigseqArraybpl.7849:20|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@19))
)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@20)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| $rsc@@20))
 :qid |DiemConfigseqArraybpl.7853:20|
 :skolemid |217|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|contents#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) $a_0@@20))
))) (and (= $t5@@4 (|$addr#$signer| _$t0@@4)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$modifies| 173345816))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$modifies| 173345816) (= _$t0@@4 _$t0@@4)) (and (= _$t1@@3 _$t1@@3) (= $t6@@8 (|$addr#$signer| _$t0@@4)))))) (and (=> (= (ControlFlow 0 188360) (- 0 257535)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$modifies| 173345816) (=> (= $t8@@8  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@8)) 0))) (not (= (|$addr#$signer| _$t0@@4) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 188360) 189080) anon15_Then_correct@@2) (=> (= (ControlFlow 0 188360) 188368) anon15_Else_correct@@2))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@16 T@$1_Event_EventHandle) ) (! (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@16)))
 (and (= (|l#Multiset_77118| stream@@16) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@16) v@@50) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 188008) 188360)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (= (ControlFlow 0 257156) 188008) inline$$InitEventStore$0$anon0_correct@@11)))
anon0_correct@@11)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@12 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1| () T@$Memory_111038)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun $t5@@5 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2| () T@$Memory_106492)
(declare-fun _$t1@@4 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun $t9@0@@9 () Int)
(declare-fun $abort_code@1@@12 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@0| () T@$Memory_111038)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@4 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $abort_code@0@@12 () Int)
(declare-fun inline$$Not$0$dst@1@@4 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@4 () Int)
(declare-fun $t11@0@@4 () Bool)
(declare-fun $t10@@5 () Int)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1| () T@$Memory_106492)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0| () T@$Memory_106492)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t8@@9 () Bool)
(declare-fun $t6@@9 () Int)
(declare-fun $t9@@5 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies| () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_publish_new_config$verify_instantiated_3)
(assert (not
 (=> (= (ControlFlow 0 0) 258297) (let ((anon19_Else_correct@@5  (=> (not $abort_flag@0@@12) (and (=> (= (ControlFlow 0 190190) (- 0 259240)) (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816)))) (=> (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 190190) (- 0 259333)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 190190) (- 0 259341)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@5)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@5))) (and (=> (= (ControlFlow 0 190190) (- 0 259352)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@5))) (and (=> (= (ControlFlow 0 190190) (- 0 259364)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@5)) 0))) (and (=> (= (ControlFlow 0 190190) (- 0 259382)) (not (not (= (|$addr#$signer| _$t0@@5) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 173345816))) (and (=> (= (ControlFlow 0 190190) (- 0 259396)) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1|) (|$addr#$signer| _$t0@@5))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1|) (|$addr#$signer| _$t0@@5)) (and (=> (= (ControlFlow 0 190190) (- 0 259405)) (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 190190) (- 0 259411)) (= (let ((addr@@18 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) addr@@18))) _$t1@@4)) (=> (= (let ((addr@@19 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) addr@@19))) _$t1@@4) (=> (= (ControlFlow 0 190190) (- 0 259420)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816))))))))))))))))))))))))
(let ((L3_correct@@10  (and (=> (= (ControlFlow 0 189932) (- 0 259116)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@5)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816)))) (=> (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@5)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))) (=> (= (ControlFlow 0 189932) (- 0 259162)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@5))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@5)) (= 5 $t9@0@@9))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@5)) 0)) (= 3 $t9@0@@9))) (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t9@0@@9))))))))
(let ((anon19_Then_correct@@5  (=> (and (and $abort_flag@0@@12 (= $abort_code@1@@12 $abort_code@1@@12)) (and (= $t9@0@@9 $abort_code@1@@12) (= (ControlFlow 0 190204) 189932))) L3_correct@@10)))
(let ((anon18_Then$1_correct@@4  (=> (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (=> (and (= $abort_flag@0@@12 true) (= $abort_code@1@@12 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 190256) 190204) anon19_Then_correct@@5) (=> (= (ControlFlow 0 190256) 190190) anon19_Else_correct@@5))))))
(let ((anon18_Then_correct@@5  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@5)) (= (ControlFlow 0 190254) 190256)) anon18_Then$1_correct@@4)))
(let ((anon18_Else_correct@@5  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@5))) (=> (and (and (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@0| ($Memory_111038 (|Store__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@5) true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@5) $t7@@4))) (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@0|)) (and (= $abort_flag@0@@12 false) (= $abort_code@1@@12 $abort_code@0@@12))) (and (=> (= (ControlFlow 0 189982) 190204) anon19_Then_correct@@5) (=> (= (ControlFlow 0 189982) 190190) anon19_Else_correct@@5))))))
(let ((anon17_Then_correct@@5  (=> inline$$Not$0$dst@1@@4 (and (=> (= (ControlFlow 0 189960) (- 0 258973)) (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$modifies| (|$addr#$signer| _$t0@@5))) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$modifies| (|$addr#$signer| _$t0@@5)) (and (=> (= (ControlFlow 0 189960) 190254) anon18_Then_correct@@5) (=> (= (ControlFlow 0 189960) 189982) anon18_Else_correct@@5)))))))
(let ((anon17_Else_correct@@5  (=> (and (and (not inline$$Not$0$dst@1@@4) (= $t14@@4 $t14@@4)) (and (= $t9@0@@9 $t14@@4) (= (ControlFlow 0 189796) 189932))) L3_correct@@10)))
(let ((anon5$1_correct@@3  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t14@@4) (= $t14@@4 6)) (and (= $t14@@4 $t14@@4) (= inline$$Not$0$dst@1@@4 inline$$Not$0$dst@1@@4))) (and (=> (= (ControlFlow 0 189780) 189960) anon17_Then_correct@@5) (=> (= (ControlFlow 0 189780) 189796) anon17_Else_correct@@5))))))
(let ((inline$$Not$0$anon0_correct@@4  (=> (and (= inline$$Not$0$dst@1@@4  (not $t11@0@@4)) (= (ControlFlow 0 189740) 189780)) anon5$1_correct@@3)))
(let ((anon5_correct@@3  (=> (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| $t7@@4) (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816) (= (let ((addr@@20 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) addr@@20))) _$t1@@4)) (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t7@@4 $t7@@4))) (and (and (|$IsValid'address'| $t10@@5) (= $t10@@5 (|$addr#$signer| _$t0@@5))) (and (= $t11@0@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) $t10@@5)) (= (ControlFlow 0 189746) 189740)))) inline$$Not$0$anon0_correct@@4))))
(let ((anon16_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@3|) (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1| ($Memory_106492 (|Store__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 false) (|contents#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1|) (= (ControlFlow 0 189656) 189746))) anon5_correct@@3)))
(let ((anon16_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@3| (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0| ($Memory_106492 (|Store__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0|) (= (ControlFlow 0 190268) 189746))) anon5_correct@@3)))
(let ((anon15_Else_correct@@3  (=> (not $t8@@9) (and (=> (= (ControlFlow 0 189644) 190268) anon16_Then_correct@@4) (=> (= (ControlFlow 0 189644) 189656) anon16_Else_correct@@4)))))
(let ((anon15_Then_correct@@3  (=> $t8@@9 (=> (and (and (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@9)) (= 5 $t9@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@9)) 0)) (= 3 $t9@@5))) (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t9@@5))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (= 6 $t9@@5))) (= $t9@@5 $t9@@5)) (and (= $t9@0@@9 $t9@@5) (= (ControlFlow 0 190356) 189932))) L3_correct@@10))))
(let ((anon0$1_correct@@12  (=> (and (and (and (and (and (and (and (and (forall ((config_address@@59 Int) ) (!  (=> (|$IsValid'address'| config_address@@59) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@59) (= config_address@@59 173345816)))
 :qid |DiemConfigseqArraybpl.8192:25|
 :skolemid |218|
)) (forall ((config_address@@60 Int) ) (!  (=> (|$IsValid'address'| config_address@@60) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@60) (= config_address@@60 173345816)))
 :qid |DiemConfigseqArraybpl.8192:244|
 :skolemid |219|
))) (forall ((config_address@@61 Int) ) (!  (=> (|$IsValid'address'| config_address@@61) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@61) (= config_address@@61 173345816)))
 :qid |DiemConfigseqArraybpl.8192:484|
 :skolemid |220|
))) (forall ((config_address@@62 Int) ) (!  (=> (|$IsValid'address'| config_address@@62) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@62) (= config_address@@62 173345816)))
 :qid |DiemConfigseqArraybpl.8192:746|
 :skolemid |221|
))) (forall ((config_address@@63 Int) ) (!  (=> (|$IsValid'address'| config_address@@63) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@63) (= config_address@@63 173345816)))
 :qid |DiemConfigseqArraybpl.8192:970|
 :skolemid |222|
))) (forall ((config_address@@64 Int) ) (!  (=> (|$IsValid'address'| config_address@@64) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@64) (= config_address@@64 173345816)))
 :qid |DiemConfigseqArraybpl.8192:1192|
 :skolemid |223|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@5))) (and (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| _$t1@@4) (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@21)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@21))
 :qid |DiemConfigseqArraybpl.8201:20|
 :skolemid |224|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@21))
)))) (and (and (and (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@22)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| $rsc@@22))
 :qid |DiemConfigseqArraybpl.8205:20|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@22))
)) (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@23)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| $rsc@@23))
 :qid |DiemConfigseqArraybpl.8209:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@23))
))) (and (= $t5@@5 (|$addr#$signer| _$t0@@5)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies| 173345816))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$modifies| 173345816) (= _$t0@@5 _$t0@@5)) (and (= _$t1@@4 _$t1@@4) (= $t6@@9 (|$addr#$signer| _$t0@@5)))))) (and (=> (= (ControlFlow 0 189636) (- 0 258676)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies| 173345816) (=> (= $t8@@9  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@9)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@9)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 189636) 190356) anon15_Then_correct@@3) (=> (= (ControlFlow 0 189636) 189644) anon15_Else_correct@@3))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@17 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@17)))
 (and (= (|l#Multiset_77118| stream@@17) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@17) v@@51) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 189284) 189636)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (= (ControlFlow 0 258297) 189284) inline$$InitEventStore$0$anon0_correct@@12)))
anon0_correct@@12)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@13 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@1| () T@$Memory_111125)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun $t5@@6 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@2| () T@$Memory_106525)
(declare-fun _$t1@@5 () T@$1_DiemVersion_DiemVersion)
(declare-fun $t9@0@@10 () Int)
(declare-fun $abort_code@1@@13 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@0| () T@$Memory_111125)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@5 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)
(declare-fun $abort_code@0@@13 () Int)
(declare-fun inline$$Not$0$dst@1@@5 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@5 () Int)
(declare-fun $t11@0@@5 () Bool)
(declare-fun $t10@@6 () Int)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1| () T@$Memory_106525)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@0| () T@$Memory_106525)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $t8@@10 () Bool)
(declare-fun $t6@@10 () Int)
(declare-fun $t9@@6 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies| () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_publish_new_config$verify_instantiated_4)
(assert (not
 (=> (= (ControlFlow 0 0) 259438) (let ((anon19_Else_correct@@6  (=> (not $abort_flag@0@@13) (and (=> (= (ControlFlow 0 191466) (- 0 260381)) (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@1|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816)))) (=> (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110777| |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110864| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110951| |$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111038| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@1|) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111212| |$1_DiemConfig_ModifyConfigCapability'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 191466) (- 0 260474)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 191466) (- 0 260482)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0@@6)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0@@6))) (and (=> (= (ControlFlow 0 191466) (- 0 260493)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@6))) (and (=> (= (ControlFlow 0 191466) (- 0 260505)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@6)) 0))) (and (=> (= (ControlFlow 0 191466) (- 0 260523)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 191466) (- 0 260537)) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@1|) (|$addr#$signer| _$t0@@6))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@1|) (|$addr#$signer| _$t0@@6)) (and (=> (= (ControlFlow 0 191466) (- 0 260546)) (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 191466) (- 0 260552)) (= (let ((addr@@21 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@2|) addr@@21))) _$t1@@5)) (=> (= (let ((addr@@22 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@2|) addr@@22))) _$t1@@5) (=> (= (ControlFlow 0 191466) (- 0 260561)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816))))))))))))))))))))))))
(let ((L3_correct@@11  (and (=> (= (ControlFlow 0 191208) (- 0 260257)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@6)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@6)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (=> (= (ControlFlow 0 191208) (- 0 260303)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0@@6))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@6)) (= 5 $t9@0@@10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t5@@6)) 0)) (= 3 $t9@0@@10))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t9@0@@10))))))))
(let ((anon19_Then_correct@@6  (=> (and (and $abort_flag@0@@13 (= $abort_code@1@@13 $abort_code@1@@13)) (and (= $t9@0@@10 $abort_code@1@@13) (= (ControlFlow 0 191480) 191208))) L3_correct@@11)))
(let ((anon18_Then$1_correct@@5  (=> (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) (=> (and (= $abort_flag@0@@13 true) (= $abort_code@1@@13 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 191532) 191480) anon19_Then_correct@@6) (=> (= (ControlFlow 0 191532) 191466) anon19_Else_correct@@6))))))
(let ((anon18_Then_correct@@6  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0@@6)) (= (ControlFlow 0 191530) 191532)) anon18_Then$1_correct@@5)))
(let ((anon18_Else_correct@@6  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0@@6))) (=> (and (and (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@0| ($Memory_111125 (|Store__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0@@6) true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0@@6) $t7@@5))) (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@0|)) (and (= $abort_flag@0@@13 false) (= $abort_code@1@@13 $abort_code@0@@13))) (and (=> (= (ControlFlow 0 191258) 191480) anon19_Then_correct@@6) (=> (= (ControlFlow 0 191258) 191466) anon19_Else_correct@@6))))))
(let ((anon17_Then_correct@@6  (=> inline$$Not$0$dst@1@@5 (and (=> (= (ControlFlow 0 191236) (- 0 260114)) (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$modifies| (|$addr#$signer| _$t0@@6))) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$modifies| (|$addr#$signer| _$t0@@6)) (and (=> (= (ControlFlow 0 191236) 191530) anon18_Then_correct@@6) (=> (= (ControlFlow 0 191236) 191258) anon18_Else_correct@@6)))))))
(let ((anon17_Else_correct@@6  (=> (and (and (not inline$$Not$0$dst@1@@5) (= $t14@@5 $t14@@5)) (and (= $t9@0@@10 $t14@@5) (= (ControlFlow 0 191072) 191208))) L3_correct@@11)))
(let ((anon5$1_correct@@4  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t14@@5) (= $t14@@5 6)) (and (= $t14@@5 $t14@@5) (= inline$$Not$0$dst@1@@5 inline$$Not$0$dst@1@@5))) (and (=> (= (ControlFlow 0 191056) 191236) anon17_Then_correct@@6) (=> (= (ControlFlow 0 191056) 191072) anon17_Else_correct@@6))))))
(let ((inline$$Not$0$anon0_correct@@5  (=> (and (= inline$$Not$0$dst@1@@5  (not $t11@0@@5)) (= (ControlFlow 0 191016) 191056)) anon5$1_correct@@4)))
(let ((anon5_correct@@4  (=> (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| $t7@@5) (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@2|) 173345816) (= (let ((addr@@23 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@2|) addr@@23))) _$t1@@5)) (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t7@@5 $t7@@5))) (and (and (|$IsValid'address'| $t10@@6) (= $t10@@6 (|$addr#$signer| _$t0@@6))) (and (= $t11@0@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) $t10@@6)) (= (ControlFlow 0 191022) 191016)))) inline$$Not$0$anon0_correct@@5))))
(let ((anon16_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@4|) (= |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1| ($Memory_106525 (|Store__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816 false) (|contents#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1|) (= (ControlFlow 0 190932) 191022))) anon5_correct@@4)))
(let ((anon16_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@4| (= |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@0| ($Memory_106525 (|Store__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@0|) (= (ControlFlow 0 191544) 191022))) anon5_correct@@4)))
(let ((anon15_Else_correct@@4  (=> (not $t8@@10) (and (=> (= (ControlFlow 0 190920) 191544) anon16_Then_correct@@5) (=> (= (ControlFlow 0 190920) 190932) anon16_Else_correct@@5)))))
(let ((anon15_Then_correct@@4  (=> $t8@@10 (=> (and (and (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@10)) (= 5 $t9@@6)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@10)) 0)) (= 3 $t9@@6))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t9@@6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (= 6 $t9@@6))) (= $t9@@6 $t9@@6)) (and (= $t9@0@@10 $t9@@6) (= (ControlFlow 0 191632) 191208))) L3_correct@@11))))
(let ((anon0$1_correct@@13  (=> (and (and (and (and (and (and (and (and (forall ((config_address@@65 Int) ) (!  (=> (|$IsValid'address'| config_address@@65) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106393| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@65) (= config_address@@65 173345816)))
 :qid |DiemConfigseqArraybpl.8548:25|
 :skolemid |227|
)) (forall ((config_address@@66 Int) ) (!  (=> (|$IsValid'address'| config_address@@66) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106426| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@66) (= config_address@@66 173345816)))
 :qid |DiemConfigseqArraybpl.8548:244|
 :skolemid |228|
))) (forall ((config_address@@67 Int) ) (!  (=> (|$IsValid'address'| config_address@@67) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106459| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@67) (= config_address@@67 173345816)))
 :qid |DiemConfigseqArraybpl.8548:484|
 :skolemid |229|
))) (forall ((config_address@@68 Int) ) (!  (=> (|$IsValid'address'| config_address@@68) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106492| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@68) (= config_address@@68 173345816)))
 :qid |DiemConfigseqArraybpl.8548:746|
 :skolemid |230|
))) (forall ((config_address@@69 Int) ) (!  (=> (|$IsValid'address'| config_address@@69) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@69) (= config_address@@69 173345816)))
 :qid |DiemConfigseqArraybpl.8548:970|
 :skolemid |231|
))) (forall ((config_address@@70 Int) ) (!  (=> (|$IsValid'address'| config_address@@70) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106558| |$1_DiemConfig_DiemConfig'#0'_$memory|) config_address@@70) (= config_address@@70 173345816)))
 :qid |DiemConfigseqArraybpl.8548:1192|
 :skolemid |232|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@6))) (and (|$IsValid'$1_DiemVersion_DiemVersion'| _$t1@@5) (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@24)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@24))
 :qid |DiemConfigseqArraybpl.8557:20|
 :skolemid |233|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@24))
)))) (and (and (and (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) $a_0@@25)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| $rsc@@25))
 :qid |DiemConfigseqArraybpl.8561:20|
 :skolemid |234|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) $a_0@@25))
)) (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) $a_0@@26)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| $rsc@@26))
 :qid |DiemConfigseqArraybpl.8565:20|
 :skolemid |235|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_111125| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory|) $a_0@@26))
))) (and (= $t5@@6 (|$addr#$signer| _$t0@@6)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies| 173345816))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$modifies| 173345816) (= _$t0@@6 _$t0@@6)) (and (= _$t1@@5 _$t1@@5) (= $t6@@10 (|$addr#$signer| _$t0@@6)))))) (and (=> (= (ControlFlow 0 190912) (- 0 259817)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies| 173345816) (=> (= $t8@@10  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@10)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@10)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_106525| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 190912) 191632) anon15_Then_correct@@4) (=> (= (ControlFlow 0 190912) 190920) anon15_Else_correct@@4))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@13  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_77118| stream@@18) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@18) v@@52) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 190560) 190912)) anon0$1_correct@@13)))
(let ((anon0_correct@@13  (=> (= (ControlFlow 0 259438) 190560) inline$$InitEventStore$0$anon0_correct@@13)))
anon0_correct@@13)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_reconfiguration_enabled$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 260574) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t1 () Int)
(declare-fun _$t0@@7 () T@$signer)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_110034)
(declare-fun $t2 () T@$1_DiemConfig_Configuration)
(declare-fun $t3@@0 () Int)
(declare-fun $t8@@11 () Int)
(declare-fun $t17 () Bool)
(declare-fun $t13 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@7 () Int)
(declare-fun $t14@@6 () Int)
(declare-fun $t7@@6 () Bool)
(declare-fun $t6@@11 () Int)
(declare-fun $t18 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_107487)
(declare-fun $t19 () Int)
(declare-fun $t20@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t21@@0 () Int)
(declare-fun $t22 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t9@@7 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@1 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t24@@1 () T@$1_Event_EventHandle)
(declare-fun $t16 () T@$1_Event_EventHandle)
(declare-fun $t25@@0 () Bool)
(declare-fun $t15@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t26 () T@$1_DiemConfig_Configuration)
(declare-fun $t27@@0 () Int)
(declare-fun $t28@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t4@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t5@@7 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@0 () T@$Memory_107487)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@1 () T@$Memory_107487)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t11@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t12@@1 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@0 () |T@[Int]Bool|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_reconfigure$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 260688) (let ((L2_correct  (and (=> (= (ControlFlow 0 193137) (- 0 261804)) (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t1)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t2) 18446744073709551615)) (< $t3@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t2))))) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t1)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t2) 18446744073709551615)) (< $t3@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t2)))) (=> (= (ControlFlow 0 193137) (- 0 261876)) (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t1)) (= 5 $t8@@11)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t1)) 0)) (= 3 $t8@@11))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t8@@11))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t2) 18446744073709551615)) (< $t3@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t2))) (= 1 $t8@@11))))))))
(let ((anon10_Then_correct@@5  (=> $t17 (=> (and (and (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t13) $t10@@7)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t13) 18446744073709551615)) (< $t14@@6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t13)))) (= 1 $t8@@11)) (and (= $t8@@11 $t8@@11) (= (ControlFlow 0 192941) 193137))) L2_correct))))
(let ((anon9_Then_correct  (=> (and (and $t7@@6 (or (or (or (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t8@@11)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@11)) (= 5 $t8@@11))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@11)) 0)) (= 3 $t8@@11))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t8@@11)))) (and (= $t8@@11 $t8@@11) (= (ControlFlow 0 193229) 193137))) L2_correct)))
(let ((anon7_correct  (=> (= $t18 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory@2) 173345816)) (=> (and (= $t19 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t20@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory@2) 173345816))) (=> (and (and (= $t21@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t22 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t20@@0)))) (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory@2) 173345816)) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t9@@7) $t10@@7)) (= $t18 $t9@@7)))) (=> (and (and (and (=> (not (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t9@@7) $t10@@7))) (= $t18 ($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t9@@7) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t9@@7) (|$events#$1_DiemConfig_Configuration| $t9@@7))) $t19 (|$events#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t9@@7) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t9@@7) (|$events#$1_DiemConfig_Configuration| $t9@@7)))))) (= $t23@@1 $t22)) (and (= $t24@@1 $t16) (= $t25@@0  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t21@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t15@@0))))))) (and (and (= $es@0@@0 (ite $t25@@0 (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) $t24@@1)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_77118| stream@@19)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t23@@1))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@19) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t23@@1) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) $t24@@1 stream_new@@3)))) $es)) (= $t26 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (= $t27@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t28@@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t26)))))) (and (=> (= (ControlFlow 0 192849) (- 0 261628)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t1))) (and (=> (= (ControlFlow 0 192849) (- 0 261640)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t1)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t1)) 0))) (and (=> (= (ControlFlow 0 192849) (- 0 261658)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 192849) (- 0 261672)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t2) 18446744073709551615)) (< $t3@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t2))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t2) 18446744073709551615)) (< $t3@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t2)))) (and (=> (= (ControlFlow 0 192849) (- 0 261714)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4@@0)))) (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t5@@7)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_77118| stream@@20)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@20) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@20) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t5@@7 stream_new@@4)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@19 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@2) handle@@19)) (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@2) handle@@19))) (forall ((v@@53 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@2) handle@@19)) v@@53) (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@2) handle@@19)) v@@53))
 :qid |DiemConfigseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigseqArraybpl.2564:13|
 :skolemid |70|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4@@0)))) (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t5@@7)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_77118| stream@@21)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t5@@7 stream_new@@5)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@20 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@3) handle@@20)) (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@3) handle@@20))) (forall ((v@@54 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@3) handle@@20)) v@@54) (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@3) handle@@20)) v@@54))
 :qid |DiemConfigseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigseqArraybpl.2564:13|
 :skolemid |70|
))))) (=> (= (ControlFlow 0 192849) (- 0 261759)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t4@@0)))) (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t5@@7)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_77118| stream@@22)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@22) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@22) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t5@@7 stream_new@@6)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@21 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@4) handle@@21)) (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@4) handle@@21))) (forall ((v@@55 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@4) handle@@21)) v@@55) (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@4) handle@@21)) v@@55))
 :qid |DiemConfigseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigseqArraybpl.2564:13|
 :skolemid |70|
))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_DiemConfig_Configuration_$memory@1@@0 ($Memory_107487 (|Store__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1@@0) (= (ControlFlow 0 192447) 192849))) anon7_correct)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@5| (= $1_DiemConfig_Configuration_$memory@0@@1 ($Memory_107487 (|Store__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0@@0|)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0@@1) (= (ControlFlow 0 192861) 192849))) anon7_correct)))
(let ((anon10_Else_correct@@5  (=> (not $t17) (and (=> (= (ControlFlow 0 192435) 192861) anon11_Then_correct@@5) (=> (= (ControlFlow 0 192435) 192447) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct  (=> (not $t7@@6) (=> (and (and (and (= $t9@@7 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t10@@7 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t11@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t12@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (and (= $t13 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t14@@6 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t15@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t16 (|$events#$1_DiemConfig_Configuration| $t15@@0))))) (and (=> (= (ControlFlow 0 192427) (- 0 261196)) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@0 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@0 173345816) (=> (= $t17  (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t13) $t10@@7)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t13) 18446744073709551615)) (< $t14@@6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t13))))) (and (=> (= (ControlFlow 0 192427) 192941) anon10_Then_correct@@5) (=> (= (ControlFlow 0 192427) 192435) anon10_Else_correct@@5)))))))))
(let ((anon0$1_correct@@14  (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@7)) (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@27)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@27))
 :qid |DiemConfigseqArraybpl.8989:20|
 :skolemid |237|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@27))
)))) (and (and (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@28)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@28))
 :qid |DiemConfigseqArraybpl.8993:20|
 :skolemid |238|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $a_0@@28))
)) (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) $a_0@@29)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@29))
 :qid |DiemConfigseqArraybpl.8997:20|
 :skolemid |239|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) $a_0@@29))
))) (and (forall (($a_0@@30 Int) ) (! (let (($rsc@@30 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@30)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@30))
 :qid |DiemConfigseqArraybpl.9001:20|
 :skolemid |240|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@30))
)) (= $t1 (|$addr#$signer| _$t0@@7))))) (and (and (and (= $t2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t3@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t4@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t5@@7 (|$events#$1_DiemConfig_Configuration| $t4@@0)))) (and (and (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@0 173345816) (= _$t0@@7 _$t0@@7)) (and (= $t6@@11 (|$addr#$signer| _$t0@@7)) (= $t7@@6  (or (or (or (not (= (|$addr#$signer| _$t0@@7) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@11))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_108293| $1_Roles_RoleId_$memory) $t6@@11)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816)))))))) (and (=> (= (ControlFlow 0 192259) 193229) anon9_Then_correct) (=> (= (ControlFlow 0 192259) 192427) anon9_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@14  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@22 T@$1_Event_EventHandle) ) (! (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@22)))
 (and (= (|l#Multiset_77118| stream@@23) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@23) v@@56) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 191989) 192259)) anon0$1_correct@@14)))
(let ((anon0_correct@@14  (=> (= (ControlFlow 0 260688) 191989) inline$$InitEventStore$0$anon0_correct@@14)))
anon0_correct@@14))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t42 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@1 () T@$Memory_107487)
(declare-fun $t43 () Int)
(declare-fun $t44 () T@$1_DiemConfig_Configuration)
(declare-fun $t45 () Int)
(declare-fun $t46 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t8@@12 () T@$1_DiemConfig_Configuration)
(declare-fun $t7@@7 () Int)
(declare-fun $t9@@8 () Int)
(declare-fun $t10@@8 () T@$1_DiemConfig_Configuration)
(declare-fun $t11@@1 () Int)
(declare-fun $t6@@12 () T@$1_DiemConfig_Configuration)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $t12@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t13@@0 () T@$1_Event_EventHandle)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@2 () T@$Memory_107487)
(declare-fun $t25@3 () T@$Mutation_112908)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun $t29@0 () Bool)
(declare-fun $t1@0 () Bool)
(declare-fun $t15@0@@1 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t39@0 () T@$Mutation_99585)
(declare-fun $t41@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t38@0 () T@$Mutation_12338)
(declare-fun $t25@2 () T@$Mutation_112908)
(declare-fun $t38@1 () T@$Mutation_12338)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t40@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t35@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@0@@14 () Bool)
(declare-fun $abort_code@1@@14 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t34@0 () T@$Mutation_12338)
(declare-fun $t25@1 () T@$Mutation_112908)
(declare-fun $t34@1 () T@$Mutation_12338)
(declare-fun $t26@@0 () Int)
(declare-fun $t33 () Int)
(declare-fun $t30@0 () Int)
(declare-fun $t27@@1 () Bool)
(declare-fun $t28@0 () Int)
(declare-fun $t15@@1 () Int)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@1| () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@1 () T@$Mutation_112908)
(declare-fun $t25@0@@0 () T@$Mutation_112908)
(declare-fun $abort_code@0@@14 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@1 () |T@[Int]Bool|)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun $t0@0 () Bool)
(declare-fun $t18@@0 () Bool)
(declare-fun inline$$1_DiemConfig_reconfiguration_enabled$0$$t1@1 () Bool)
(declare-fun $t17@@0 () Int)
(declare-fun $t20@0 () Bool)
(declare-fun inline$$Not$0$dst@1@@6 () Bool)
(declare-fun inline$$1_DiemTimestamp_is_genesis$0$$t1@1 () Bool)
(declare-fun $t4@@1 () T@$Mutation_112908)
(declare-fun $t34 () T@$Mutation_12338)
(declare-fun $t38 () T@$Mutation_12338)
(declare-fun $t39 () T@$Mutation_99585)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_reconfigure_$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 261993) (let ((L16_correct  (=> (= $t42 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory@1@@1) 173345816)) (=> (and (and (= $t43 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t44 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory@1@@1) 173345816))) (and (= $t45 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t46 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t44))))) (and (=> (= (ControlFlow 0 195361) (- 0 263715)) (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12) $t7@@7)) (< $t9@@8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12))))) (=> (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12) $t7@@7)) (< $t9@@8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12)))) (and (=> (= (ControlFlow 0 195361) (- 0 263746)) (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12) $t7@@7)) (and (= (|$epoch#$1_DiemConfig_Configuration| $t8@@12) 18446744073709551615) (not (= $t9@@8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12))))))) (=> (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12) $t7@@7)) (and (= (|$epoch#$1_DiemConfig_Configuration| $t8@@12) 18446744073709551615) (not (= $t9@@8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12)))))) (and (=> (= (ControlFlow 0 195361) (- 0 263789)) (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@8) $t7@@7)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t10@@8) 18446744073709551615)) (< $t11@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@8)))))) (=> (not (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@8) $t7@@7)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t10@@8) 18446744073709551615)) (< $t11@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@8))))) (and (=> (= (ControlFlow 0 195361) (- 0 263849)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory@1@@1) 173345816))) (=> (= (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory@1@@1) 173345816)) (and (=> (= (ControlFlow 0 195361) (- 0 263860)) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@12) $t7@@7)) (= $t42 $t6@@12))) (=> (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@12) $t7@@7)) (= $t42 $t6@@12)) (and (=> (= (ControlFlow 0 195361) (- 0 263887)) (=> (not (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@12) $t7@@7))) (= $t42 ($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t6@@12) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@12) (|$events#$1_DiemConfig_Configuration| $t6@@12))) $t43 (|$events#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t6@@12) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@12) (|$events#$1_DiemConfig_Configuration| $t6@@12))))))) (=> (=> (not (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@12) $t7@@7))) (= $t42 ($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t6@@12) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@12) (|$events#$1_DiemConfig_Configuration| $t6@@12))) $t43 (|$events#$1_DiemConfig_Configuration| ($1_DiemConfig_Configuration (+ (|$epoch#$1_DiemConfig_Configuration| $t6@@12) 1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t6@@12) (|$events#$1_DiemConfig_Configuration| $t6@@12)))))) (and (=> (= (ControlFlow 0 195361) (- 0 263930)) (let ((actual@@5 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@5 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t12@@2)))) (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_77118| stream@@24)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@7)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@5) (|counter#$EventStore| actual@@5)) (forall ((handle@@23 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@5) handle@@23)) (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@5) handle@@23))) (forall ((v@@57 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@5) handle@@23)) v@@57) (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@5) handle@@23)) v@@57))
 :qid |DiemConfigseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigseqArraybpl.2564:13|
 :skolemid |70|
)))))) (=> (let ((actual@@6 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@6 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t12@@2)))) (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_77118| stream@@25)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@25) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@25) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@8)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@6) (|counter#$EventStore| actual@@6)) (forall ((handle@@24 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@6) handle@@24)) (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@6) handle@@24))) (forall ((v@@58 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@6) handle@@24)) v@@58) (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@6) handle@@24)) v@@58))
 :qid |DiemConfigseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigseqArraybpl.2564:13|
 :skolemid |70|
))))) (=> (= (ControlFlow 0 195361) (- 0 263975)) (let ((actual@@7 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@7 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t12@@2)))) (let ((stream@@26 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@9 (let ((len@@9 (|l#Multiset_77118| stream@@26)))
(let ((cnt@@9 (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@26) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@26) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46) (+ cnt@@9 1)) (+ len@@9 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@9)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@7) (|counter#$EventStore| expected@@7)) (forall ((handle@@25 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@7) handle@@25)) (|l#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@7) handle@@25))) (forall ((v@@59 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| actual@@7) handle@@25)) v@@59) (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| expected@@7) handle@@25)) v@@59))
 :qid |DiemConfigseqArraybpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigseqArraybpl.2564:13|
 :skolemid |70|
))))))))))))))))))))))))
(let ((anon47_Else_correct  (=> (and (not $abort_flag@1) (= $1_DiemConfig_Configuration_$memory@0@@2 ($Memory_107487 (|Store__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) (|a#$Global| (|l#$Mutation_112908| $t25@3)) true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) (|a#$Global| (|l#$Mutation_112908| $t25@3)) (|v#$Mutation_112908| $t25@3))))) (and (=> (= (ControlFlow 0 194987) (- 0 263613)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory@0@@2) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory@0@@2) 173345816)) (=> (= $es@1 $es@0@@1) (=> (and (= $1_DiemConfig_Configuration_$memory@1@@1 $1_DiemConfig_Configuration_$memory@0@@2) (= (ControlFlow 0 194987) 195361)) L16_correct)))))))
(let ((anon44_Then_correct  (=> (and (and $t29@0 (= $es@1 $es)) (and (= $1_DiemConfig_Configuration_$memory@1@@1 $1_DiemConfig_Configuration_$memory) (= (ControlFlow 0 195393) 195361))) L16_correct)))
(let ((anon40_Then_correct  (=> (and (and $t1@0 (= $es@1 $es)) (and (= $1_DiemConfig_Configuration_$memory@1@@1 $1_DiemConfig_Configuration_$memory) (= (ControlFlow 0 195489) 195361))) L16_correct)))
(let ((L17_correct  (and (=> (= (ControlFlow 0 194605) (- 0 263317)) (or (or (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12) $t7@@7)) (< $t9@@8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12))) (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12) $t7@@7)) (and (= (|$epoch#$1_DiemConfig_Configuration| $t8@@12) 18446744073709551615) (not (= $t9@@8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12)))))) (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@8) $t7@@7)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t10@@8) 18446744073709551615)) (< $t11@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@8)))))) (=> (or (or (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12) $t7@@7)) (< $t9@@8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12))) (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12) $t7@@7)) (and (= (|$epoch#$1_DiemConfig_Configuration| $t8@@12) 18446744073709551615) (not (= $t9@@8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12)))))) (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@8) $t7@@7)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t10@@8) 18446744073709551615)) (< $t11@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@8))))) (=> (= (ControlFlow 0 194605) (- 0 263440)) (or (or (and (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12) $t7@@7)) (< $t9@@8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12))) (= 1 $t15@0@@1)) (and (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12) $t7@@7)) (and (= (|$epoch#$1_DiemConfig_Configuration| $t8@@12) 18446744073709551615) (not (= $t9@@8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@12))))) (= (- 0 1) $t15@0@@1))) (and (and (or (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (= (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@8) $t7@@7)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t10@@8) 18446744073709551615)) (< $t11@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@8)))) (= 1 $t15@0@@1))))))))
(let ((anon47_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t15@0@@1 $abort_code@2) (= (ControlFlow 0 195375) 194605))) L17_correct)))
(let ((|inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$anon0_correct@@0|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1@@0| (|v#$Mutation_99585| $t39@0)) (= $es@0@@1 (let ((stream@@27 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1@@0|)))
(let ((stream_new@@10 (let ((len@@10 (|l#Multiset_77118| stream@@27)))
(let ((cnt@@10 (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@27) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t41@0))))
(Multiset_77118 (|Store__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@27) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t41@0) (+ cnt@@10 1)) (+ len@@10 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1@@0| stream_new@@10)))))) (and (=> (= (ControlFlow 0 194947) 195375) anon47_Then_correct) (=> (= (ControlFlow 0 194947) 194987) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (and (and (and (not $abort_flag@1) (= $t38@0 ($Mutation_12338 (|l#$Mutation_112908| $t25@2) (seq.++ (|p#$Mutation_112908| $t25@2) (seq.unit 0)) (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t25@2))))) (and (= $t38@1 ($Mutation_12338 (|l#$Mutation_12338| $t38@0) (|p#$Mutation_12338| $t38@0) inline$$AddU64$0$dst@2)) (= $t25@3 ($Mutation_112908 (|l#$Mutation_112908| $t25@2) (|p#$Mutation_112908| $t25@2) ($1_DiemConfig_Configuration (|v#$Mutation_12338| $t38@1) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t25@2)) (|$events#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t25@2))))))) (and (and (= $t39@0 ($Mutation_99585 (|l#$Mutation_112908| $t25@3) (seq.++ (|p#$Mutation_112908| $t25@3) (seq.unit 2)) (|$events#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t25@3)))) (= $t40@0 (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t25@3)))) (and (= $t41@0 ($1_DiemConfig_NewEpochEvent $t40@0)) (= (ControlFlow 0 194953) 194947)))) |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$anon0_correct@@0|)))
(let ((anon46_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t15@0@@1 $abort_code@2) (= (ControlFlow 0 195389) 194605))) L17_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 194802) 195389) anon46_Then_correct) (=> (= (ControlFlow 0 194802) 194953) anon46_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t35@0 1) $MAX_U64) (= (ControlFlow 0 194800) 194802)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t35@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t35@0 1)) (= $abort_flag@1 $abort_flag@0@@14)) (and (= $abort_code@2 $abort_code@1@@14) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 194748) 195389) anon46_Then_correct) (=> (= (ControlFlow 0 194748) 194953) anon46_Else_correct))))))
(let ((anon45_Then_correct  (=> (and inline$$Gt$0$dst@1 (= $t34@0 ($Mutation_12338 (|l#$Mutation_112908| $t25@1) (seq.++ (|p#$Mutation_112908| $t25@1) (seq.unit 1)) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t25@1))))) (=> (and (and (= $t34@1 ($Mutation_12338 (|l#$Mutation_12338| $t34@0) (|p#$Mutation_12338| $t34@0) $t26@@0)) (= $t25@2 ($Mutation_112908 (|l#$Mutation_112908| $t25@1) (|p#$Mutation_112908| $t25@1) ($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t25@1)) (|v#$Mutation_12338| $t34@1) (|$events#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t25@1)))))) (and (= $t35@0 (|$epoch#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t25@2))) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 194808) 194800) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 194808) 194748) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon45_Else_correct  (=> (and (and (not inline$$Gt$0$dst@1) (= $t33 $t33)) (and (= $t15@0@@1 $t33) (= (ControlFlow 0 194307) 194605))) L17_correct)))
(let ((anon44_Else$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (and (|$IsValid'u64'| $t33) (= $t33 1)) (and (= $t33 $t33) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 194291) 194808) anon45_Then_correct) (=> (= (ControlFlow 0 194291) 194307) anon45_Else_correct))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> $t26@@0 $t30@0)) (= (ControlFlow 0 194255) 194291)) anon44_Else$1_correct)))
(let ((anon44_Else_correct  (=> (not $t29@0) (=> (and (= $t30@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t25@1))) (= (ControlFlow 0 194261) 194255)) inline$$Gt$0$anon0_correct))))
(let ((anon43_Else_correct  (=> (and (not $t27@@1) (|$IsValid'u64'| $t26@@0)) (=> (and (and (= $t26@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t26@@0 $t26@@0)) (and (= $t28@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| (|v#$Mutation_112908| $t25@1))) (= $t29@0 (= $t26@@0 $t28@0)))) (and (=> (= (ControlFlow 0 194203) 195393) anon44_Then_correct) (=> (= (ControlFlow 0 194203) 194261) anon44_Else_correct))))))
(let ((anon43_Then_correct  (=> $t27@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@1)) (= $t15@@1 $t15@@1)) (and (= $t15@0@@1 $t15@@1) (= (ControlFlow 0 195419) 194605))) L17_correct))))
(let ((anon42_Else_correct  (=> (and (and (not $abort_flag@0@@14) (= |$temp_0'$1_DiemConfig_Configuration'@0@@1| (|v#$Mutation_112908| $t25@1))) (and (= |$temp_0'$1_DiemConfig_Configuration'@0@@1| |$temp_0'$1_DiemConfig_Configuration'@0@@1|) (= $t27@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 194165) 195419) anon43_Then_correct) (=> (= (ControlFlow 0 194165) 194203) anon43_Else_correct)))))
(let ((anon42_Then_correct  (=> (and (and $abort_flag@0@@14 (= $abort_code@1@@14 $abort_code@1@@14)) (and (= $t15@0@@1 $abort_code@1@@14) (= (ControlFlow 0 195433) 194605))) L17_correct)))
(let ((anon41_Then$1_correct  (=> (= $t25@1 $t25@@1) (=> (and (= $abort_flag@0@@14 true) (= $abort_code@1@@14 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 195485) 195433) anon42_Then_correct) (=> (= (ControlFlow 0 195485) 194165) anon42_Else_correct))))))
(let ((anon41_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= (ControlFlow 0 195483) 195485)) anon41_Then$1_correct)))
(let ((anon41_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816) (=> (and (and (= $t25@0@@0 ($Mutation_112908 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816))) (= $t25@1 $t25@0@@0)) (and (= $abort_flag@0@@14 false) (= $abort_code@1@@14 $abort_code@0@@14))) (and (=> (= (ControlFlow 0 194135) 195433) anon42_Then_correct) (=> (= (ControlFlow 0 194135) 194165) anon42_Else_correct))))))
(let ((anon40_Else_correct  (=> (and (not $t1@0) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 194113) (- 0 262723)) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@1 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@1 173345816) (and (=> (= (ControlFlow 0 194113) 195483) anon41_Then_correct) (=> (= (ControlFlow 0 194113) 194135) anon41_Else_correct)))))))
(let ((anon39_Else$1_correct  (=> (and (= inline$$Not$2$dst@1 inline$$Not$2$dst@1) (= $t1@0 inline$$Not$2$dst@1)) (and (=> (= (ControlFlow 0 194093) 195489) anon40_Then_correct) (=> (= (ControlFlow 0 194093) 194113) anon40_Else_correct)))))
(let ((inline$$Not$2$anon0_correct  (=> (and (= inline$$Not$2$dst@1  (not inline$$Not$1$dst@1)) (= (ControlFlow 0 194077) 194093)) anon39_Else$1_correct)))
(let ((anon39_Else_correct  (=> (and (not false) (= (ControlFlow 0 194083) 194077)) inline$$Not$2$anon0_correct)))
(let ((anon38_Then_correct  (=> $t0@0 (=> (and (= true true) (= $t1@0 true)) (and (=> (= (ControlFlow 0 195521) 195489) anon40_Then_correct) (=> (= (ControlFlow 0 195521) 194113) anon40_Else_correct))))))
(let ((anon37_Then_correct  (=> $t18@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@1)) (= $t15@@1 $t15@@1)) (and (= $t15@0@@1 $t15@@1) (= (ControlFlow 0 195547) 194605))) L17_correct))))
(let ((anon39_Then_correct true))
(let ((inline$$1_DiemConfig_reconfiguration_enabled$0$anon0$1_correct  (=> (= inline$$Not$1$dst@1 inline$$Not$1$dst@1) (and (=> (= (ControlFlow 0 194033) 195503) anon39_Then_correct) (=> (= (ControlFlow 0 194033) 194083) anon39_Else_correct)))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not inline$$1_DiemConfig_reconfiguration_enabled$0$$t1@1)) (= (ControlFlow 0 194015) 194033)) inline$$1_DiemConfig_reconfiguration_enabled$0$anon0$1_correct)))
(let ((inline$$1_DiemConfig_reconfiguration_enabled$0$anon0_correct  (=> (|$IsValid'address'| 173345816) (=> (and (= inline$$1_DiemConfig_reconfiguration_enabled$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) 173345816)) (= (ControlFlow 0 194021) 194015)) inline$$Not$1$anon0_correct))))
(let ((anon38_Else_correct  (=> (and (not $t0@0) (= (ControlFlow 0 194039) 194021)) inline$$1_DiemConfig_reconfiguration_enabled$0$anon0_correct)))
(let ((anon37_Else_correct  (=> (not $t18@@0) (=> (and (|$IsValid'u64'| $t17@@0) (= $t17@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (|$IsValid'u64'| 0) (= $t20@0 (= $t17@@0 0))) (and (= $t20@0 $t20@0) (= $t0@0 $t20@0))) (and (=> (= (ControlFlow 0 193903) 195521) anon38_Then_correct) (=> (= (ControlFlow 0 193903) 194039) anon38_Else_correct)))))))
(let ((anon36_Else_correct  (=> (and (not inline$$Not$0$dst@1@@6) (= $t18@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 193865) 195547) anon37_Then_correct) (=> (= (ControlFlow 0 193865) 193903) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> inline$$Not$0$dst@1@@6 (=> (and (= true true) (= $t0@0 true)) (and (=> (= (ControlFlow 0 195565) 195521) anon38_Then_correct) (=> (= (ControlFlow 0 195565) 194039) anon38_Else_correct))))))
(let ((anon35_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 193849) 195565) anon36_Then_correct) (=> (= (ControlFlow 0 193849) 193865) anon36_Else_correct)))))
(let ((anon35_Then_correct true))
(let ((inline$$1_DiemTimestamp_is_genesis$0$anon0$1_correct  (=> (= inline$$Not$0$dst@1@@6 inline$$Not$0$dst@1@@6) (and (=> (= (ControlFlow 0 193835) 195579) anon35_Then_correct) (=> (= (ControlFlow 0 193835) 193849) anon35_Else_correct)))))
(let ((inline$$Not$0$anon0_correct@@6  (=> (and (= inline$$Not$0$dst@1@@6  (not inline$$1_DiemTimestamp_is_genesis$0$$t1@1)) (= (ControlFlow 0 193817) 193835)) inline$$1_DiemTimestamp_is_genesis$0$anon0$1_correct)))
(let ((inline$$1_DiemTimestamp_is_genesis$0$anon0_correct  (=> (|$IsValid'address'| 173345816) (=> (and (= inline$$1_DiemTimestamp_is_genesis$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 193823) 193817)) inline$$Not$0$anon0_correct@@6))))
(let ((anon0$1_correct@@15  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (forall (($a_0@@31 Int) ) (! (let (($rsc@@31 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@31)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@31))
 :qid |DiemConfigseqArraybpl.9345:20|
 :skolemid |241|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@31))
))) (=> (and (and (forall (($a_0@@32 Int) ) (! (let (($rsc@@32 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) $a_0@@32)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@32))
 :qid |DiemConfigseqArraybpl.9349:20|
 :skolemid |242|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) $a_0@@32))
)) (forall (($a_0@@33 Int) ) (! (let (($rsc@@33 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@33)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@33))
 :qid |DiemConfigseqArraybpl.9353:20|
 :skolemid |243|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110034| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@33))
))) (and (= $t6@@12 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t7@@7 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (and (and (and (= $t8@@12 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t9@@8 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t10@@8 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t11@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (and (= $t12@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_107487| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t13@@0 (|$events#$1_DiemConfig_Configuration| $t12@@2))) (and (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies@@1 173345816) (= (ControlFlow 0 193841) 193823)))) inline$$1_DiemTimestamp_is_genesis$0$anon0_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@15  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@26 T@$1_Event_EventHandle) ) (! (let ((stream@@28 (|Select__T@[$1_Event_EventHandle]Multiset_77118_| (|streams#$EventStore| $es) handle@@26)))
 (and (= (|l#Multiset_77118| stream@@28) 0) (forall ((v@@60 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_77118| stream@@28) v@@60) 0)
 :qid |DiemConfigseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 193507) 193841)) anon0$1_correct@@15)))
(let ((anon0_correct@@15  (=> (and (= (seq.len (|p#$Mutation_112908| $t4@@1)) 0) (= (seq.len (|p#$Mutation_112908| $t25@@1)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_12338| $t34)) 0) (= (seq.len (|p#$Mutation_12338| $t38)) 0)) (and (= (seq.len (|p#$Mutation_99585| $t39)) 0) (= (ControlFlow 0 193517) 193507))) inline$$InitEventStore$0$anon0_correct@@15))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 261993) 193517) anon0_correct@@15)))
PreconditionGeneratedEntry_correct@@1))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 264036) true)
))
(check-sat)
(pop 1)
; Valid
