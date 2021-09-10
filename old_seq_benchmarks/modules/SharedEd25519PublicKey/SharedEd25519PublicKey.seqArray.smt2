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
(declare-datatypes ((T@$Memory_85840 0)) ((($Memory_85840 (|domain#$Memory_85840| |T@[Int]Bool|) (|contents#$Memory_85840| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_130271 0)) ((($Memory_130271 (|domain#$Memory_130271| |T@[Int]Bool|) (|contents#$Memory_130271| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_122018 0)) ((($Memory_122018 (|domain#$Memory_122018| |T@[Int]Bool|) (|contents#$Memory_122018| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_119812 0)) ((($Memory_119812 (|domain#$Memory_119812| |T@[Int]Bool|) (|contents#$Memory_119812| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_120092 0)) ((($Memory_120092 (|domain#$Memory_120092| |T@[Int]Bool|) (|contents#$Memory_120092| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_119779 0)) ((($Memory_119779 (|domain#$Memory_119779| |T@[Int]Bool|) (|contents#$Memory_119779| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_119564 0)) ((($Memory_119564 (|domain#$Memory_119564| |T@[Int]Bool|) (|contents#$Memory_119564| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_117025 0)) ((($Memory_117025 (|domain#$Memory_117025| |T@[Int]Bool|) (|contents#$Memory_117025| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_116961 0)) ((($Memory_116961 (|domain#$Memory_116961| |T@[Int]Bool|) (|contents#$Memory_116961| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_115671 0)) ((($Memory_115671 (|domain#$Memory_115671| |T@[Int]Bool|) (|contents#$Memory_115671| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_115607 0)) ((($Memory_115607 (|domain#$Memory_115607| |T@[Int]Bool|) (|contents#$Memory_115607| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_115295 0)) ((($Memory_115295 (|domain#$Memory_115295| |T@[Int]Bool|) (|contents#$Memory_115295| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112029 0)) ((($Memory_112029 (|domain#$Memory_112029| |T@[Int]Bool|) (|contents#$Memory_112029| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111742 0)) ((($Memory_111742 (|domain#$Memory_111742| |T@[Int]Bool|) (|contents#$Memory_111742| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111455 0)) ((($Memory_111455 (|domain#$Memory_111455| |T@[Int]Bool|) (|contents#$Memory_111455| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111236 0)) ((($Memory_111236 (|domain#$Memory_111236| |T@[Int]Bool|) (|contents#$Memory_111236| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_121625 0)) ((($Memory_121625 (|domain#$Memory_121625| |T@[Int]Bool|) (|contents#$Memory_121625| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_103973 0)) ((($Memory_103973 (|domain#$Memory_103973| |T@[Int]Bool|) (|contents#$Memory_103973| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_103886 0)) ((($Memory_103886 (|domain#$Memory_103886| |T@[Int]Bool|) (|contents#$Memory_103886| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100683 0)) ((($Memory_100683 (|domain#$Memory_100683| |T@[Int]Bool|) (|contents#$Memory_100683| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100596 0)) ((($Memory_100596 (|domain#$Memory_100596| |T@[Int]Bool|) (|contents#$Memory_100596| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_121851 0)) ((($Memory_121851 (|domain#$Memory_121851| |T@[Int]Bool|) (|contents#$Memory_121851| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104237 0)) ((($Memory_104237 (|domain#$Memory_104237| |T@[Int]Bool|) (|contents#$Memory_104237| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_113962 0)) ((($Memory_113962 (|domain#$Memory_113962| |T@[Int]Bool|) (|contents#$Memory_113962| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104563 0)) ((($Memory_104563 (|domain#$Memory_104563| |T@[Int]Bool|) (|contents#$Memory_104563| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_121760 0)) ((($Memory_121760 (|domain#$Memory_121760| |T@[Int]Bool|) (|contents#$Memory_121760| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104146 0)) ((($Memory_104146 (|domain#$Memory_104146| |T@[Int]Bool|) (|contents#$Memory_104146| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_115851 0)) ((($Memory_115851 (|domain#$Memory_115851| |T@[Int]Bool|) (|contents#$Memory_115851| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104464 0)) ((($Memory_104464 (|domain#$Memory_104464| |T@[Int]Bool|) (|contents#$Memory_104464| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100298 0)) ((($Memory_100298 (|domain#$Memory_100298| |T@[Int]Bool|) (|contents#$Memory_100298| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100234 0)) ((($Memory_100234 (|domain#$Memory_100234| |T@[Int]Bool|) (|contents#$Memory_100234| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_96237 0)) ((($Memory_96237 (|domain#$Memory_96237| |T@[Int]Bool|) (|contents#$Memory_96237| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_96150 0)) ((($Memory_96150 (|domain#$Memory_96150| |T@[Int]Bool|) (|contents#$Memory_96150| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96063 0)) ((($Memory_96063 (|domain#$Memory_96063| |T@[Int]Bool|) (|contents#$Memory_96063| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_95976 0)) ((($Memory_95976 (|domain#$Memory_95976| |T@[Int]Bool|) (|contents#$Memory_95976| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_95889 0)) ((($Memory_95889 (|domain#$Memory_95889| |T@[Int]Bool|) (|contents#$Memory_95889| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_96502 0)) ((($Memory_96502 (|domain#$Memory_96502| |T@[Int]Bool|) (|contents#$Memory_96502| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_95015 0)) ((($Memory_95015 (|domain#$Memory_95015| |T@[Int]Bool|) (|contents#$Memory_95015| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_95081 0)) ((($Memory_95081 (|domain#$Memory_95081| |T@[Int]Bool|) (|contents#$Memory_95081| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_94934 0)) ((($Memory_94934 (|domain#$Memory_94934| |T@[Int]Bool|) (|contents#$Memory_94934| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_94853 0)) ((($Memory_94853 (|domain#$Memory_94853| |T@[Int]Bool|) (|contents#$Memory_94853| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_94772 0)) ((($Memory_94772 (|domain#$Memory_94772| |T@[Int]Bool|) (|contents#$Memory_94772| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_94691 0)) ((($Memory_94691 (|domain#$Memory_94691| |T@[Int]Bool|) (|contents#$Memory_94691| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_94577 0)) ((($Memory_94577 (|domain#$Memory_94577| |T@[Int]Bool|) (|contents#$Memory_94577| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey 0)) ((($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (Seq Int)) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-sort |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| 0)
(declare-datatypes ((T@$Memory_125156 0)) ((($Memory_125156 (|domain#$Memory_125156| |T@[Int]Bool|) (|contents#$Memory_125156| |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_120762 0)) ((($Memory_120762 (|domain#$Memory_120762| |T@[Int]Bool|) (|contents#$Memory_120762| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_94610 0)) ((($Memory_94610 (|domain#$Memory_94610| |T@[Int]Bool|) (|contents#$Memory_94610| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_94066 0)) ((($Memory_94066 (|domain#$Memory_94066| |T@[Int]Bool|) (|contents#$Memory_94066| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_93508 0)) ((($Memory_93508 (|domain#$Memory_93508| |T@[Int]Bool|) (|contents#$Memory_93508| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_93181 0)) ((($Memory_93181 (|domain#$Memory_93181| |T@[Int]Bool|) (|contents#$Memory_93181| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_92687 0)) ((($Memory_92687 (|domain#$Memory_92687| |T@[Int]Bool|) (|contents#$Memory_92687| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_64004 0)) (((Multiset_64004 (|v#Multiset_64004| |T@[$EventRep]Int|) (|l#Multiset_64004| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_64004| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_64004|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_125327 0)) ((($Mutation_125327 (|l#$Mutation_125327| T@$Location) (|p#$Mutation_125327| (Seq Int)) (|v#$Mutation_125327| T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) ) ))
(declare-datatypes ((T@$Mutation_122846 0)) ((($Mutation_122846 (|l#$Mutation_122846| T@$Location) (|p#$Mutation_122846| (Seq Int)) (|v#$Mutation_122846| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_122802 0)) ((($Mutation_122802 (|l#$Mutation_122802| T@$Location) (|p#$Mutation_122802| (Seq Int)) (|v#$Mutation_122802| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_31541 0)) ((($Mutation_31541 (|l#$Mutation_31541| T@$Location) (|p#$Mutation_31541| (Seq Int)) (|v#$Mutation_31541| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_109956 0)) ((($Mutation_109956 (|l#$Mutation_109956| T@$Location) (|p#$Mutation_109956| (Seq Int)) (|v#$Mutation_109956| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_98975 0)) ((($Mutation_98975 (|l#$Mutation_98975| T@$Location) (|p#$Mutation_98975| (Seq Int)) (|v#$Mutation_98975| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_86471 0)) ((($Mutation_86471 (|l#$Mutation_86471| T@$Location) (|p#$Mutation_86471| (Seq Int)) (|v#$Mutation_86471| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12338 0)) ((($Mutation_12338 (|l#$Mutation_12338| T@$Location) (|p#$Mutation_12338| (Seq Int)) (|v#$Mutation_12338| Int) ) ) ))
(declare-datatypes ((T@$Mutation_81848 0)) ((($Mutation_81848 (|l#$Mutation_81848| T@$Location) (|p#$Mutation_81848| (Seq Int)) (|v#$Mutation_81848| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_81102 0)) ((($Mutation_81102 (|l#$Mutation_81102| T@$Location) (|p#$Mutation_81102| (Seq Int)) (|v#$Mutation_81102| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_79698 0)) ((($Mutation_79698 (|l#$Mutation_79698| T@$Location) (|p#$Mutation_79698| (Seq Int)) (|v#$Mutation_79698| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_78952 0)) ((($Mutation_78952 (|l#$Mutation_78952| T@$Location) (|p#$Mutation_78952| (Seq Int)) (|v#$Mutation_78952| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_77548 0)) ((($Mutation_77548 (|l#$Mutation_77548| T@$Location) (|p#$Mutation_77548| (Seq Int)) (|v#$Mutation_77548| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_76802 0)) ((($Mutation_76802 (|l#$Mutation_76802| T@$Location) (|p#$Mutation_76802| (Seq Int)) (|v#$Mutation_76802| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_75398 0)) ((($Mutation_75398 (|l#$Mutation_75398| T@$Location) (|p#$Mutation_75398| (Seq Int)) (|v#$Mutation_75398| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_74652 0)) ((($Mutation_74652 (|l#$Mutation_74652| T@$Location) (|p#$Mutation_74652| (Seq Int)) (|v#$Mutation_74652| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_73248 0)) ((($Mutation_73248 (|l#$Mutation_73248| T@$Location) (|p#$Mutation_73248| (Seq Int)) (|v#$Mutation_73248| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_72502 0)) ((($Mutation_72502 (|l#$Mutation_72502| T@$Location) (|p#$Mutation_72502| (Seq Int)) (|v#$Mutation_72502| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_71098 0)) ((($Mutation_71098 (|l#$Mutation_71098| T@$Location) (|p#$Mutation_71098| (Seq Int)) (|v#$Mutation_71098| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_70352 0)) ((($Mutation_70352 (|l#$Mutation_70352| T@$Location) (|p#$Mutation_70352| (Seq Int)) (|v#$Mutation_70352| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_68948 0)) ((($Mutation_68948 (|l#$Mutation_68948| T@$Location) (|p#$Mutation_68948| (Seq Int)) (|v#$Mutation_68948| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68202 0)) ((($Mutation_68202 (|l#$Mutation_68202| T@$Location) (|p#$Mutation_68202| (Seq Int)) (|v#$Mutation_68202| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_66760 0)) ((($Mutation_66760 (|l#$Mutation_66760| T@$Location) (|p#$Mutation_66760| (Seq Int)) (|v#$Mutation_66760| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_66014 0)) ((($Mutation_66014 (|l#$Mutation_66014| T@$Location) (|p#$Mutation_66014| (Seq Int)) (|v#$Mutation_66014| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_64004_| (|T@[$1_Event_EventHandle]Multiset_64004| T@$1_Event_EventHandle) T@Multiset_64004)
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
(declare-fun $1_Authenticator_spec_ed25519_authentication_key ((Seq Int)) (Seq Int))
(declare-fun |$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| (T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_12191 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_57859 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_56874 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_57071 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_57268 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_58056 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_57662 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_57465 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_56677 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_64004| |T@[$1_Event_EventHandle]Multiset_64004|) |T@[$1_Event_EventHandle]Multiset_64004|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |SharedEd25519PublicKeyseqArraybpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |SharedEd25519PublicKeyseqArraybpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |SharedEd25519PublicKeyseqArraybpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |SharedEd25519PublicKeyseqArraybpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |SharedEd25519PublicKeyseqArraybpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |SharedEd25519PublicKeyseqArraybpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |SharedEd25519PublicKeyseqArraybpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.595:13|
 :skolemid |15|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |SharedEd25519PublicKeyseqArraybpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |SharedEd25519PublicKeyseqArraybpl.608:17|
 :skolemid |18|
)))))
 :qid |SharedEd25519PublicKeyseqArraybpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |SharedEd25519PublicKeyseqArraybpl.775:13|
 :skolemid |20|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |SharedEd25519PublicKeyseqArraybpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |SharedEd25519PublicKeyseqArraybpl.788:17|
 :skolemid |23|
)))))
 :qid |SharedEd25519PublicKeyseqArraybpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |SharedEd25519PublicKeyseqArraybpl.955:13|
 :skolemid |25|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |SharedEd25519PublicKeyseqArraybpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |SharedEd25519PublicKeyseqArraybpl.968:17|
 :skolemid |28|
)))))
 :qid |SharedEd25519PublicKeyseqArraybpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |SharedEd25519PublicKeyseqArraybpl.1135:13|
 :skolemid |30|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |SharedEd25519PublicKeyseqArraybpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |SharedEd25519PublicKeyseqArraybpl.1148:17|
 :skolemid |33|
)))))
 :qid |SharedEd25519PublicKeyseqArraybpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |SharedEd25519PublicKeyseqArraybpl.1315:13|
 :skolemid |35|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.1313:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |SharedEd25519PublicKeyseqArraybpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |SharedEd25519PublicKeyseqArraybpl.1328:17|
 :skolemid |38|
)))))
 :qid |SharedEd25519PublicKeyseqArraybpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |SharedEd25519PublicKeyseqArraybpl.1495:13|
 :skolemid |40|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |SharedEd25519PublicKeyseqArraybpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |SharedEd25519PublicKeyseqArraybpl.1508:17|
 :skolemid |43|
)))))
 :qid |SharedEd25519PublicKeyseqArraybpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |SharedEd25519PublicKeyseqArraybpl.1675:13|
 :skolemid |45|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.1673:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |SharedEd25519PublicKeyseqArraybpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |SharedEd25519PublicKeyseqArraybpl.1688:17|
 :skolemid |48|
)))))
 :qid |SharedEd25519PublicKeyseqArraybpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |SharedEd25519PublicKeyseqArraybpl.1855:13|
 :skolemid |50|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |SharedEd25519PublicKeyseqArraybpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |SharedEd25519PublicKeyseqArraybpl.1868:17|
 :skolemid |53|
)))))
 :qid |SharedEd25519PublicKeyseqArraybpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2035:13|
 :skolemid |55|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.2033:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |SharedEd25519PublicKeyseqArraybpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2048:17|
 :skolemid |58|
)))))
 :qid |SharedEd25519PublicKeyseqArraybpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2215:13|
 :skolemid |60|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.2213:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |SharedEd25519PublicKeyseqArraybpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2228:17|
 :skolemid |63|
)))))
 :qid |SharedEd25519PublicKeyseqArraybpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2401:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2417:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2484:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2487:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_64004_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_64004| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64004| stream) v@@24) 0)
 :qid |SharedEd25519PublicKeyseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.2548:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.2589:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2595:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.2645:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2651:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.2701:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2707:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.2757:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2763:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.2813:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2819:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.2869:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2875:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.2925:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2931:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.2981:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |SharedEd25519PublicKeyseqArraybpl.2987:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.3037:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3043:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.3093:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3099:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.3149:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3155:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.3205:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3211:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.3261:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3267:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.3317:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3323:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.3373:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3379:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.3429:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3435:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.3485:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3491:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3545:15|
 :skolemid |105|
)))
(assert (forall ((addr Int) ) (! true
 :qid |SharedEd25519PublicKeyseqArraybpl.3554:15|
 :skolemid |106|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3579:61|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3756:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3775:71|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3839:46|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3852:64|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3865:75|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |SharedEd25519PublicKeyseqArraybpl.3878:72|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |SharedEd25519PublicKeyseqArraybpl.3907:55|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |SharedEd25519PublicKeyseqArraybpl.3929:46|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |SharedEd25519PublicKeyseqArraybpl.3947:49|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |SharedEd25519PublicKeyseqArraybpl.4022:71|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |SharedEd25519PublicKeyseqArraybpl.4036:91|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |SharedEd25519PublicKeyseqArraybpl.4050:113|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |SharedEd25519PublicKeyseqArraybpl.4064:75|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |SharedEd25519PublicKeyseqArraybpl.4078:73|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |SharedEd25519PublicKeyseqArraybpl.4098:48|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.4114:57|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.4128:83|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.4142:103|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.4156:125|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.4170:87|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.4184:85|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |SharedEd25519PublicKeyseqArraybpl.4198:48|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |SharedEd25519PublicKeyseqArraybpl.4219:45|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |SharedEd25519PublicKeyseqArraybpl.4233:51|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |SharedEd25519PublicKeyseqArraybpl.4256:48|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |SharedEd25519PublicKeyseqArraybpl.4562:49|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |SharedEd25519PublicKeyseqArraybpl.4575:65|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |SharedEd25519PublicKeyseqArraybpl.5079:45|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |SharedEd25519PublicKeyseqArraybpl.5092:45|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.5105:55|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.5119:55|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@32))))
 :qid |SharedEd25519PublicKeyseqArraybpl.5139:38|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@33))))
 :qid |SharedEd25519PublicKeyseqArraybpl.5160:44|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))))
 :qid |SharedEd25519PublicKeyseqArraybpl.5211:53|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))))
 :qid |SharedEd25519PublicKeyseqArraybpl.5273:53|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.5299:55|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.5313:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@38)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@38))))
 :qid |SharedEd25519PublicKeyseqArraybpl.5330:38|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@39)))
 :qid |SharedEd25519PublicKeyseqArraybpl.5344:48|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@40)))
 :qid |SharedEd25519PublicKeyseqArraybpl.5358:48|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@41)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@41))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@41))))
 :qid |SharedEd25519PublicKeyseqArraybpl.5378:41|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@42)))
 :qid |SharedEd25519PublicKeyseqArraybpl.5393:53|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@43)))
 :qid |SharedEd25519PublicKeyseqArraybpl.5407:53|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44))))
 :qid |SharedEd25519PublicKeyseqArraybpl.5424:60|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45))))
 :qid |SharedEd25519PublicKeyseqArraybpl.5441:60|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |SharedEd25519PublicKeyseqArraybpl.5458:57|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.7659:68|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |SharedEd25519PublicKeyseqArraybpl.7681:66|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |SharedEd25519PublicKeyseqArraybpl.7707:66|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))))
 :qid |SharedEd25519PublicKeyseqArraybpl.7736:56|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))))
 :qid |SharedEd25519PublicKeyseqArraybpl.7766:56|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@52) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.8100:31|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@52))
)))
(assert (forall ((s@@53 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@53) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.8444:31|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@54)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@54)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@54))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@54))))
 :qid |SharedEd25519PublicKeyseqArraybpl.8463:35|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@55)))
 :qid |SharedEd25519PublicKeyseqArraybpl.8884:45|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@56))))
 :qid |SharedEd25519PublicKeyseqArraybpl.8903:50|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@57)))
 :qid |SharedEd25519PublicKeyseqArraybpl.8918:52|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@58) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@58)))
 :qid |SharedEd25519PublicKeyseqArraybpl.8942:38|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@59) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@59)))
 :qid |SharedEd25519PublicKeyseqArraybpl.8956:39|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@59))
)))
(assert (forall ((s@@60 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60))))
 :qid |SharedEd25519PublicKeyseqArraybpl.8983:65|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@61)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@61))))
 :qid |SharedEd25519PublicKeyseqArraybpl.9368:60|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62))))
 :qid |SharedEd25519PublicKeyseqArraybpl.9385:66|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@63)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@63)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@63))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@63))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@63))))
 :qid |SharedEd25519PublicKeyseqArraybpl.9414:50|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@64) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@64)))
 :qid |SharedEd25519PublicKeyseqArraybpl.9433:45|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@65)) true))
 :qid |SharedEd25519PublicKeyseqArraybpl.9752:87|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@66)))
 :qid |SharedEd25519PublicKeyseqArraybpl.9964:47|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@67)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@67))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@67))))
 :qid |SharedEd25519PublicKeyseqArraybpl.9984:58|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@68) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@68)))
 :qid |SharedEd25519PublicKeyseqArraybpl.9999:39|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@69)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@69))))
 :qid |SharedEd25519PublicKeyseqArraybpl.10021:58|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70))))
 :qid |SharedEd25519PublicKeyseqArraybpl.10038:58|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71) true)
 :qid |SharedEd25519PublicKeyseqArraybpl.10053:51|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72))))
 :qid |SharedEd25519PublicKeyseqArraybpl.10070:60|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@73)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@73))))
 :qid |SharedEd25519PublicKeyseqArraybpl.10368:47|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@74)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@74))))
 :qid |SharedEd25519PublicKeyseqArraybpl.10390:63|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@75)))
 :qid |SharedEd25519PublicKeyseqArraybpl.10405:57|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@76)))
 :qid |SharedEd25519PublicKeyseqArraybpl.10418:55|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@77)))
 :qid |SharedEd25519PublicKeyseqArraybpl.10432:55|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@78)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@78))))
 :qid |SharedEd25519PublicKeyseqArraybpl.10449:54|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@79)))
 :qid |SharedEd25519PublicKeyseqArraybpl.10463:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@80)))
 :qid |SharedEd25519PublicKeyseqArraybpl.10477:57|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@81)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@81))))
 :qid |SharedEd25519PublicKeyseqArraybpl.10499:56|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@82))))
 :qid |SharedEd25519PublicKeyseqArraybpl.10524:52|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@83)))
 :qid |SharedEd25519PublicKeyseqArraybpl.10540:54|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83))
)))
(assert (forall ((public_key (Seq Int)) ) (! (let (($$res ($1_Authenticator_spec_ed25519_authentication_key public_key)))
(|$IsValid'vec'u8''| $$res))
 :qid |SharedEd25519PublicKeyseqArraybpl.11400:15|
 :skolemid |191|
)))
(assert (forall ((s@@84 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) (! (= (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@84)  (and (|$IsValid'vec'u8''| (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@84)) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@84))))
 :qid |SharedEd25519PublicKeyseqArraybpl.11418:69|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@85))))
 :qid |SharedEd25519PublicKeyseqArraybpl.12575:47|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@86)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@86))))
 :qid |SharedEd25519PublicKeyseqArraybpl.12599:47|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@87)))
 :qid |SharedEd25519PublicKeyseqArraybpl.12840:49|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@88)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@88))))
 :qid |SharedEd25519PublicKeyseqArraybpl.12883:49|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@89)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@89))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@89))))
 :qid |SharedEd25519PublicKeyseqArraybpl.12912:48|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@90)))
 :qid |SharedEd25519PublicKeyseqArraybpl.13207:47|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12191 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12191 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_57859 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57859 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_56874 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56874 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_57071 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57071 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_57268 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57268 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_58056 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58056 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_57662 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57662 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_57465 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57465 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_56677 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56677 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |SharedEd25519PublicKeyseqArraybpl.250:54|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_64004|) (|l#1| |T@[$1_Event_EventHandle]Multiset_64004|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_64004_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_64004| (|Select__T@[$1_Event_EventHandle]Multiset_64004_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_64004| (|Select__T@[$1_Event_EventHandle]Multiset_64004_| |l#1| handle@@0))))
(Multiset_64004 (|lambda#3| (|v#Multiset_64004| (|Select__T@[$1_Event_EventHandle]Multiset_64004_| |l#0@@0| handle@@0)) (|v#Multiset_64004| (|Select__T@[$1_Event_EventHandle]Multiset_64004_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |SharedEd25519PublicKeyseqArraybpl.2558:13|
 :skolemid |305|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_64004_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |SharedEd25519PublicKeyseqArraybpl.129:29|
 :skolemid |306|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory () T@$Memory_125156)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 () T@$Memory_125156)
(declare-fun $t5 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_120762)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () (Seq Int))
(declare-fun $t7 () Int)
(declare-fun |Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int) T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t11@0 () Int)
(declare-fun $abort_code@8 () Int)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0 () T@$Memory_125156)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|)
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@1 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun $t17 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 () Bool)
(declare-fun $t13 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 () T@$Mutation_125327)
(declare-fun $abort_flag@5 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1 () T@$Mutation_81848)
(declare-fun $t12@0 () T@$Mutation_125327)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2 () T@$Mutation_81848)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1 () T@$Mutation_125327)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_code@6 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0 () T@$Mutation_125327)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 () T@$Mutation_81848)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 () T@$Mutation_81848)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 () (Seq Int))
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 () T@$Mutation_122802)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_120762)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_120762)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 () T@$Mutation_122802)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0 () T@$Mutation_81848)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0 () T@$Mutation_81848)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t4@0 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t8@0 () (Seq Int))
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2 () T@$Mutation_122846)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1 () T@$Mutation_122846)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 () T@$Mutation_122802)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_120762)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1 () T@$Mutation_122802)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 () Bool)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0 () T@$Mutation_122846)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_93181)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_121625)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_119812)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_121760)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_121851)
(declare-fun $t9 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t12 () T@$Mutation_125327)
(push 1)
(set-info :boogie-vc-id $1_SharedEd25519PublicKey_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 206849) (let ((anon21_Else_correct  (=> (not $abort_flag@7) (and (=> (= (ControlFlow 0 149963) (- 0 209731)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) addr@@0)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11669:15|
 :skolemid |202|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) addr@@1)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11669:15|
 :skolemid |202|
)) (and (=> (= (ControlFlow 0 149963) (- 0 209758)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5)) (and (=> (= (ControlFlow 0 149963) (- 0 209768)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $t6))) (and (=> (= (ControlFlow 0 149963) (- 0 209780)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (and (=> (= (ControlFlow 0 149963) (- 0 209791)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1))) (and (=> (= (ControlFlow 0 149963) (- 0 209801)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $t5))) 0)))))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $t5))) 0))))))) (and (=> (= (ControlFlow 0 149963) (- 0 209824)) (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1)) 32)))) (=> (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1)) 32))) (and (=> (= (ControlFlow 0 149963) (- 0 209840)) (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) $t7)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) $t7) (=> (= (ControlFlow 0 149963) (- 0 209848)) (= (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) $t7)) _$t1)))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 149788) (- 0 209554)) (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $t6))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $t5))) 0))))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1)) 32)))) (=> (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $t6))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $t5))) 0))))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1)) 32))) (=> (= (ControlFlow 0 149788) (- 0 209616)) (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5) (= 6 $t11@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $t6)) (= 5 $t11@0))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0) (= 1 $t11@0))) (and (not ($1_Signature_$ed25519_validate_pubkey _$t1)) (= 7 $t11@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $t5))) 0)))))) (= 5 $t11@0))) (and (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1)) 32)) (= 7 $t11@0))))))))
(let ((anon21_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@8 $abort_code@8)) (and (= $t11@0 $abort_code@8) (= (ControlFlow 0 149977) 149788))) L3_correct)))
(let ((anon20_Then$1_correct  (=> (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (=> (and (= $abort_flag@7 true) (= $abort_code@8 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 150029) 149977) anon21_Then_correct) (=> (= (ControlFlow 0 150029) 149963) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 150027) 150029)) anon20_Then$1_correct)))
(let ((anon20_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0))) (=> (and (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0 ($Memory_125156 (|Store__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0) $t4@1))) (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0)) (and (= $abort_flag@7 $abort_flag@6) (= $abort_code@8 $abort_code@7))) (and (=> (= (ControlFlow 0 149822) 149977) anon21_Then_correct) (=> (= (ControlFlow 0 149822) 149963) anon21_Else_correct))))))
(let ((anon19_Then_correct  (=> inline$$Not$1$dst@1 (and (=> (= (ControlFlow 0 149800) 150027) anon20_Then_correct) (=> (= (ControlFlow 0 149800) 149822) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (and (not inline$$Not$1$dst@1) (= $t17 $t17)) (and (= $t11@0 $t17) (= (ControlFlow 0 149592) 149788))) L3_correct)))
(let ((anon18_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t17) (= $t17 6)) (and (= $t17 $t17) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 149576) 149800) anon19_Then_correct) (=> (= (ControlFlow 0 149576) 149592) anon19_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1)) (= (ControlFlow 0 149540) 149576)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (not $abort_flag@6) (= (ControlFlow 0 149546) 149540)) inline$$Not$1$anon0_correct)))
(let ((anon18_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t11@0 $abort_code@7) (= (ControlFlow 0 150043) 149788))) L3_correct)))
(let ((inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct  (=> (= $t13 $t13) (=> (and (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t13)) (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 149496) 150043) anon18_Then_correct) (=> (= (ControlFlow 0 149496) 149546) anon18_Else_correct))))))
(let ((anon17_Else_correct  (=> (not $abort_flag@6) (=> (and (and (= $t4@1 (|v#$Mutation_125327| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1)) (|$IsValid'address'| $t13)) (and (= $t13 (|$addr#$signer| _$t0)) (= (ControlFlow 0 149502) 149496))) inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct))))
(let ((anon17_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t11@0 $abort_code@7) (= (ControlFlow 0 150057) 149788))) L3_correct)))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct  (=> (not $abort_flag@5) (=> (and (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1 ($Mutation_81848 (|l#$Mutation_125327| $t12@0) (seq.++ (|p#$Mutation_125327| $t12@0) (seq.unit 0)) (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_125327| $t12@0)))) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2 ($Mutation_81848 (|l#$Mutation_81848| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1) (|p#$Mutation_81848| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1) _$t1))) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1 ($Mutation_125327 (|l#$Mutation_125327| $t12@0) (|p#$Mutation_125327| $t12@0) ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|v#$Mutation_81848| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_125327| $t12@0))))) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| (|v#$Mutation_125327| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1)))) (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2|) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1)) (and (= $abort_flag@6 $abort_flag@5) (= $abort_code@7 $abort_code@6)))) (and (=> (= (ControlFlow 0 149339) 150057) anon17_Then_correct) (=> (= (ControlFlow 0 149339) 149502) anon17_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct  (=> (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0) (=> (and (= $abort_flag@6 true) (= $abort_code@7 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1)) (and (=> (= (ControlFlow 0 148237) 150057) anon17_Then_correct) (=> (= (ControlFlow 0 148237) 149502) anon17_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 $abort_code@6) (= (ControlFlow 0 149353) 148237))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct  (=> inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (=> (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 ($Mutation_81848 (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (seq.++ (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)))) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 ($Mutation_81848 (|l#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) (|p#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0))) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 ($Mutation_122802 (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) ($1_DiemAccount_DiemAccount (|v#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))))) (= $1_DiemAccount_DiemAccount_$memory@2 ($Memory_120762 (|Store__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory@1) (|a#$Global| (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory@1) (|a#$Global| (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3))))) (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4))) (and (=> (= (ControlFlow 0 149185) 149353) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct) (=> (= (ControlFlow 0 149185) 149339) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct)))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct  (=> (and (= $abort_code@6 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1) (= $abort_flag@5 true)) (and (=> (= (ControlFlow 0 148981) 149353) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct) (=> (= (ControlFlow 0 148981) 149339) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= (ControlFlow 0 149135) 148981))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct  (=> (and (and (and (not $abort_flag@4) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (= |inline$$1_Vector_length'u8'$0$l@1| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1)))) (and (=> (= (ControlFlow 0 149119) 149185) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct) (=> (= (ControlFlow 0 149119) 149135) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@5) (= (ControlFlow 0 149199) 148981))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (=> (= (ControlFlow 0 149061) 149199) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct) (=> (= (ControlFlow 0 149061) 149119) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct  (=> (and (and (not $abort_flag@4) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1|) (= (ControlFlow 0 149067) 149061))) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@5) (= (ControlFlow 0 149213) 148981))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) (and (=> (= (ControlFlow 0 149265) 149213) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 149265) 149067) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1)) (= (ControlFlow 0 149263) 149265)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 ($Mutation_122802 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1))) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1))) (and (=> (= (ControlFlow 0 149011) 149213) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 149011) 149067) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1))) (and (=> (= (ControlFlow 0 148989) 149263) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct) (=> (= (ControlFlow 0 148989) 149011) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= (ControlFlow 0 148975) 148981))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct  (=> (and (not $abort_flag@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 148959) 148989) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct) (=> (= (ControlFlow 0 148959) 148975) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@4) (= (ControlFlow 0 149279) 148981))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 148917) 149279) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct) (=> (= (ControlFlow 0 148917) 148959) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0)) 0) (=> (and (= (seq.len (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) 0) (= (seq.len (|p#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0)) 0)) (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1)) (= (ControlFlow 0 148923) 148917))) inline$$1_DiemAccount_exists_at$2$anon0_correct)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_125327| $t12@0))) (|$IsValid'vec'u8''| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 ($1_Authenticator_spec_ed25519_authentication_key _$t1)) (= (ControlFlow 0 149283) 148923))) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= (ControlFlow 0 148231) 148237))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct  (=> (and (not $abort_flag@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 7)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 148215) 149283) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct) (=> (= (ControlFlow 0 148215) 148231) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 $abort_code@4) (= (ControlFlow 0 149367) 148237))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t1)) (and (=> (= (ControlFlow 0 148169) 149367) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct) (=> (= (ControlFlow 0 148169) 148215) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_81848| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0)) 0) (=> (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| (|v#$Mutation_125327| $t12@0)) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1|)) (and (= _$t1 _$t1) (= (ControlFlow 0 148175) 148169))) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct))))
(let ((anon16_Else_correct  (=> (not $abort_flag@3) (=> (and (and (= $t4@0 ($1_SharedEd25519PublicKey_SharedEd25519PublicKey $t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1)) (= $t4@0 $t4@0)) (and (= $t12@0 ($Mutation_125327 ($Local 4) (as seq.empty (Seq Int)) $t4@0)) (= (ControlFlow 0 149373) 148175))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct))))
(let ((anon16_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t11@0 $abort_code@4) (= (ControlFlow 0 150071) 149788))) L3_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2 ($Mutation_122846 (|l#$Mutation_122846| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1) (|p#$Mutation_122846| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_122846| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_122846| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_122846| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_122846| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3 ($Mutation_122802 (|l#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (|p#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|v#$Mutation_122846| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_120762 (|Store__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)) (|v#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0))) (and (and (= $abort_code@4 $abort_code@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0)) (and (= $abort_flag@3 $abort_flag@2) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory@0)))) (and (=> (= (ControlFlow 0 147594) 150071) anon16_Then_correct) (=> (= (ControlFlow 0 147594) 149373) anon16_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct  (=> (and (and (= $abort_code@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0)) (and (= $abort_flag@3 true) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 147271) 150071) anon16_Then_correct) (=> (= (ControlFlow 0 147271) 149373) anon16_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_122846| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0) (= (ControlFlow 0 147620) 147271))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct  (=> (and (not $abort_flag@2) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1 ($Mutation_122846 (|l#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (seq.++ (|p#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1 (|v#$Mutation_122846| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_122846| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1))) 0)))) (and (=> (= (ControlFlow 0 147502) 147620) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct) (=> (= (ControlFlow 0 147502) 147594) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@3) (= (ControlFlow 0 147634) 147271))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 147686) 147634) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 147686) 147502) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= (ControlFlow 0 147684) 147686)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1 ($Mutation_122802 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 147456) 147634) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 147456) 147502) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct  (=> inline$$1_DiemAccount_exists_at$1$$t1@1 (and (=> (= (ControlFlow 0 147434) 147684) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct) (=> (= (ControlFlow 0 147434) 147456) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= (ControlFlow 0 147430) 147271))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct  (=> (and (not $abort_flag@1) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 147414) 147434) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct) (=> (= (ControlFlow 0 147414) 147430) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@2) (= (ControlFlow 0 147700) 147271))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 147372) 147700) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct) (=> (= (ControlFlow 0 147372) 147414) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 147378) 147372)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= (ControlFlow 0 147265) 147271))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 147249) 147378) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct) (=> (= (ControlFlow 0 147249) 147265) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1)) (= (ControlFlow 0 147209) 147249)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 147215) 147209)) inline$$Not$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@2) (= (ControlFlow 0 147714) 147271))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0))) (and (=> (= (ControlFlow 0 147085) 147714) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct) (=> (= (ControlFlow 0 147085) 147215) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct  (=> (= $abort_code@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1) (=> (and (= $abort_flag@1 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0)) (and (=> (= (ControlFlow 0 147033) 147714) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct) (=> (= (ControlFlow 0 147033) 147215) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 $abort_code@1) (= (ControlFlow 0 147099) 147033))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0)) (and (=> (= (ControlFlow 0 147151) 147099) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 147151) 147085) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= (ControlFlow 0 147149) 147151)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1))) (and (=> (= (ControlFlow 0 147051) 147099) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 147051) 147085) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct  (=> inline$$1_DiemAccount_exists_at$0$$t1@1 (and (=> (= (ControlFlow 0 147037) 147149) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct) (=> (= (ControlFlow 0 147037) 147051) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= (ControlFlow 0 147027) 147033))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 147011) 147037) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct) (=> (= (ControlFlow 0 147011) 147027) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 146969) 147165) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct) (=> (= (ControlFlow 0 146969) 147011) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 146975) 146969)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_122802| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0)) 0) (= (seq.len (|p#$Mutation_122846| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0 (|$addr#$signer| _$t0)) (= _$t0 _$t0))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 (|$addr#$signer| _$t0))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 147171) 146975)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct))))
(let ((anon0$1_correct  (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@2) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@2)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@2)))) 0)) (= addr@@2 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@2))) 0)))))))
 :qid |SharedEd25519PublicKeyseqArraybpl.11469:20|
 :skolemid |193|
)) (=> (and (and (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@3) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@3) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@3)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@3)))) 0)) (= addr@@3 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@3))) 0)))))))
 :qid |SharedEd25519PublicKeyseqArraybpl.11473:20|
 :skolemid |194|
)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_93181| $1_Roles_RoleId_$memory) addr@@4)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11477:20|
 :skolemid |195|
))) (and (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (= addr@@5 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@5)) (|Select__T@[Int]Bool_| (|domain#$Memory_121625| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@5)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11481:20|
 :skolemid |196|
)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_119812| $1_AccountFreezing_FreezingBit_$memory) addr@@6)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11485:20|
 :skolemid |197|
)))) (=> (and (and (and (and (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_121760| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@7)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11489:21|
 :skolemid |198|
)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_121851| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@8)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11489:217|
 :skolemid |199|
))) (|$IsValid'address'| (|$addr#$signer| _$t0))) (and (and (|$IsValid'vec'u8''| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $a_0)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc))) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.11498:20|
 :skolemid |200|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@0)))
(|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| $rsc@@0))
 :qid |SharedEd25519PublicKeyseqArraybpl.11502:20|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@0))
)) (= $t5 (|$addr#$signer| _$t0))))) (and (and (and (= $t6 (|$addr#$signer| _$t0)) (= $t7 (|$addr#$signer| _$t0))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= $t8@0 (as seq.empty (Seq Int))) (|$IsValid'vec'u8''| $t8@0)) (and (= $t9 (|$addr#$signer| _$t0)) (= (ControlFlow 0 147720) 147171))))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_64004_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_64004| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64004| stream@@0) v@@35) 0)
 :qid |SharedEd25519PublicKeyseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 145543) 147720)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_125327| $t12)) 0) (= (ControlFlow 0 145553) 145543)) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 206849) 145553) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_SharedEd25519PublicKey_exists_at$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 210044) true)
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_SharedEd25519PublicKey_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 210142) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0@@0 () T@$Memory_125156)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0 () T@$Mutation_125327)
(declare-fun $t5@@0 () Int)
(declare-fun _$t1@@0 () (Seq Int))
(declare-fun $t6@@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1@@0 () T@$Mutation_81848)
(declare-fun $t12@1 () T@$Mutation_125327)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2@@0 () T@$Mutation_81848)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1@@0 () T@$Mutation_125327)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2@@0| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0@@0 () T@$Mutation_125327)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0 () T@$Mutation_81848)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0 () T@$Mutation_81848)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0 () (Seq Int))
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0 () T@$Mutation_122802)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@0 () T@$Memory_120762)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@0| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0 () T@$Mutation_122802)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@0 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@0 () T@$Mutation_81848)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0@@0 () T@$Mutation_81848)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1@@0| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t12@@0 () T@$Mutation_125327)
(declare-fun $t7@@0 () Int)
(declare-fun $t12@0@@0 () T@$Mutation_125327)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0 () Bool)
(declare-fun $t11 () Int)
(declare-fun _$t0@@0 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_SharedEd25519PublicKey_rotate_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 210458) (let ((anon18_Else_correct@@0  (=> (and (not $abort_flag@3@@0) (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0@@0 ($Memory_125156 (|Store__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|a#$Global| (|l#$Mutation_125327| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0)) true) (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|a#$Global| (|l#$Mutation_125327| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0)) (|v#$Mutation_125327| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0))))) (and (=> (= (ControlFlow 0 153399) (- 0 212174)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0@@0) addr@@9)))
 :qid |SharedEd25519PublicKeyseqArraybpl.12135:15|
 :skolemid |214|
))) (=> (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0@@0) addr@@10)))
 :qid |SharedEd25519PublicKeyseqArraybpl.12135:15|
 :skolemid |214|
)) (and (=> (= (ControlFlow 0 153399) (- 0 212201)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 153399) (- 0 212213)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@0)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@0))) (and (=> (= (ControlFlow 0 153399) (- 0 212223)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0))))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)))))) (and (=> (= (ControlFlow 0 153399) (- 0 212242)) (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) 32)))) (=> (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) 32))) (=> (= (ControlFlow 0 153399) (- 0 212258)) (= (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0@@0) $t6@@0)) _$t1@@0)))))))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 151621) (- 0 212024)) (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) 32)))) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) 32))) (=> (= (ControlFlow 0 151621) (- 0 212067)) (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0)) (= 5 $t9@0)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t1@@0)) (= 7 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t5@@0))))) (= 5 $t9@0))) (and (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) 32)) (= 7 $t9@0))))))))
(let ((anon18_Then_correct@@0  (=> (and (and $abort_flag@3@@0 (= $abort_code@4@@0 $abort_code@4@@0)) (and (= $t9@0 $abort_code@4@@0) (= (ControlFlow 0 153413) 151621))) L3_correct@@0)))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct@@0  (=> (not $abort_flag@2@@0) (=> (and (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1@@0 ($Mutation_81848 (|l#$Mutation_125327| $t12@1) (seq.++ (|p#$Mutation_125327| $t12@1) (seq.unit 0)) (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_125327| $t12@1)))) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2@@0 ($Mutation_81848 (|l#$Mutation_81848| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1@@0) (|p#$Mutation_81848| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1@@0) _$t1@@0))) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1@@0 ($Mutation_125327 (|l#$Mutation_125327| $t12@1) (|p#$Mutation_125327| $t12@1) ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|v#$Mutation_81848| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2@@0) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_125327| $t12@1))))) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2@@0| (|v#$Mutation_125327| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1@@0)))) (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2@@0| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2@@0|) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1@@0)) (and (= $abort_flag@3@@0 $abort_flag@2@@0) (= $abort_code@4@@0 $abort_code@3@@0)))) (and (=> (= (ControlFlow 0 153240) 153413) anon18_Then_correct@@0) (=> (= (ControlFlow 0 153240) 153399) anon18_Else_correct@@0))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct@@0  (=> (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0@@0) (=> (and (= $abort_flag@3@@0 true) (= $abort_code@4@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1@@0)) (and (=> (= (ControlFlow 0 152138) 153413) anon18_Then_correct@@0) (=> (= (ControlFlow 0 152138) 153399) anon18_Else_correct@@0))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct@@0  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1@@0 $abort_code@3@@0) (= (ControlFlow 0 153254) 152138))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@0  (=> inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 (=> (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0 ($Mutation_81848 (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (seq.++ (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)))) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0 ($Mutation_81848 (|l#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0) (|p#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0) inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0))) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0 ($Mutation_122802 (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) ($1_DiemAccount_DiemAccount (|v#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0))))) (= $1_DiemAccount_DiemAccount_$memory@0@@0 ($Memory_120762 (|Store__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0)) (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0))))) (and (= $abort_code@3@@0 $abort_code@2@@0) (= $abort_flag@2@@0 $abort_flag@1@@0))) (and (=> (= (ControlFlow 0 153086) 153254) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 153086) 153240) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct@@0)))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0  (=> (and (= $abort_code@3@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0) (= $abort_flag@2@@0 true)) (and (=> (= (ControlFlow 0 152882) 153254) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 152882) 153240) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= (ControlFlow 0 153036) 152882))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@0  (=> (and (and (and (not $abort_flag@1@@0) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 (= |inline$$1_Vector_length'u8'$0$l@1@@0| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0)))) (and (=> (= (ControlFlow 0 153020) 153086) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@0) (=> (= (ControlFlow 0 153020) 153036) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@0  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@2@@0) (= (ControlFlow 0 153100) 152882))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@0| (seq.len inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0)) (and (=> (= (ControlFlow 0 152962) 153100) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@0) (=> (= (ControlFlow 0 152962) 153020) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0  (=> (and (and (not $abort_flag@1@@0) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0|) (= (ControlFlow 0 152968) 152962))) |inline$$1_Vector_length'u8'$0$anon0_correct@@0|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@2@@0) (= (ControlFlow 0 153114) 152882))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@0  (=> (= $abort_flag@1@@0 true) (=> (and (= $abort_code@2@@0 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0)) (and (=> (= (ControlFlow 0 153166) 153114) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 153166) 152968) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0)) (= (ControlFlow 0 153164) 153166)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0 ($Mutation_122802 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0))) (= $abort_flag@1@@0 $abort_flag@0@@0)) (and (= $abort_code@2@@0 $abort_code@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0))) (and (=> (= (ControlFlow 0 152912) 153114) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 152912) 152968) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@0  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1@@0 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0))) (and (=> (= (ControlFlow 0 152890) 153164) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@0) (=> (= (ControlFlow 0 152890) 152912) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= (ControlFlow 0 152876) 152882))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@0  (=> (and (not $abort_flag@0@@0) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 inline$$1_DiemAccount_exists_at$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 152860) 152890) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 152860) 152876) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@1@@0) (= (ControlFlow 0 153180) 152882))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@0  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 inline$$1_DiemAccount_exists_at$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 152818) 153180) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@0) (=> (= (ControlFlow 0 152818) 152860) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@0  (=> (= (seq.len (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@0)) 0) (=> (and (= (seq.len (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0)) 0) (= (seq.len (|p#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@0)) 0)) (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0)) (= (ControlFlow 0 152824) 152818))) inline$$1_DiemAccount_exists_at$0$anon0_correct@@0)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct@@0  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0 (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1@@0 (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_125327| $t12@1))) (|$IsValid'vec'u8''| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0@@0 ($1_Authenticator_spec_ed25519_authentication_key _$t1@@0)) (= (ControlFlow 0 153184) 152824))) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@0))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct@@0  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0) (= (ControlFlow 0 152132) 152138))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct@@0)))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct@@0  (=> (and (not $abort_flag@0@@0) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0 7)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0@@0) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0 inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0))) (and (=> (= (ControlFlow 0 152116) 153184) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 152116) 152132) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct@@0))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1@@0 $abort_code@1@@0) (= (ControlFlow 0 153268) 152138))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct@@0)))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct@@0  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@0 ($1_Signature_$ed25519_validate_pubkey _$t1@@0)) (and (=> (= (ControlFlow 0 152070) 153268) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct@@0) (=> (= (ControlFlow 0 152070) 152116) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct@@0)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct@@0  (=> (= (seq.len (|p#$Mutation_81848| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0@@0)) 0) (=> (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1@@0| (|v#$Mutation_125327| $t12@1)) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1@@0| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1@@0|)) (and (= _$t1@@0 _$t1@@0) (= (ControlFlow 0 152076) 152070))) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct@@0))))
(let ((anon17_Else_correct@@0  (=> (and (not $abort_flag@0@@0) (= (ControlFlow 0 153274) 152076)) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct@@0)))
(let ((anon17_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t9@0 $abort_code@1@@0) (= (ControlFlow 0 153427) 151621))) L3_correct@@0)))
(let ((anon16_Then$1_correct  (=> (= $t12@1 $t12@@0) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 153479) 153427) anon17_Then_correct@@0) (=> (= (ControlFlow 0 153479) 153274) anon17_Else_correct@@0))))))
(let ((anon16_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t7@@0)) (= (ControlFlow 0 153477) 153479)) anon16_Then$1_correct)))
(let ((anon16_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t7@@0) (=> (and (and (= $t12@0@@0 ($Mutation_125327 ($Global $t7@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t7@@0))) (= $t12@1 $t12@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 151647) 153427) anon17_Then_correct@@0) (=> (= (ControlFlow 0 151647) 153274) anon17_Else_correct@@0))))))
(let ((anon15_Then_correct  (=> inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0 (and (=> (= (ControlFlow 0 151625) 153477) anon16_Then_correct@@0) (=> (= (ControlFlow 0 151625) 151647) anon16_Else_correct@@0)))))
(let ((anon15_Else_correct  (=> (and (and (not inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0) (= $t11 $t11)) (and (= $t9@0 $t11) (= (ControlFlow 0 151485) 151621))) L3_correct@@0)))
(let ((anon14_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t11) (= $t11 5)) (and (= $t11 $t11) (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0 inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 151469) 151625) anon15_Then_correct) (=> (= (ControlFlow 0 151469) 151485) anon15_Else_correct))))))
(let ((anon14_Then_correct true))
(let ((inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct@@0  (=> (= $t7@@0 $t7@@0) (=> (and (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t7@@0)) (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0 inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 151427) 153493) anon14_Then_correct) (=> (= (ControlFlow 0 151427) 151469) anon14_Else_correct))))))
(let ((anon0$1_correct@@0  (=> (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@11) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@11)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@11)))) 0)) (= addr@@11 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@11))) 0)))))))
 :qid |SharedEd25519PublicKeyseqArraybpl.11972:20|
 :skolemid |205|
)) (=> (and (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@12) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@12) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@12)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@12)))) 0)) (= addr@@12 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@12))) 0)))))))
 :qid |SharedEd25519PublicKeyseqArraybpl.11976:20|
 :skolemid |206|
)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_93181| $1_Roles_RoleId_$memory) addr@@13)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11980:20|
 :skolemid |207|
))) (=> (and (and (and (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (= addr@@14 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@14)) (|Select__T@[Int]Bool_| (|domain#$Memory_121625| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@14)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11984:20|
 :skolemid |208|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_119812| $1_AccountFreezing_FreezingBit_$memory) addr@@15)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11988:20|
 :skolemid |209|
))) (and (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_121760| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@16)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11992:21|
 :skolemid |210|
)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_121851| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@17)))
 :qid |SharedEd25519PublicKeyseqArraybpl.11992:217|
 :skolemid |211|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (|$IsValid'vec'u8''| _$t1@@0)) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $a_0@@1)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@1) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@1))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@1))) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.12001:20|
 :skolemid |212|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@2)))
(|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| $rsc@@2))
 :qid |SharedEd25519PublicKeyseqArraybpl.12005:20|
 :skolemid |213|
 :pattern ( (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_125156| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@2))
))))) (and (and (and (= $t5@@0 (|$addr#$signer| _$t0@@0)) (= $t6@@0 (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t7@@0) (= $t7@@0 (|$addr#$signer| _$t0@@0))) (and (= $t7@@0 $t7@@0) (= (ControlFlow 0 151433) 151427))))) inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_64004_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_64004| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64004| stream@@1) v@@36) 0)
 :qid |SharedEd25519PublicKeyseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 150989) 151433)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (and (= (seq.len (|p#$Mutation_125327| $t12@@0)) 0) (= (ControlFlow 0 150999) 150989)) inline$$InitEventStore$0$anon0_correct@@0)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 210458) 150999) anon0_correct@@0)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun $t11@0@@0 () T@$Mutation_81848)
(declare-fun _$t0@@1 () T@$Mutation_125327)
(declare-fun $t11@1 () T@$Mutation_81848)
(declare-fun _$t1@@1 () (Seq Int))
(declare-fun $t0@0 () T@$Mutation_125327)
(declare-fun |$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t4@0@@0 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t6@0 () Int)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1 () T@$Mutation_81848)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@1 () T@$Mutation_81848)
(declare-fun $t10 () (Seq Int))
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1 () T@$Mutation_122802)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@1 () T@$Memory_120762)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@1| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@1 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@1 () T@$Mutation_122802)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@1 () Bool)
(declare-fun $t9@0@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@1 () T@$Mutation_122802)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@1 () T@$Mutation_81848)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@1 () Bool)
(declare-fun $t8 () Int)
(declare-fun |$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@0| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $t11@@0 () T@$Mutation_81848)
(push 1)
(set-info :boogie-vc-id $1_SharedEd25519PublicKey_rotate_key_$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 212279) (let ((anon11_Else_correct  (=> (and (not $abort_flag@1@@1) (= $t11@0@@0 ($Mutation_81848 (|l#$Mutation_125327| _$t0@@1) (seq.++ (|p#$Mutation_125327| _$t0@@1) (seq.unit 0)) (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_125327| _$t0@@1))))) (=> (and (and (= $t11@1 ($Mutation_81848 (|l#$Mutation_81848| $t11@0@@0) (|p#$Mutation_81848| $t11@0@@0) _$t1@@1)) (= $t0@0 ($Mutation_125327 (|l#$Mutation_125327| _$t0@@1) (|p#$Mutation_125327| _$t0@@1) ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|v#$Mutation_81848| $t11@1) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_125327| _$t0@@1)))))) (and (= |$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| (|v#$Mutation_125327| $t0@0)) (= |$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| |$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1|))) (and (=> (= (ControlFlow 0 155410) (- 0 213517)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1))) (and (=> (= (ControlFlow 0 155410) (- 0 213527)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| $t4@0@@0)))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| $t4@0@@0))))) (and (=> (= (ControlFlow 0 155410) (- 0 213542)) (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)))) (=> (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32))) (=> (= (ControlFlow 0 155410) (- 0 213558)) (= (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_125327| $t0@0)) _$t1@@1))))))))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@1 true))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 154254) (- 0 213362)) (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| $t4@0@@0))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)))) (=> (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| $t4@0@@0))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32))) (=> (= (ControlFlow 0 154254) (- 0 213392)) (or (or (and (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1)) (= 7 $t6@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| $t4@0@@0)))) (= 5 $t6@0))) (and (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)) (= 7 $t6@0))))))))
(let ((anon11_Then_correct  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= $t6@0 $abort_code@2@@1) (= (ControlFlow 0 155424) 154254))) L3_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@1  (=> inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 (=> (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1 ($Mutation_81848 (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) (seq.++ (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)))) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@1 ($Mutation_81848 (|l#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1) (|p#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1) $t10))) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1 ($Mutation_122802 (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) ($1_DiemAccount_DiemAccount (|v#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@1) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1))))) (= $1_DiemAccount_DiemAccount_$memory@0@@1 ($Memory_120762 (|Store__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1)) (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1))))) (and (= $abort_code@2@@1 $abort_code@1@@1) (= $abort_flag@1@@1 $abort_flag@0@@1))) (and (=> (= (ControlFlow 0 155202) 155424) anon11_Then_correct) (=> (= (ControlFlow 0 155202) 155410) anon11_Else_correct)))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1  (=> (and (= $abort_code@2@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1) (= $abort_flag@1@@1 true)) (and (=> (= (ControlFlow 0 154998) 155424) anon11_Then_correct) (=> (= (ControlFlow 0 154998) 155410) anon11_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1) (= (ControlFlow 0 155152) 154998))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@1  (=> (and (and (and (not $abort_flag@0@@1) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 (= |inline$$1_Vector_length'u8'$0$l@1@@1| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1)))) (and (=> (= (ControlFlow 0 155136) 155202) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@1) (=> (= (ControlFlow 0 155136) 155152) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@1  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 $abort_code@1@@1) (= (ControlFlow 0 155216) 154998))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@1|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@1| (seq.len $t10)) (and (=> (= (ControlFlow 0 155078) 155216) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@1) (=> (= (ControlFlow 0 155078) 155136) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@1  (=> (and (and (not $abort_flag@0@@1) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| (|v#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1|) (= (ControlFlow 0 155084) 155078))) |inline$$1_Vector_length'u8'$0$anon0_correct@@1|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@1  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 $abort_code@1@@1) (= (ControlFlow 0 155230) 154998))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@1  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@1)) (and (=> (= (ControlFlow 0 155282) 155230) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 155282) 155084) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1)) (= (ControlFlow 0 155280) 155282)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@1 ($Mutation_122802 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1))) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@1))) (and (=> (= (ControlFlow 0 155028) 155230) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 155028) 155084) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@1  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1@@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| $t9@0@@0))) (and (=> (= (ControlFlow 0 155006) 155280) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@1) (=> (= (ControlFlow 0 155006) 155028) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1) (= (ControlFlow 0 154992) 154998))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@1  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 inline$$1_DiemAccount_exists_at$0$$t1@1@@1))) (and (=> (= (ControlFlow 0 154976) 155006) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@1) (=> (= (ControlFlow 0 154976) 154992) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@1  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 inline$$1_DiemAccount_exists_at$0$$t1@1@@1)) (and (=> (= (ControlFlow 0 154934) 155296) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@1) (=> (= (ControlFlow 0 154934) 154976) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@1  (=> (= (seq.len (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@1)) 0) (=> (and (= (seq.len (|p#$Mutation_122802| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@1)) 0) (= (seq.len (|p#$Mutation_81848| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@1)) 0)) (=> (and (and (= $t9@0@@0 $t9@0@@0) (= $t10 $t10)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| $t9@0@@0)) (= (ControlFlow 0 154940) 154934))) inline$$1_DiemAccount_exists_at$0$anon0_correct@@1)))))
(let ((anon10_Then_correct  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@1 (=> (and (and (= $t9@0@@0 (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_125327| _$t0@@1))) (|$IsValid'vec'u8''| $t10)) (and (= $t10 ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) (= (ControlFlow 0 155300) 154940))) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@1))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@1) (= $t8 $t8)) (and (= $t6@0 $t8) (= (ControlFlow 0 154154) 154254))) L3_correct@@1)))
(let ((anon9_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t8) (= $t8 7)) (and (= $t8 $t8) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@1))) (and (=> (= (ControlFlow 0 154138) 155300) anon10_Then_correct) (=> (= (ControlFlow 0 154138) 154154) anon10_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct@@1  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1@@1 ($1_Signature_$ed25519_validate_pubkey _$t1@@1)) (and (=> (= (ControlFlow 0 154092) 155438) anon9_Then_correct) (=> (= (ControlFlow 0 154092) 154138) anon9_Else_correct)))))
(let ((anon0$1_correct@@1  (=> (and (and (and (and (= (|l#$Mutation_125327| _$t0@@1) ($Param 0)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@18) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@18)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@18)))) 0)) (= addr@@18 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@18))) 0)))))))
 :qid |SharedEd25519PublicKeyseqArraybpl.12370:20|
 :skolemid |215|
))) (and (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@19) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@19) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@19)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@19)))) 0)) (= addr@@19 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@19))) 0)))))))
 :qid |SharedEd25519PublicKeyseqArraybpl.12374:20|
 :skolemid |216|
)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_93181| $1_Roles_RoleId_$memory) addr@@20)))
 :qid |SharedEd25519PublicKeyseqArraybpl.12378:20|
 :skolemid |217|
)))) (and (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (= addr@@21 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@21)) (|Select__T@[Int]Bool_| (|domain#$Memory_121625| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@21)))
 :qid |SharedEd25519PublicKeyseqArraybpl.12382:20|
 :skolemid |218|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_119812| $1_AccountFreezing_FreezingBit_$memory) addr@@22)))
 :qid |SharedEd25519PublicKeyseqArraybpl.12386:20|
 :skolemid |219|
))) (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_121760| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@23)))
 :qid |SharedEd25519PublicKeyseqArraybpl.12390:21|
 :skolemid |220|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_121851| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) addr@@24)))
 :qid |SharedEd25519PublicKeyseqArraybpl.12390:217|
 :skolemid |221|
))))) (and (and (and (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| (|v#$Mutation_125327| _$t0@@1)) (|$IsValid'vec'u8''| _$t1@@1)) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $a_0@@3)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@3) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@3))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@3))) 1))))
 :qid |SharedEd25519PublicKeyseqArraybpl.12399:20|
 :skolemid |222|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_120762| $1_DiemAccount_DiemAccount_$memory) $a_0@@3))
)) (= $t4@0@@0 (|v#$Mutation_125327| _$t0@@1)))) (and (and (= |$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@0| (|v#$Mutation_125327| _$t0@@1)) (= |$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@0| |$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@0|)) (and (= _$t1@@1 _$t1@@1) (= (ControlFlow 0 154098) 154092))))) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct@@1)))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_64004_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_64004| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64004| stream@@2) v@@37) 0)
 :qid |SharedEd25519PublicKeyseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |SharedEd25519PublicKeyseqArraybpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 153767) 154098)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (and (= (seq.len (|p#$Mutation_81848| $t11@@0)) 0) (= (ControlFlow 0 153777) 153767)) inline$$InitEventStore$0$anon0_correct@@1)))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 212279) 153777) anon0_correct@@1)))
PreconditionGeneratedEntry_correct@@1))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 213587) true)
))
(check-sat)
(pop 1)
; Valid
