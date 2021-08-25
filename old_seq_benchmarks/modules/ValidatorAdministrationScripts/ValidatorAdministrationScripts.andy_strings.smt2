(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_99616 0)) ((($Memory_99616 (|domain#$Memory_99616| |T@[Int]Bool|) (|contents#$Memory_99616| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_161654 0)) ((($Memory_161654 (|domain#$Memory_161654| |T@[Int]Bool|) (|contents#$Memory_161654| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_142499 0)) ((($Memory_142499 (|domain#$Memory_142499| |T@[Int]Bool|) (|contents#$Memory_142499| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_140200 0)) ((($Memory_140200 (|domain#$Memory_140200| |T@[Int]Bool|) (|contents#$Memory_140200| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_140513 0)) ((($Memory_140513 (|domain#$Memory_140513| |T@[Int]Bool|) (|contents#$Memory_140513| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_140167 0)) ((($Memory_140167 (|domain#$Memory_140167| |T@[Int]Bool|) (|contents#$Memory_140167| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_139952 0)) ((($Memory_139952 (|domain#$Memory_139952| |T@[Int]Bool|) (|contents#$Memory_139952| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_137413 0)) ((($Memory_137413 (|domain#$Memory_137413| |T@[Int]Bool|) (|contents#$Memory_137413| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_137349 0)) ((($Memory_137349 (|domain#$Memory_137349| |T@[Int]Bool|) (|contents#$Memory_137349| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_136059 0)) ((($Memory_136059 (|domain#$Memory_136059| |T@[Int]Bool|) (|contents#$Memory_136059| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_135995 0)) ((($Memory_135995 (|domain#$Memory_135995| |T@[Int]Bool|) (|contents#$Memory_135995| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_135683 0)) ((($Memory_135683 (|domain#$Memory_135683| |T@[Int]Bool|) (|contents#$Memory_135683| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_132417 0)) ((($Memory_132417 (|domain#$Memory_132417| |T@[Int]Bool|) (|contents#$Memory_132417| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_132130 0)) ((($Memory_132130 (|domain#$Memory_132130| |T@[Int]Bool|) (|contents#$Memory_132130| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_131843 0)) ((($Memory_131843 (|domain#$Memory_131843| |T@[Int]Bool|) (|contents#$Memory_131843| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_131624 0)) ((($Memory_131624 (|domain#$Memory_131624| |T@[Int]Bool|) (|contents#$Memory_131624| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_142106 0)) ((($Memory_142106 (|domain#$Memory_142106| |T@[Int]Bool|) (|contents#$Memory_142106| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_124361 0)) ((($Memory_124361 (|domain#$Memory_124361| |T@[Int]Bool|) (|contents#$Memory_124361| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_124274 0)) ((($Memory_124274 (|domain#$Memory_124274| |T@[Int]Bool|) (|contents#$Memory_124274| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_121071 0)) ((($Memory_121071 (|domain#$Memory_121071| |T@[Int]Bool|) (|contents#$Memory_121071| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120984 0)) ((($Memory_120984 (|domain#$Memory_120984| |T@[Int]Bool|) (|contents#$Memory_120984| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_142332 0)) ((($Memory_142332 (|domain#$Memory_142332| |T@[Int]Bool|) (|contents#$Memory_142332| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_124625 0)) ((($Memory_124625 (|domain#$Memory_124625| |T@[Int]Bool|) (|contents#$Memory_124625| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_134350 0)) ((($Memory_134350 (|domain#$Memory_134350| |T@[Int]Bool|) (|contents#$Memory_134350| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_124951 0)) ((($Memory_124951 (|domain#$Memory_124951| |T@[Int]Bool|) (|contents#$Memory_124951| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_142241 0)) ((($Memory_142241 (|domain#$Memory_142241| |T@[Int]Bool|) (|contents#$Memory_142241| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_124534 0)) ((($Memory_124534 (|domain#$Memory_124534| |T@[Int]Bool|) (|contents#$Memory_124534| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_136239 0)) ((($Memory_136239 (|domain#$Memory_136239| |T@[Int]Bool|) (|contents#$Memory_136239| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_124852 0)) ((($Memory_124852 (|domain#$Memory_124852| |T@[Int]Bool|) (|contents#$Memory_124852| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_120686 0)) ((($Memory_120686 (|domain#$Memory_120686| |T@[Int]Bool|) (|contents#$Memory_120686| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120622 0)) ((($Memory_120622 (|domain#$Memory_120622| |T@[Int]Bool|) (|contents#$Memory_120622| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_112246 0)) ((($Memory_112246 (|domain#$Memory_112246| |T@[Int]Bool|) (|contents#$Memory_112246| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_112159 0)) ((($Memory_112159 (|domain#$Memory_112159| |T@[Int]Bool|) (|contents#$Memory_112159| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_112072 0)) ((($Memory_112072 (|domain#$Memory_112072| |T@[Int]Bool|) (|contents#$Memory_112072| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_111985 0)) ((($Memory_111985 (|domain#$Memory_111985| |T@[Int]Bool|) (|contents#$Memory_111985| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_111898 0)) ((($Memory_111898 (|domain#$Memory_111898| |T@[Int]Bool|) (|contents#$Memory_111898| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_112625 0)) ((($Memory_112625 (|domain#$Memory_112625| |T@[Int]Bool|) (|contents#$Memory_112625| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_110978 0)) ((($Memory_110978 (|domain#$Memory_110978| |T@[Int]Bool|) (|contents#$Memory_110978| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_111090 0)) ((($Memory_111090 (|domain#$Memory_111090| |T@[Int]Bool|) (|contents#$Memory_111090| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_110897 0)) ((($Memory_110897 (|domain#$Memory_110897| |T@[Int]Bool|) (|contents#$Memory_110897| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_110816 0)) ((($Memory_110816 (|domain#$Memory_110816| |T@[Int]Bool|) (|contents#$Memory_110816| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_110735 0)) ((($Memory_110735 (|domain#$Memory_110735| |T@[Int]Bool|) (|contents#$Memory_110735| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_110654 0)) ((($Memory_110654 (|domain#$Memory_110654| |T@[Int]Bool|) (|contents#$Memory_110654| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_110138 0)) ((($Memory_110138 (|domain#$Memory_110138| |T@[Int]Bool|) (|contents#$Memory_110138| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_141183 0)) ((($Memory_141183 (|domain#$Memory_141183| |T@[Int]Bool|) (|contents#$Memory_141183| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_110573 0)) ((($Memory_110573 (|domain#$Memory_110573| |T@[Int]Bool|) (|contents#$Memory_110573| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_108378 0)) ((($Memory_108378 (|domain#$Memory_108378| |T@[Int]Bool|) (|contents#$Memory_108378| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_107352 0)) ((($Memory_107352 (|domain#$Memory_107352| |T@[Int]Bool|) (|contents#$Memory_107352| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_106957 0)) ((($Memory_106957 (|domain#$Memory_106957| |T@[Int]Bool|) (|contents#$Memory_106957| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_106463 0)) ((($Memory_106463 (|domain#$Memory_106463| |T@[Int]Bool|) (|contents#$Memory_106463| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_76332 0)) (((Multiset_76332 (|v#Multiset_76332| |T@[$EventRep]Int|) (|l#Multiset_76332| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_76332| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_76332|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_143327 0)) ((($Mutation_143327 (|l#$Mutation_143327| T@$Location) (|p#$Mutation_143327| (Seq Int)) (|v#$Mutation_143327| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_143283 0)) ((($Mutation_143283 (|l#$Mutation_143283| T@$Location) (|p#$Mutation_143283| (Seq Int)) (|v#$Mutation_143283| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_36997 0)) ((($Mutation_36997 (|l#$Mutation_36997| T@$Location) (|p#$Mutation_36997| (Seq Int)) (|v#$Mutation_36997| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_130344 0)) ((($Mutation_130344 (|l#$Mutation_130344| T@$Location) (|p#$Mutation_130344| (Seq Int)) (|v#$Mutation_130344| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_119480 0)) ((($Mutation_119480 (|l#$Mutation_119480| T@$Location) (|p#$Mutation_119480| (Seq Int)) (|v#$Mutation_119480| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_112865 0)) ((($Mutation_112865 (|l#$Mutation_112865| T@$Location) (|p#$Mutation_112865| (Seq Int)) (|v#$Mutation_112865| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_109047 0)) ((($Mutation_109047 (|l#$Mutation_109047| T@$Location) (|p#$Mutation_109047| (Seq Int)) (|v#$Mutation_109047| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_109007 0)) ((($Mutation_109007 (|l#$Mutation_109007| T@$Location) (|p#$Mutation_109007| (Seq Int)) (|v#$Mutation_109007| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_100247 0)) ((($Mutation_100247 (|l#$Mutation_100247| T@$Location) (|p#$Mutation_100247| (Seq Int)) (|v#$Mutation_100247| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_94425 0)) ((($Mutation_94425 (|l#$Mutation_94425| T@$Location) (|p#$Mutation_94425| (Seq Int)) (|v#$Mutation_94425| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_93679 0)) ((($Mutation_93679 (|l#$Mutation_93679| T@$Location) (|p#$Mutation_93679| (Seq Int)) (|v#$Mutation_93679| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_92239 0)) ((($Mutation_92239 (|l#$Mutation_92239| T@$Location) (|p#$Mutation_92239| (Seq Int)) (|v#$Mutation_92239| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_91493 0)) ((($Mutation_91493 (|l#$Mutation_91493| T@$Location) (|p#$Mutation_91493| (Seq Int)) (|v#$Mutation_91493| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_90053 0)) ((($Mutation_90053 (|l#$Mutation_90053| T@$Location) (|p#$Mutation_90053| (Seq Int)) (|v#$Mutation_90053| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_89307 0)) ((($Mutation_89307 (|l#$Mutation_89307| T@$Location) (|p#$Mutation_89307| (Seq Int)) (|v#$Mutation_89307| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_87867 0)) ((($Mutation_87867 (|l#$Mutation_87867| T@$Location) (|p#$Mutation_87867| (Seq Int)) (|v#$Mutation_87867| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_87121 0)) ((($Mutation_87121 (|l#$Mutation_87121| T@$Location) (|p#$Mutation_87121| (Seq Int)) (|v#$Mutation_87121| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_85681 0)) ((($Mutation_85681 (|l#$Mutation_85681| T@$Location) (|p#$Mutation_85681| (Seq Int)) (|v#$Mutation_85681| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_84935 0)) ((($Mutation_84935 (|l#$Mutation_84935| T@$Location) (|p#$Mutation_84935| (Seq Int)) (|v#$Mutation_84935| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_83495 0)) ((($Mutation_83495 (|l#$Mutation_83495| T@$Location) (|p#$Mutation_83495| (Seq Int)) (|v#$Mutation_83495| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_82749 0)) ((($Mutation_82749 (|l#$Mutation_82749| T@$Location) (|p#$Mutation_82749| (Seq Int)) (|v#$Mutation_82749| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_81309 0)) ((($Mutation_81309 (|l#$Mutation_81309| T@$Location) (|p#$Mutation_81309| (Seq Int)) (|v#$Mutation_81309| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_80563 0)) ((($Mutation_80563 (|l#$Mutation_80563| T@$Location) (|p#$Mutation_80563| (Seq Int)) (|v#$Mutation_80563| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_79085 0)) ((($Mutation_79085 (|l#$Mutation_79085| T@$Location) (|p#$Mutation_79085| (Seq Int)) (|v#$Mutation_79085| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_78339 0)) ((($Mutation_78339 (|l#$Mutation_78339| T@$Location) (|p#$Mutation_78339| (Seq Int)) (|v#$Mutation_78339| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_76332_| (|T@[$1_Event_EventHandle]Multiset_76332| T@$1_Event_EventHandle) T@Multiset_76332)
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
(declare-fun |$IsValid'$1_Option_Option'u64''| (|T@$1_Option_Option'u64'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun $1_SlidingNonce_spec_try_record_nonce (T@$signer Int) Int)
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
(declare-fun ReverseVec_69079 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_68094 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_68291 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_68488 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_69276 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_68882 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_68685 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_67897 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_76332| |T@[$1_Event_EventHandle]Multiset_76332|) |T@[$1_Event_EventHandle]Multiset_76332|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorAdministrationScriptsandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorAdministrationScriptsandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorAdministrationScriptsandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorAdministrationScriptsandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorAdministrationScriptsandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorAdministrationScriptsandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorAdministrationScriptsandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorAdministrationScriptsandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |ValidatorAdministrationScriptsandybpl.590:13|
 :skolemid |15|
))))
 :qid |ValidatorAdministrationScriptsandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ValidatorAdministrationScriptsandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ValidatorAdministrationScriptsandybpl.603:17|
 :skolemid |18|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |ValidatorAdministrationScriptsandybpl.770:13|
 :skolemid |20|
))))
 :qid |ValidatorAdministrationScriptsandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |ValidatorAdministrationScriptsandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |ValidatorAdministrationScriptsandybpl.783:17|
 :skolemid |23|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |ValidatorAdministrationScriptsandybpl.950:13|
 :skolemid |25|
))))
 :qid |ValidatorAdministrationScriptsandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |ValidatorAdministrationScriptsandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.963:17|
 :skolemid |28|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |ValidatorAdministrationScriptsandybpl.1130:13|
 :skolemid |30|
))))
 :qid |ValidatorAdministrationScriptsandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |ValidatorAdministrationScriptsandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |ValidatorAdministrationScriptsandybpl.1310:13|
 :skolemid |35|
))))
 :qid |ValidatorAdministrationScriptsandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |ValidatorAdministrationScriptsandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |ValidatorAdministrationScriptsandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |ValidatorAdministrationScriptsandybpl.1490:13|
 :skolemid |40|
))))
 :qid |ValidatorAdministrationScriptsandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |ValidatorAdministrationScriptsandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |ValidatorAdministrationScriptsandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |ValidatorAdministrationScriptsandybpl.1670:13|
 :skolemid |45|
))))
 :qid |ValidatorAdministrationScriptsandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |ValidatorAdministrationScriptsandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |ValidatorAdministrationScriptsandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |ValidatorAdministrationScriptsandybpl.1850:13|
 :skolemid |50|
))))
 :qid |ValidatorAdministrationScriptsandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |ValidatorAdministrationScriptsandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |ValidatorAdministrationScriptsandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |ValidatorAdministrationScriptsandybpl.2030:13|
 :skolemid |55|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |ValidatorAdministrationScriptsandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |ValidatorAdministrationScriptsandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u64'| (seq.nth v@@22 i@@27)))
 :qid |ValidatorAdministrationScriptsandybpl.2210:13|
 :skolemid |60|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2208:29|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u64''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u64'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |ValidatorAdministrationScriptsandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |ValidatorAdministrationScriptsandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u64'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |ValidatorAdministrationScriptsandybpl.2390:13|
 :skolemid |65|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |ValidatorAdministrationScriptsandybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |ValidatorAdministrationScriptsandybpl.2403:17|
 :skolemid |68|
)))))
 :qid |ValidatorAdministrationScriptsandybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ValidatorAdministrationScriptsandybpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ValidatorAdministrationScriptsandybpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorAdministrationScriptsandybpl.2659:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorAdministrationScriptsandybpl.2662:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_76332| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream) v@@26) 0)
 :qid |ValidatorAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2723:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |ValidatorAdministrationScriptsandybpl.2764:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.2770:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |ValidatorAdministrationScriptsandybpl.2820:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.2826:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |ValidatorAdministrationScriptsandybpl.2876:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |ValidatorAdministrationScriptsandybpl.2882:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |ValidatorAdministrationScriptsandybpl.2932:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |ValidatorAdministrationScriptsandybpl.2938:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |ValidatorAdministrationScriptsandybpl.2988:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |ValidatorAdministrationScriptsandybpl.2994:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |ValidatorAdministrationScriptsandybpl.3044:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |ValidatorAdministrationScriptsandybpl.3050:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |ValidatorAdministrationScriptsandybpl.3100:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |ValidatorAdministrationScriptsandybpl.3106:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |ValidatorAdministrationScriptsandybpl.3156:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |ValidatorAdministrationScriptsandybpl.3162:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |ValidatorAdministrationScriptsandybpl.3212:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |ValidatorAdministrationScriptsandybpl.3218:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |ValidatorAdministrationScriptsandybpl.3268:60|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |ValidatorAdministrationScriptsandybpl.3274:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |ValidatorAdministrationScriptsandybpl.3324:66|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |ValidatorAdministrationScriptsandybpl.3330:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |ValidatorAdministrationScriptsandybpl.3380:60|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |ValidatorAdministrationScriptsandybpl.3386:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |ValidatorAdministrationScriptsandybpl.3436:63|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |ValidatorAdministrationScriptsandybpl.3442:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |ValidatorAdministrationScriptsandybpl.3492:79|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |ValidatorAdministrationScriptsandybpl.3498:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |ValidatorAdministrationScriptsandybpl.3548:82|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |ValidatorAdministrationScriptsandybpl.3554:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |ValidatorAdministrationScriptsandybpl.3604:88|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |ValidatorAdministrationScriptsandybpl.3610:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |ValidatorAdministrationScriptsandybpl.3660:72|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |ValidatorAdministrationScriptsandybpl.3666:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |ValidatorAdministrationScriptsandybpl.3720:15|
 :skolemid |110|
)))
(assert (forall ((addr Int) ) (! true
 :qid |ValidatorAdministrationScriptsandybpl.3729:15|
 :skolemid |111|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |ValidatorAdministrationScriptsandybpl.3754:61|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.3941:36|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.3965:71|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@3) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@3)))
 :qid |ValidatorAdministrationScriptsandybpl.4121:42|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@4) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@4)))
 :qid |ValidatorAdministrationScriptsandybpl.4134:46|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@5) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@5)))
 :qid |ValidatorAdministrationScriptsandybpl.4147:64|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@6)))
 :qid |ValidatorAdministrationScriptsandybpl.4160:75|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@7) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@7)))
 :qid |ValidatorAdministrationScriptsandybpl.4173:72|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@8)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@8)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@8))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@8))))
 :qid |ValidatorAdministrationScriptsandybpl.4227:55|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@8))
)))
(assert (forall ((s@@9 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@9)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@9)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@9))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@9))))
 :qid |ValidatorAdministrationScriptsandybpl.4249:46|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@9))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |ValidatorAdministrationScriptsandybpl.4561:15|
 :skolemid |122|
)))
(assert (forall ((s@@10 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@10)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@10)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@10))))
 :qid |ValidatorAdministrationScriptsandybpl.4574:49|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@11) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@11)))
 :qid |ValidatorAdministrationScriptsandybpl.4795:71|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@12) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@12)))
 :qid |ValidatorAdministrationScriptsandybpl.4809:91|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@13) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@13)))
 :qid |ValidatorAdministrationScriptsandybpl.4823:113|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@14)))
 :qid |ValidatorAdministrationScriptsandybpl.4837:75|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@15)))
 :qid |ValidatorAdministrationScriptsandybpl.4851:73|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@16)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@16)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@16))))
 :qid |ValidatorAdministrationScriptsandybpl.4871:48|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17) true)
 :qid |ValidatorAdministrationScriptsandybpl.4887:57|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18) true)
 :qid |ValidatorAdministrationScriptsandybpl.4901:83|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19) true)
 :qid |ValidatorAdministrationScriptsandybpl.4915:103|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20) true)
 :qid |ValidatorAdministrationScriptsandybpl.4929:125|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |ValidatorAdministrationScriptsandybpl.4943:87|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |ValidatorAdministrationScriptsandybpl.4957:85|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |ValidatorAdministrationScriptsandybpl.4971:48|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |ValidatorAdministrationScriptsandybpl.5008:45|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |ValidatorAdministrationScriptsandybpl.5022:51|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |ValidatorAdministrationScriptsandybpl.5045:48|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |ValidatorAdministrationScriptsandybpl.6505:49|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |ValidatorAdministrationScriptsandybpl.6518:65|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |ValidatorAdministrationScriptsandybpl.7022:45|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |ValidatorAdministrationScriptsandybpl.7035:45|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |ValidatorAdministrationScriptsandybpl.7048:55|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |ValidatorAdministrationScriptsandybpl.7062:55|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |ValidatorAdministrationScriptsandybpl.7082:38|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |ValidatorAdministrationScriptsandybpl.7103:44|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |ValidatorAdministrationScriptsandybpl.7154:53|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |ValidatorAdministrationScriptsandybpl.7216:53|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |ValidatorAdministrationScriptsandybpl.7242:55|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |ValidatorAdministrationScriptsandybpl.7256:55|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@39)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@39)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@39))))
 :qid |ValidatorAdministrationScriptsandybpl.7273:38|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@40)))
 :qid |ValidatorAdministrationScriptsandybpl.7287:48|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@41)))
 :qid |ValidatorAdministrationScriptsandybpl.7301:48|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@42)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@42))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@42))))
 :qid |ValidatorAdministrationScriptsandybpl.7321:41|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@43)))
 :qid |ValidatorAdministrationScriptsandybpl.7336:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@44)))
 :qid |ValidatorAdministrationScriptsandybpl.7350:53|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@45))))
 :qid |ValidatorAdministrationScriptsandybpl.7367:60|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@46)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@46)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@46))))
 :qid |ValidatorAdministrationScriptsandybpl.7384:60|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47))))
 :qid |ValidatorAdministrationScriptsandybpl.7401:57|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48) true)
 :qid |ValidatorAdministrationScriptsandybpl.9602:68|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))))
 :qid |ValidatorAdministrationScriptsandybpl.9624:66|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))))
 :qid |ValidatorAdministrationScriptsandybpl.9650:66|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))))
 :qid |ValidatorAdministrationScriptsandybpl.9679:56|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@52)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))))
 :qid |ValidatorAdministrationScriptsandybpl.9709:56|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@53) true)
 :qid |ValidatorAdministrationScriptsandybpl.10043:31|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@54) true)
 :qid |ValidatorAdministrationScriptsandybpl.10387:31|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@54))
)))
(assert (forall ((s@@55 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@55)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@55)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@55))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@55))))
 :qid |ValidatorAdministrationScriptsandybpl.10406:35|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@56)))
 :qid |ValidatorAdministrationScriptsandybpl.10827:45|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@57))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@57))))
 :qid |ValidatorAdministrationScriptsandybpl.10846:50|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@58)))
 :qid |ValidatorAdministrationScriptsandybpl.10861:52|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@59) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@59)))
 :qid |ValidatorAdministrationScriptsandybpl.10885:38|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@60) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@60)))
 :qid |ValidatorAdministrationScriptsandybpl.10899:39|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@60))
)))
(assert (forall ((s@@61 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61))))
 :qid |ValidatorAdministrationScriptsandybpl.10926:65|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@62))))
 :qid |ValidatorAdministrationScriptsandybpl.11311:60|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63))))
 :qid |ValidatorAdministrationScriptsandybpl.11328:66|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@64)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@64))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@64))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@64))))
 :qid |ValidatorAdministrationScriptsandybpl.11357:50|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@65) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@65)))
 :qid |ValidatorAdministrationScriptsandybpl.11376:45|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@66)) true))
 :qid |ValidatorAdministrationScriptsandybpl.11695:87|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@67)))
 :qid |ValidatorAdministrationScriptsandybpl.11907:47|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@68)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@68))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@68))))
 :qid |ValidatorAdministrationScriptsandybpl.11927:58|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@69) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@69)))
 :qid |ValidatorAdministrationScriptsandybpl.11942:39|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@70))))
 :qid |ValidatorAdministrationScriptsandybpl.11969:58|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71))))
 :qid |ValidatorAdministrationScriptsandybpl.11986:58|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72) true)
 :qid |ValidatorAdministrationScriptsandybpl.12001:51|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73))))
 :qid |ValidatorAdministrationScriptsandybpl.12018:60|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@74)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@74))))
 :qid |ValidatorAdministrationScriptsandybpl.12321:47|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@75))))
 :qid |ValidatorAdministrationScriptsandybpl.12343:63|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@76)))
 :qid |ValidatorAdministrationScriptsandybpl.12358:57|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@77)))
 :qid |ValidatorAdministrationScriptsandybpl.12371:55|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77))
)))
(assert (forall ((s@@78 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@78)))
 :qid |ValidatorAdministrationScriptsandybpl.12385:55|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@79)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@79))))
 :qid |ValidatorAdministrationScriptsandybpl.12402:54|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@80)))
 :qid |ValidatorAdministrationScriptsandybpl.12416:55|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@81)))
 :qid |ValidatorAdministrationScriptsandybpl.12430:57|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@82))))
 :qid |ValidatorAdministrationScriptsandybpl.12452:56|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@83)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@83))))
 :qid |ValidatorAdministrationScriptsandybpl.12477:52|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@84)))
 :qid |ValidatorAdministrationScriptsandybpl.12493:54|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@85))))
 :qid |ValidatorAdministrationScriptsandybpl.15669:47|
 :skolemid |297|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@86)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@86))))
 :qid |ValidatorAdministrationScriptsandybpl.15693:47|
 :skolemid |298|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@87)))
 :qid |ValidatorAdministrationScriptsandybpl.15934:49|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@88)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@88))))
 :qid |ValidatorAdministrationScriptsandybpl.15977:49|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@89)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@89))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@89))))
 :qid |ValidatorAdministrationScriptsandybpl.16006:48|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@90)))
 :qid |ValidatorAdministrationScriptsandybpl.16301:47|
 :skolemid |302|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_69079 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_69079 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_68094 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68094 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_68291 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68291 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_68488 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68488 v@@31))
)))
(assert (forall ((v@@32 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_69276 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_69276 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_68882 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68882 v@@33))
)))
(assert (forall ((v@@34 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_68685 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68685 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_67897 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |ValidatorAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_67897 v@@35))
)))
(assert (forall ((|l#0| Bool) (i@@42 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42) |l#0|)
 :qid |ValidatorAdministrationScriptsandybpl.245:54|
 :skolemid |378|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_76332|) (|l#1| |T@[$1_Event_EventHandle]Multiset_76332|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| |l#1| handle@@0))))
(Multiset_76332 (|lambda#3| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| |l#0@@0| handle@@0)) (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorAdministrationScriptsandybpl.2733:13|
 :skolemid |379|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@36) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@36)))
 :qid |ValidatorAdministrationScriptsandybpl.124:29|
 :skolemid |380|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t25 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| () T@$Memory_110573)
(declare-fun $t26 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@3 () T@$Memory_111090)
(declare-fun $t27 () Int)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_106463)
(declare-fun $t28 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_110138)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_108378)
(declare-fun _$t3 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun _$t2 () (Seq Int))
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_110573)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_106957)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_110978)
(declare-fun $t7 () T@$1_DiemConfig_Configuration)
(declare-fun $t8 () Int)
(declare-fun $t12 () Int)
(declare-fun $t9 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t10 () T@$1_DiemConfig_Configuration)
(declare-fun $t11 () T@$1_Event_EventHandle)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_76332_| (|T@[$1_Event_EventHandle]Multiset_76332| T@$1_Event_EventHandle T@Multiset_76332) |T@[$1_Event_EventHandle]Multiset_76332|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_76332|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_76332)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|Store__T@[$1_Event_EventHandle]Multiset_76332_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_76332|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_76332)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|Store__T@[$1_Event_EventHandle]Multiset_76332_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_76332_| ?x0 ?y1))) :weight 0)))
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t56@0 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_111090)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t57@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t58@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| () T@$Memory_110573)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t14@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t59@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t60@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t54@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t61@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t53@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@2| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_111090)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_111090)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_111090)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_Configuration'@1| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_110573)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_110573)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t55@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t23@1 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t23@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t51@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t52@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@2 () T@$Mutation_112865)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@1 () T@$Mutation_112865)
(declare-fun |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_84935)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t45@1 () T@$Mutation_84935)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t49@1 () T@$1_DiemSystem_ValidatorInfo)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t47@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t46@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t42@0 () T@$1_ValidatorConfig_Config)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t43@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t14@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t41@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t38@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t35@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t37@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t34@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t29@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t30@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t26@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t28@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t25@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t24@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t22@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t4@0 () T@$Mutation_84935)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@0 () T@$Mutation_112865)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t45@0 () T@$Mutation_84935)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t15@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t16@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t17@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t18@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$1_DiemSystem_add_validator$0$$t19@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t20@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t21@0 () Int)
(declare-fun $t16@0 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t19 () T@$1_DiemConfig_Configuration)
(declare-fun $t20 () Int)
(declare-fun $t21 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t22 () T@$1_DiemConfig_Configuration)
(declare-fun $t23 () T@$1_Event_EventHandle)
(declare-fun $t24 () Int)
(declare-fun $t15 () Bool)
(declare-fun $t14 () (Seq Int))
(declare-fun $t13 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 () Int)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_110138)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_110138)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_107352)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_110654)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_110735)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_110816)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_110897)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_112625)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|T@[Int]$1_DiemSystem_CapabilityHolder| Int) T@$1_DiemSystem_CapabilityHolder)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_141183)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_140200)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(push 1)
(set-info :boogie-vc-id $1_ValidatorAdministrationScripts_add_validator_and_reconfigure$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 250575) (let ((anon14_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= $t25 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3|) addr@@0))))) (= $t26 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory@3) 173345816))) (and (= $t27 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t28 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t26))))) (and (=> (= (ControlFlow 0 182643) (- 0 254202)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0)))) (and (=> (= (ControlFlow 0 182643) (- 0 254215)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (and (=> (= (ControlFlow 0 182643) (- 0 254230)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) (and (=> (= (ControlFlow 0 182643) (- 0 254241)) (not (not (= (let ((t_ref (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref)) _$t2)))) (=> (not (not (= (let ((t_ref@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@0)) _$t2))) (and (=> (= (ControlFlow 0 182643) (- 0 254255)) (not (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@1))))) 256))) (=> (not (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@2))))) 256)) (and (=> (= (ControlFlow 0 182643) (- 0 254267)) (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))))) (=> (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))))) (and (=> (= (ControlFlow 0 182643) (- 0 254278)) (not (let (($range_0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@3))))))
(exists (($i_1 Int) ) (!  (and (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((v@@37 (seq.nth $range_0 $i_1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@37) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
))))) (=> (not (let (($range_0@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@4))))))
(exists (($i_1@@0 Int) ) (!  (and (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0@@0))) (let ((v@@38 (seq.nth $range_0@@0 $i_1@@0)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@38) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
)))) (and (=> (= (ControlFlow 0 182643) (- 0 254287)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 182643) (- 0 254297)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 182643) (- 0 254309)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6)) 0))) (and (=> (= (ControlFlow 0 182643) (- 0 254327)) (not (not (= (|$addr#$signer| _$t0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0) 173345816))) (and (=> (= (ControlFlow 0 182643) (- 0 254341)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7)))) (and (=> (= (ControlFlow 0 182643) (- 0 254383)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t12))) (and (=> (= (ControlFlow 0 182643) (- 0 254395)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t12)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t12)) 0))) (and (=> (= (ControlFlow 0 182643) (- 0 254413)) (not (not (= (|$addr#$signer| _$t0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0) 173345816))) (and (=> (= (ControlFlow 0 182643) (- 0 254427)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) _$t3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) _$t3)) 3))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) _$t3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) _$t3)) 3)) (and (=> (= (ControlFlow 0 182643) (- 0 254435)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))) (and (=> (= (ControlFlow 0 182643) (- 0 254443)) (let (($range_0@@1 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3|) addr@@5))))))
(exists (($i_1@@1 Int) ) (!  (and (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@1))) (let ((v@@39 (seq.nth $range_0@@1 $i_1@@1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@39) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
)))) (=> (let (($range_0@@2 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3|) addr@@6))))))
(exists (($i_1@@2 Int) ) (!  (and (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@2))) (let ((v@@40 (seq.nth $range_0@@2 $i_1@@2)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@40) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
))) (and (=> (= (ControlFlow 0 182643) (- 0 254450)) (and (and (= (seq.len $t25) (+ (seq.len $t9) 1)) (= (seq.nth $t25 (- (seq.len $t25) 1)) ($1_DiemSystem_ValidatorInfo _$t3 1 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (seq.extract $t25 (|lb#$Range| ($Range 0 (- (seq.len $t25) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t25) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t25) 1))))) (seq.extract $t9 (|lb#$Range| ($Range 0 (seq.len $t9))) (- (|ub#$Range| ($Range 0 (seq.len $t9))) (|lb#$Range| ($Range 0 (seq.len $t9)))))))) (=> (and (and (= (seq.len $t25) (+ (seq.len $t9) 1)) (= (seq.nth $t25 (- (seq.len $t25) 1)) ($1_DiemSystem_ValidatorInfo _$t3 1 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (seq.extract $t25 (|lb#$Range| ($Range 0 (- (seq.len $t25) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t25) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t25) 1))))) (seq.extract $t9 (|lb#$Range| ($Range 0 (seq.len $t9))) (- (|ub#$Range| ($Range 0 (seq.len $t9))) (|lb#$Range| ($Range 0 (seq.len $t9))))))) (and (=> (= (ControlFlow 0 182643) (- 0 254473)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10)))) (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11)))
(let ((stream_new (let ((len (|l#Multiset_76332| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@0) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@0) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11 stream_new)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@41 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected) handle@@1)) v@@41) (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual) handle@@1)) v@@41))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2739:13|
 :skolemid |75|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@0 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10)))) (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_76332| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@1) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@1) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11 stream_new@@0)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@42 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@0) handle@@2)) v@@42) (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@0) handle@@2)) v@@42))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2739:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 182643) (- 0 254518)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10)))) (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_76332| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11 stream_new@@1)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@43 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@1) handle@@3)) v@@43) (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@1) handle@@3)) v@@43))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2739:13|
 :skolemid |75|
))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 178813) (- 0 253632)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) (not (= (let ((t_ref@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@1)) _$t2))) (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@7 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@7))))) 256)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))))) (let (($range_0@@3 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@8 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@8))))))
(exists (($i_1@@3 Int) ) (!  (and (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@3))) (let ((v@@44 (seq.nth $range_0@@3 $i_1@@3)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@44) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t12)) 0))) (not (= (|$addr#$signer| _$t0) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) (not (= (let ((t_ref@@2 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@2)) _$t2))) (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@9 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@9))))) 256)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0))))) (let (($range_0@@4 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@10 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@10))))))
(exists (($i_1@@4 Int) ) (!  (and (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@4))) (let ((v@@45 (seq.nth $range_0@@4 $i_1@@4)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@45) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t12)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))) (=> (= (ControlFlow 0 178813) (- 0 253810)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (= 5 $t13@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0)) (= 7 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= 5 $t13@0))) (and (not (= (let ((t_ref@@3 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@3)) _$t2)) (= 0 $t13@0))) (and (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))) 256) (= 8 $t13@0))) (and (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (= 7 $t13@0))) (and (let (($range_0@@5 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))))
(exists (($i_1@@5 Int) ) (!  (and (and (>= $i_1@@5 0) (< $i_1@@5 (seq.len $range_0@@5))) (let ((v@@46 (seq.nth $range_0@@5 $i_1@@5)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@46) _$t3)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
))) (= 7 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6)) 0)) (= 3 $t13@0))) (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t13@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7) 18446744073709551615)) (< $t8 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7))) (= 1 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t12)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t12)) 0)) (= 3 $t13@0))) (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t13@0))) (= 0 $t13@0)) (= 7 $t13@0)) (= 5 $t13@0)) (= 2 $t13@0)) (= 1 $t13@0)) (= 8 $t13@0)) (= 3 $t13@0)))))))
(let ((anon14_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t13@0 $abort_code@2) (= (ControlFlow 0 182657) 178813))) L3_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon31_correct  (=> (= inline$$1_DiemSystem_add_validator$0$$t56@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory@2) 173345816)) (=> (and (and (= inline$$1_DiemSystem_add_validator$0$$t57@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_add_validator$0$$t58@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t56@0)))) (and (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) inline$$1_DiemSystem_add_validator$0$$t14@1) (= inline$$1_DiemSystem_add_validator$0$$t59@0 inline$$1_DiemSystem_add_validator$0$$t58@0))) (=> (and (and (and (= inline$$1_DiemSystem_add_validator$0$$t60@0 inline$$1_DiemSystem_add_validator$0$$t54@0) (= inline$$1_DiemSystem_add_validator$0$$t61@0  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= inline$$1_DiemSystem_add_validator$0$$t57@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t53@0)))))) (and (= $es@0 (ite inline$$1_DiemSystem_add_validator$0$$t61@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) inline$$1_DiemSystem_add_validator$0$$t60@0)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_76332| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| inline$$1_DiemSystem_add_validator$0$$t59@0))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| inline$$1_DiemSystem_add_validator$0$$t59@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) inline$$1_DiemSystem_add_validator$0$$t60@0 stream_new@@2)))) $es)) (= $abort_code@2 $abort_code@1))) (and (and (= $abort_flag@1 $abort_flag@0) (= $es@1 $es@0)) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) (= $1_DiemConfig_Configuration_$memory@3 $1_DiemConfig_Configuration_$memory@2)))) (and (=> (= (ControlFlow 0 181845) 182657) anon14_Then_correct) (=> (= (ControlFlow 0 181845) 182643) anon14_Else_correct)))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon45_Else_correct  (=> (and (and (not |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@2|) (= $1_DiemConfig_Configuration_$memory@1 ($Memory_111090 (|Store__T@[Int]Bool_| (|domain#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1) (= (ControlFlow 0 181745) 181845))) inline$$1_DiemSystem_add_validator$0$anon31_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon45_Then_correct  (=> (and (and |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@2| (= $1_DiemConfig_Configuration_$memory@0 ($Memory_111090 (|Store__T@[Int]Bool_| (|domain#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816 |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_Configuration'@1|)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0) (= (ControlFlow 0 181857) 181845))) inline$$1_DiemSystem_add_validator$0$anon31_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon44_Else_correct  (=> (not |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@1|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| ($Memory_110573 (|Store__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1|)) (and (=> (= (ControlFlow 0 181731) 181857) inline$$1_DiemSystem_add_validator$0$anon45_Then_correct) (=> (= (ControlFlow 0 181731) 181745) inline$$1_DiemSystem_add_validator$0$anon45_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon44_Then_correct  (=> |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@1| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| ($Memory_110573 (|Store__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0|)) (and (=> (= (ControlFlow 0 181869) 181857) inline$$1_DiemSystem_add_validator$0$anon45_Then_correct) (=> (= (ControlFlow 0 181869) 181745) inline$$1_DiemSystem_add_validator$0$anon45_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon43_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t55@0) (and (=> (= (ControlFlow 0 181719) 181869) inline$$1_DiemSystem_add_validator$0$anon44_Then_correct) (=> (= (ControlFlow 0 181719) 181731) inline$$1_DiemSystem_add_validator$0$anon44_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$L7_correct  (=> (= $abort_code@2 inline$$1_DiemSystem_add_validator$0$$t23@1) (=> (and (and (= $abort_flag@1 true) (= $es@1 $es)) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) (= $1_DiemConfig_Configuration_$memory@3 $1_DiemConfig_Configuration_$memory))) (and (=> (= (ControlFlow 0 180974) 182657) anon14_Then_correct) (=> (= (ControlFlow 0 180974) 182643) anon14_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon43_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t55@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0) 18446744073709551615)) (< inline$$1_DiemSystem_add_validator$0$$t52@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0))) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0))) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 181945) 180974))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon42_Else_correct  (=> (and (and (and (not $abort_flag@0) (= inline$$1_DiemSystem_add_validator$0$$t44@2 ($Mutation_112865 (|l#$Mutation_112865| inline$$1_DiemSystem_add_validator$0$$t44@1) (|p#$Mutation_112865| inline$$1_DiemSystem_add_validator$0$$t44@1) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_112865| inline$$1_DiemSystem_add_validator$0$$t44@1)) (|v#$Mutation_84935| |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1|))))) (and (= inline$$1_DiemSystem_add_validator$0$$t14@1 (|v#$Mutation_112865| inline$$1_DiemSystem_add_validator$0$$t44@2)) (= inline$$1_DiemSystem_add_validator$0$$t51@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (= inline$$1_DiemSystem_add_validator$0$$t52@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_add_validator$0$$t53@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= inline$$1_DiemSystem_add_validator$0$$t54@0 (|$events#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t53@0)) (= inline$$1_DiemSystem_add_validator$0$$t55@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0) 18446744073709551615)) (< inline$$1_DiemSystem_add_validator$0$$t52@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t51@0)))))))) (and (=> (= (ControlFlow 0 181713) 181945) inline$$1_DiemSystem_add_validator$0$anon43_Then_correct) (=> (= (ControlFlow 0 181713) 181719) inline$$1_DiemSystem_add_validator$0$anon43_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon42_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 $abort_code@1) (= (ControlFlow 0 181959) 180974))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_84935 (|l#$Mutation_84935| inline$$1_DiemSystem_add_validator$0$$t45@1) (|p#$Mutation_84935| inline$$1_DiemSystem_add_validator$0$$t45@1) (seq.++ (|v#$Mutation_84935| inline$$1_DiemSystem_add_validator$0$$t45@1) (seq.unit inline$$1_DiemSystem_add_validator$0$$t49@1)))) (and (=> (= (ControlFlow 0 181579) 181959) inline$$1_DiemSystem_add_validator$0$anon42_Then_correct) (=> (= (ControlFlow 0 181579) 181713) inline$$1_DiemSystem_add_validator$0$anon42_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon41_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t47@0) (=> (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t46@0) (= inline$$1_DiemSystem_add_validator$0$$t46@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (= inline$$1_DiemSystem_add_validator$0$$t46@0 inline$$1_DiemSystem_add_validator$0$$t46@0) (|$IsValid'u64'| 1)) (and (= inline$$1_DiemSystem_add_validator$0$$t49@1 ($1_DiemSystem_ValidatorInfo _$t3 1 inline$$1_DiemSystem_add_validator$0$$t42@0 inline$$1_DiemSystem_add_validator$0$$t46@0)) (= (ControlFlow 0 181585) 181579))) |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon41_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t47@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 181985) 180974))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon40_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t43@0) (=> (and (|$IsValid'$1_ValidatorConfig_Config'| inline$$1_DiemSystem_add_validator$0$$t42@0) (= inline$$1_DiemSystem_add_validator$0$$t42@0 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3))) 0))) (=> (and (and (and (= inline$$1_DiemSystem_add_validator$0$$t42@0 inline$$1_DiemSystem_add_validator$0$$t42@0) (= inline$$1_DiemSystem_add_validator$0$$t44@1 ($Mutation_112865 ($Local 14) (as seq.empty (Seq Int)) inline$$1_DiemSystem_add_validator$0$$t14@0))) (and (= inline$$1_DiemSystem_add_validator$0$$t45@1 ($Mutation_84935 (|l#$Mutation_112865| inline$$1_DiemSystem_add_validator$0$$t44@1) (seq.++ (|p#$Mutation_112865| inline$$1_DiemSystem_add_validator$0$$t44@1) (seq.unit 1)) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112865| inline$$1_DiemSystem_add_validator$0$$t44@1)))) (= |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| (|v#$Mutation_84935| inline$$1_DiemSystem_add_validator$0$$t45@1)))) (and (and (= |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| |inline$$1_DiemSystem_add_validator$0$$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1|) (= _$t3 _$t3)) (and (= inline$$1_DiemSystem_add_validator$0$$t42@0 inline$$1_DiemSystem_add_validator$0$$t42@0) (= inline$$1_DiemSystem_add_validator$0$$t47@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 181484) 181985) inline$$1_DiemSystem_add_validator$0$anon41_Then_correct) (=> (= (ControlFlow 0 181484) 181585) inline$$1_DiemSystem_add_validator$0$anon41_Else_correct)))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon40_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t43@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0) (= 7 inline$$1_DiemSystem_add_validator$0$$t23@0))) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 182033) 180974))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon39_Then_correct  (=> (and inline$$Not$0$dst@1 (= inline$$1_DiemSystem_add_validator$0$$t43@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (and (=> (= (ControlFlow 0 181396) 182033) inline$$1_DiemSystem_add_validator$0$anon40_Then_correct) (=> (= (ControlFlow 0 181396) 181484) inline$$1_DiemSystem_add_validator$0$anon40_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon39_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= inline$$1_DiemSystem_add_validator$0$$t41@0 inline$$1_DiemSystem_add_validator$0$$t41@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t41@0) (= (ControlFlow 0 181368) 180974))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon38_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t41@0) (= inline$$1_DiemSystem_add_validator$0$$t41@0 7)) (and (= inline$$1_DiemSystem_add_validator$0$$t41@0 inline$$1_DiemSystem_add_validator$0$$t41@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 181352) 181396) inline$$1_DiemSystem_add_validator$0$anon39_Then_correct) (=> (= (ControlFlow 0 181352) 181368) inline$$1_DiemSystem_add_validator$0$anon39_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_DiemSystem_add_validator$0$$t38@0)) (= (ControlFlow 0 181312) 181352)) inline$$1_DiemSystem_add_validator$0$anon38_Else$1_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon38_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t35@0) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| inline$$1_DiemSystem_add_validator$0$$t14@0) (let ((inline$$1_DiemSystem_add_validator$0$$range_0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0)))))
(let ((inline$$1_DiemSystem_add_validator$0$$range_1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0)))))
(forall ((inline$$1_DiemSystem_add_validator$0$$i_2 Int) (inline$$1_DiemSystem_add_validator$0$$i_3 Int) ) (!  (=> ($InRange inline$$1_DiemSystem_add_validator$0$$range_0 inline$$1_DiemSystem_add_validator$0$$i_2) (=> ($InRange inline$$1_DiemSystem_add_validator$0$$range_1 inline$$1_DiemSystem_add_validator$0$$i_3) (let ((inline$$1_DiemSystem_add_validator$0$i inline$$1_DiemSystem_add_validator$0$$i_2))
(let ((inline$$1_DiemSystem_add_validator$0$j inline$$1_DiemSystem_add_validator$0$$i_3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0) inline$$1_DiemSystem_add_validator$0$i)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0) inline$$1_DiemSystem_add_validator$0$j))) (= inline$$1_DiemSystem_add_validator$0$i inline$$1_DiemSystem_add_validator$0$j))))))
 :qid |unknown.0:0|
 :skolemid |141|
))))) (= inline$$1_DiemSystem_add_validator$0$$t14@0 (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))) (and (and (= inline$$1_DiemSystem_add_validator$0$$t14@0 inline$$1_DiemSystem_add_validator$0$$t14@0) (= inline$$1_DiemSystem_add_validator$0$$t37@1 (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_add_validator$0$$t14@0))) (and (= inline$$1_DiemSystem_add_validator$0$$t38@0 (let ((inline$$1_DiemSystem_add_validator$0$$range_0@@0 inline$$1_DiemSystem_add_validator$0$$t37@1))
(exists ((inline$$1_DiemSystem_add_validator$0$$i_1 Int) ) (!  (and (and (>= inline$$1_DiemSystem_add_validator$0$$i_1 0) (< inline$$1_DiemSystem_add_validator$0$$i_1 (seq.len inline$$1_DiemSystem_add_validator$0$$range_0@@0))) (let ((inline$$1_DiemSystem_add_validator$0$v (seq.nth inline$$1_DiemSystem_add_validator$0$$range_0@@0 inline$$1_DiemSystem_add_validator$0$$i_1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| inline$$1_DiemSystem_add_validator$0$v) _$t3)))
 :qid |unknown.0:0|
 :skolemid |142|
)))) (= (ControlFlow 0 181318) 181312)))) inline$$Not$0$anon0_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon38_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t35@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 182061) 180974))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon37_Then_correct  (=> (and inline$$Lt$0$dst@1 (= inline$$1_DiemSystem_add_validator$0$$t35@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 181128) 182061) inline$$1_DiemSystem_add_validator$0$anon38_Then_correct) (=> (= (ControlFlow 0 181128) 181318) inline$$1_DiemSystem_add_validator$0$anon38_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon37_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= inline$$1_DiemSystem_add_validator$0$$t34@0 inline$$1_DiemSystem_add_validator$0$$t34@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t34@0) (= (ControlFlow 0 181112) 180974))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon36_Else$1_correct  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t34@0) (= inline$$1_DiemSystem_add_validator$0$$t34@0 8)) (and (= inline$$1_DiemSystem_add_validator$0$$t34@0 inline$$1_DiemSystem_add_validator$0$$t34@0) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 181096) 181128) inline$$1_DiemSystem_add_validator$0$anon37_Then_correct) (=> (= (ControlFlow 0 181096) 181112) inline$$1_DiemSystem_add_validator$0$anon37_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< inline$$1_DiemSystem_add_validator$0$$t29@0 256)) (= (ControlFlow 0 181056) 181096)) inline$$1_DiemSystem_add_validator$0$anon36_Else$1_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon36_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t30@0) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t29@0) (= inline$$1_DiemSystem_add_validator$0$$t29@0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14))))))) (and (|$IsValid'u64'| 256) (= (ControlFlow 0 181062) 181056))) inline$$Lt$0$anon0_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon36_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t30@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 182089) 180974))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon35_Then_correct  (=> (and inline$$1_DiemSystem_add_validator$0$$t26@0 (= inline$$1_DiemSystem_add_validator$0$$t30@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 180990) 182089) inline$$1_DiemSystem_add_validator$0$anon36_Then_correct) (=> (= (ControlFlow 0 180990) 181062) inline$$1_DiemSystem_add_validator$0$anon36_Else_correct)))))
(let ((inline$$1_DiemSystem_add_validator$0$anon35_Else_correct  (=> (and (and (not inline$$1_DiemSystem_add_validator$0$$t26@0) (= inline$$1_DiemSystem_add_validator$0$$t28@0 inline$$1_DiemSystem_add_validator$0$$t28@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t28@0) (= (ControlFlow 0 180968) 180974))) inline$$1_DiemSystem_add_validator$0$L7_correct)))
(let ((inline$$1_DiemSystem_add_validator$0$anon34_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t25@0) (=> (and (= inline$$1_DiemSystem_add_validator$0$$t26@0  (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) 0)))) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemSystem_add_validator$0$$t28@0) (= inline$$1_DiemSystem_add_validator$0$$t28@0 7)) (and (= inline$$1_DiemSystem_add_validator$0$$t28@0 inline$$1_DiemSystem_add_validator$0$$t28@0) (= inline$$1_DiemSystem_add_validator$0$$t26@0 inline$$1_DiemSystem_add_validator$0$$t26@0))) (and (=> (= (ControlFlow 0 180952) 180990) inline$$1_DiemSystem_add_validator$0$anon35_Then_correct) (=> (= (ControlFlow 0 180952) 180968) inline$$1_DiemSystem_add_validator$0$anon35_Else_correct)))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon34_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t25@0 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0)) (= 5 inline$$1_DiemSystem_add_validator$0$$t23@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0)) 0)) (= 3 inline$$1_DiemSystem_add_validator$0$$t23@0))) (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 inline$$1_DiemSystem_add_validator$0$$t23@0))) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 182181) 180974))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon33_Else_correct  (=> (not inline$$1_DiemSystem_add_validator$0$$t22@0) (=> (and (= inline$$1_DiemSystem_add_validator$0$$t24@0 (|$addr#$signer| _$t0)) (= inline$$1_DiemSystem_add_validator$0$$t25@0  (or (or (or (not (= (|$addr#$signer| _$t0) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_add_validator$0$$t24@0)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))))) (and (=> (= (ControlFlow 0 180902) 182181) inline$$1_DiemSystem_add_validator$0$anon34_Then_correct) (=> (= (ControlFlow 0 180902) 180952) inline$$1_DiemSystem_add_validator$0$anon34_Else_correct))))))
(let ((inline$$1_DiemSystem_add_validator$0$anon33_Then_correct  (=> inline$$1_DiemSystem_add_validator$0$$t22@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_add_validator$0$$t23@0)) (= inline$$1_DiemSystem_add_validator$0$$t23@0 inline$$1_DiemSystem_add_validator$0$$t23@0)) (and (= inline$$1_DiemSystem_add_validator$0$$t23@1 inline$$1_DiemSystem_add_validator$0$$t23@0) (= (ControlFlow 0 182207) 180974))) inline$$1_DiemSystem_add_validator$0$L7_correct))))
(let ((inline$$1_DiemSystem_add_validator$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_84935| inline$$1_DiemSystem_add_validator$0$$t4@0)) 0) (=> (and (and (= (seq.len (|p#$Mutation_112865| inline$$1_DiemSystem_add_validator$0$$t44@0)) 0) (= (seq.len (|p#$Mutation_84935| inline$$1_DiemSystem_add_validator$0$$t45@0)) 0)) (and (= inline$$1_DiemSystem_add_validator$0$$t15@0 (|$addr#$signer| _$t0)) (= inline$$1_DiemSystem_add_validator$0$$t16@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816)))) (=> (and (and (and (= inline$$1_DiemSystem_add_validator$0$$t17@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_add_validator$0$$t18@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15)))))) (and (= inline$$1_DiemSystem_add_validator$0$$t19@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816)) (= inline$$1_DiemSystem_add_validator$0$$t20@0 (|$events#$1_DiemConfig_Configuration| inline$$1_DiemSystem_add_validator$0$$t19@0)))) (and (and (= inline$$1_DiemSystem_add_validator$0$$t21@0 (|$addr#$signer| _$t0)) (= _$t0 _$t0)) (and (= _$t3 _$t3) (= inline$$1_DiemSystem_add_validator$0$$t22@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 180830) 182207) inline$$1_DiemSystem_add_validator$0$anon33_Then_correct) (=> (= (ControlFlow 0 180830) 180902) inline$$1_DiemSystem_add_validator$0$anon33_Else_correct)))))))
(let ((anon13_Then_correct  (=> $t16@0 (=> (and (and (and (= $t18 (|$addr#$signer| _$t0)) (= $t19 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t20 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t21 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16))))))) (and (and (= $t22 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t23 (|$events#$1_DiemConfig_Configuration| $t22))) (and (= $t24 (|$addr#$signer| _$t0)) (= (ControlFlow 0 182211) 180830)))) inline$$1_DiemSystem_add_validator$0$anon0_correct))))
(let ((anon13_Else_correct  (=> (not $t16@0) (=> (and (and (|$IsValid'u64'| 0) (= 0 0)) (and (= $t13@0 0) (= (ControlFlow 0 178225) 178813))) L3_correct))))
(let ((anon12_Else_correct  (=> (not $t15) (=> (and (and (|$IsValid'vec'u8''| $t14) (= $t14 (let ((t_ref@@4 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@4)))) (and (= $t16@0 (= $t14 _$t2)) (= $t16@0 $t16@0))) (and (=> (= (ControlFlow 0 178203) 182211) anon13_Then_correct) (=> (= (ControlFlow 0 178203) 178225) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> $t15 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)) (= 5 $t13)) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 182685) 178813))) L3_correct))))
(let ((anon11_Else_correct  (=> (and (not $abort_flag@0) (= $t15  (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3)))) (and (=> (= (ControlFlow 0 178171) 182685) anon12_Then_correct) (=> (= (ControlFlow 0 178171) 178203) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t13@0 $abort_code@1) (= (ControlFlow 0 182699) 178813))) L3_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct  (=> (and (= $abort_flag@0 true) (= $abort_code@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1)) (and (=> (= (ControlFlow 0 178095) 182699) anon11_Then_correct) (=> (= (ControlFlow 0 178095) 178171) anon11_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= (ControlFlow 0 178089) 178095))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0) (= (ControlFlow 0 178145) 178095))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 178101) 182699) anon11_Then_correct) (=> (= (ControlFlow 0 178101) 178171) anon11_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct  (=> (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0) (=> (and (and (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1)))) (and (=> (= (ControlFlow 0 178073) 178101) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct) (=> (= (ControlFlow 0 178073) 178089) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct  (=> (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1 ($Memory_110138 (|Store__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0) false) (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory))) (= (ControlFlow 0 178015) 178073)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct  (=> |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0 ($Memory_110138 (|Store__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0) |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1|))) (= (ControlFlow 0 178115) 178073)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0) (and (=> (= (ControlFlow 0 178001) 178115) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct) (=> (= (ControlFlow 0 178001) 178015) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct  (=> (= _$t0 _$t0) (=> (and (= _$t1 _$t1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0))))) (and (=> (= (ControlFlow 0 177995) 178145) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct) (=> (= (ControlFlow 0 177995) 178001) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@17) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@17)) 4))))
 :qid |ValidatorAdministrationScriptsandybpl.13411:20|
 :skolemid |204|
))) (and (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@18) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@18)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13415:20|
 :skolemid |205|
)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@19) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@19)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13419:20|
 :skolemid |206|
)))) (and (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@20) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@20)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@20)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13423:20|
 :skolemid |207|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))))) (=> (and (and (and (and (and (and (and (forall ((config_address Int) ) (!  (=> (|$IsValid'address'| config_address) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address) (= config_address 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.13439:24|
 :skolemid |208|
)) (forall ((config_address@@0 Int) ) (!  (=> (|$IsValid'address'| config_address@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110654| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@0) (= config_address@@0 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.13439:243|
 :skolemid |209|
))) (forall ((config_address@@1 Int) ) (!  (=> (|$IsValid'address'| config_address@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110735| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@1) (= config_address@@1 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.13439:483|
 :skolemid |210|
))) (forall ((config_address@@2 Int) ) (!  (=> (|$IsValid'address'| config_address@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110816| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@2) (= config_address@@2 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.13439:745|
 :skolemid |211|
))) (forall ((config_address@@3 Int) ) (!  (=> (|$IsValid'address'| config_address@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110897| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@3) (= config_address@@3 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.13439:969|
 :skolemid |212|
))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112625| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0@@6 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@21 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@21))))))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@6) (let ((i1 $i_1@@6))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@22 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@22)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@22 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@22)))) i1)))) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13447:151|
 :skolemid |213|
)))) (and (let (($range_0@@7 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@23 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@23))))))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@7) (let ((i1@@0 $i_1@@7))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@24 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@24)))) i1@@0)) 1)))
 :qid |ValidatorAdministrationScriptsandybpl.13452:151|
 :skolemid |214|
))) (|$IsValid'address'| (|$addr#$signer| _$t0))))) (and (and (and (|$IsValid'u64'| _$t1) (|$IsValid'vec'u8''| _$t2)) (and (|$IsValid'address'| _$t3) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |ValidatorAdministrationScriptsandybpl.13468:20|
 :skolemid |215|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |ValidatorAdministrationScriptsandybpl.13472:20|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@1)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@1) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@1))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@1))) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.13476:20|
 :skolemid |217|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@2)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@2))
 :qid |ValidatorAdministrationScriptsandybpl.13480:20|
 :skolemid |218|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) $a_0@@3)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@3))
 :qid |ValidatorAdministrationScriptsandybpl.13484:20|
 :skolemid |219|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) $a_0@@3))
)))))) (and (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@4)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@4))
 :qid |ValidatorAdministrationScriptsandybpl.13488:20|
 :skolemid |220|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@5) (let (($range_1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5))))))
(let (($range_2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5))))))
(forall (($i_3 Int) ($i_4 Int) ) (!  (=> ($InRange $range_1 $i_3) (=> ($InRange $range_2 $i_4) (let ((i@@43 $i_3))
(let ((j@@10 $i_4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5)) i@@43)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@5)) j@@10))) (= i@@43 j@@10))))))
 :qid |ValidatorAdministrationScriptsandybpl.13493:367|
 :skolemid |221|
))))))
 :qid |ValidatorAdministrationScriptsandybpl.13492:20|
 :skolemid |222|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@5))
))) (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_112625| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@6)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@6))
 :qid |ValidatorAdministrationScriptsandybpl.13498:20|
 :skolemid |223|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_112625| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@6))
)) (= $t6 (|$addr#$signer| _$t0)))) (and (and (= $t7 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t8 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t9 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@25 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@25))))) (= $t10 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))))) (and (and (and (= $t11 (|$events#$1_DiemConfig_Configuration| $t10)) (= $t12 (|$addr#$signer| _$t0))) (and (let ((addr@@26 (|$addr#$signer| _$t0)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141183| $1_DiemAccount_DiemAccount_$memory) addr@@26)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@26) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@26)))))) (= _$t0 _$t0))) (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= _$t3 _$t3) (= (ControlFlow 0 178149) 177995)))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_76332| stream@@4) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@4) v@@47) 0)
 :qid |ValidatorAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 176843) 178149)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 250575) 176843) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@2 () T@$Memory_108378)
(declare-fun _$t1@@0 () Int)
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun _$t3@@0 () (Seq Int))
(declare-fun _$t4 () (Seq Int))
(declare-fun _$t0@@0 () T@$signer)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1 () T@$Memory_108378)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0 () T@$Memory_108378)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int T@$1_ValidatorConfig_ValidatorConfig) |T@[Int]$1_ValidatorConfig_ValidatorConfig|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t5 () Bool)
(declare-fun $t6@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_ValidatorAdministrationScripts_register_validator_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 254753) (let ((anon5_correct  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2) _$t1@@0) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2) _$t1@@0)))) 0))) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2) _$t1@@0) ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (seq.unit ($1_ValidatorConfig_Config _$t2@@0 _$t3@@0 _$t4))) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0))))) (and (=> (= (ControlFlow 0 183668) (- 0 255355)) (not (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@5 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@5)) 0)))))) (=> (not (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@6 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@6)) 0))))) (and (=> (= (ControlFlow 0 183668) (- 0 255371)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0))) (and (=> (= (ControlFlow 0 183668) (- 0 255381)) (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0))))) (=> (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0)))) (and (=> (= (ControlFlow 0 183668) (- 0 255392)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0))) (and (=> (= (ControlFlow 0 183668) (- 0 255403)) (not (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@7 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@7)) 0)))))) (=> (not (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@8 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@8)) 0))))) (=> (= (ControlFlow 0 183668) (- 0 255419)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2) _$t1@@0) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2) _$t1@@0)))) 0)))))))))))))))))
(let ((anon8_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_ValidatorConfig_ValidatorConfig_$memory@1 ($Memory_108378 (|Store__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0 false) (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory)))) (and (= $1_ValidatorConfig_ValidatorConfig_$memory@2 $1_ValidatorConfig_ValidatorConfig_$memory@1) (= (ControlFlow 0 183554) 183668))) anon5_correct)))
(let ((anon8_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_ValidatorConfig_ValidatorConfig_$memory@0 ($Memory_108378 (|Store__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0 true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0 |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0|)))) (and (= $1_ValidatorConfig_ValidatorConfig_$memory@2 $1_ValidatorConfig_ValidatorConfig_$memory@0) (= (ControlFlow 0 183680) 183668))) anon5_correct)))
(let ((anon7_Else_correct  (=> (not $t5) (and (=> (= (ControlFlow 0 183542) 183680) anon8_Then_correct) (=> (= (ControlFlow 0 183542) 183554) anon8_Else_correct)))))
(let ((anon7_Then_correct  (=> $t5 (=> (and (or (or (or (and (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@9 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@9)) 0)))) (= 7 $t6@@0)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0)) (= 7 $t6@@0))) (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0))) (= 7 $t6@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)) (= 5 $t6@@0))) (= $t6@@0 $t6@@0)) (and (=> (= (ControlFlow 0 183944) (- 0 255121)) (or (or (or (or (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@10 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@10)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0))) (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@11 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@11)) 0)))))) (=> (or (or (or (or (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@12 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@12)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0))) (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@13 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@13)) 0))))) (=> (= (ControlFlow 0 183944) (- 0 255168)) (or (or (or (or (or (or (and (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@14 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@14)) 0)))) (= 7 $t6@@0)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0)) (= 7 $t6@@0))) (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0))) (= 7 $t6@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)) (= 5 $t6@@0))) (and (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@15 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@15)) 0)))) (= 7 $t6@@0))) (= 7 $t6@@0)) (= 5 $t6@@0)))))))))
(let ((anon0$1_correct@@0  (=> (and (and (and (and (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@27) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@27)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13857:20|
 :skolemid |224|
)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@28) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@28)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13861:20|
 :skolemid |225|
))) (and (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@29) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@29)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@29)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.13865:20|
 :skolemid |226|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@0)))) (and (and (|$IsValid'address'| _$t1@@0) (|$IsValid'vec'u8''| _$t2@@0)) (and (|$IsValid'vec'u8''| _$t3@@0) (|$IsValid'vec'u8''| _$t4)))) (and (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@7)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@7) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@7))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@7))) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.13883:20|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@7))
)) (let ((addr@@30 (|$addr#$signer| _$t0@@0)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141183| $1_DiemAccount_DiemAccount_$memory) addr@@30)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@30) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@30))))))) (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0))) (and (and (= _$t2@@0 _$t2@@0) (= _$t3@@0 _$t3@@0)) (and (= _$t4 _$t4) (= $t5  (or (or (or (not (= (|$addr#$signer| _$t0@@0) (let ((t_ref@@16 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@16)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@0))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@0)))))))) (and (=> (= (ControlFlow 0 183534) 183944) anon7_Then_correct) (=> (= (ControlFlow 0 183534) 183542) anon7_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_76332| stream@@5) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@5) v@@48) 0)
 :qid |ValidatorAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 183287) 183534)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 254753) 183287) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0)))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t25@@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0| () T@$Memory_110573)
(declare-fun $t26@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@3@@0 () T@$Memory_111090)
(declare-fun $t27@@0 () Int)
(declare-fun $t28@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun _$t1@@1 () Int)
(declare-fun _$t3@@1 () Int)
(declare-fun _$t2@@1 () (Seq Int))
(declare-fun $t6@@1 () Int)
(declare-fun $t7@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t8@@0 () Int)
(declare-fun $t12@@0 () Int)
(declare-fun $t9@@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $es@1@@0 () T@$EventStore)
(declare-fun $t10@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t11@@0 () T@$1_Event_EventHandle)
(declare-fun $t13@0@@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t37@0 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@0 () T@$Memory_111090)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t38@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t39@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| () T@$Memory_110573)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t4@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t40@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t41@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t35@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t42@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t34@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@2| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@0 () T@$Memory_111090)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@0 () T@$Memory_111090)
(declare-fun |inline$$1_DiemSystem_remove_validator$0$$temp_0'$1_DiemConfig_Configuration'@1| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| () T@$Memory_110573)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| () T@$Memory_110573)
(declare-fun |inline$$1_DiemSystem_remove_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t36@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t15@1 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t15@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t32@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t33@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t28@2 () T@$Mutation_112865)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t28@1 () T@$Mutation_112865)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| () T@$Mutation_84935)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@0| () T@$Mutation_84935)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t26@0 () Int)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$e@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_84935)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t29@1 () T@$Mutation_84935)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t27@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t22@0 () |T@$1_Option_Option'u64'|)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t4@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t23@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t25@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t18@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t20@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t21@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t17@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t16@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t14@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t28@0 () T@$Mutation_112865)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t29@0 () T@$Mutation_84935)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t7@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t8@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t9@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t10@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t11@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t12@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t13@0 () Int)
(declare-fun $t16@0@@0 () Bool)
(declare-fun $t18@@0 () Int)
(declare-fun $t19@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@0 () Int)
(declare-fun $t21@@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t22@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@0 () T@$1_Event_EventHandle)
(declare-fun $t24@@0 () Int)
(declare-fun $t15@@0 () Bool)
(declare-fun $t14@@0 () (Seq Int))
(declare-fun $t13@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0 () Int)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 () Int)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@0 () T@$Memory_110138)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@0 () T@$Memory_110138)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@0| () T@$1_SlidingNonce_SlidingNonce)
(push 1)
(set-info :boogie-vc-id $1_ValidatorAdministrationScripts_remove_validator_and_reconfigure$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 255434) (let ((anon14_Else_correct@@0  (=> (not $abort_flag@2) (=> (and (and (= $t25@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@31 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0|) addr@@31))))) (= $t26@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory@3@@0) 173345816))) (and (= $t27@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t28@@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t26@@0))))) (and (=> (= (ControlFlow 0 189379) (- 0 258821)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@1))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@1)))) (and (=> (= (ControlFlow 0 189379) (- 0 258834)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1) 0))) (and (=> (= (ControlFlow 0 189379) (- 0 258849)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1))) (and (=> (= (ControlFlow 0 189379) (- 0 258860)) (not (not (= (let ((t_ref@@17 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@17)) _$t2@@1)))) (=> (not (not (= (let ((t_ref@@18 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@18)) _$t2@@1))) (and (=> (= (ControlFlow 0 189379) (- 0 258874)) (not (not (let (($range_0@@8 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@32 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@32))))))
(exists (($i_1@@8 Int) ) (!  (and (and (>= $i_1@@8 0) (< $i_1@@8 (seq.len $range_0@@8))) (let ((v@@49 (seq.nth $range_0@@8 $i_1@@8)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@49) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
)))))) (=> (not (not (let (($range_0@@9 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@33 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@33))))))
(exists (($i_1@@9 Int) ) (!  (and (and (>= $i_1@@9 0) (< $i_1@@9 (seq.len $range_0@@9))) (let ((v@@50 (seq.nth $range_0@@9 $i_1@@9)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@50) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
))))) (and (=> (= (ControlFlow 0 189379) (- 0 258885)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@1))) (and (=> (= (ControlFlow 0 189379) (- 0 258897)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@1)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@1)) 0))) (and (=> (= (ControlFlow 0 189379) (- 0 258915)) (not (not (= (|$addr#$signer| _$t0@@1) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@1) 173345816))) (and (=> (= (ControlFlow 0 189379) (- 0 258929)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 189379) (- 0 258939)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7@@0) 18446744073709551615)) (< $t8@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@0))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7@@0) 18446744073709551615)) (< $t8@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@0)))) (and (=> (= (ControlFlow 0 189379) (- 0 258981)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t12@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t12@@0))) (and (=> (= (ControlFlow 0 189379) (- 0 258993)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t12@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t12@@0)) 0))) (and (=> (= (ControlFlow 0 189379) (- 0 259011)) (not (not (= (|$addr#$signer| _$t0@@1) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@1) 173345816))) (and (=> (= (ControlFlow 0 189379) (- 0 259025)) (let (($range_0@@10 $t25@@0))
(forall (($i_1@@10 Int) ) (!  (=> (and (>= $i_1@@10 0) (< $i_1@@10 (seq.len $range_0@@10))) (let ((vi (seq.nth $range_0@@10 $i_1@@10)))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| vi) _$t3@@1)) (let (($range_2@@0 $t9@@0))
(exists (($i_3@@0 Int) ) (!  (and (and (>= $i_3@@0 0) (< $i_3@@0 (seq.len $range_2@@0))) (let ((ovi (seq.nth $range_2@@0 $i_3@@0)))
(= vi ovi)))
 :qid |ValidatorAdministrationScriptsandybpl.14430:106|
 :skolemid |248|
))))))
 :qid |ValidatorAdministrationScriptsandybpl.14429:38|
 :skolemid |249|
)))) (=> (let (($range_0@@11 $t25@@0))
(forall (($i_1@@11 Int) ) (!  (=> (and (>= $i_1@@11 0) (< $i_1@@11 (seq.len $range_0@@11))) (let ((vi@@0 (seq.nth $range_0@@11 $i_1@@11)))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| vi@@0) _$t3@@1)) (let (($range_2@@1 $t9@@0))
(exists (($i_3@@1 Int) ) (!  (and (and (>= $i_3@@1 0) (< $i_3@@1 (seq.len $range_2@@1))) (let ((ovi@@0 (seq.nth $range_2@@1 $i_3@@1)))
(= vi@@0 ovi@@0)))
 :qid |ValidatorAdministrationScriptsandybpl.14430:106|
 :skolemid |248|
))))))
 :qid |ValidatorAdministrationScriptsandybpl.14429:38|
 :skolemid |249|
))) (and (=> (= (ControlFlow 0 189379) (- 0 259091)) (not (let (($range_0@@12 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@34 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0|) addr@@34))))))
(exists (($i_1@@12 Int) ) (!  (and (and (>= $i_1@@12 0) (< $i_1@@12 (seq.len $range_0@@12))) (let ((v@@51 (seq.nth $range_0@@12 $i_1@@12)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@51) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
))))) (=> (not (let (($range_0@@13 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@35 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0|) addr@@35))))))
(exists (($i_1@@13 Int) ) (!  (and (and (>= $i_1@@13 0) (< $i_1@@13 (seq.len $range_0@@13))) (let ((v@@52 (seq.nth $range_0@@13 $i_1@@13)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@52) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
)))) (and (=> (= (ControlFlow 0 189379) (- 0 259100)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@1@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@0)))) (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_76332| stream@@6)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@6) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@6) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@0 stream_new@@3)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@6 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@2) handle@@6)) (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@2) handle@@6))) (forall ((v@@53 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@2) handle@@6)) v@@53) (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@2) handle@@6)) v@@53))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2739:13|
 :skolemid |75|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@1@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@0)))) (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@0)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_76332| stream@@7)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@7) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@7) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@0 stream_new@@4)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@7 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@3) handle@@7)) (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@3) handle@@7))) (forall ((v@@54 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@3) handle@@7)) v@@54) (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@3) handle@@7)) v@@54))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2739:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 189379) (- 0 259145)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@1@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t27@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@0)))) (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@0)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_76332| stream@@8)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@8) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@8) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t28@@0) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@0 stream_new@@5)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@8 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@4) handle@@8)) (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@4) handle@@8))) (forall ((v@@55 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@4) handle@@8)) v@@55) (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@4) handle@@8)) v@@55))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2739:13|
 :skolemid |75|
))))))))))))))))))))))))))))))))))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 186013) (- 0 258302)) (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@1))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1))) (not (= (let ((t_ref@@19 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@19)) _$t2@@1))) (not (let (($range_0@@14 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@36 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@36))))))
(exists (($i_1@@14 Int) ) (!  (and (and (>= $i_1@@14 0) (< $i_1@@14 (seq.len $range_0@@14))) (let ((v@@56 (seq.nth $range_0@@14 $i_1@@14)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@56) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@1)) 0))) (not (= (|$addr#$signer| _$t0@@1) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7@@0) 18446744073709551615)) (< $t8@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t12@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t12@@0)) 0))) (not (= (|$addr#$signer| _$t0@@1) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@1))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1))) (not (= (let ((t_ref@@20 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@20)) _$t2@@1))) (not (let (($range_0@@15 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@37 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@37))))))
(exists (($i_1@@15 Int) ) (!  (and (and (>= $i_1@@15 0) (< $i_1@@15 (seq.len $range_0@@15))) (let ((v@@57 (seq.nth $range_0@@15 $i_1@@15)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@57) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@1)) 0))) (not (= (|$addr#$signer| _$t0@@1) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7@@0) 18446744073709551615)) (< $t8@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t12@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t12@@0)) 0))) (not (= (|$addr#$signer| _$t0@@1) 173345816))) (=> (= (ControlFlow 0 186013) (- 0 258465)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@1))) (= 5 $t13@0@@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1) 0)) (= 7 $t13@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)) (= 5 $t13@0@@0))) (and (not (= (let ((t_ref@@21 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@21)) _$t2@@1)) (= 0 $t13@0@@0))) (and (not (let (($range_0@@16 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@38 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@38))))))
(exists (($i_1@@16 Int) ) (!  (and (and (>= $i_1@@16 0) (< $i_1@@16 (seq.len $range_0@@16))) (let ((v@@58 (seq.nth $range_0@@16 $i_1@@16)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@58) _$t3@@1)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
)))) (= 7 $t13@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@1)) (= 5 $t13@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@1)) 0)) (= 3 $t13@0@@0))) (and (not (= (|$addr#$signer| _$t0@@1) 173345816)) (= 2 $t13@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t13@0@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t7@@0) 18446744073709551615)) (< $t8@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t7@@0))) (= 1 $t13@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t12@@0)) (= 5 $t13@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t12@@0)) 0)) (= 3 $t13@0@@0))) (and (not (= (|$addr#$signer| _$t0@@1) 173345816)) (= 2 $t13@0@@0))) (= 0 $t13@0@@0)) (= 7 $t13@0@@0)) (= 5 $t13@0@@0)) (= 2 $t13@0@@0)) (= 1 $t13@0@@0)) (= 3 $t13@0@@0)))))))
(let ((anon14_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t13@0@@0 $abort_code@3) (= (ControlFlow 0 189393) 186013))) L3_correct@@0)))
(let ((inline$$1_DiemSystem_remove_validator$0$anon21_correct  (=> (= inline$$1_DiemSystem_remove_validator$0$$t37@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory@2@@0) 173345816)) (=> (and (and (= inline$$1_DiemSystem_remove_validator$0$$t38@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_remove_validator$0$$t39@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t37@0)))) (and (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) inline$$1_DiemSystem_remove_validator$0$$t4@1) (= inline$$1_DiemSystem_remove_validator$0$$t40@0 inline$$1_DiemSystem_remove_validator$0$$t39@0))) (=> (and (and (and (= inline$$1_DiemSystem_remove_validator$0$$t41@0 inline$$1_DiemSystem_remove_validator$0$$t35@0) (= inline$$1_DiemSystem_remove_validator$0$$t42@0  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= inline$$1_DiemSystem_remove_validator$0$$t38@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t34@0)))))) (and (= $es@0@@0 (ite inline$$1_DiemSystem_remove_validator$0$$t42@0 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) inline$$1_DiemSystem_remove_validator$0$$t41@0)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_76332| stream@@9)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| inline$$1_DiemSystem_remove_validator$0$$t40@0))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| inline$$1_DiemSystem_remove_validator$0$$t40@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) inline$$1_DiemSystem_remove_validator$0$$t41@0 stream_new@@6)))) $es)) (= $es@1@@0 $es@0@@0))) (and (and (= $abort_flag@2 $abort_flag@1@@0) (= $abort_code@3 $abort_code@2@@0)) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) (= $1_DiemConfig_Configuration_$memory@3@@0 $1_DiemConfig_Configuration_$memory@2@@0)))) (and (=> (= (ControlFlow 0 188653) 189393) anon14_Then_correct@@0) (=> (= (ControlFlow 0 188653) 189379) anon14_Else_correct@@0)))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon30_Else_correct  (=> (and (and (not |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@2|) (= $1_DiemConfig_Configuration_$memory@1@@0 ($Memory_111090 (|Store__T@[Int]Bool_| (|domain#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@1@@0) (= (ControlFlow 0 188553) 188653))) inline$$1_DiemSystem_remove_validator$0$anon21_correct)))
(let ((inline$$1_DiemSystem_remove_validator$0$anon30_Then_correct  (=> (and (and |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@2| (= $1_DiemConfig_Configuration_$memory@0@@0 ($Memory_111090 (|Store__T@[Int]Bool_| (|domain#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816 |inline$$1_DiemSystem_remove_validator$0$$temp_0'$1_DiemConfig_Configuration'@1|)))) (and (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@0@@0) (= (ControlFlow 0 188665) 188653))) inline$$1_DiemSystem_remove_validator$0$anon21_correct)))
(let ((inline$$1_DiemSystem_remove_validator$0$anon29_Else_correct  (=> (not |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@1|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| ($Memory_110573 (|Store__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0|)) (and (=> (= (ControlFlow 0 188539) 188665) inline$$1_DiemSystem_remove_validator$0$anon30_Then_correct) (=> (= (ControlFlow 0 188539) 188553) inline$$1_DiemSystem_remove_validator$0$anon30_Else_correct))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon29_Then_correct  (=> |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@1| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| ($Memory_110573 (|Store__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |inline$$1_DiemSystem_remove_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0|)) (and (=> (= (ControlFlow 0 188677) 188665) inline$$1_DiemSystem_remove_validator$0$anon30_Then_correct) (=> (= (ControlFlow 0 188677) 188553) inline$$1_DiemSystem_remove_validator$0$anon30_Else_correct))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon28_Else_correct  (=> (not inline$$1_DiemSystem_remove_validator$0$$t36@0) (and (=> (= (ControlFlow 0 188527) 188677) inline$$1_DiemSystem_remove_validator$0$anon29_Then_correct) (=> (= (ControlFlow 0 188527) 188539) inline$$1_DiemSystem_remove_validator$0$anon29_Else_correct)))))
(let ((inline$$1_DiemSystem_remove_validator$0$L3_correct  (=> (= $es@1@@0 $es) (=> (and (and (= $abort_flag@2 true) (= $abort_code@3 inline$$1_DiemSystem_remove_validator$0$$t15@1)) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) (= $1_DiemConfig_Configuration_$memory@3@@0 $1_DiemConfig_Configuration_$memory))) (and (=> (= (ControlFlow 0 188127) 189393) anon14_Then_correct@@0) (=> (= (ControlFlow 0 188127) 189379) anon14_Else_correct@@0))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon28_Then_correct  (=> inline$$1_DiemSystem_remove_validator$0$$t36@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t32@0) 18446744073709551615)) (< inline$$1_DiemSystem_remove_validator$0$$t33@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t32@0))) (= 1 inline$$1_DiemSystem_remove_validator$0$$t15@0))) (= inline$$1_DiemSystem_remove_validator$0$$t15@0 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t15@0) (= (ControlFlow 0 188753) 188127))) inline$$1_DiemSystem_remove_validator$0$L3_correct))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon27_Else_correct  (=> (and (and (and (not $abort_flag@1@@0) (= inline$$1_DiemSystem_remove_validator$0$$t28@2 ($Mutation_112865 (|l#$Mutation_112865| inline$$1_DiemSystem_remove_validator$0$$t28@1) (|p#$Mutation_112865| inline$$1_DiemSystem_remove_validator$0$$t28@1) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_112865| inline$$1_DiemSystem_remove_validator$0$$t28@1)) (|v#$Mutation_84935| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2|))))) (and (= inline$$1_DiemSystem_remove_validator$0$$t4@1 (|v#$Mutation_112865| inline$$1_DiemSystem_remove_validator$0$$t28@2)) (= inline$$1_DiemSystem_remove_validator$0$$t32@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (= inline$$1_DiemSystem_remove_validator$0$$t33@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_remove_validator$0$$t34@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= inline$$1_DiemSystem_remove_validator$0$$t35@0 (|$events#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t34@0)) (= inline$$1_DiemSystem_remove_validator$0$$t36@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t32@0) 18446744073709551615)) (< inline$$1_DiemSystem_remove_validator$0$$t33@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t32@0)))))))) (and (=> (= (ControlFlow 0 188521) 188753) inline$$1_DiemSystem_remove_validator$0$anon28_Then_correct) (=> (= (ControlFlow 0 188521) 188527) inline$$1_DiemSystem_remove_validator$0$anon28_Else_correct)))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon27_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 $abort_code@2@@0) (= (ControlFlow 0 188767) 188127))) inline$$1_DiemSystem_remove_validator$0$L3_correct)))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|  (=> (= $abort_code@2@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1@@0 true) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@0|)) (and (=> (= (ControlFlow 0 188385) 188767) inline$$1_DiemSystem_remove_validator$0$anon27_Then_correct) (=> (= (ControlFlow 0 188385) 188521) inline$$1_DiemSystem_remove_validator$0$anon27_Else_correct))))))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|  (=> (and (not (and (>= inline$$1_DiemSystem_remove_validator$0$$t26@0 0) (< inline$$1_DiemSystem_remove_validator$0$$t26@0 (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|)))) (= (ControlFlow 0 188383) 188385)) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|  (=> (and (and (and (>= inline$$1_DiemSystem_remove_validator$0$$t26@0 0) (< inline$$1_DiemSystem_remove_validator$0$$t26@0 (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$e@1| (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0))) (and (and (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_84935 (|l#$Mutation_84935| inline$$1_DiemSystem_remove_validator$0$$t29@1) (|p#$Mutation_84935| inline$$1_DiemSystem_remove_validator$0$$t29@1) (seq.extract (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) 0 (- inline$$1_DiemSystem_remove_validator$0$$t26@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1))) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) (+ inline$$1_DiemSystem_remove_validator$0$$t26@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1))))) (+ inline$$1_DiemSystem_remove_validator$0$$t26@0 1)))) 0 (- (- (seq.len (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) 0 (- inline$$1_DiemSystem_remove_validator$0$$t26@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1))) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) (+ inline$$1_DiemSystem_remove_validator$0$$t26@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| inline$$1_DiemSystem_remove_validator$0$$t26@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1))))) (+ inline$$1_DiemSystem_remove_validator$0$$t26@0 1))))) 1) 0)))) (= $abort_code@2@@0 $abort_code@1@@0)) (and (= $abort_flag@1@@0 $abort_flag@0@@0) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1|)))) (and (=> (= (ControlFlow 0 188333) 188767) inline$$1_DiemSystem_remove_validator$0$anon27_Then_correct) (=> (= (ControlFlow 0 188333) 188521) inline$$1_DiemSystem_remove_validator$0$anon27_Else_correct)))))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (|v#$Mutation_84935| inline$$1_DiemSystem_remove_validator$0$$t29@1)) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (and (=> (= (ControlFlow 0 188301) 188383) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 188301) 188333) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|)))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon26_Else_correct  (=> (not inline$$1_DiemSystem_remove_validator$0$$t27@0) (=> (and (|$IsValid'u64'| inline$$1_DiemSystem_remove_validator$0$$t26@0) (= inline$$1_DiemSystem_remove_validator$0$$t26@0 (seq.nth (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0) 0))) (=> (and (and (= inline$$1_DiemSystem_remove_validator$0$$t26@0 inline$$1_DiemSystem_remove_validator$0$$t26@0) (= inline$$1_DiemSystem_remove_validator$0$$t28@1 ($Mutation_112865 ($Local 4) (as seq.empty (Seq Int)) inline$$1_DiemSystem_remove_validator$0$$t4@0))) (and (= inline$$1_DiemSystem_remove_validator$0$$t29@1 ($Mutation_84935 (|l#$Mutation_112865| inline$$1_DiemSystem_remove_validator$0$$t28@1) (seq.++ (|p#$Mutation_112865| inline$$1_DiemSystem_remove_validator$0$$t28@1) (seq.unit 1)) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_112865| inline$$1_DiemSystem_remove_validator$0$$t28@1)))) (= (ControlFlow 0 188393) 188301))) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon26_Then_correct  (=> inline$$1_DiemSystem_remove_validator$0$$t27@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 0) (= 7 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (= inline$$1_DiemSystem_remove_validator$0$$t15@0 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t15@0) (= (ControlFlow 0 188791) 188127))) inline$$1_DiemSystem_remove_validator$0$L3_correct))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon25_Then_correct  (=> (and inline$$1_DiemSystem_remove_validator$0$$t23@0 (= inline$$1_DiemSystem_remove_validator$0$$t27@0 (= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 0))) (and (=> (= (ControlFlow 0 188139) 188791) inline$$1_DiemSystem_remove_validator$0$anon26_Then_correct) (=> (= (ControlFlow 0 188139) 188393) inline$$1_DiemSystem_remove_validator$0$anon26_Else_correct)))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon25_Else_correct  (=> (and (and (not inline$$1_DiemSystem_remove_validator$0$$t23@0) (= inline$$1_DiemSystem_remove_validator$0$$t25@0 inline$$1_DiemSystem_remove_validator$0$$t25@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t25@0) (= (ControlFlow 0 188121) 188127))) inline$$1_DiemSystem_remove_validator$0$L3_correct)))
(let ((inline$$1_DiemSystem_remove_validator$0$anon24_Else_correct  (=> (not inline$$1_DiemSystem_remove_validator$0$$t18@0) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| inline$$1_DiemSystem_remove_validator$0$$t4@0) (let ((inline$$1_DiemSystem_remove_validator$0$$range_0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_remove_validator$0$$t4@0)))))
(let ((inline$$1_DiemSystem_remove_validator$0$$range_1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_remove_validator$0$$t4@0)))))
(forall ((inline$$1_DiemSystem_remove_validator$0$$i_2 Int) (inline$$1_DiemSystem_remove_validator$0$$i_3 Int) ) (!  (=> ($InRange inline$$1_DiemSystem_remove_validator$0$$range_0 inline$$1_DiemSystem_remove_validator$0$$i_2) (=> ($InRange inline$$1_DiemSystem_remove_validator$0$$range_1 inline$$1_DiemSystem_remove_validator$0$$i_3) (let ((inline$$1_DiemSystem_remove_validator$0$i inline$$1_DiemSystem_remove_validator$0$$i_2))
(let ((inline$$1_DiemSystem_remove_validator$0$j inline$$1_DiemSystem_remove_validator$0$$i_3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_remove_validator$0$$t4@0) inline$$1_DiemSystem_remove_validator$0$i)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_remove_validator$0$$t4@0) inline$$1_DiemSystem_remove_validator$0$j))) (= inline$$1_DiemSystem_remove_validator$0$i inline$$1_DiemSystem_remove_validator$0$j))))))
 :qid |unknown.0:0|
 :skolemid |143|
))))) (=> (and (and (and (and (= inline$$1_DiemSystem_remove_validator$0$$t4@0 (let ((addr@@39 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@39)))) (= inline$$1_DiemSystem_remove_validator$0$$t4@0 inline$$1_DiemSystem_remove_validator$0$$t4@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t20@1 (|$validators#$1_DiemSystem_DiemSystem| inline$$1_DiemSystem_remove_validator$0$$t4@0)) (= inline$$1_DiemSystem_remove_validator$0$$t21@0 (seq.len inline$$1_DiemSystem_remove_validator$0$$t20@1)))) (and (and (|$IsValid'$1_Option_Option'u64''| inline$$1_DiemSystem_remove_validator$0$$t22@0) (<= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 1)) (=> (let ((inline$$1_DiemSystem_remove_validator$0$$range_0@@0 ($Range 0 inline$$1_DiemSystem_remove_validator$0$$t21@0)))
(forall ((inline$$1_DiemSystem_remove_validator$0$$i_1 Int) ) (!  (=> ($InRange inline$$1_DiemSystem_remove_validator$0$$range_0@@0 inline$$1_DiemSystem_remove_validator$0$$i_1) (let ((inline$$1_DiemSystem_remove_validator$0$i@@0 inline$$1_DiemSystem_remove_validator$0$$i_1))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth inline$$1_DiemSystem_remove_validator$0$$t20@1 inline$$1_DiemSystem_remove_validator$0$i@@0)) _$t3@@1))))
 :qid |unknown.0:0|
 :skolemid |144|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 0)))) (and (and (and (=> (let ((inline$$1_DiemSystem_remove_validator$0$$range_0@@1 ($Range 0 inline$$1_DiemSystem_remove_validator$0$$t21@0)))
(exists ((inline$$1_DiemSystem_remove_validator$0$$i_1@@0 Int) ) (!  (and ($InRange inline$$1_DiemSystem_remove_validator$0$$range_0@@1 inline$$1_DiemSystem_remove_validator$0$$i_1@@0) (let ((inline$$1_DiemSystem_remove_validator$0$i@@1 inline$$1_DiemSystem_remove_validator$0$$i_1@@0))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth inline$$1_DiemSystem_remove_validator$0$$t20@1 inline$$1_DiemSystem_remove_validator$0$i@@1)) _$t3@@1)))
 :qid |unknown.0:0|
 :skolemid |145|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 0)) (let ((inline$$1_DiemSystem_remove_validator$0$at (seq.nth (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0) 0)))
 (and (and (<= 0 inline$$1_DiemSystem_remove_validator$0$at) (< inline$$1_DiemSystem_remove_validator$0$at inline$$1_DiemSystem_remove_validator$0$$t21@0)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth inline$$1_DiemSystem_remove_validator$0$$t20@1 inline$$1_DiemSystem_remove_validator$0$at)) _$t3@@1))))) (= inline$$1_DiemSystem_remove_validator$0$$t22@0 inline$$1_DiemSystem_remove_validator$0$$t22@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t23@0  (not (= (seq.len (|$vec#$1_Option_Option'u64'| inline$$1_DiemSystem_remove_validator$0$$t22@0)) 0))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| inline$$1_DiemSystem_remove_validator$0$$t25@0) (= inline$$1_DiemSystem_remove_validator$0$$t25@0 7)) (and (= inline$$1_DiemSystem_remove_validator$0$$t25@0 inline$$1_DiemSystem_remove_validator$0$$t25@0) (= inline$$1_DiemSystem_remove_validator$0$$t23@0 inline$$1_DiemSystem_remove_validator$0$$t23@0))))) (and (=> (= (ControlFlow 0 188105) 188139) inline$$1_DiemSystem_remove_validator$0$anon25_Then_correct) (=> (= (ControlFlow 0 188105) 188121) inline$$1_DiemSystem_remove_validator$0$anon25_Else_correct)))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon24_Then_correct  (=> inline$$1_DiemSystem_remove_validator$0$$t18@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (= inline$$1_DiemSystem_remove_validator$0$$t15@0 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t15@0) (= (ControlFlow 0 188819) 188127))) inline$$1_DiemSystem_remove_validator$0$L3_correct))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon23_Else_correct  (=> (and (not inline$$1_DiemSystem_remove_validator$0$$t17@0) (= inline$$1_DiemSystem_remove_validator$0$$t18@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 187794) 188819) inline$$1_DiemSystem_remove_validator$0$anon24_Then_correct) (=> (= (ControlFlow 0 187794) 188105) inline$$1_DiemSystem_remove_validator$0$anon24_Else_correct)))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon23_Then_correct  (=> inline$$1_DiemSystem_remove_validator$0$$t17@0 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0@@1) 173345816)) (= 2 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_remove_validator$0$$t16@0)) (= 5 inline$$1_DiemSystem_remove_validator$0$$t15@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_remove_validator$0$$t16@0)) 0)) (= 3 inline$$1_DiemSystem_remove_validator$0$$t15@0))) (and (not (= (|$addr#$signer| _$t0@@1) 173345816)) (= 2 inline$$1_DiemSystem_remove_validator$0$$t15@0))) (= inline$$1_DiemSystem_remove_validator$0$$t15@0 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t15@0) (= (ControlFlow 0 188911) 188127))) inline$$1_DiemSystem_remove_validator$0$L3_correct))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon22_Else_correct  (=> (not inline$$1_DiemSystem_remove_validator$0$$t14@0) (=> (and (= inline$$1_DiemSystem_remove_validator$0$$t16@0 (|$addr#$signer| _$t0@@1)) (= inline$$1_DiemSystem_remove_validator$0$$t17@0  (or (or (or (not (= (|$addr#$signer| _$t0@@1) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_remove_validator$0$$t16@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) inline$$1_DiemSystem_remove_validator$0$$t16@0)) 0))) (not (= (|$addr#$signer| _$t0@@1) 173345816))))) (and (=> (= (ControlFlow 0 187774) 188911) inline$$1_DiemSystem_remove_validator$0$anon23_Then_correct) (=> (= (ControlFlow 0 187774) 187794) inline$$1_DiemSystem_remove_validator$0$anon23_Else_correct))))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon22_Then_correct  (=> inline$$1_DiemSystem_remove_validator$0$$t14@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (= inline$$1_DiemSystem_remove_validator$0$$t15@0 inline$$1_DiemSystem_remove_validator$0$$t15@0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t15@1 inline$$1_DiemSystem_remove_validator$0$$t15@0) (= (ControlFlow 0 188937) 188127))) inline$$1_DiemSystem_remove_validator$0$L3_correct))))
(let ((inline$$1_DiemSystem_remove_validator$0$anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_112865| inline$$1_DiemSystem_remove_validator$0$$t28@0)) 0) (= (seq.len (|p#$Mutation_84935| inline$$1_DiemSystem_remove_validator$0$$t29@0)) 0)) (and (= inline$$1_DiemSystem_remove_validator$0$$t7@0 (|$addr#$signer| _$t0@@1)) (= inline$$1_DiemSystem_remove_validator$0$$t8@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816)))) (=> (and (and (and (= inline$$1_DiemSystem_remove_validator$0$$t9@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_DiemSystem_remove_validator$0$$t10@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@40 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@40)))))) (and (= inline$$1_DiemSystem_remove_validator$0$$t11@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816)) (= inline$$1_DiemSystem_remove_validator$0$$t12@0 (|$events#$1_DiemConfig_Configuration| inline$$1_DiemSystem_remove_validator$0$$t11@0)))) (and (and (= inline$$1_DiemSystem_remove_validator$0$$t13@0 (|$addr#$signer| _$t0@@1)) (= _$t0@@1 _$t0@@1)) (and (= _$t3@@1 _$t3@@1) (= inline$$1_DiemSystem_remove_validator$0$$t14@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 187702) 188937) inline$$1_DiemSystem_remove_validator$0$anon22_Then_correct) (=> (= (ControlFlow 0 187702) 187774) inline$$1_DiemSystem_remove_validator$0$anon22_Else_correct))))))
(let ((anon13_Then_correct@@0  (=> $t16@0@@0 (=> (and (and (and (= $t18@@0 (|$addr#$signer| _$t0@@1)) (= $t19@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t20@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t21@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@41 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@41))))))) (and (and (= $t22@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t23@@0 (|$events#$1_DiemConfig_Configuration| $t22@@0))) (and (= $t24@@0 (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 188941) 187702)))) inline$$1_DiemSystem_remove_validator$0$anon0_correct))))
(let ((anon13_Else_correct@@0  (=> (not $t16@0@@0) (=> (and (and (|$IsValid'u64'| 0) (= 0 0)) (and (= $t13@0@@0 0) (= (ControlFlow 0 185485) 186013))) L3_correct@@0))))
(let ((anon12_Else_correct@@0  (=> (not $t15@@0) (=> (and (and (|$IsValid'vec'u8''| $t14@@0) (= $t14@@0 (let ((t_ref@@22 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@22)))) (and (= $t16@0@@0 (= $t14@@0 _$t2@@1)) (= $t16@0@@0 $t16@0@@0))) (and (=> (= (ControlFlow 0 185463) 188941) anon13_Then_correct@@0) (=> (= (ControlFlow 0 185463) 185485) anon13_Else_correct@@0))))))
(let ((anon12_Then_correct@@0  (=> $t15@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)) (= 5 $t13@@0)) (= $t13@@0 $t13@@0)) (and (= $t13@0@@0 $t13@@0) (= (ControlFlow 0 189421) 186013))) L3_correct@@0))))
(let ((anon11_Else_correct@@0  (=> (and (not $abort_flag@0@@0) (= $t15@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t3@@1)))) (and (=> (= (ControlFlow 0 185431) 189421) anon12_Then_correct@@0) (=> (= (ControlFlow 0 185431) 185463) anon12_Else_correct@@0)))))
(let ((anon11_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t13@0@@0 $abort_code@1@@0) (= (ControlFlow 0 189435) 186013))) L3_correct@@0)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0  (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0)) (and (=> (= (ControlFlow 0 185355) 189435) anon11_Then_correct@@0) (=> (= (ControlFlow 0 185355) 185431) anon11_Else_correct@@0)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@0  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= (ControlFlow 0 185349) 185355))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@0  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@1))) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0) (= (ControlFlow 0 185405) 185355))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@0  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 (=> (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0)) (and (=> (= (ControlFlow 0 185361) 189435) anon11_Then_correct@@0) (=> (= (ControlFlow 0 185361) 185431) anon11_Else_correct@@0))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0  (=> (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0) (=> (and (and (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 ($1_SlidingNonce_spec_try_record_nonce _$t0@@1 _$t1@@1)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0)))) (and (=> (= (ControlFlow 0 185333) 185361) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 185333) 185349) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@0))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@0  (=> (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1@@0 ($Memory_110138 (|Store__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@1) false) (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory))) (= (ControlFlow 0 185275) 185333)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@0  (=> |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0@@0 ($Memory_110138 (|Store__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@1) |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@0|))) (= (ControlFlow 0 185375) 185333)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@0  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0) (and (=> (= (ControlFlow 0 185261) 185375) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 185261) 185275) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@0)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@0  (=> (= _$t0@@1 _$t0@@1) (=> (and (= _$t1@@1 _$t1@@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@1))))) (and (=> (= (ControlFlow 0 185255) 185405) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@0) (=> (= (ControlFlow 0 185255) 185261) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@0))))))
(let ((anon0$1_correct@@1  (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@42) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@42)) 4))))
 :qid |ValidatorAdministrationScriptsandybpl.14074:20|
 :skolemid |228|
))) (and (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@43) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@43)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.14078:20|
 :skolemid |229|
)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@44) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@44)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.14082:20|
 :skolemid |230|
)))) (and (and (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@45) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@45)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@45)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.14086:20|
 :skolemid |231|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))))) (=> (and (and (and (and (and (and (and (forall ((config_address@@4 Int) ) (!  (=> (|$IsValid'address'| config_address@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@4) (= config_address@@4 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.14102:24|
 :skolemid |232|
)) (forall ((config_address@@5 Int) ) (!  (=> (|$IsValid'address'| config_address@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110654| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@5) (= config_address@@5 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.14102:243|
 :skolemid |233|
))) (forall ((config_address@@6 Int) ) (!  (=> (|$IsValid'address'| config_address@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110735| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@6) (= config_address@@6 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.14102:483|
 :skolemid |234|
))) (forall ((config_address@@7 Int) ) (!  (=> (|$IsValid'address'| config_address@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110816| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@7) (= config_address@@7 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.14102:745|
 :skolemid |235|
))) (forall ((config_address@@8 Int) ) (!  (=> (|$IsValid'address'| config_address@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110897| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@8) (= config_address@@8 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.14102:969|
 :skolemid |236|
))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112625| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0@@17 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@46 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@46))))))))
(forall (($i_1@@17 Int) ) (!  (=> ($InRange $range_0@@17 $i_1@@17) (let ((i1@@1 $i_1@@17))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@47 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@47)))) i1@@1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@47 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@47)))) i1@@1)))) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.14110:151|
 :skolemid |237|
)))) (and (let (($range_0@@18 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@48 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@48))))))))
(forall (($i_1@@18 Int) ) (!  (=> ($InRange $range_0@@18 $i_1@@18) (let ((i1@@2 $i_1@@18))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@49 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@49)))) i1@@2)) 1)))
 :qid |ValidatorAdministrationScriptsandybpl.14115:151|
 :skolemid |238|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@1))))) (and (and (and (|$IsValid'u64'| _$t1@@1) (|$IsValid'vec'u8''| _$t2@@1)) (and (|$IsValid'address'| _$t3@@1) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@8)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@8))
 :qid |ValidatorAdministrationScriptsandybpl.14131:20|
 :skolemid |239|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@8))
)))) (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |ValidatorAdministrationScriptsandybpl.14135:20|
 :skolemid |240|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@10)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@10) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@10))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@10))) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.14139:20|
 :skolemid |241|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@10))
))) (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@11)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@11))
 :qid |ValidatorAdministrationScriptsandybpl.14143:20|
 :skolemid |242|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@11))
)) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) $a_0@@12)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@12))
 :qid |ValidatorAdministrationScriptsandybpl.14147:20|
 :skolemid |243|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) $a_0@@12))
)))))) (and (and (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@13)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@13))
 :qid |ValidatorAdministrationScriptsandybpl.14151:20|
 :skolemid |244|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@14)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@14) (let (($range_1@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@14))))))
(let (($range_2@@2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@14))))))
(forall (($i_3@@2 Int) ($i_4@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_3@@2) (=> ($InRange $range_2@@2 $i_4@@0) (let ((i@@44 $i_3@@2))
(let ((j@@11 $i_4@@0))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@14)) i@@44)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@14)) j@@11))) (= i@@44 j@@11))))))
 :qid |ValidatorAdministrationScriptsandybpl.14156:367|
 :skolemid |245|
))))))
 :qid |ValidatorAdministrationScriptsandybpl.14155:20|
 :skolemid |246|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@14))
))) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_112625| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@15)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@15))
 :qid |ValidatorAdministrationScriptsandybpl.14161:20|
 :skolemid |247|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_112625| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@15))
)) (= $t6@@1 (|$addr#$signer| _$t0@@1)))) (and (and (= $t7@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t8@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t9@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@50 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@50))))) (= $t10@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))))) (and (and (and (= $t11@@0 (|$events#$1_DiemConfig_Configuration| $t10@@0)) (= $t12@@0 (|$addr#$signer| _$t0@@1))) (and (let ((addr@@51 (|$addr#$signer| _$t0@@1)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141183| $1_DiemAccount_DiemAccount_$memory) addr@@51)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@51) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@51)))))) (= _$t0@@1 _$t0@@1))) (and (and (= _$t1@@1 _$t1@@1) (= _$t2@@1 _$t2@@1)) (and (= _$t3@@1 _$t3@@1) (= (ControlFlow 0 185409) 185255)))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@0))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_76332| stream@@10) 0) (forall ((v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@10) v@@59) 0)
 :qid |ValidatorAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 184103) 185409)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 255434) 184103) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1)))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 255434)))
(get-value ((ControlFlow 0 184103)))
(get-value ((ControlFlow 0 185409)))
(get-value ((ControlFlow 0 185255)))
(get-value ((ControlFlow 0 185261)))
(get-value ((ControlFlow 0 185375)))
(get-value ((ControlFlow 0 185333)))
(get-value ((ControlFlow 0 185361)))
(get-value ((ControlFlow 0 185431)))
(get-value ((ControlFlow 0 185463)))
(get-value ((ControlFlow 0 188941)))
(get-value ((ControlFlow 0 187702)))
(get-value ((ControlFlow 0 187774)))
(get-value ((ControlFlow 0 187794)))
(get-value ((ControlFlow 0 188105)))
(get-value ((ControlFlow 0 188139)))
(get-value ((ControlFlow 0 188393)))
(get-value ((ControlFlow 0 188301)))
(get-value ((ControlFlow 0 188333)))
(get-value ((ControlFlow 0 188521)))
(get-value ((ControlFlow 0 188527)))
(get-value ((ControlFlow 0 188677)))
(get-value ((ControlFlow 0 188665)))
(get-value ((ControlFlow 0 188653)))
(get-value ((ControlFlow 0 189379)))
(assert (not (= (ControlFlow 0 189379) (- 259025))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 255434)))
(get-value ((ControlFlow 0 184103)))
(get-value ((ControlFlow 0 185409)))
(get-value ((ControlFlow 0 185255)))
(get-value ((ControlFlow 0 185261)))
(get-value ((ControlFlow 0 185375)))
(get-value ((ControlFlow 0 185333)))
(get-value ((ControlFlow 0 185361)))
(get-value ((ControlFlow 0 185431)))
(get-value ((ControlFlow 0 185463)))
(get-value ((ControlFlow 0 188941)))
(get-value ((ControlFlow 0 187702)))
(get-value ((ControlFlow 0 187774)))
(get-value ((ControlFlow 0 187794)))
(get-value ((ControlFlow 0 188105)))
(get-value ((ControlFlow 0 188139)))
(get-value ((ControlFlow 0 188393)))
(get-value ((ControlFlow 0 188301)))
(get-value ((ControlFlow 0 188333)))
(get-value ((ControlFlow 0 188521)))
(get-value ((ControlFlow 0 188527)))
(get-value ((ControlFlow 0 188677)))
(get-value ((ControlFlow 0 188665)))
(get-value ((ControlFlow 0 188653)))
(get-value ((ControlFlow 0 189379)))
(assert (not (= (ControlFlow 0 189379) (- 259091))))
(check-sat)
(pop 1)
; Invalid
(declare-fun _$t0@@2 () T@$signer)
(declare-fun _$t1@@2 () Int)
(declare-fun _$t2@@2 () (Seq Int))
(declare-fun $t7@@1 () Int)
(declare-fun $t5@@0 () Bool)
(declare-fun $t8@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@1 () Int)
(declare-fun $t13@@1 () Int)
(declare-fun $t22@@1 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@2@@0 () T@$Memory_108378)
(declare-fun $t15@@1 () Int)
(declare-fun $t14@@1 () Bool)
(declare-fun $t17 () T@$1_DiemConfig_Configuration)
(declare-fun $t18@@1 () Int)
(declare-fun $t12@@1 () Bool)
(declare-fun $t23@@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| () T@$Memory_110573)
(declare-fun $t24@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@1 () T@$Memory_111090)
(declare-fun $t25@@1 () Int)
(declare-fun $t26@@1 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t16 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t27@@1 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t28@@1 () T@$1_Event_EventHandle)
(declare-fun $t21@@1 () T@$1_Event_EventHandle)
(declare-fun $t29 () Bool)
(declare-fun $t19@@1 () Bool)
(declare-fun $t20@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun $t30 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t31 () T@$1_DiemConfig_Configuration)
(declare-fun $t32 () Int)
(declare-fun $t33 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t6@@2 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun _$t3@@2 () (Seq Int))
(declare-fun _$t4@@0 () (Seq Int))
(declare-fun $t10@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t11@@1 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1| () T@$Memory_110573)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1| () T@$Memory_110573)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@1 () T@$Memory_111090)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@1 () T@$Memory_111090)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1@@0 () T@$Memory_108378)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@0 () T@$Memory_108378)
(declare-fun |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0@@0| () T@$1_ValidatorConfig_ValidatorConfig)
(push 1)
(set-info :boogie-vc-id $1_ValidatorAdministrationScripts_set_validator_config_and_reconfigure$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 259199) (let ((L2_correct  (and (=> (= (ControlFlow 0 192912) (- 0 261772)) (or (or (or (or (or (or (or (or (or (or (or (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@23 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@23)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2))) (not (= (let ((t_ref@@24 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@24)) 0)) $t7@@1))) (not (let (($range_0@@19 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@52 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@52))))))
(exists (($i_1@@19 Int) ) (!  (and (and (>= $i_1@@19 0) (< $i_1@@19 (seq.len $range_0@@19))) (let ((v@@60 (seq.nth $range_0@@19 $i_1@@19)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@60) _$t1@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@1)) 4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2))) (and $t5@@0 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@1) 18446744073709551615)) (< $t9@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@1))))) (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@25 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@25)) 0)))))) (=> (or (or (or (or (or (or (or (or (or (or (or (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@26 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@26)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2))) (not (= (let ((t_ref@@27 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@27)) 0)) $t7@@1))) (not (let (($range_0@@20 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@53 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@53))))))
(exists (($i_1@@20 Int) ) (!  (and (and (>= $i_1@@20 0) (< $i_1@@20 (seq.len $range_0@@20))) (let ((v@@61 (seq.nth $range_0@@20 $i_1@@20)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@61) _$t1@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@1)) 4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2))) (and $t5@@0 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@1) 18446744073709551615)) (< $t9@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@1))))) (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@28 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@28)) 0))))) (=> (= (ControlFlow 0 192912) (- 0 261921)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@29 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@29)) 0)))) (= 7 $t13@@1)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2)) (= 7 $t13@@1))) (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))) 0))) (= 7 $t13@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)) (= 5 $t13@@1))) (and (not (= (let ((t_ref@@30 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@30)) 0)) $t7@@1)) (= 7 $t13@@1))) (and (not (let (($range_0@@21 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@54 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@54))))))
(exists (($i_1@@21 Int) ) (!  (and (and (>= $i_1@@21 0) (< $i_1@@21 (seq.len $range_0@@21))) (let ((v@@62 (seq.nth $range_0@@21 $i_1@@21)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@62) _$t1@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
)))) (= 7 $t13@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t13@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@1)) (= 5 $t13@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@1)) 4)) (= 3 $t13@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)) (= 5 $t13@@1))) (and (and $t5@@0 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@1) 18446744073709551615)) (< $t9@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@1)))) (= 1 $t13@@1))) (and (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@31 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@31)) 0)))) (= 7 $t13@@1))) (= 5 $t13@@1)) (= 3 $t13@@1)) (= 7 $t13@@1)) (= 1 $t13@@1)))))))
(let ((anon17_Then_correct  (=> (and (and $t22@@1 (or (or (or (or (or (or (or (or (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2)))) 0))) (= 7 $t13@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2)) (= 5 $t13@@1))) (and (not (= (let ((t_ref@@32 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@32)) 0)) $t15@@1)) (= 7 $t13@@1))) (and (not (let (($range_0@@22 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@55 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@55))))))
(exists (($i_1@@22 Int) ) (!  (and (and (>= $i_1@@22 0) (< $i_1@@22 (seq.len $range_0@@22))) (let ((v@@63 (seq.nth $range_0@@22 $i_1@@22)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@63) _$t1@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
)))) (= 7 $t13@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t13@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t15@@1)) (= 5 $t13@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t15@@1)) 4)) (= 3 $t13@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2)) (= 5 $t13@@1))) (and (and $t14@@1 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t17) 18446744073709551615)) (< $t18@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t17)))) (= 1 $t13@@1)))) (and (= $t13@@1 $t13@@1) (= (ControlFlow 0 192432) 192912))) L2_correct)))
(let ((anon15_Then_correct  (=> (and (and $t12@@1 (or (or (or (and (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@33 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@33)) 0)))) (= 7 $t13@@1)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2)) (= 7 $t13@@1))) (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))) 0))) (= 7 $t13@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)) (= 5 $t13@@1)))) (and (= $t13@@1 $t13@@1) (= (ControlFlow 0 193010) 192912))) L2_correct)))
(let ((anon13_correct  (=> (and (= $t23@@1 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@56 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) addr@@56))))) (= $t24@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory@2@@1) 173345816))) (=> (and (and (and (and (= $t25@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t26@@1 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t24@@1)))) (and (= (seq.len $t23@@1) (seq.len $t16)) (let (($range_0@@23 ($Range 0 (seq.len $t16))))
(forall (($i_1@@23 Int) ) (!  (=> ($InRange $range_0@@23 $i_1@@23) (let ((i@@45 $i_1@@23))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t23@@1 i@@45)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t16 i@@45)))))
 :qid |ValidatorAdministrationScriptsandybpl.14841:62|
 :skolemid |272|
))))) (and (and (let (($range_0@@24 ($Range 0 (seq.len $t16))))
(forall (($i_1@@24 Int) ) (!  (=> ($InRange $range_0@@24 $i_1@@24) (let ((i@@46 $i_1@@24))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t16 i@@46)) _$t1@@2)) (= (seq.nth $t23@@1 i@@46) (seq.nth $t16 i@@46)))))
 :qid |ValidatorAdministrationScriptsandybpl.14845:62|
 :skolemid |273|
))) (let (($range_0@@25 ($Range 0 (seq.len $t16))))
(forall (($i_1@@25 Int) ) (!  (=> ($InRange $range_0@@25 $i_1@@25) (let ((i@@47 $i_1@@25))
 (or (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t23@@1 i@@47)) (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t16 i@@47))) (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t16 i@@47)) _$t1@@2) (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t23@@1 i@@47)) (let ((config (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2))))
(seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| config) 0)))))))
 :qid |ValidatorAdministrationScriptsandybpl.14849:62|
 :skolemid |274|
)))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) _$t1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) _$t1@@2)) 3)))) (and (and (and (= $t27@@1 $t26@@1) (= $t28@@1 $t21@@1)) (and (= $t29  (and $t19@@1 (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t25@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t20@@1)))))) (= $es@0@@1 (ite $t29 (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) $t28@@1)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_76332| stream@@11)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t27@@1))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t27@@1) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) $t28@@1 stream_new@@7)))) $es)))) (and (and (= $t30 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@57 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) addr@@57))))) (= $t31 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory@2@@1) 173345816))) (and (= $t32 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t33 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t31))))))) (and (=> (= (ControlFlow 0 192192) (- 0 261267)) (not (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@34 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@34)) 0)))))) (=> (not (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@35 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@35)) 0))))) (and (=> (= (ControlFlow 0 192192) (- 0 261283)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2))) (and (=> (= (ControlFlow 0 192192) (- 0 261293)) (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))) 0))))) (=> (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))) 0)))) (and (=> (= (ControlFlow 0 192192) (- 0 261304)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2))) (and (=> (= (ControlFlow 0 192192) (- 0 261315)) (not (not (= (let ((t_ref@@36 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@36)) 0)) $t7@@1)))) (=> (not (not (= (let ((t_ref@@37 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@37)) 0)) $t7@@1))) (and (=> (= (ControlFlow 0 192192) (- 0 261330)) (not (not (let (($range_0@@26 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@58 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@58))))))
(exists (($i_1@@26 Int) ) (!  (and (and (>= $i_1@@26 0) (< $i_1@@26 (seq.len $range_0@@26))) (let ((v@@64 (seq.nth $range_0@@26 $i_1@@26)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@64) _$t1@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
)))))) (=> (not (not (let (($range_0@@27 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@59 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@59))))))
(exists (($i_1@@27 Int) ) (!  (and (and (>= $i_1@@27 0) (< $i_1@@27 (seq.len $range_0@@27))) (let ((v@@65 (seq.nth $range_0@@27 $i_1@@27)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@65) _$t1@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
))))) (and (=> (= (ControlFlow 0 192192) (- 0 261341)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 192192) (- 0 261351)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@1))) (and (=> (= (ControlFlow 0 192192) (- 0 261363)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@1)) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@1)) 4))) (and (=> (= (ControlFlow 0 192192) (- 0 261381)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2))) (and (=> (= (ControlFlow 0 192192) (- 0 261392)) (not (and $t5@@0 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@1) 18446744073709551615)) (< $t9@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@1)))))) (=> (not (and $t5@@0 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@1) 18446744073709551615)) (< $t9@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@1))))) (and (=> (= (ControlFlow 0 192192) (- 0 261438)) (not (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@38 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@38)) 0)))))) (=> (not (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@39 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@39)) 0))))) (and (=> (= (ControlFlow 0 192192) (- 0 261454)) (= (seq.len $t30) (seq.len $t6@@2))) (=> (= (seq.len $t30) (seq.len $t6@@2)) (and (=> (= (ControlFlow 0 192192) (- 0 261467)) (let (($range_0@@28 ($Range 0 (seq.len $t6@@2))))
(forall (($i_1@@28 Int) ) (!  (=> ($InRange $range_0@@28 $i_1@@28) (let ((i@@48 $i_1@@28))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t30 i@@48)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t6@@2 i@@48)))))
 :qid |ValidatorAdministrationScriptsandybpl.14959:56|
 :skolemid |275|
)))) (=> (let (($range_0@@29 ($Range 0 (seq.len $t6@@2))))
(forall (($i_1@@29 Int) ) (!  (=> ($InRange $range_0@@29 $i_1@@29) (let ((i@@49 $i_1@@29))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t30 i@@49)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t6@@2 i@@49)))))
 :qid |ValidatorAdministrationScriptsandybpl.14959:56|
 :skolemid |275|
))) (and (=> (= (ControlFlow 0 192192) (- 0 261513)) (let (($range_0@@30 ($Range 0 (seq.len $t6@@2))))
(forall (($i_1@@30 Int) ) (!  (=> ($InRange $range_0@@30 $i_1@@30) (let ((i@@50 $i_1@@30))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t6@@2 i@@50)) _$t1@@2)) (= (seq.nth $t30 i@@50) (seq.nth $t6@@2 i@@50)))))
 :qid |ValidatorAdministrationScriptsandybpl.14965:56|
 :skolemid |276|
)))) (=> (let (($range_0@@31 ($Range 0 (seq.len $t6@@2))))
(forall (($i_1@@31 Int) ) (!  (=> ($InRange $range_0@@31 $i_1@@31) (let ((i@@51 $i_1@@31))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t6@@2 i@@51)) _$t1@@2)) (= (seq.nth $t30 i@@51) (seq.nth $t6@@2 i@@51)))))
 :qid |ValidatorAdministrationScriptsandybpl.14965:56|
 :skolemid |276|
))) (and (=> (= (ControlFlow 0 192192) (- 0 261570)) (let (($range_0@@32 ($Range 0 (seq.len $t6@@2))))
(forall (($i_1@@32 Int) ) (!  (=> ($InRange $range_0@@32 $i_1@@32) (let ((i@@52 $i_1@@32))
 (or (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t30 i@@52)) (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t6@@2 i@@52))) (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t6@@2 i@@52)) _$t1@@2) (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t30 i@@52)) (let ((config@@0 (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2))))
(seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| config@@0) 0)))))))
 :qid |ValidatorAdministrationScriptsandybpl.14971:56|
 :skolemid |277|
)))) (=> (let (($range_0@@33 ($Range 0 (seq.len $t6@@2))))
(forall (($i_1@@33 Int) ) (!  (=> ($InRange $range_0@@33 $i_1@@33) (let ((i@@53 $i_1@@33))
 (or (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t30 i@@53)) (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t6@@2 i@@53))) (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t6@@2 i@@53)) _$t1@@2) (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t30 i@@53)) (let ((config@@1 (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2))))
(seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| config@@1) 0)))))))
 :qid |ValidatorAdministrationScriptsandybpl.14971:56|
 :skolemid |277|
))) (and (=> (= (ControlFlow 0 192192) (- 0 261645)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) _$t1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) _$t1@@2)) 3))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) _$t1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) _$t1@@2)) 3)) (and (=> (= (ControlFlow 0 192192) (- 0 261653)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2)))) 0))) (and (=> (= (ControlFlow 0 192192) (- 0 261660)) (= (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2))) 0) ($1_ValidatorConfig_Config _$t2@@2 _$t3@@2 _$t4@@0))) (=> (= (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2))) 0) ($1_ValidatorConfig_Config _$t2@@2 _$t3@@2 _$t4@@0)) (and (=> (= (ControlFlow 0 192192) (- 0 261674)) (let ((actual@@5 ($EventStore (- (|counter#$EventStore| $es@0@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@1) (|streams#$EventStore| $es)))))
(let ((expected@@5 (ite  (and $t5@@0 (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t32 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@1))))) (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@1)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_76332| stream@@12)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@12) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t33))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@12) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t33) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@1 stream_new@@8)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@5) (|counter#$EventStore| actual@@5)) (forall ((handle@@10 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@5) handle@@10)) (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@5) handle@@10))) (forall ((v@@66 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@5) handle@@10)) v@@66) (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@5) handle@@10)) v@@66))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2739:13|
 :skolemid |75|
)))))) (=> (let ((actual@@6 ($EventStore (- (|counter#$EventStore| $es@0@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@1) (|streams#$EventStore| $es)))))
(let ((expected@@6 (ite  (and $t5@@0 (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t32 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@1))))) (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@1)))
(let ((stream_new@@9 (let ((len@@9 (|l#Multiset_76332| stream@@13)))
(let ((cnt@@9 (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@13) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t33))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@13) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t33) (+ cnt@@9 1)) (+ len@@9 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@1 stream_new@@9)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@6) (|counter#$EventStore| actual@@6)) (forall ((handle@@11 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@6) handle@@11)) (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@6) handle@@11))) (forall ((v@@67 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@6) handle@@11)) v@@67) (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@6) handle@@11)) v@@67))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2739:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 192192) (- 0 261723)) (let ((actual@@7 ($EventStore (- (|counter#$EventStore| $es@0@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@1) (|streams#$EventStore| $es)))))
(let ((expected@@7 (ite  (and $t5@@0 (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t32 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t10@@1))))) (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@1)))
(let ((stream_new@@10 (let ((len@@10 (|l#Multiset_76332| stream@@14)))
(let ((cnt@@10 (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@14) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t33))))
(Multiset_76332 (|Store__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@14) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t33) (+ cnt@@10 1)) (+ len@@10 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $EmptyEventStore) $t11@@1 stream_new@@10)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@7) (|counter#$EventStore| expected@@7)) (forall ((handle@@12 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@7) handle@@12)) (|l#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@7) handle@@12))) (forall ((v@@68 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| actual@@7) handle@@12)) v@@68) (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| expected@@7) handle@@12)) v@@68))
 :qid |ValidatorAdministrationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |ValidatorAdministrationScriptsandybpl.2739:13|
 :skolemid |75|
))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon19_Else_correct  (=> (and (and (not |$temp_0'bool'@2|) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1| ($Memory_110573 (|Store__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1|) (= (ControlFlow 0 191330) 192192))) anon13_correct)))
(let ((anon19_Then_correct  (=> (and (and |$temp_0'bool'@2| (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1| ($Memory_110573 (|Store__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1|) (= (ControlFlow 0 192204) 192192))) anon13_correct)))
(let ((anon18_Else_correct  (=> (not |$temp_0'bool'@1|) (=> (and (= $1_DiemConfig_Configuration_$memory@1@@1 ($Memory_111090 (|Store__T@[Int]Bool_| (|domain#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2@@1 $1_DiemConfig_Configuration_$memory@1@@1)) (and (=> (= (ControlFlow 0 191316) 192204) anon19_Then_correct) (=> (= (ControlFlow 0 191316) 191330) anon19_Else_correct))))))
(let ((anon18_Then_correct  (=> |$temp_0'bool'@1| (=> (and (= $1_DiemConfig_Configuration_$memory@0@@1 ($Memory_111090 (|Store__T@[Int]Bool_| (|domain#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0|))) (= $1_DiemConfig_Configuration_$memory@2@@1 $1_DiemConfig_Configuration_$memory@0@@1)) (and (=> (= (ControlFlow 0 192216) 192204) anon19_Then_correct) (=> (= (ControlFlow 0 192216) 191330) anon19_Else_correct))))))
(let ((anon17_Else_correct  (=> (not $t22@@1) (and (=> (= (ControlFlow 0 191304) 192216) anon18_Then_correct) (=> (= (ControlFlow 0 191304) 191316) anon18_Else_correct)))))
(let ((anon5_correct@@0  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2)))) 0))) (and (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2) ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (seq.unit ($1_ValidatorConfig_Config _$t2@@2 _$t3@@2 _$t4@@0))) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))) (= $t14@@1  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2)))) 0))) (let (($range_0@@34 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@60 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@60))))))
(exists (($i_1@@34 Int) ) (!  (and (and (>= $i_1@@34 0) (< $i_1@@34 (seq.len $range_0@@34))) (let ((v_info (seq.nth $range_0@@34 $i_1@@34)))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| v_info) _$t1@@2) (not (= (|$config#$1_DiemSystem_ValidatorInfo| v_info) (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2))) 0))))))
 :qid |ValidatorAdministrationScriptsandybpl.14746:223|
 :skolemid |270|
))))))) (=> (and (and (and (= $t15@@1 (|$addr#$signer| _$t0@@2)) (= $t16 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@61 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@61)))))) (and (= $t17 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t18@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (and (= $t19@@1  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2)))) 0))) (let (($range_0@@35 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@62 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@62))))))
(exists (($i_1@@35 Int) ) (!  (and (and (>= $i_1@@35 0) (< $i_1@@35 (seq.len $range_0@@35))) (let ((v_info@@0 (seq.nth $range_0@@35 $i_1@@35)))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| v_info@@0) _$t1@@2) (not (= (|$config#$1_DiemSystem_ValidatorInfo| v_info@@0) (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2))) 0))))))
 :qid |ValidatorAdministrationScriptsandybpl.14767:223|
 :skolemid |271|
))))) (= $t20@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t21@@1 (|$events#$1_DiemConfig_Configuration| $t20@@1)) (= $t22@@1  (or (or (or (or (or (or (or (or (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2))) (not (= (let ((t_ref@@40 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@40)) 0)) $t15@@1))) (not (let (($range_0@@36 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@63 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@63))))))
(exists (($i_1@@36 Int) ) (!  (and (and (>= $i_1@@36 0) (< $i_1@@36 (seq.len $range_0@@36))) (let ((v@@69 (seq.nth $range_0@@36 $i_1@@36)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@69) _$t1@@2)))
 :qid |ValidatorAdministrationScriptsandybpl.4990:125|
 :skolemid |137|
))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t15@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t15@@1)) 4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@2@@0) _$t1@@2))) (and $t14@@1 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t17) 18446744073709551615)) (< $t18@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t17))))))))) (and (=> (= (ControlFlow 0 191298) 192432) anon17_Then_correct) (=> (= (ControlFlow 0 191298) 191304) anon17_Else_correct))))))
(let ((anon16_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_ValidatorConfig_ValidatorConfig_$memory@1@@0 ($Memory_108378 (|Store__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2 false) (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory)))) (and (= $1_ValidatorConfig_ValidatorConfig_$memory@2@@0 $1_ValidatorConfig_ValidatorConfig_$memory@1@@0) (= (ControlFlow 0 190934) 191298))) anon5_correct@@0)))
(let ((anon16_Then_correct  (=> (and (and |$temp_0'bool'@0@@0| (= $1_ValidatorConfig_ValidatorConfig_$memory@0@@0 ($Memory_108378 (|Store__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2 true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2 |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0@@0|)))) (and (= $1_ValidatorConfig_ValidatorConfig_$memory@2@@0 $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) (= (ControlFlow 0 192924) 191298))) anon5_correct@@0)))
(let ((anon15_Else_correct  (=> (not $t12@@1) (and (=> (= (ControlFlow 0 190922) 192924) anon16_Then_correct) (=> (= (ControlFlow 0 190922) 190934) anon16_Else_correct)))))
(let ((anon0$1_correct@@2  (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@64) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@64)) 4))))
 :qid |ValidatorAdministrationScriptsandybpl.14539:20|
 :skolemid |250|
))) (and (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@65) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@65)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.14543:20|
 :skolemid |251|
)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@66) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@66)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.14547:20|
 :skolemid |252|
)))) (and (and (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@67) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@67)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@67)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.14551:20|
 :skolemid |253|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))))) (=> (and (and (and (and (and (and (and (and (forall ((config_address@@9 Int) ) (!  (=> (|$IsValid'address'| config_address@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@9) (= config_address@@9 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.14567:24|
 :skolemid |254|
)) (forall ((config_address@@10 Int) ) (!  (=> (|$IsValid'address'| config_address@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110654| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@10) (= config_address@@10 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.14567:243|
 :skolemid |255|
))) (forall ((config_address@@11 Int) ) (!  (=> (|$IsValid'address'| config_address@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110735| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@11) (= config_address@@11 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.14567:483|
 :skolemid |256|
))) (forall ((config_address@@12 Int) ) (!  (=> (|$IsValid'address'| config_address@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110816| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@12) (= config_address@@12 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.14567:745|
 :skolemid |257|
))) (forall ((config_address@@13 Int) ) (!  (=> (|$IsValid'address'| config_address@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110897| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@13) (= config_address@@13 173345816)))
 :qid |ValidatorAdministrationScriptsandybpl.14567:969|
 :skolemid |258|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112625| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (and (let (($range_0@@37 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@68 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@68))))))))
(forall (($i_1@@37 Int) ) (!  (=> ($InRange $range_0@@37 $i_1@@37) (let ((i1@@3 $i_1@@37))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@69 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@69)))) i1@@3))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@69 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@69)))) i1@@3)))) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.14575:151|
 :skolemid |259|
))) (let (($range_0@@38 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@70 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@70))))))))
(forall (($i_1@@38 Int) ) (!  (=> ($InRange $range_0@@38 $i_1@@38) (let ((i1@@4 $i_1@@38))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@71 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@71)))) i1@@4)) 1)))
 :qid |ValidatorAdministrationScriptsandybpl.14580:151|
 :skolemid |260|
)))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@2)) (|$IsValid'address'| _$t1@@2)))) (and (and (and (|$IsValid'vec'u8''| _$t2@@2) (|$IsValid'vec'u8''| _$t3@@2)) (and (|$IsValid'vec'u8''| _$t4@@0) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@16)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@16))
 :qid |ValidatorAdministrationScriptsandybpl.14599:20|
 :skolemid |261|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@16))
)))) (and (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $a_0@@17)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@17))
 :qid |ValidatorAdministrationScriptsandybpl.14603:20|
 :skolemid |262|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $a_0@@17))
)) (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@18)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@18) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@18))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@18))) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.14607:20|
 :skolemid |263|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@18))
))) (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) $a_0@@19)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@19))
 :qid |ValidatorAdministrationScriptsandybpl.14611:20|
 :skolemid |264|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) $a_0@@19))
)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@20)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@20))
 :qid |ValidatorAdministrationScriptsandybpl.14615:20|
 :skolemid |265|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_110978| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@20))
)))))) (and (and (and (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@21)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@21) (let (($range_1@@1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@21))))))
(let (($range_2@@3 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@21))))))
(forall (($i_3@@3 Int) ($i_4@@1 Int) ) (!  (=> ($InRange $range_1@@1 $i_3@@3) (=> ($InRange $range_2@@3 $i_4@@1) (let ((i@@54 $i_3@@3))
(let ((j@@12 $i_4@@1))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@21)) i@@54)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@21)) j@@12))) (= i@@54 j@@12))))))
 :qid |ValidatorAdministrationScriptsandybpl.14620:367|
 :skolemid |266|
))))))
 :qid |ValidatorAdministrationScriptsandybpl.14619:20|
 :skolemid |267|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@21))
)) (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_112625| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@22)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@22))
 :qid |ValidatorAdministrationScriptsandybpl.14625:20|
 :skolemid |268|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_112625| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@22))
))) (and (= $t5@@0 (let (($range_0@@39 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@72 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@72))))))
(exists (($i_1@@39 Int) ) (!  (and (and (>= $i_1@@39 0) (< $i_1@@39 (seq.len $range_0@@39))) (let ((v_info@@1 (seq.nth $range_0@@39 $i_1@@39)))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| v_info@@1) _$t1@@2) (not (= (|$config#$1_DiemSystem_ValidatorInfo| v_info@@1) ($1_ValidatorConfig_Config _$t2@@2 _$t3@@2 _$t4@@0))))))
 :qid |ValidatorAdministrationScriptsandybpl.14630:140|
 :skolemid |269|
)))) (= $t6@@2 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@73 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@73))))))) (and (and (= $t7@@1 (|$addr#$signer| _$t0@@2)) (= $t8@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t9@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t10@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_111090| $1_DiemConfig_Configuration_$memory) 173345816))))) (and (and (and (= $t11@@1 (|$events#$1_DiemConfig_Configuration| $t10@@1)) (let ((addr@@74 (|$addr#$signer| _$t0@@2)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141183| $1_DiemAccount_DiemAccount_$memory) addr@@74)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@74) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@74))))))) (and (= _$t0@@2 _$t0@@2) (= _$t1@@2 _$t1@@2))) (and (and (= _$t2@@2 _$t2@@2) (= _$t3@@2 _$t3@@2)) (and (= _$t4@@0 _$t4@@0) (= $t12@@1  (or (or (or (not (= (|$addr#$signer| _$t0@@2) (let ((t_ref@@41 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@41)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@2))))))))) (and (=> (= (ControlFlow 0 190914) 193010) anon15_Then_correct) (=> (= (ControlFlow 0 190914) 190922) anon15_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_76332| stream@@15) 0) (forall ((v@@70 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@15) v@@70) 0)
 :qid |ValidatorAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 190023) 190914)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 259199) 190023) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2)))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun $t5@@1 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| Int) T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun _$t2@@3 () Int)
(declare-fun _$t1@@3 () (Seq Int))
(declare-fun $t6@@3 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1@@1 () T@$Memory_108378)
(declare-fun $t7@@2 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t21@1 () T@$Mutation_109047)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t20@2 () T@$Mutation_109007)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t21@2 () T@$Mutation_109047)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t19@0 () |T@$1_Option_Option'address'|)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t20@3 () T@$Mutation_109007)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@1 () T@$Memory_108378)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t11@1 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t20@0 () T@$Mutation_109007)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t15@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t20@1 () T@$Mutation_109007)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t18@0 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 () Bool)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t14@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t10@0 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t11@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t21@0 () T@$Mutation_109047)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t7@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t8@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t9@0 () Int)
(declare-fun $t11@0 () Bool)
(declare-fun $t13@@2 () Int)
(declare-fun $t14@@2 () Int)
(declare-fun $t15@@2 () Int)
(declare-fun $t9@@2 () Bool)
(declare-fun $t8@@2 () (Seq Int))
(declare-fun $t10@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_ValidatorAdministrationScripts_set_validator_operator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 262214) (let ((inline$$1_ValidatorConfig_set_operator$0$anon21_Then_correct true))
(let ((anon11_Else_correct@@1  (=> (not $abort_flag@1@@1) (and (=> (= (ControlFlow 0 195810) (- 0 263730)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t5@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t5@@1))) (and (=> (= (ControlFlow 0 195810) (- 0 263742)) (not (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)) _$t1@@3)))) (=> (not (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)) _$t1@@3))) (and (=> (= (ControlFlow 0 195810) (- 0 263756)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3))) (and (=> (= (ControlFlow 0 195810) (- 0 263767)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3))) (and (=> (= (ControlFlow 0 195810) (- 0 263778)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@3))) (and (=> (= (ControlFlow 0 195810) (- 0 263790)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@3)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@3)) 3))) (and (=> (= (ControlFlow 0 195810) (- 0 263808)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t6@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t6@@3))) (and (=> (= (ControlFlow 0 195810) (- 0 263820)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t5@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t5@@1))) (and (=> (= (ControlFlow 0 195810) (- 0 263832)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t5@@1)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t5@@1)) 3))) (and (=> (= (ControlFlow 0 195810) (- 0 263850)) (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@1@@1) $t7@@2)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@1@@1) $t7@@2)))) 0)) (and (=> (= (ControlFlow 0 195810) (- 0 263858)) (= (let ((t_ref@@42 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@1@@1) $t7@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@42)) 0)) _$t2@@3)) (=> (= (let ((t_ref@@43 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@1@@1) $t7@@2)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@43)) 0)) _$t2@@3) (=> (= (ControlFlow 0 195810) (- 0 263869)) (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (not (= addr@@75 $t7@@2)) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@1@@1) addr@@75)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@75)))))
 :qid |ValidatorAdministrationScriptsandybpl.15285:15|
 :skolemid |286|
))))))))))))))))))))))))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon19_Then_correct true))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 194226) (- 0 263443)) (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t5@@1)) (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)) _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@3)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t6@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t5@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t5@@1)) 3)))) (=> (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t5@@1)) (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)) _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@3)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t6@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t5@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t5@@1)) 3))) (=> (= (ControlFlow 0 194226) (- 0 263534)) (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t5@@1)) (= 5 $t10@0)) (and (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)) _$t1@@3)) (= 0 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)) (= 7 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)) (= 5 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@3)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t6@@3)) 3)) (= 3 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t6@@3)) (= 5 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t5@@1)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t5@@1)) 3)) (= 3 $t10@0))) (= 0 $t10@0)) (= 7 $t10@0)) (= 5 $t10@0)) (= 3 $t10@0)))))))
(let ((anon11_Then_correct@@1  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= $t10@0 $abort_code@2@@1) (= (ControlFlow 0 195824) 194226))) L3_correct@@1)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon24_Else_correct  (=> (and (and (and (not $abort_flag@0@@1) (= inline$$1_ValidatorConfig_set_operator$0$$t21@1 ($Mutation_109047 (|l#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2) (seq.++ (|p#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2) (seq.unit 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2))))) (and (= inline$$1_ValidatorConfig_set_operator$0$$t21@2 ($Mutation_109047 (|l#$Mutation_109047| inline$$1_ValidatorConfig_set_operator$0$$t21@1) (|p#$Mutation_109047| inline$$1_ValidatorConfig_set_operator$0$$t21@1) inline$$1_ValidatorConfig_set_operator$0$$t19@0)) (= inline$$1_ValidatorConfig_set_operator$0$$t20@3 ($Mutation_109007 (|l#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2) (|p#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2) ($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2)) (|v#$Mutation_109047| inline$$1_ValidatorConfig_set_operator$0$$t21@2) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2))))))) (and (and (= $1_ValidatorConfig_ValidatorConfig_$memory@0@@1 ($Memory_108378 (|Store__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@3)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@3)) (|v#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@3)))) (= $abort_code@2@@1 $abort_code@1@@1)) (and (= $abort_flag@1@@1 $abort_flag@0@@1) (= $1_ValidatorConfig_ValidatorConfig_$memory@1@@1 $1_ValidatorConfig_ValidatorConfig_$memory@0@@1)))) (and (=> (= (ControlFlow 0 195463) 195824) anon11_Then_correct@@1) (=> (= (ControlFlow 0 195463) 195810) anon11_Else_correct@@1)))))
(let ((inline$$1_ValidatorConfig_set_operator$0$L5_correct  (=> (= $abort_code@2@@1 inline$$1_ValidatorConfig_set_operator$0$$t11@1) (=> (and (= $abort_flag@1@@1 true) (= $1_ValidatorConfig_ValidatorConfig_$memory@1@@1 $1_ValidatorConfig_ValidatorConfig_$memory)) (and (=> (= (ControlFlow 0 195180) 195824) anon11_Then_correct@@1) (=> (= (ControlFlow 0 195180) 195810) anon11_Else_correct@@1))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon24_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t11@1 $abort_code@1@@1) (= (ControlFlow 0 195477) 195180))) inline$$1_ValidatorConfig_set_operator$0$L5_correct)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon23_Then$1_correct  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$1_ValidatorConfig_set_operator$0$$t20@2 inline$$1_ValidatorConfig_set_operator$0$$t20@0)) (and (=> (= (ControlFlow 0 195529) 195477) inline$$1_ValidatorConfig_set_operator$0$anon24_Then_correct) (=> (= (ControlFlow 0 195529) 195463) inline$$1_ValidatorConfig_set_operator$0$anon24_Else_correct))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon23_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t15@0)) (= (ControlFlow 0 195527) 195529)) inline$$1_ValidatorConfig_set_operator$0$anon23_Then$1_correct)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon23_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t15@0) (=> (and (and (= inline$$1_ValidatorConfig_set_operator$0$$t20@1 ($Mutation_109007 ($Global inline$$1_ValidatorConfig_set_operator$0$$t15@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t15@0))) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$1_ValidatorConfig_set_operator$0$$t20@2 inline$$1_ValidatorConfig_set_operator$0$$t20@1))) (and (=> (= (ControlFlow 0 195409) 195477) inline$$1_ValidatorConfig_set_operator$0$anon24_Then_correct) (=> (= (ControlFlow 0 195409) 195463) inline$$1_ValidatorConfig_set_operator$0$anon24_Else_correct))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon22_Then_correct  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1 (=> (and (and (|$IsValid'$1_Option_Option'address''| inline$$1_ValidatorConfig_set_operator$0$$t19@0) (<= (seq.len (|$vec#$1_Option_Option'address'| inline$$1_ValidatorConfig_set_operator$0$$t19@0)) 1)) (= inline$$1_ValidatorConfig_set_operator$0$$t19@0 (|$1_Option_Option'address'| (seq.unit _$t2@@3)))) (and (=> (= (ControlFlow 0 195387) 195527) inline$$1_ValidatorConfig_set_operator$0$anon23_Then_correct) (=> (= (ControlFlow 0 195387) 195409) inline$$1_ValidatorConfig_set_operator$0$anon23_Else_correct))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon22_Else_correct  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1) (= inline$$1_ValidatorConfig_set_operator$0$$t18@0 inline$$1_ValidatorConfig_set_operator$0$$t18@0)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t11@1 inline$$1_ValidatorConfig_set_operator$0$$t18@0) (= (ControlFlow 0 195359) 195180))) inline$$1_ValidatorConfig_set_operator$0$L5_correct)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon21_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_ValidatorConfig_set_operator$0$$t18@0) (= inline$$1_ValidatorConfig_set_operator$0$$t18@0 5)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t18@0 inline$$1_ValidatorConfig_set_operator$0$$t18@0) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1))) (and (=> (= (ControlFlow 0 195343) 195387) inline$$1_ValidatorConfig_set_operator$0$anon22_Then_correct) (=> (= (ControlFlow 0 195343) 195359) inline$$1_ValidatorConfig_set_operator$0$anon22_Else_correct))))))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct  (=> (= inline$$1_ValidatorConfig_set_operator$0$$t15@0 inline$$1_ValidatorConfig_set_operator$0$$t15@0) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t15@0)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1)) (and (=> (= (ControlFlow 0 195301) 195543) inline$$1_ValidatorConfig_set_operator$0$anon21_Then_correct) (=> (= (ControlFlow 0 195301) 195343) inline$$1_ValidatorConfig_set_operator$0$anon21_Else_correct))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon20_Then_correct  (=> inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 (=> (and (and (|$IsValid'address'| inline$$1_ValidatorConfig_set_operator$0$$t15@0) (= inline$$1_ValidatorConfig_set_operator$0$$t15@0 (|$addr#$signer| _$t0@@3))) (and (= inline$$1_ValidatorConfig_set_operator$0$$t15@0 inline$$1_ValidatorConfig_set_operator$0$$t15@0) (= (ControlFlow 0 195307) 195301))) inline$$1_ValidatorConfig_exists_config$0$anon0_correct))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon20_Else_correct  (=> (and (and (not inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1) (= inline$$1_ValidatorConfig_set_operator$0$$t14@0 inline$$1_ValidatorConfig_set_operator$0$$t14@0)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t11@1 inline$$1_ValidatorConfig_set_operator$0$$t14@0) (= (ControlFlow 0 195174) 195180))) inline$$1_ValidatorConfig_set_operator$0$L5_correct)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon19_Else_correct  (=> (and (not false) (|$IsValid'u64'| 3)) (=> (and (and (|$IsValid'u64'| inline$$1_ValidatorConfig_set_operator$0$$t14@0) (= inline$$1_ValidatorConfig_set_operator$0$$t14@0 7)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t14@0 inline$$1_ValidatorConfig_set_operator$0$$t14@0) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1))) (and (=> (= (ControlFlow 0 195158) 195307) inline$$1_ValidatorConfig_set_operator$0$anon20_Then_correct) (=> (= (ControlFlow 0 195158) 195174) inline$$1_ValidatorConfig_set_operator$0$anon20_Else_correct))))))
(let ((inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct  (=> (= _$t2@@3 _$t2@@3) (=> (and (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1)) (and (=> (= (ControlFlow 0 195112) 195557) inline$$1_ValidatorConfig_set_operator$0$anon19_Then_correct) (=> (= (ControlFlow 0 195112) 195158) inline$$1_ValidatorConfig_set_operator$0$anon19_Else_correct))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon18_Else_correct  (=> (and (not inline$$1_ValidatorConfig_set_operator$0$$t10@0) (= (ControlFlow 0 195118) 195112)) inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon18_Then_correct  (=> inline$$1_ValidatorConfig_set_operator$0$$t10@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@3))) (= 5 inline$$1_ValidatorConfig_set_operator$0$$t11@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@3))) 3)) (= 3 inline$$1_ValidatorConfig_set_operator$0$$t11@0))) (= inline$$1_ValidatorConfig_set_operator$0$$t11@0 inline$$1_ValidatorConfig_set_operator$0$$t11@0)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t11@1 inline$$1_ValidatorConfig_set_operator$0$$t11@0) (= (ControlFlow 0 195613) 195180))) inline$$1_ValidatorConfig_set_operator$0$L5_correct))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@0)) 0) (= (seq.len (|p#$Mutation_109047| inline$$1_ValidatorConfig_set_operator$0$$t21@0)) 0)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t7@0 (|$addr#$signer| _$t0@@3)) (= inline$$1_ValidatorConfig_set_operator$0$$t8@0 (|$addr#$signer| _$t0@@3)))) (and (and (= inline$$1_ValidatorConfig_set_operator$0$$t9@0 (|$addr#$signer| _$t0@@3)) (= _$t0@@3 _$t0@@3)) (and (= _$t2@@3 _$t2@@3) (= inline$$1_ValidatorConfig_set_operator$0$$t10@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@3))) 3))))))) (and (=> (= (ControlFlow 0 195007) 195613) inline$$1_ValidatorConfig_set_operator$0$anon18_Then_correct) (=> (= (ControlFlow 0 195007) 195118) inline$$1_ValidatorConfig_set_operator$0$anon18_Else_correct)))))
(let ((anon10_Then_correct  (=> $t11@0 (=> (and (and (= $t13@@2 (|$addr#$signer| _$t0@@3)) (= $t14@@2 (|$addr#$signer| _$t0@@3))) (and (= $t15@@2 (|$addr#$signer| _$t0@@3)) (= (ControlFlow 0 195617) 195007))) inline$$1_ValidatorConfig_set_operator$0$anon0_correct))))
(let ((anon10_Else_correct  (=> (not $t11@0) (=> (and (and (|$IsValid'u64'| 0) (= 0 0)) (and (= $t10@0 0) (= (ControlFlow 0 193906) 194226))) L3_correct@@1))))
(let ((anon9_Else_correct  (=> (not $t9@@2) (=> (and (and (|$IsValid'vec'u8''| $t8@@2) (= $t8@@2 (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)))) (and (= $t11@0 (= $t8@@2 _$t1@@3)) (= $t11@0 $t11@0))) (and (=> (= (ControlFlow 0 193884) 195617) anon10_Then_correct) (=> (= (ControlFlow 0 193884) 193906) anon10_Else_correct))))))
(let ((anon9_Then_correct  (=> $t9@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3)) (= 5 $t10@@2)) (= $t10@@2 $t10@@2)) (and (= $t10@0 $t10@@2) (= (ControlFlow 0 195852) 194226))) L3_correct@@1))))
(let ((anon0$1_correct@@3  (=> (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@76) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@76)) 4))))
 :qid |ValidatorAdministrationScriptsandybpl.15060:20|
 :skolemid |278|
)) (=> (and (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@77) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@77)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.15064:20|
 :skolemid |279|
)) (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@78) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@78)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.15068:20|
 :skolemid |280|
))) (=> (and (and (and (and (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@79) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@79)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@79)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.15072:20|
 :skolemid |281|
)) (let (($range_0@@40 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@80 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@80))))))))
(forall (($i_1@@40 Int) ) (!  (=> ($InRange $range_0@@40 $i_1@@40) (let ((i1@@5 $i_1@@40))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@81 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@81)))) i1@@5))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@81 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@81)))) i1@@5)))) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.15076:151|
 :skolemid |282|
)))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'vec'u8''| _$t1@@3))) (and (and (|$IsValid'address'| _$t2@@3) (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $a_0@@23)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@23))
 :qid |ValidatorAdministrationScriptsandybpl.15089:20|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $a_0@@23))
))) (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@24)))
(|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| $rsc@@24))
 :qid |ValidatorAdministrationScriptsandybpl.15093:20|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@24))
)) (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@25)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@25) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@25))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@25))) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.15097:20|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@25))
))))) (and (and (and (= $t5@@1 (|$addr#$signer| _$t0@@3)) (= $t6@@3 (|$addr#$signer| _$t0@@3))) (and (= $t7@@2 (|$addr#$signer| _$t0@@3)) (let ((addr@@82 (|$addr#$signer| _$t0@@3)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141183| $1_DiemAccount_DiemAccount_$memory) addr@@82)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@82) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@82)))))))) (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@3 _$t1@@3)) (and (= _$t2@@3 _$t2@@3) (= $t9@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t2@@3))))))) (and (=> (= (ControlFlow 0 193852) 195852) anon9_Then_correct) (=> (= (ControlFlow 0 193852) 193884) anon9_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_76332| stream@@16) 0) (forall ((v@@71 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@16) v@@71) 0)
 :qid |ValidatorAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 193517) 193852)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 262214) 193517) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun _$t2@@4 () Int)
(declare-fun $t7@@3 () Int)
(declare-fun _$t4@@1 () Int)
(declare-fun _$t3@@3 () (Seq Int))
(declare-fun $t8@@3 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1@@2 () T@$Memory_108378)
(declare-fun $t9@@3 () Int)
(declare-fun $t10@0@@0 () Int)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $abort_flag@1@@2 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t21@1@@0 () T@$Mutation_109047)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t20@2@@0 () T@$Mutation_109007)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t21@2@@0 () T@$Mutation_109047)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t19@0@@0 () |T@$1_Option_Option'address'|)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t20@3@@0 () T@$Mutation_109007)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@2 () T@$Memory_108378)
(declare-fun $abort_code@2@@2 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t11@1@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t20@0@@0 () T@$Mutation_109007)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t20@1@@0 () T@$Mutation_109007)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t18@0@@0 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 () Bool)
(declare-fun _$t1@@4 () T@$signer)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t14@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t10@0@@0 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t21@0@@0 () T@$Mutation_109047)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t7@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t8@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t9@0@@0 () Int)
(declare-fun $t13@0@@1 () Bool)
(declare-fun $t15@@3 () Int)
(declare-fun $t16@@0 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun $t12@@2 () Bool)
(declare-fun $t11@@2 () (Seq Int))
(declare-fun $t10@@3 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@1 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@1 () Int)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1 () Int)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@1| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@1 () T@$Memory_110138)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@1 () T@$Memory_110138)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@1| () T@$1_SlidingNonce_SlidingNonce)
(push 1)
(set-info :boogie-vc-id $1_ValidatorAdministrationScripts_set_validator_operator_with_nonce_admin$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 263918) (let ((anon14_Else_correct@@1  (=> (not $abort_flag@2@@0) (and (=> (= (ControlFlow 0 199045) (- 0 265866)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4)))) (and (=> (= (ControlFlow 0 199045) (- 0 265879)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4) 0))) (and (=> (= (ControlFlow 0 199045) (- 0 265894)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3))) (and (=> (= (ControlFlow 0 199045) (- 0 265906)) (not (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) _$t3@@3)))) (=> (not (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) _$t3@@3))) (and (=> (= (ControlFlow 0 199045) (- 0 265920)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (and (=> (= (ControlFlow 0 199045) (- 0 265931)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (and (=> (= (ControlFlow 0 199045) (- 0 265942)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t8@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t8@@3))) (and (=> (= (ControlFlow 0 199045) (- 0 265954)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t8@@3)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t8@@3)) 3))) (and (=> (= (ControlFlow 0 199045) (- 0 265972)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@3))) (and (=> (= (ControlFlow 0 199045) (- 0 265984)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@3))) (and (=> (= (ControlFlow 0 199045) (- 0 265996)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@3)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@3)) 3))) (and (=> (= (ControlFlow 0 199045) (- 0 266014)) (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@1@@2) $t9@@3)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@1@@2) $t9@@3)))) 0)) (and (=> (= (ControlFlow 0 199045) (- 0 266022)) (= (let ((t_ref@@44 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@1@@2) $t9@@3)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@44)) 0)) _$t4@@1)) (=> (= (let ((t_ref@@45 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@1@@2) $t9@@3)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@45)) 0)) _$t4@@1) (=> (= (ControlFlow 0 199045) (- 0 266033)) (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (not (= addr@@83 $t9@@3)) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory@1@@2) addr@@83)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@83)))))
 :qid |ValidatorAdministrationScriptsandybpl.15630:15|
 :skolemid |296|
))))))))))))))))))))))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 197431) (- 0 265521)) (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3))) (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) _$t3@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t8@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t8@@3)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@3)) 3)))) (=> (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3))) (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) _$t3@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t8@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t8@@3)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@3)) 3))) (=> (= (ControlFlow 0 197431) (- 0 265634)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))) (= 5 $t10@0@@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4) 0)) (= 7 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3)) (= 5 $t10@0@@0))) (and (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) _$t3@@3)) (= 0 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) (= 7 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) (= 5 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t8@@3)) (= 5 $t10@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t8@@3)) 3)) (= 3 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@3)) (= 5 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@3)) (= 5 $t10@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $t7@@3)) 3)) (= 3 $t10@0@@0))) (= 0 $t10@0@@0)) (= 7 $t10@0@@0)) (= 5 $t10@0@@0)) (= 3 $t10@0@@0)))))))
(let ((anon14_Then_correct@@1  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t10@0@@0 $abort_code@3@@0) (= (ControlFlow 0 199059) 197431))) L3_correct@@2)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon24_Else_correct@@0  (=> (and (and (and (not $abort_flag@1@@2) (= inline$$1_ValidatorConfig_set_operator$0$$t21@1@@0 ($Mutation_109047 (|l#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2@@0) (seq.++ (|p#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2@@0) (seq.unit 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2@@0))))) (and (= inline$$1_ValidatorConfig_set_operator$0$$t21@2@@0 ($Mutation_109047 (|l#$Mutation_109047| inline$$1_ValidatorConfig_set_operator$0$$t21@1@@0) (|p#$Mutation_109047| inline$$1_ValidatorConfig_set_operator$0$$t21@1@@0) inline$$1_ValidatorConfig_set_operator$0$$t19@0@@0)) (= inline$$1_ValidatorConfig_set_operator$0$$t20@3@@0 ($Mutation_109007 (|l#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2@@0) (|p#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2@@0) ($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2@@0)) (|v#$Mutation_109047| inline$$1_ValidatorConfig_set_operator$0$$t21@2@@0) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@2@@0))))))) (and (and (= $1_ValidatorConfig_ValidatorConfig_$memory@0@@2 ($Memory_108378 (|Store__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@3@@0)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@3@@0)) (|v#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@3@@0)))) (= $abort_flag@2@@0 $abort_flag@1@@2)) (and (= $abort_code@3@@0 $abort_code@2@@2) (= $1_ValidatorConfig_ValidatorConfig_$memory@1@@2 $1_ValidatorConfig_ValidatorConfig_$memory@0@@2)))) (and (=> (= (ControlFlow 0 198668) 199059) anon14_Then_correct@@1) (=> (= (ControlFlow 0 198668) 199045) anon14_Else_correct@@1)))))
(let ((inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0  (=> (= $abort_flag@2@@0 true) (=> (and (= $abort_code@3@@0 inline$$1_ValidatorConfig_set_operator$0$$t11@1@@0) (= $1_ValidatorConfig_ValidatorConfig_$memory@1@@2 $1_ValidatorConfig_ValidatorConfig_$memory)) (and (=> (= (ControlFlow 0 198385) 199059) anon14_Then_correct@@1) (=> (= (ControlFlow 0 198385) 199045) anon14_Else_correct@@1))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon24_Then_correct@@0  (=> (and (and $abort_flag@1@@2 (= $abort_code@2@@2 $abort_code@2@@2)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t11@1@@0 $abort_code@2@@2) (= (ControlFlow 0 198682) 198385))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon23_Then$1_correct@@0  (=> (= $abort_code@2@@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1@@2 true) (= inline$$1_ValidatorConfig_set_operator$0$$t20@2@@0 inline$$1_ValidatorConfig_set_operator$0$$t20@0@@0)) (and (=> (= (ControlFlow 0 198734) 198682) inline$$1_ValidatorConfig_set_operator$0$anon24_Then_correct@@0) (=> (= (ControlFlow 0 198734) 198668) inline$$1_ValidatorConfig_set_operator$0$anon24_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon23_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0)) (= (ControlFlow 0 198732) 198734)) inline$$1_ValidatorConfig_set_operator$0$anon23_Then$1_correct@@0)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon23_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0) (=> (and (and (= inline$$1_ValidatorConfig_set_operator$0$$t20@1@@0 ($Mutation_109007 ($Global inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0))) (= $abort_code@2@@2 $abort_code@1@@2)) (and (= $abort_flag@1@@2 $abort_flag@0@@2) (= inline$$1_ValidatorConfig_set_operator$0$$t20@2@@0 inline$$1_ValidatorConfig_set_operator$0$$t20@1@@0))) (and (=> (= (ControlFlow 0 198614) 198682) inline$$1_ValidatorConfig_set_operator$0$anon24_Then_correct@@0) (=> (= (ControlFlow 0 198614) 198668) inline$$1_ValidatorConfig_set_operator$0$anon24_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon22_Then_correct@@0  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 (=> (and (and (|$IsValid'$1_Option_Option'address''| inline$$1_ValidatorConfig_set_operator$0$$t19@0@@0) (<= (seq.len (|$vec#$1_Option_Option'address'| inline$$1_ValidatorConfig_set_operator$0$$t19@0@@0)) 1)) (= inline$$1_ValidatorConfig_set_operator$0$$t19@0@@0 (|$1_Option_Option'address'| (seq.unit _$t4@@1)))) (and (=> (= (ControlFlow 0 198592) 198732) inline$$1_ValidatorConfig_set_operator$0$anon23_Then_correct@@0) (=> (= (ControlFlow 0 198592) 198614) inline$$1_ValidatorConfig_set_operator$0$anon23_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon22_Else_correct@@0  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0) (= inline$$1_ValidatorConfig_set_operator$0$$t18@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t18@0@@0)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t11@1@@0 inline$$1_ValidatorConfig_set_operator$0$$t18@0@@0) (= (ControlFlow 0 198564) 198385))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon21_Else_correct@@0  (=> (and (not $abort_flag@0@@2) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_ValidatorConfig_set_operator$0$$t18@0@@0) (= inline$$1_ValidatorConfig_set_operator$0$$t18@0@@0 5)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t18@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t18@0@@0) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 198548) 198592) inline$$1_ValidatorConfig_set_operator$0$anon22_Then_correct@@0) (=> (= (ControlFlow 0 198548) 198564) inline$$1_ValidatorConfig_set_operator$0$anon22_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon21_Then_correct@@0  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t11@1@@0 $abort_code@1@@2) (= (ControlFlow 0 198748) 198385))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0)))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@0  (=> (= inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 198506) 198748) inline$$1_ValidatorConfig_set_operator$0$anon21_Then_correct@@0) (=> (= (ControlFlow 0 198506) 198548) inline$$1_ValidatorConfig_set_operator$0$anon21_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon20_Then_correct@@0  (=> inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 (=> (and (and (|$IsValid'address'| inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0) (= inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0 (|$addr#$signer| _$t1@@4))) (and (= inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t15@0@@0) (= (ControlFlow 0 198512) 198506))) inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@0))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon20_Else_correct@@0  (=> (and (and (not inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0) (= inline$$1_ValidatorConfig_set_operator$0$$t14@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t14@0@@0)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t11@1@@0 inline$$1_ValidatorConfig_set_operator$0$$t14@0@@0) (= (ControlFlow 0 198379) 198385))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon19_Else_correct@@0  (=> (and (not $abort_flag@0@@2) (|$IsValid'u64'| 3)) (=> (and (and (|$IsValid'u64'| inline$$1_ValidatorConfig_set_operator$0$$t14@0@@0) (= inline$$1_ValidatorConfig_set_operator$0$$t14@0@@0 7)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t14@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t14@0@@0) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 198363) 198512) inline$$1_ValidatorConfig_set_operator$0$anon20_Then_correct@@0) (=> (= (ControlFlow 0 198363) 198379) inline$$1_ValidatorConfig_set_operator$0$anon20_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon19_Then_correct@@0  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t11@1@@0 $abort_code@1@@2) (= (ControlFlow 0 198762) 198385))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0)))
(let ((inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct@@0  (=> (= _$t4@@1 _$t4@@1) (=> (and (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 198317) 198762) inline$$1_ValidatorConfig_set_operator$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 198317) 198363) inline$$1_ValidatorConfig_set_operator$0$anon19_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon18_Else_correct@@0  (=> (and (not inline$$1_ValidatorConfig_set_operator$0$$t10@0@@0) (= (ControlFlow 0 198323) 198317)) inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct@@0)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon18_Then_correct@@0  (=> inline$$1_ValidatorConfig_set_operator$0$$t10@0@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (= 5 inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) 3)) (= 3 inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0))) (= inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t11@1@@0 inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0) (= (ControlFlow 0 198818) 198385))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon0_correct@@0  (=> (and (and (and (= (seq.len (|p#$Mutation_109007| inline$$1_ValidatorConfig_set_operator$0$$t20@0@@0)) 0) (= (seq.len (|p#$Mutation_109047| inline$$1_ValidatorConfig_set_operator$0$$t21@0@@0)) 0)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t7@0@@0 (|$addr#$signer| _$t1@@4)) (= inline$$1_ValidatorConfig_set_operator$0$$t8@0@@0 (|$addr#$signer| _$t1@@4)))) (and (and (= inline$$1_ValidatorConfig_set_operator$0$$t9@0@@0 (|$addr#$signer| _$t1@@4)) (= _$t1@@4 _$t1@@4)) (and (= _$t4@@1 _$t4@@1) (= inline$$1_ValidatorConfig_set_operator$0$$t10@0@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) 3))))))) (and (=> (= (ControlFlow 0 198212) 198818) inline$$1_ValidatorConfig_set_operator$0$anon18_Then_correct@@0) (=> (= (ControlFlow 0 198212) 198323) inline$$1_ValidatorConfig_set_operator$0$anon18_Else_correct@@0)))))
(let ((anon13_Then_correct@@1  (=> $t13@0@@1 (=> (and (and (= $t15@@3 (|$addr#$signer| _$t1@@4)) (= $t16@@0 (|$addr#$signer| _$t1@@4))) (and (= $t17@@0 (|$addr#$signer| _$t1@@4)) (= (ControlFlow 0 198822) 198212))) inline$$1_ValidatorConfig_set_operator$0$anon0_correct@@0))))
(let ((anon13_Else_correct@@1  (=> (not $t13@0@@1) (=> (and (and (|$IsValid'u64'| 0) (= 0 0)) (and (= $t10@0@@0 0) (= (ControlFlow 0 197043) 197431))) L3_correct@@2))))
(let ((anon12_Else_correct@@1  (=> (not $t12@@2) (=> (and (and (|$IsValid'vec'u8''| $t11@@2) (= $t11@@2 (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)))) (and (= $t13@0@@1 (= $t11@@2 _$t3@@3)) (= $t13@0@@1 $t13@0@@1))) (and (=> (= (ControlFlow 0 197021) 198822) anon13_Then_correct@@1) (=> (= (ControlFlow 0 197021) 197043) anon13_Else_correct@@1))))))
(let ((anon12_Then_correct@@1  (=> $t12@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) (= 5 $t10@@3)) (= $t10@@3 $t10@@3)) (and (= $t10@0@@0 $t10@@3) (= (ControlFlow 0 199087) 197431))) L3_correct@@2))))
(let ((anon11_Else_correct@@2  (=> (and (not $abort_flag@0@@2) (= $t12@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)))) (and (=> (= (ControlFlow 0 196989) 199087) anon12_Then_correct@@1) (=> (= (ControlFlow 0 196989) 197021) anon12_Else_correct@@1)))))
(let ((anon11_Then_correct@@2  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t10@0@@0 $abort_code@1@@2) (= (ControlFlow 0 199101) 197431))) L3_correct@@2)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@1  (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@1)) (and (=> (= (ControlFlow 0 196913) 199101) anon11_Then_correct@@2) (=> (= (ControlFlow 0 196913) 196989) anon11_Else_correct@@2)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@1  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1) (= (ControlFlow 0 196907) 196913))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@1)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@1  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@1)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@1)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@1) (= (ControlFlow 0 196963) 196913))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@1))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@1  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1 (=> (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2)) (and (=> (= (ControlFlow 0 196919) 199101) anon11_Then_correct@@2) (=> (= (ControlFlow 0 196919) 196989) anon11_Else_correct@@2))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@1  (=> (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1) (=> (and (and (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1 ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1)))) (and (=> (= (ControlFlow 0 196891) 196919) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@1) (=> (= (ControlFlow 0 196891) 196907) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@1))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@1  (=> (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@1|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1@@1 ($Memory_110138 (|Store__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4) false) (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory))) (= (ControlFlow 0 196833) 196891)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@1))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@1  (=> |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@1| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0@@1 ($Memory_110138 (|Store__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4) |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@1|))) (= (ControlFlow 0 196933) 196891)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@1))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@1  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@1) (and (=> (= (ControlFlow 0 196819) 196933) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@1) (=> (= (ControlFlow 0 196819) 196833) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@1)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@1  (=> (= _$t0@@4 _$t0@@4) (=> (and (= _$t2@@4 _$t2@@4) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))))) (and (=> (= (ControlFlow 0 196813) 196963) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@1) (=> (= (ControlFlow 0 196813) 196819) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@1))))))
(let ((anon0$1_correct@@4  (=> (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@84) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@84)) 4))))
 :qid |ValidatorAdministrationScriptsandybpl.15354:20|
 :skolemid |287|
)) (=> (and (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@85) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@85)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.15358:20|
 :skolemid |288|
)) (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@86) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@86)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.15362:20|
 :skolemid |289|
))) (=> (and (and (and (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@87) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@87)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@87)) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.15366:20|
 :skolemid |290|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (let (($range_0@@41 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@88 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@88))))))))
(forall (($i_1@@41 Int) ) (!  (=> ($InRange $range_0@@41 $i_1@@41) (let ((i1@@6 $i_1@@41))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@89 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@89)))) i1@@6))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@89 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_110573| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@89)))) i1@@6)))) 3))))
 :qid |ValidatorAdministrationScriptsandybpl.15378:151|
 :skolemid |291|
))))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4))) (and (|$IsValid'u64'| _$t2@@4) (|$IsValid'vec'u8''| _$t3@@3)))) (=> (and (and (and (and (|$IsValid'address'| _$t4@@1) (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $a_0@@26)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@26))
 :qid |ValidatorAdministrationScriptsandybpl.15397:20|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) $a_0@@26))
))) (and (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@27)))
(|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| $rsc@@27))
 :qid |ValidatorAdministrationScriptsandybpl.15401:20|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_107352| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@27))
)) (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@28)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@28) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@28))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@28))) 1))))
 :qid |ValidatorAdministrationScriptsandybpl.15405:20|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_108378| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@28))
)))) (and (and (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@29)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@29))
 :qid |ValidatorAdministrationScriptsandybpl.15409:20|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_110138| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@29))
)) (= $t7@@3 (|$addr#$signer| _$t1@@4))) (and (= $t8@@3 (|$addr#$signer| _$t1@@4)) (= $t9@@3 (|$addr#$signer| _$t1@@4))))) (and (and (and (let ((addr@@90 (|$addr#$signer| _$t1@@4)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106463| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141183| $1_DiemAccount_DiemAccount_$memory) addr@@90)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@90) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140200| $1_AccountFreezing_FreezingBit_$memory) addr@@90)))))) (let ((addr@@91 (|$addr#$signer| _$t0@@4)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_106957| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106957| $1_Roles_RoleId_$memory) addr@@91)) 0)))) (and (= _$t0@@4 _$t0@@4) (= _$t1@@4 _$t1@@4))) (and (and (= _$t2@@4 _$t2@@4) (= _$t3@@3 _$t3@@3)) (and (= _$t4@@1 _$t4@@1) (= (ControlFlow 0 196967) 196813))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@15 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_76332_| (|streams#$EventStore| $es) handle@@15)))
 (and (= (|l#Multiset_76332| stream@@17) 0) (forall ((v@@72 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76332| stream@@17) v@@72) 0)
 :qid |ValidatorAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsandybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 196074) 196967)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 263918) 196074) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 266085) true)
))
(check-sat)
(pop 1)
; Valid
