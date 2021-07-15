(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_112049 0)) ((($Memory_112049 (|domain#$Memory_112049| |T@[Int]Bool|) (|contents#$Memory_112049| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_184358 0)) ((($Memory_184358 (|domain#$Memory_184358| |T@[Int]Bool|) (|contents#$Memory_184358| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_156072 0)) ((($Memory_156072 (|domain#$Memory_156072| |T@[Int]Bool|) (|contents#$Memory_156072| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_153713 0)) ((($Memory_153713 (|domain#$Memory_153713| |T@[Int]Bool|) (|contents#$Memory_153713| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_154026 0)) ((($Memory_154026 (|domain#$Memory_154026| |T@[Int]Bool|) (|contents#$Memory_154026| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_153680 0)) ((($Memory_153680 (|domain#$Memory_153680| |T@[Int]Bool|) (|contents#$Memory_153680| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_153465 0)) ((($Memory_153465 (|domain#$Memory_153465| |T@[Int]Bool|) (|contents#$Memory_153465| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_150135 0)) ((($Memory_150135 (|domain#$Memory_150135| |T@[Int]Bool|) (|contents#$Memory_150135| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_150071 0)) ((($Memory_150071 (|domain#$Memory_150071| |T@[Int]Bool|) (|contents#$Memory_150071| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_148054 0)) ((($Memory_148054 (|domain#$Memory_148054| |T@[Int]Bool|) (|contents#$Memory_148054| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_147990 0)) ((($Memory_147990 (|domain#$Memory_147990| |T@[Int]Bool|) (|contents#$Memory_147990| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_147164 0)) ((($Memory_147164 (|domain#$Memory_147164| |T@[Int]Bool|) (|contents#$Memory_147164| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_147100 0)) ((($Memory_147100 (|domain#$Memory_147100| |T@[Int]Bool|) (|contents#$Memory_147100| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_143979 0)) ((($Memory_143979 (|domain#$Memory_143979| |T@[Int]Bool|) (|contents#$Memory_143979| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_143760 0)) ((($Memory_143760 (|domain#$Memory_143760| |T@[Int]Bool|) (|contents#$Memory_143760| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_155588 0)) ((($Memory_155588 (|domain#$Memory_155588| |T@[Int]Bool|) (|contents#$Memory_155588| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_136327 0)) ((($Memory_136327 (|domain#$Memory_136327| |T@[Int]Bool|) (|contents#$Memory_136327| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_136240 0)) ((($Memory_136240 (|domain#$Memory_136240| |T@[Int]Bool|) (|contents#$Memory_136240| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_131607 0)) ((($Memory_131607 (|domain#$Memory_131607| |T@[Int]Bool|) (|contents#$Memory_131607| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_131520 0)) ((($Memory_131520 (|domain#$Memory_131520| |T@[Int]Bool|) (|contents#$Memory_131520| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_155905 0)) ((($Memory_155905 (|domain#$Memory_155905| |T@[Int]Bool|) (|contents#$Memory_155905| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_136682 0)) ((($Memory_136682 (|domain#$Memory_136682| |T@[Int]Bool|) (|contents#$Memory_136682| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_137107 0)) ((($Memory_137107 (|domain#$Memory_137107| |T@[Int]Bool|) (|contents#$Memory_137107| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_155814 0)) ((($Memory_155814 (|domain#$Memory_155814| |T@[Int]Bool|) (|contents#$Memory_155814| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_136591 0)) ((($Memory_136591 (|domain#$Memory_136591| |T@[Int]Bool|) (|contents#$Memory_136591| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_145812 0)) ((($Memory_145812 (|domain#$Memory_145812| |T@[Int]Bool|) (|contents#$Memory_145812| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_137008 0)) ((($Memory_137008 (|domain#$Memory_137008| |T@[Int]Bool|) (|contents#$Memory_137008| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_155723 0)) ((($Memory_155723 (|domain#$Memory_155723| |T@[Int]Bool|) (|contents#$Memory_155723| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_136500 0)) ((($Memory_136500 (|domain#$Memory_136500| |T@[Int]Bool|) (|contents#$Memory_136500| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_149005 0)) ((($Memory_149005 (|domain#$Memory_149005| |T@[Int]Bool|) (|contents#$Memory_149005| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_136909 0)) ((($Memory_136909 (|domain#$Memory_136909| |T@[Int]Bool|) (|contents#$Memory_136909| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_131107 0)) ((($Memory_131107 (|domain#$Memory_131107| |T@[Int]Bool|) (|contents#$Memory_131107| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_130982 0)) ((($Memory_130982 (|domain#$Memory_130982| |T@[Int]Bool|) (|contents#$Memory_130982| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_130918 0)) ((($Memory_130918 (|domain#$Memory_130918| |T@[Int]Bool|) (|contents#$Memory_130918| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_126991 0)) ((($Memory_126991 (|domain#$Memory_126991| |T@[Int]Bool|) (|contents#$Memory_126991| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_126904 0)) ((($Memory_126904 (|domain#$Memory_126904| |T@[Int]Bool|) (|contents#$Memory_126904| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_126817 0)) ((($Memory_126817 (|domain#$Memory_126817| |T@[Int]Bool|) (|contents#$Memory_126817| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_126730 0)) ((($Memory_126730 (|domain#$Memory_126730| |T@[Int]Bool|) (|contents#$Memory_126730| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_126643 0)) ((($Memory_126643 (|domain#$Memory_126643| |T@[Int]Bool|) (|contents#$Memory_126643| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_127256 0)) ((($Memory_127256 (|domain#$Memory_127256| |T@[Int]Bool|) (|contents#$Memory_127256| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_125769 0)) ((($Memory_125769 (|domain#$Memory_125769| |T@[Int]Bool|) (|contents#$Memory_125769| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_125835 0)) ((($Memory_125835 (|domain#$Memory_125835| |T@[Int]Bool|) (|contents#$Memory_125835| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_125688 0)) ((($Memory_125688 (|domain#$Memory_125688| |T@[Int]Bool|) (|contents#$Memory_125688| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_125607 0)) ((($Memory_125607 (|domain#$Memory_125607| |T@[Int]Bool|) (|contents#$Memory_125607| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_125526 0)) ((($Memory_125526 (|domain#$Memory_125526| |T@[Int]Bool|) (|contents#$Memory_125526| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_125445 0)) ((($Memory_125445 (|domain#$Memory_125445| |T@[Int]Bool|) (|contents#$Memory_125445| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_124945 0)) ((($Memory_124945 (|domain#$Memory_124945| |T@[Int]Bool|) (|contents#$Memory_124945| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_154667 0)) ((($Memory_154667 (|domain#$Memory_154667| |T@[Int]Bool|) (|contents#$Memory_154667| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_125364 0)) ((($Memory_125364 (|domain#$Memory_125364| |T@[Int]Bool|) (|contents#$Memory_125364| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_123619 0)) ((($Memory_123619 (|domain#$Memory_123619| |T@[Int]Bool|) (|contents#$Memory_123619| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_122244 0)) ((($Memory_122244 (|domain#$Memory_122244| |T@[Int]Bool|) (|contents#$Memory_122244| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_119270 0)) ((($Memory_119270 (|domain#$Memory_119270| |T@[Int]Bool|) (|contents#$Memory_119270| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_118801 0)) ((($Memory_118801 (|domain#$Memory_118801| |T@[Int]Bool|) (|contents#$Memory_118801| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_85531 0)) (((Multiset_85531 (|v#Multiset_85531| |T@[$EventRep]Int|) (|l#Multiset_85531| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_85531| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_85531|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_165510 0)) ((($Mutation_165510 (|l#$Mutation_165510| T@$Location) (|p#$Mutation_165510| (Seq Int)) (|v#$Mutation_165510| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_165466 0)) ((($Mutation_165466 (|l#$Mutation_165466| T@$Location) (|p#$Mutation_165466| (Seq Int)) (|v#$Mutation_165466| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_38769 0)) ((($Mutation_38769 (|l#$Mutation_38769| T@$Location) (|p#$Mutation_38769| (Seq Int)) (|v#$Mutation_38769| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_142383 0)) ((($Mutation_142383 (|l#$Mutation_142383| T@$Location) (|p#$Mutation_142383| (Seq Int)) (|v#$Mutation_142383| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_129671 0)) ((($Mutation_129671 (|l#$Mutation_129671| T@$Location) (|p#$Mutation_129671| (Seq Int)) (|v#$Mutation_129671| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_112677 0)) ((($Mutation_112677 (|l#$Mutation_112677| T@$Location) (|p#$Mutation_112677| (Seq Int)) (|v#$Mutation_112677| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_14539 0)) ((($Mutation_14539 (|l#$Mutation_14539| T@$Location) (|p#$Mutation_14539| (Seq Int)) (|v#$Mutation_14539| Int) ) ) ))
(declare-datatypes ((T@$Mutation_108045 0)) ((($Mutation_108045 (|l#$Mutation_108045| T@$Location) (|p#$Mutation_108045| (Seq Int)) (|v#$Mutation_108045| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_107299 0)) ((($Mutation_107299 (|l#$Mutation_107299| T@$Location) (|p#$Mutation_107299| (Seq Int)) (|v#$Mutation_107299| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_105859 0)) ((($Mutation_105859 (|l#$Mutation_105859| T@$Location) (|p#$Mutation_105859| (Seq Int)) (|v#$Mutation_105859| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_105113 0)) ((($Mutation_105113 (|l#$Mutation_105113| T@$Location) (|p#$Mutation_105113| (Seq Int)) (|v#$Mutation_105113| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_103673 0)) ((($Mutation_103673 (|l#$Mutation_103673| T@$Location) (|p#$Mutation_103673| (Seq Int)) (|v#$Mutation_103673| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_102927 0)) ((($Mutation_102927 (|l#$Mutation_102927| T@$Location) (|p#$Mutation_102927| (Seq Int)) (|v#$Mutation_102927| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_101487 0)) ((($Mutation_101487 (|l#$Mutation_101487| T@$Location) (|p#$Mutation_101487| (Seq Int)) (|v#$Mutation_101487| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_100741 0)) ((($Mutation_100741 (|l#$Mutation_100741| T@$Location) (|p#$Mutation_100741| (Seq Int)) (|v#$Mutation_100741| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_99301 0)) ((($Mutation_99301 (|l#$Mutation_99301| T@$Location) (|p#$Mutation_99301| (Seq Int)) (|v#$Mutation_99301| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_98555 0)) ((($Mutation_98555 (|l#$Mutation_98555| T@$Location) (|p#$Mutation_98555| (Seq Int)) (|v#$Mutation_98555| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_97115 0)) ((($Mutation_97115 (|l#$Mutation_97115| T@$Location) (|p#$Mutation_97115| (Seq Int)) (|v#$Mutation_97115| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_96369 0)) ((($Mutation_96369 (|l#$Mutation_96369| T@$Location) (|p#$Mutation_96369| (Seq Int)) (|v#$Mutation_96369| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_94929 0)) ((($Mutation_94929 (|l#$Mutation_94929| T@$Location) (|p#$Mutation_94929| (Seq Int)) (|v#$Mutation_94929| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_94183 0)) ((($Mutation_94183 (|l#$Mutation_94183| T@$Location) (|p#$Mutation_94183| (Seq Int)) (|v#$Mutation_94183| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_92743 0)) ((($Mutation_92743 (|l#$Mutation_92743| T@$Location) (|p#$Mutation_92743| (Seq Int)) (|v#$Mutation_92743| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_91997 0)) ((($Mutation_91997 (|l#$Mutation_91997| T@$Location) (|p#$Mutation_91997| (Seq Int)) (|v#$Mutation_91997| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_90557 0)) ((($Mutation_90557 (|l#$Mutation_90557| T@$Location) (|p#$Mutation_90557| (Seq Int)) (|v#$Mutation_90557| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_89811 0)) ((($Mutation_89811 (|l#$Mutation_89811| T@$Location) (|p#$Mutation_89811| (Seq Int)) (|v#$Mutation_89811| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_88333 0)) ((($Mutation_88333 (|l#$Mutation_88333| T@$Location) (|p#$Mutation_88333| (Seq Int)) (|v#$Mutation_88333| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_87587 0)) ((($Mutation_87587 (|l#$Mutation_87587| T@$Location) (|p#$Mutation_87587| (Seq Int)) (|v#$Mutation_87587| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| ((Seq T@$1_VASPDomain_VASPDomain)) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| ((Seq T@$1_VASPDomain_VASPDomain) T@$1_VASPDomain_VASPDomain) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_85531_| (|T@[$1_Event_EventHandle]Multiset_85531| T@$1_Event_EventHandle) T@Multiset_85531)
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
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun $1_SlidingNonce_spec_try_record_nonce (Int Int) Int)
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
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
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
(declare-fun |$IsValid'$1_DiemAccount_Balance'#0''| (|T@$1_DiemAccount_Balance'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_14392 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_77967 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_76588 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_76785 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_76982 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_78164 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_77573 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_77376 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_77179 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_77770 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_76391 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_85531| |T@[$1_Event_EventHandle]Multiset_85531|) |T@[$1_Event_EventHandle]Multiset_85531|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountCreationScriptsandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountCreationScriptsandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountCreationScriptsandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountCreationScriptsandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountCreationScriptsandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountCreationScriptsandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountCreationScriptsandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountCreationScriptsandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |AccountCreationScriptsandybpl.590:13|
 :skolemid |15|
))))
 :qid |AccountCreationScriptsandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |AccountCreationScriptsandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |AccountCreationScriptsandybpl.603:17|
 :skolemid |18|
)))))
 :qid |AccountCreationScriptsandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |AccountCreationScriptsandybpl.770:13|
 :skolemid |20|
))))
 :qid |AccountCreationScriptsandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |AccountCreationScriptsandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |AccountCreationScriptsandybpl.783:17|
 :skolemid |23|
)))))
 :qid |AccountCreationScriptsandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |AccountCreationScriptsandybpl.950:13|
 :skolemid |25|
))))
 :qid |AccountCreationScriptsandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |AccountCreationScriptsandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |AccountCreationScriptsandybpl.963:17|
 :skolemid |28|
)))))
 :qid |AccountCreationScriptsandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |AccountCreationScriptsandybpl.1130:13|
 :skolemid |30|
))))
 :qid |AccountCreationScriptsandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |AccountCreationScriptsandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |AccountCreationScriptsandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |AccountCreationScriptsandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |AccountCreationScriptsandybpl.1310:13|
 :skolemid |35|
))))
 :qid |AccountCreationScriptsandybpl.1308:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |AccountCreationScriptsandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |AccountCreationScriptsandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |AccountCreationScriptsandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |AccountCreationScriptsandybpl.1490:13|
 :skolemid |40|
))))
 :qid |AccountCreationScriptsandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |AccountCreationScriptsandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |AccountCreationScriptsandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |AccountCreationScriptsandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |AccountCreationScriptsandybpl.1670:13|
 :skolemid |45|
))))
 :qid |AccountCreationScriptsandybpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |AccountCreationScriptsandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |AccountCreationScriptsandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |AccountCreationScriptsandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |AccountCreationScriptsandybpl.1850:13|
 :skolemid |50|
))))
 :qid |AccountCreationScriptsandybpl.1848:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |AccountCreationScriptsandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |AccountCreationScriptsandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |AccountCreationScriptsandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |AccountCreationScriptsandybpl.2030:13|
 :skolemid |55|
))))
 :qid |AccountCreationScriptsandybpl.2028:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |AccountCreationScriptsandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |AccountCreationScriptsandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |AccountCreationScriptsandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'vec'u8''| (seq.nth v@@22 i@@27)))
 :qid |AccountCreationScriptsandybpl.2210:13|
 :skolemid |60|
))))
 :qid |AccountCreationScriptsandybpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@22))
)))
(assert (forall ((v@@23 (Seq (Seq Int))) (e@@8 (Seq Int)) ) (! (let ((i@@28 (|$IndexOfVec'vec'u8''| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |AccountCreationScriptsandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |AccountCreationScriptsandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |AccountCreationScriptsandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'address'| (seq.nth v@@24 i@@30)))
 :qid |AccountCreationScriptsandybpl.2390:13|
 :skolemid |65|
))))
 :qid |AccountCreationScriptsandybpl.2388:33|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |AccountCreationScriptsandybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |AccountCreationScriptsandybpl.2403:17|
 :skolemid |68|
)))))
 :qid |AccountCreationScriptsandybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'u8'| (seq.nth v@@26 i@@33)))
 :qid |AccountCreationScriptsandybpl.2570:13|
 :skolemid |70|
))))
 :qid |AccountCreationScriptsandybpl.2568:28|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 (Seq Int)) (e@@10 Int) ) (! (let ((i@@34 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |AccountCreationScriptsandybpl.2575:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |AccountCreationScriptsandybpl.2583:17|
 :skolemid |73|
)))))
 :qid |AccountCreationScriptsandybpl.2579:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |AccountCreationScriptsandybpl.2756:15|
 :skolemid |75|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |AccountCreationScriptsandybpl.2772:15|
 :skolemid |76|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountCreationScriptsandybpl.2819:15|
 :skolemid |77|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountCreationScriptsandybpl.2822:15|
 :skolemid |78|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_85531| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| stream) v@@28) 0)
 :qid |AccountCreationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountCreationScriptsandybpl.2898:13|
 :skolemid |79|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountCreationScriptsandybpl.2939:80|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |AccountCreationScriptsandybpl.2945:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountCreationScriptsandybpl.2995:82|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |AccountCreationScriptsandybpl.3001:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountCreationScriptsandybpl.3051:80|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |AccountCreationScriptsandybpl.3057:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountCreationScriptsandybpl.3107:79|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |AccountCreationScriptsandybpl.3113:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountCreationScriptsandybpl.3163:76|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |AccountCreationScriptsandybpl.3169:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountCreationScriptsandybpl.3219:78|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |AccountCreationScriptsandybpl.3225:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountCreationScriptsandybpl.3275:74|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |AccountCreationScriptsandybpl.3281:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountCreationScriptsandybpl.3331:69|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |AccountCreationScriptsandybpl.3337:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountCreationScriptsandybpl.3387:70|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |AccountCreationScriptsandybpl.3393:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountCreationScriptsandybpl.3443:60|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |AccountCreationScriptsandybpl.3449:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountCreationScriptsandybpl.3499:66|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |AccountCreationScriptsandybpl.3505:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountCreationScriptsandybpl.3555:60|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |AccountCreationScriptsandybpl.3561:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountCreationScriptsandybpl.3611:63|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |AccountCreationScriptsandybpl.3617:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountCreationScriptsandybpl.3667:79|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |AccountCreationScriptsandybpl.3673:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountCreationScriptsandybpl.3723:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |AccountCreationScriptsandybpl.3729:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountCreationScriptsandybpl.3779:88|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |AccountCreationScriptsandybpl.3785:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountCreationScriptsandybpl.3835:72|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |AccountCreationScriptsandybpl.3841:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountCreationScriptsandybpl.3920:61|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |AccountCreationScriptsandybpl.4102:36|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |AccountCreationScriptsandybpl.5149:71|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |AccountCreationScriptsandybpl.5509:46|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |AccountCreationScriptsandybpl.5522:64|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |AccountCreationScriptsandybpl.5535:75|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |AccountCreationScriptsandybpl.5548:72|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |AccountCreationScriptsandybpl.5577:55|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |AccountCreationScriptsandybpl.5599:46|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account Int) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |AccountCreationScriptsandybpl.5880:15|
 :skolemid |124|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |AccountCreationScriptsandybpl.5893:49|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |AccountCreationScriptsandybpl.6109:71|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |AccountCreationScriptsandybpl.6123:91|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |AccountCreationScriptsandybpl.6137:113|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |AccountCreationScriptsandybpl.6151:75|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |AccountCreationScriptsandybpl.6165:73|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |AccountCreationScriptsandybpl.6185:48|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |AccountCreationScriptsandybpl.6201:57|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |AccountCreationScriptsandybpl.6215:83|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |AccountCreationScriptsandybpl.6229:103|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |AccountCreationScriptsandybpl.6243:125|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |AccountCreationScriptsandybpl.6257:87|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |AccountCreationScriptsandybpl.6271:85|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |AccountCreationScriptsandybpl.6285:48|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |AccountCreationScriptsandybpl.6306:45|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |AccountCreationScriptsandybpl.6320:51|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |AccountCreationScriptsandybpl.6343:48|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |AccountCreationScriptsandybpl.6649:49|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |AccountCreationScriptsandybpl.6662:65|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |AccountCreationScriptsandybpl.7181:45|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |AccountCreationScriptsandybpl.7194:45|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@29)))
 :qid |AccountCreationScriptsandybpl.7207:37|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |AccountCreationScriptsandybpl.7220:55|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |AccountCreationScriptsandybpl.7234:55|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@32))))
 :qid |AccountCreationScriptsandybpl.7254:38|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@33))))
 :qid |AccountCreationScriptsandybpl.7275:44|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))))
 :qid |AccountCreationScriptsandybpl.7326:53|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))))
 :qid |AccountCreationScriptsandybpl.7388:53|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@36))))
 :qid |AccountCreationScriptsandybpl.7450:45|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |AccountCreationScriptsandybpl.7476:55|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |AccountCreationScriptsandybpl.7490:55|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@39)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@39)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@39))))
 :qid |AccountCreationScriptsandybpl.7507:38|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@40)))
 :qid |AccountCreationScriptsandybpl.7521:48|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@41)))
 :qid |AccountCreationScriptsandybpl.7535:48|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@42) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@42)))
 :qid |AccountCreationScriptsandybpl.7549:40|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@43)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@43))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@43))))
 :qid |AccountCreationScriptsandybpl.7569:41|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@44) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@44)))
 :qid |AccountCreationScriptsandybpl.7584:53|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@45) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@45)))
 :qid |AccountCreationScriptsandybpl.7598:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@46)))
 :qid |AccountCreationScriptsandybpl.7612:45|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@47)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@47)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@47))))
 :qid |AccountCreationScriptsandybpl.7629:60|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@48)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@48)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@48))))
 :qid |AccountCreationScriptsandybpl.7646:60|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@49))))
 :qid |AccountCreationScriptsandybpl.7663:52|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@49))
)))
(assert (forall ((s@@50 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@50)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@50))))
 :qid |AccountCreationScriptsandybpl.7680:57|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@51) true)
 :qid |AccountCreationScriptsandybpl.9951:68|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@52)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@52)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@52))))
 :qid |AccountCreationScriptsandybpl.9973:66|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@53)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@53)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@53))))
 :qid |AccountCreationScriptsandybpl.9999:66|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@53))
)))
(assert (forall ((s@@54 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@54) true)
 :qid |AccountCreationScriptsandybpl.10332:31|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@54))
)))
(assert (forall ((s@@55 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@55) true)
 :qid |AccountCreationScriptsandybpl.10676:31|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@55))
)))
(assert (forall ((s@@56 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@56)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@56)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@56))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@56))))
 :qid |AccountCreationScriptsandybpl.10695:35|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@57) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@57)))
 :qid |AccountCreationScriptsandybpl.11121:45|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@58)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@58))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@58))))
 :qid |AccountCreationScriptsandybpl.11140:50|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@59) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@59)))
 :qid |AccountCreationScriptsandybpl.11155:52|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@60) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@60)))
 :qid |AccountCreationScriptsandybpl.11169:46|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@61) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@61)))
 :qid |AccountCreationScriptsandybpl.11386:38|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@62) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@62)))
 :qid |AccountCreationScriptsandybpl.11400:39|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@62))
)))
(assert (forall ((s@@63 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@63)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@63)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@63))))
 :qid |AccountCreationScriptsandybpl.11694:65|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@64)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@64)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@64))))
 :qid |AccountCreationScriptsandybpl.12079:60|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@65)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@65)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@65))))
 :qid |AccountCreationScriptsandybpl.12096:66|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@66)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@66)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@66))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@66))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@66))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@66))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@66))))
 :qid |AccountCreationScriptsandybpl.12125:50|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@67) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@67)))
 :qid |AccountCreationScriptsandybpl.12144:45|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@68)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@68)) true))
 :qid |AccountCreationScriptsandybpl.12753:87|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@69) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@69)))
 :qid |AccountCreationScriptsandybpl.12965:47|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@70)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@70)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@70))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@70))))
 :qid |AccountCreationScriptsandybpl.12985:58|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@71) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@71)))
 :qid |AccountCreationScriptsandybpl.13000:39|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@72)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@72)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@72))))
 :qid |AccountCreationScriptsandybpl.13027:58|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@73)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@73)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@73))))
 :qid |AccountCreationScriptsandybpl.13044:58|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@74) true)
 :qid |AccountCreationScriptsandybpl.13059:51|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@74))
)))
(assert (forall ((s@@75 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@75)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@75)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@75))))
 :qid |AccountCreationScriptsandybpl.13076:60|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@76)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@76)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@76))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@76))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@76))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@76))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@76))))
 :qid |AccountCreationScriptsandybpl.13379:47|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@77)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@77))))
 :qid |AccountCreationScriptsandybpl.13401:63|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@78) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@78)))
 :qid |AccountCreationScriptsandybpl.13416:57|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@78))
)))
(assert (forall ((s@@79 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@79) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@79)))
 :qid |AccountCreationScriptsandybpl.13429:55|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@79))
)))
(assert (forall ((s@@80 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@80) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@80)))
 :qid |AccountCreationScriptsandybpl.13443:55|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@80))
)))
(assert (forall ((s@@81 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@81) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@81)))
 :qid |AccountCreationScriptsandybpl.13457:47|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@82)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@82)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@82))))
 :qid |AccountCreationScriptsandybpl.13474:54|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@83) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@83)))
 :qid |AccountCreationScriptsandybpl.13488:55|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@84) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@84)))
 :qid |AccountCreationScriptsandybpl.13502:57|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@85)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@85))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@85))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@85))))
 :qid |AccountCreationScriptsandybpl.13524:56|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@86)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@86))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@86))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@86))))
 :qid |AccountCreationScriptsandybpl.13549:52|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@87) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@87)))
 :qid |AccountCreationScriptsandybpl.13565:54|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@88)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@88)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@88))))
 :qid |AccountCreationScriptsandybpl.18867:47|
 :skolemid |355|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@89)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@89)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@89))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@89))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@89))))
 :qid |AccountCreationScriptsandybpl.18891:47|
 :skolemid |356|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@90) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@90)))
 :qid |AccountCreationScriptsandybpl.19132:49|
 :skolemid |357|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@91)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@91)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@91))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@91))))
 :qid |AccountCreationScriptsandybpl.19175:49|
 :skolemid |358|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@92)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@92)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@92))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@92))))
 :qid |AccountCreationScriptsandybpl.19204:48|
 :skolemid |359|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@93) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@93)))
 :qid |AccountCreationScriptsandybpl.19499:47|
 :skolemid |360|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@93))
)))
(assert (forall ((v@@29 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_14392 v@@29)))
 (and (= (seq.len r@@0) (seq.len v@@29)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@0))) (= (seq.nth r@@0 i@@36) (seq.nth v@@29 (- (- (seq.len v@@29) i@@36) 1))))
 :qid |AccountCreationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@36))
))))
 :qid |AccountCreationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14392 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_77967 v@@30)))
 (and (= (seq.len r@@1) (seq.len v@@30)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@1))) (= (seq.nth r@@1 i@@37) (seq.nth v@@30 (- (- (seq.len v@@30) i@@37) 1))))
 :qid |AccountCreationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@37))
))))
 :qid |AccountCreationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77967 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_76588 v@@31)))
 (and (= (seq.len r@@2) (seq.len v@@31)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@2))) (= (seq.nth r@@2 i@@38) (seq.nth v@@31 (- (- (seq.len v@@31) i@@38) 1))))
 :qid |AccountCreationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@38))
))))
 :qid |AccountCreationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_76588 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_76785 v@@32)))
 (and (= (seq.len r@@3) (seq.len v@@32)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@3))) (= (seq.nth r@@3 i@@39) (seq.nth v@@32 (- (- (seq.len v@@32) i@@39) 1))))
 :qid |AccountCreationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@39))
))))
 :qid |AccountCreationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_76785 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_76982 v@@33)))
 (and (= (seq.len r@@4) (seq.len v@@33)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@4))) (= (seq.nth r@@4 i@@40) (seq.nth v@@33 (- (- (seq.len v@@33) i@@40) 1))))
 :qid |AccountCreationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@40))
))))
 :qid |AccountCreationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_76982 v@@33))
)))
(assert (forall ((v@@34 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_78164 v@@34)))
 (and (= (seq.len r@@5) (seq.len v@@34)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@5))) (= (seq.nth r@@5 i@@41) (seq.nth v@@34 (- (- (seq.len v@@34) i@@41) 1))))
 :qid |AccountCreationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@41))
))))
 :qid |AccountCreationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_78164 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_77573 v@@35)))
 (and (= (seq.len r@@6) (seq.len v@@35)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@6))) (= (seq.nth r@@6 i@@42) (seq.nth v@@35 (- (- (seq.len v@@35) i@@42) 1))))
 :qid |AccountCreationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@42))
))))
 :qid |AccountCreationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77573 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_77376 v@@36)))
 (and (= (seq.len r@@7) (seq.len v@@36)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@7))) (= (seq.nth r@@7 i@@43) (seq.nth v@@36 (- (- (seq.len v@@36) i@@43) 1))))
 :qid |AccountCreationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@43))
))))
 :qid |AccountCreationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77376 v@@36))
)))
(assert (forall ((v@@37 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_77179 v@@37)))
 (and (= (seq.len r@@8) (seq.len v@@37)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@8))) (= (seq.nth r@@8 i@@44) (seq.nth v@@37 (- (- (seq.len v@@37) i@@44) 1))))
 :qid |AccountCreationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@44))
))))
 :qid |AccountCreationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77179 v@@37))
)))
(assert (forall ((v@@38 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@9 (ReverseVec_77770 v@@38)))
 (and (= (seq.len r@@9) (seq.len v@@38)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@9))) (= (seq.nth r@@9 i@@45) (seq.nth v@@38 (- (- (seq.len v@@38) i@@45) 1))))
 :qid |AccountCreationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@45))
))))
 :qid |AccountCreationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77770 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@#0|)) ) (! (let ((r@@10 (ReverseVec_76391 v@@39)))
 (and (= (seq.len r@@10) (seq.len v@@39)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@10))) (= (seq.nth r@@10 i@@46) (seq.nth v@@39 (- (- (seq.len v@@39) i@@46) 1))))
 :qid |AccountCreationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@46))
))))
 :qid |AccountCreationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_76391 v@@39))
)))
(assert (forall ((|l#0| Bool) (i@@47 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@47) |l#0|)
 :qid |AccountCreationScriptsandybpl.245:54|
 :skolemid |422|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@47))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_85531|) (|l#1| |T@[$1_Event_EventHandle]Multiset_85531|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| |l#1| handle@@0))))
(Multiset_85531 (|lambda#3| (|v#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| |l#0@@0| handle@@0)) (|v#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountCreationScriptsandybpl.2908:13|
 :skolemid |423|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@40) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@40) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@40)))
 :qid |AccountCreationScriptsandybpl.124:29|
 :skolemid |424|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@40))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_124945)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_119270)
(declare-fun _$t2 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_153465)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t5 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_130918)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_136909)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_136500)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_131107)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_137107)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_136682)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_155723)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_155814)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_130982)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_153713)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_118801)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_155588)
(declare-fun _$t3 () (Seq Int))
(declare-fun $t7 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $abort_flag@62 () Bool)
(declare-fun $abort_code@54 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t10 () T@$1_Event_EventHandle)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@4 () T@$Memory_155588)
(declare-fun $t11 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_Roles_RoleId_$memory@5 () T@$Memory_119270)
(declare-fun $1_DesignatedDealer_Dealer_$memory@4 () T@$Memory_153465)
(declare-fun $1_DiemAccount_DiemAccount_$memory@4 () T@$Memory_154667)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@5| () T@$Memory_155905)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int) |T@$1_DiemAccount_Balance'#0'|)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9| () T@$Memory_155723)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int) |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| () T@$Memory_155814)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int) |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $es@2 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_85531_| (|T@[$1_Event_EventHandle]Multiset_85531| T@$1_Event_EventHandle T@Multiset_85531) |T@[$1_Event_EventHandle]Multiset_85531|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_85531|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_85531)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|Store__T@[$1_Event_EventHandle]Multiset_85531_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_85531|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_85531)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|Store__T@[$1_Event_EventHandle]Multiset_85531_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_85531_| ?x0 ?y1))) :weight 0)))
(declare-fun $es@1 () T@$EventStore)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@3 () T@$Memory_155588)
(declare-fun $1_DiemAccount_DiemAccount_$memory@3 () T@$Memory_154667)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| () T@$Memory_155814)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@1| () Int)
(declare-fun $1_Roles_RoleId_$memory@4 () T@$Memory_119270)
(declare-fun $1_DesignatedDealer_Dealer_$memory@3 () T@$Memory_153465)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@4| () T@$Memory_155905)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| () T@$Memory_155723)
(declare-fun $abort_flag@61 () Bool)
(declare-fun $abort_code@53 () Int)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_154667)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2 () T@$Memory_155588)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| () T@$Memory_155814)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| () T@$Memory_155723)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@3| () T@$Memory_155905)
(declare-fun $1_DesignatedDealer_Dealer_$memory@2 () T@$Memory_153465)
(declare-fun $1_Roles_RoleId_$memory@3 () T@$Memory_119270)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t26@0| () Bool)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0| () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_154667)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory| () T@$Memory_155905)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t16@0| () Bool)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t15@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t8@0| () Bool)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t7@0| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| () T@$Memory_155814)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| () T@$Memory_155723)
(declare-fun $abort_flag@39 () Bool)
(declare-fun $abort_code@34 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| () T@$Memory_155723)
(declare-fun $abort_flag@58 () Bool)
(declare-fun $abort_code@50 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| () T@$Memory_155814)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| () T@$Memory_155723)
(declare-fun $abort_flag@21 () Bool)
(declare-fun $abort_code@19 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| () T@$Memory_155814)
(declare-fun $abort_code@52 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| () T@$Memory_155723)
(declare-fun $abort_flag@60 () Bool)
(declare-fun $abort_code@51 () Int)
(declare-fun $abort_flag@59 () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| () T@$Memory_155814)
(declare-fun $abort_flag@57 () Bool)
(declare-fun $abort_code@49 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| () T@$Memory_155814)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| () T@$Memory_155814)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| () T@$Memory_155814)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@48 () Int)
(declare-fun $abort_flag@56 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_flag@55 () Bool)
(declare-fun $abort_code@47 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun inline$$Not$4$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t4@1 () Int)
(declare-fun $abort_flag@53 () Bool)
(declare-fun $abort_code@45 () Int)
(declare-fun $abort_flag@48 () Bool)
(declare-fun $abort_code@41 () Int)
(declare-fun $abort_flag@44 () Bool)
(declare-fun $abort_code@38 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t2@1 () Bool)
(declare-fun $abort_flag@54 () Bool)
(declare-fun $abort_code@46 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@52 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@50 () Bool)
(declare-fun $abort_code@43 () Int)
(declare-fun inline$$1_Roles_has_role$5$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t3@1 () Bool)
(declare-fun $abort_flag@51 () Bool)
(declare-fun $abort_code@44 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$5$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$5$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@42 () Int)
(declare-fun $abort_flag@49 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@47 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@45 () Bool)
(declare-fun $abort_code@39 () Int)
(declare-fun inline$$1_Roles_has_role$4$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t3@1 () Bool)
(declare-fun $abort_code@40 () Int)
(declare-fun $abort_flag@46 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$4$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$4$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@43 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@41 () Bool)
(declare-fun $abort_code@36 () Int)
(declare-fun inline$$1_Roles_has_role$3$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t3@1 () Bool)
(declare-fun $abort_code@37 () Int)
(declare-fun $abort_flag@42 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$3$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$3$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_flag@40 () Bool)
(declare-fun $abort_code@35 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| () Int)
(declare-fun inline$$Not$3$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t8@1| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| () Int)
(declare-fun $abort_flag@38 () Bool)
(declare-fun $abort_code@33 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| () T@$Memory_155723)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| () T@$Memory_155723)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| () T@$Memory_155723)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1| () |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun $abort_code@32 () Int)
(declare-fun $abort_flag@37 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $abort_flag@36 () Bool)
(declare-fun $abort_code@31 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$Not$5$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t4@1 () Int)
(declare-fun $abort_flag@34 () Bool)
(declare-fun $abort_code@29 () Int)
(declare-fun $abort_flag@29 () Bool)
(declare-fun $abort_code@25 () Int)
(declare-fun $abort_flag@25 () Bool)
(declare-fun $abort_code@22 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t2@1 () Bool)
(declare-fun $abort_flag@35 () Bool)
(declare-fun $abort_code@30 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@33 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@31 () Bool)
(declare-fun $abort_code@27 () Int)
(declare-fun inline$$1_Roles_has_role$8$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t3@1 () Bool)
(declare-fun $abort_flag@32 () Bool)
(declare-fun $abort_code@28 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$8$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$8$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@26 () Int)
(declare-fun $abort_flag@30 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@28 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@26 () Bool)
(declare-fun $abort_code@23 () Int)
(declare-fun inline$$1_Roles_has_role$7$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t3@1 () Bool)
(declare-fun $abort_code@24 () Int)
(declare-fun $abort_flag@27 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$7$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$7$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@24 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@22 () Bool)
(declare-fun $abort_code@20 () Int)
(declare-fun inline$$1_Roles_has_role$6$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$t3@1 () Bool)
(declare-fun $abort_flag@23 () Bool)
(declare-fun $abort_code@21 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| () Int)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| () Bool)
(declare-fun $abort_flag@20 () Bool)
(declare-fun $abort_code@18 () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@1| () T@$Memory_155905)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@2| () T@$Memory_155905)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@0| () T@$Memory_155905)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int |T@$1_DiemAccount_Balance'#0'|) |T@[Int]$1_DiemAccount_Balance'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1| () |T@$1_DiemAccount_Balance'#0'|)
(declare-fun $abort_code@17 () Int)
(declare-fun $abort_flag@19 () Bool)
(declare-fun |inline$$1_Diem_zero'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t3@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $abort_flag@18 () Bool)
(declare-fun $abort_code@16 () Int)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'#0'$0$$ret0@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1 () Int)
(declare-fun $abort_flag@16 () Bool)
(declare-fun $abort_code@14 () Int)
(declare-fun $abort_flag@11 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1 () Bool)
(declare-fun $abort_flag@17 () Bool)
(declare-fun $abort_code@15 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@15 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@13 () Bool)
(declare-fun $abort_code@12 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t3@1 () Bool)
(declare-fun $abort_flag@14 () Bool)
(declare-fun $abort_code@13 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@11 () Int)
(declare-fun $abort_flag@12 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@10 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t3@1 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@9 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t3@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t27@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t28@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t29@0| () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2 () T@$Memory_153713)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t23@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t30@0| () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t31@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t32@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@8| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1 () T@$Memory_155588)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0 () T@$Memory_155588)
(declare-fun |Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int T@$1_DiemAccount_AccountOperationsCapability) |T@[Int]$1_DiemAccount_AccountOperationsCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_DiemAccount_AccountOperationsCapability'@1| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@7| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_153713)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_153713)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_AccountFreezing_FreezingBit'@1| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@6| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@3 () T@$Memory_112049)
(declare-fun $1_Event_EventHandleGenerator_$memory () T@$Memory_112049)
(declare-fun $1_Event_EventHandleGenerator_$memory@2 () T@$Memory_112049)
(declare-fun |Store__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int T@$1_Event_EventHandleGenerator) |T@[Int]$1_Event_EventHandleGenerator|)
(declare-fun |Select__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int) T@$1_Event_EventHandleGenerator)
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_Event_EventHandleGenerator'@2| () T@$1_Event_EventHandleGenerator)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@5| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_154667)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_154667)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t24@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t25@0| () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t13@1 () Int)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_150071)
(declare-fun $1_DualAttestation_Credential_$memory@0 () T@$Memory_150071)
(declare-fun |Store__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int T@$1_DualAttestation_Credential) |T@[Int]$1_DualAttestation_Credential|)
(declare-fun |Select__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int) T@$1_DualAttestation_Credential)
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DualAttestation_Credential_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t26@1 () T@$1_DualAttestation_Credential)
(declare-fun _$t4 () (Seq Int))
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
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t20@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t17@1 () Bool)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t15@0 () Bool)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t16@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t14@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t13@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t12@0 () Bool)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t10@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t11@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t5@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t6@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t7@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t8@0 () Int)
(declare-fun inline$$1_DualAttestation_publish_credential$0$$t9@0 () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t17@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t18@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t19@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@4| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| () T@$Memory_136909)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| () T@$Memory_136909)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@1| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@3| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1| () T@$Memory_137107)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_137107)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_Diem_PreburnQueue'#0''@1| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@2| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1 () T@$Memory_112049)
(declare-fun $1_Event_EventHandleGenerator_$memory@0 () T@$Memory_112049)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_Event_EventHandleGenerator'@1| () T@$1_Event_EventHandleGenerator)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1 () T@$Memory_153465)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0 () T@$Memory_153465)
(declare-fun |Store__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int T@$1_DesignatedDealer_Dealer) |T@[Int]$1_DesignatedDealer_Dealer|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int) T@$1_DesignatedDealer_Dealer)
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_DesignatedDealer_Dealer'@1| () T@$1_DesignatedDealer_Dealer)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t6@0 () Int)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t9@0 () Bool)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t5@0 () Bool)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t4@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_119270)
(declare-fun |inline$$1_Roles_new_designated_dealer_role$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_119270)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_119270)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Roles_new_designated_dealer_role$0$$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t8@0 () Int)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t2@0 () Int)
(declare-fun inline$$1_Roles_new_designated_dealer_role$0$$t3@0 () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t12@0| () Int)
(declare-fun |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t6@0| () Int)
(declare-fun $t9 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 () Int)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_124945)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_124945)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_122244)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_123619)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_136240)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_136327)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_131520)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_131607)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_137008)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_136591)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| Int) |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'#0'_| (|T@[Int]$1_Diem_Preburn'#0'| Int) |T@$1_Diem_Preburn'#0'|)
(push 1)
(set-info :boogie-vc-id $1_AccountCreationScripts_create_designated_dealer$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 305069) (let ((L2_correct  (and (=> (= (ControlFlow 0 219761) (- 0 318136)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) _$t0)) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) _$t2)) (|Select__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) _$t2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t0 186537453))) (and _$t5 (let ((addr 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr)))))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136500| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2))) (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t5) (let ((addr@@0 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0)))))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) _$t2))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_136682| |$1_Diem_Preburn'#0'_$memory|) _$t2))) (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t2 0)) (= _$t2 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) _$t2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t3)) 32))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= _$t0 186537453)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) _$t0)) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) _$t2)) (|Select__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) _$t2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t0 186537453))) (and _$t5 (let ((addr@@1 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@1)))))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136500| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2))) (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t5) (let ((addr@@2 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@2) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@2)))))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) _$t2))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_136682| |$1_Diem_Preburn'#0'_$memory|) _$t2))) (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t2 0)) (= _$t2 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) _$t2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t3)) 32))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= _$t0 186537453))) (=> (= (ControlFlow 0 219761) (- 0 318410)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) _$t0)) (= 5 $t8@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0)) (= 7 $t8@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) _$t2) (= 6 $t8@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) _$t2) (= 6 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) $t6)) (= 5 $t8@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t8@0))) (and (not (= _$t0 186537453)) (= 2 $t8@0))) (and (and _$t5 (let ((addr@@3 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@3) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@3))))) (= 7 $t8@0))) (and (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2)) (= 6 $t8@0))) (and (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136500| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2)) (= 1 $t8@0))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t8@0))) (and (and (not _$t5) (let ((addr@@4 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@4) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@4))))) (= 7 $t8@0))) (and (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) _$t2)) (= 6 $t8@0))) (and (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_136682| |$1_Diem_Preburn'#0'_$memory|) _$t2)) (= 1 $t8@0))) (and (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t8@0))) (and (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t8@0))) (and (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t8@0))) (and (= _$t2 0) (= 7 $t8@0))) (and (= _$t2 1) (= 7 $t8@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) _$t2) (= 6 $t8@0))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t8@0))) (and (not (= (+ 16 (seq.len _$t3)) 32)) (= 7 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) $t7)) (= 5 $t8@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $t7)) 1)) (= 3 $t8@0))) (and (not (= _$t0 186537453)) (= 2 $t8@0))) (= 7 $t8@0)) (= 2 $t8@0)) (= 5 $t8@0)) (= 6 $t8@0)) (= 3 $t8@0)))))))
(let ((anon7_Then_correct  (=> (and (and $abort_flag@62 (= $abort_code@54 $abort_code@54)) (and (= $t8@0 $abort_code@54) (= (ControlFlow 0 218857) 219761))) L2_correct)))
(let ((anon6_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t8@0 $abort_code@1) (= (ControlFlow 0 219775) 219761))) L2_correct)))
(let ((anon7_Else_correct  (=> (not $abort_flag@62) (=> (and (= $t10 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816))) (= $t11 ($1_DiemAccount_CreateAccountEvent _$t2 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@5) _$t2))))) (and (=> (= (ControlFlow 0 218843) (- 0 317601)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) _$t0))) (and (=> (= (ControlFlow 0 218843) (- 0 317614)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1) 0))) (and (=> (= (ControlFlow 0 218843) (- 0 317629)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) _$t2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) _$t2)) (and (=> (= (ControlFlow 0 218843) (- 0 317638)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) _$t2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) _$t2)) (and (=> (= (ControlFlow 0 218843) (- 0 317647)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 218843) (- 0 317659)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 218843) (- 0 317677)) (not (not (= _$t0 186537453)))) (=> (not (not (= _$t0 186537453))) (and (=> (= (ControlFlow 0 218843) (- 0 317691)) (not (and _$t5 (let ((addr@@5 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@5))))))) (=> (not (and _$t5 (let ((addr@@6 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@6)))))) (and (=> (= (ControlFlow 0 218843) (- 0 317702)) (not (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2)))) (=> (not (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) _$t2))) (and (=> (= (ControlFlow 0 218843) (- 0 317714)) (not (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136500| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2)))) (=> (not (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136500| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) _$t2))) (and (=> (= (ControlFlow 0 218843) (- 0 317726)) (not (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 218843) (- 0 317739)) (not (and (not _$t5) (let ((addr@@7 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@7))))))) (=> (not (and (not _$t5) (let ((addr@@8 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@8)))))) (and (=> (= (ControlFlow 0 218843) (- 0 317752)) (not (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) _$t2)))) (=> (not (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) _$t2))) (and (=> (= (ControlFlow 0 218843) (- 0 317766)) (not (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_136682| |$1_Diem_Preburn'#0'_$memory|) _$t2)))) (=> (not (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_136682| |$1_Diem_Preburn'#0'_$memory|) _$t2))) (and (=> (= (ControlFlow 0 218843) (- 0 317780)) (not (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 218843) (- 0 317792)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 218843) (- 0 317799)) (not (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 218843) (- 0 317817)) (not (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 218843) (- 0 317838)) (not (= _$t2 0))) (=> (not (= _$t2 0)) (and (=> (= (ControlFlow 0 218843) (- 0 317848)) (not (= _$t2 1))) (=> (not (= _$t2 1)) (and (=> (= (ControlFlow 0 218843) (- 0 317858)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) _$t2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) _$t2)) (and (=> (= (ControlFlow 0 218843) (- 0 317867)) (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))))) (=> (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (and (=> (= (ControlFlow 0 218843) (- 0 317884)) (not (not (= (+ 16 (seq.len _$t3)) 32)))) (=> (not (not (= (+ 16 (seq.len _$t3)) 32))) (and (=> (= (ControlFlow 0 218843) (- 0 317902)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 218843) (- 0 317914)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $t7)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $t7)) 1))) (and (=> (= (ControlFlow 0 218843) (- 0 317932)) (not (not (= _$t0 186537453)))) (=> (not (not (= _$t0 186537453))) (and (=> (= (ControlFlow 0 218843) (- 0 317946)) (|Select__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory@4) _$t2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory@4) _$t2) (and (=> (= (ControlFlow 0 218843) (- 0 317953)) (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory@4) _$t2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory@4) _$t2) (and (=> (= (ControlFlow 0 218843) (- 0 317960)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@5) _$t2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@5) _$t2)) 2))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@5) _$t2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@5) _$t2)) 2)) (and (=> (= (ControlFlow 0 218843) (- 0 317967)) (|Select__T@[Int]Bool_| (|domain#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory@5|) _$t2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory@5|) _$t2) (and (=> (= (ControlFlow 0 218843) (- 0 317974)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory@5|) _$t2) (|$1_DiemAccount_Balance'#0'| (|$1_Diem_Diem'#0'| 0)))) (=> (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory@5|) _$t2) (|$1_DiemAccount_Balance'#0'| (|$1_Diem_Diem'#0'| 0))) (and (=> (= (ControlFlow 0 218843) (- 0 317989)) (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9|) _$t2))) (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9|) _$t2))) (=> (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9|) _$t2))) (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9|) _$t2)) (and (=> (= (ControlFlow 0 218843) (- 0 318007)) (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9|) _$t2))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9|) _$t2) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0))))) (=> (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9|) _$t2))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9|) _$t2) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0)))) (and (=> (= (ControlFlow 0 218843) (- 0 318033)) (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2))) (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2))) (=> (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2))) (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2)) (and (=> (= (ControlFlow 0 218843) (- 0 318051)) (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0))))) (=> (=> (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) _$t2) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0)))) (and (=> (= (ControlFlow 0 218843) (- 0 318077)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new (let ((len (|l#Multiset_85531| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11))))
(Multiset_85531 (|Store__T@[$EventRep]Int_| (|v#Multiset_85531| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@41 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| expected) handle@@1)) v@@41) (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| actual) handle@@1)) v@@41))
 :qid |AccountCreationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |AccountCreationScriptsandybpl.2914:13|
 :skolemid |80|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_85531| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11))))
(Multiset_85531 (|Store__T@[$EventRep]Int_| (|v#Multiset_85531| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@42 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| expected@@0) handle@@2)) v@@42) (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| actual@@0) handle@@2)) v@@42))
 :qid |AccountCreationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |AccountCreationScriptsandybpl.2914:13|
 :skolemid |80|
))))) (=> (= (ControlFlow 0 218843) (- 0 318102)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_85531| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11))))
(Multiset_85531 (|Store__T@[$EventRep]Int_| (|v#Multiset_85531| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t11) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@43 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| actual@@1) handle@@3)) v@@43) (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| expected@@1) handle@@3)) v@@43))
 :qid |AccountCreationScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |AccountCreationScriptsandybpl.2914:13|
 :skolemid |80|
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$L2_correct|  (=> (and (= $es@2 $es@1) (= $1_DiemAccount_AccountOperationsCapability_$memory@4 $1_DiemAccount_AccountOperationsCapability_$memory@3)) (=> (and (and (and (= $1_DiemAccount_DiemAccount_$memory@4 $1_DiemAccount_DiemAccount_$memory@3) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8|)) (and (= $abort_flag@62 true) (= $abort_code@54 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@1|))) (and (and (= $1_Roles_RoleId_$memory@5 $1_Roles_RoleId_$memory@4) (= $1_DesignatedDealer_Dealer_$memory@4 $1_DesignatedDealer_Dealer_$memory@3)) (and (= |$1_DiemAccount_Balance'#0'_$memory@5| |$1_DiemAccount_Balance'#0'_$memory@4|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8|)))) (and (=> (= (ControlFlow 0 217595) 218857) anon7_Then_correct) (=> (= (ControlFlow 0 217595) 218843) anon7_Else_correct))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon56_Then_correct|  (=> (and (and $abort_flag@61 (= $abort_code@53 $abort_code@53)) (and (= $es@1 $es@0) (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory@2))) (=> (and (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory@2) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) (= |$1_DiemAccount_Balance'#0'_$memory@4| |$1_DiemAccount_Balance'#0'_$memory@3|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@1| $abort_code@53) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory@2)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory@3) (= (ControlFlow 0 217589) 217595)))) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$L2_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon51_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t26@0| (=> (and (and (or (or (or (or (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| 0) (= 7 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|)) (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| 1) (= 7 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0|) (= 6 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (not (= (+ 16 (seq.len _$t3)) 32)) (= 7 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|)) (and (= $es@1 $es) (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory))) (=> (and (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= |$1_DiemAccount_Balance'#0'_$memory@4| |$1_DiemAccount_Balance'#0'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@1| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory@2)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory@3) (= (ControlFlow 0 217749) 217595)))) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$L2_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon50_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $es@1 $es) (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory))) (=> (and (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= |$1_DiemAccount_Balance'#0'_$memory@4| |$1_DiemAccount_Balance'#0'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@1| $abort_code@4) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory@2)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory@3) (= (ControlFlow 0 217763) 217595)))) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$L2_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon45_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t16@0| (=> (and (and (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t14@0|)) (= 5 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t14@0|)) 1)) (= 3 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (not (= _$t0 186537453)) (= 2 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t15@0|)) (= 5 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t15@0|)) 2)) (= 3 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0|) (= 6 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (and _$t5 (let ((addr@@9 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@9) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@9))))) (= 7 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0|)) (= 6 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136500| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0|)) (= 1 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (and (not _$t5) (let ((addr@@10 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@10) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@10))))) (= 7 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0|)) (= 6 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_136682| |$1_Diem_Preburn'#0'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0|)) (= 1 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|)) (and (= $es@1 $es) (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory))) (=> (and (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= |$1_DiemAccount_Balance'#0'_$memory@4| |$1_DiemAccount_Balance'#0'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@1| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory@3) (= (ControlFlow 0 218105) 217595)))) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$L2_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon44_Then_correct|  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $es@1 $es) (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory))) (=> (and (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= |$1_DiemAccount_Balance'#0'_$memory@4| |$1_DiemAccount_Balance'#0'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@1| $abort_code@2) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory@3) (= (ControlFlow 0 218119) 217595)))) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$L2_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon43_Then_correct|  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $es@1 $es) (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory))) (=> (and (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= |$1_DiemAccount_Balance'#0'_$memory@4| |$1_DiemAccount_Balance'#0'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@1| $abort_code@1) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory) (= (ControlFlow 0 218133) 217595)))) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$L2_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon42_Then_correct|  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $es@1 $es) (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory))) (=> (and (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= |$1_DiemAccount_Balance'#0'_$memory@4| |$1_DiemAccount_Balance'#0'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@1| $abort_code@1) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory) (= (ControlFlow 0 218147) 217595)))) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$L2_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon41_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t8@0| (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t7@0|)) (= 5 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t7@0|)) 1)) (= 3 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (and (not (= _$t0 186537453)) (= 2 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|))) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|)) (and (= $es@1 $es) (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory))) (=> (and (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@3 $1_DiemAccount_AccountOperationsCapability_$memory) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@8| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= |$1_DiemAccount_Balance'#0'_$memory@4| |$1_DiemAccount_Balance'#0'_$memory|))) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@1| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t9@0|) (= $1_DesignatedDealer_Dealer_$memory@3 $1_DesignatedDealer_Dealer_$memory)) (and (= $1_Roles_RoleId_$memory@4 $1_Roles_RoleId_$memory) (= (ControlFlow 0 218219) 217595)))) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$L2_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon56_Else_correct|  (=> (not $abort_flag@61) (=> (and (= $es@2 $es@0) (= $1_DiemAccount_AccountOperationsCapability_$memory@4 $1_DiemAccount_AccountOperationsCapability_$memory@2)) (=> (and (and (and (= $1_DiemAccount_DiemAccount_$memory@4 $1_DiemAccount_DiemAccount_$memory@2) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|)) (and (= $abort_flag@62 $abort_flag@61) (= $abort_code@54 $abort_code@53))) (and (and (= $1_Roles_RoleId_$memory@5 $1_Roles_RoleId_$memory@3) (= $1_DesignatedDealer_Dealer_$memory@4 $1_DesignatedDealer_Dealer_$memory@2)) (and (= |$1_DiemAccount_Balance'#0'_$memory@5| |$1_DiemAccount_Balance'#0'_$memory@3|) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@9| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|)))) (and (=> (= (ControlFlow 0 217575) 218857) anon7_Then_correct) (=> (= (ControlFlow 0 217575) 218843) anon7_Else_correct)))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6|) (= $abort_code@53 |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@1|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6|) (= $abort_flag@61 true))) (and (=> (= (ControlFlow 0 213688) 217589) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon56_Then_correct|) (=> (= (ControlFlow 0 213688) 217575) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon56_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|  (=> (and $abort_flag@39 (= $abort_code@34 $abort_code@34)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@1| $abort_code@34)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 217547) 213688))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|  (=> (and $abort_flag@58 (= $abort_code@50 $abort_code@50)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@1| $abort_code@50)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|) (= (ControlFlow 0 213682) 213688))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|  (=> (and $abort_flag@21 (= $abort_code@19 $abort_code@19)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@1| $abort_code@19)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 217561) 213688))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5|) (= $abort_code@53 $abort_code@52)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5|) (= $abort_flag@61 $abort_flag@60))) (and (=> (= (ControlFlow 0 209715) 217589) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon56_Then_correct|) (=> (= (ControlFlow 0 209715) 217575) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon56_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|  (=> (= $abort_code@52 $abort_code@51) (=> (and (and (= $abort_flag@60 $abort_flag@59) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4|) (= (ControlFlow 0 209825) 209715))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|  (=> (not $abort_flag@58) (=> (and (and (= $abort_code@51 $abort_code@50) (= $abort_flag@59 $abort_flag@58)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 213668) 209825))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@57) (= $abort_code@50 $abort_code@49)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= $abort_flag@58 $abort_flag@57))) (and (=> (= (ControlFlow 0 213524) 213682) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 213524) 213668) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|  (=> (= $abort_code@50 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2|) (= $abort_flag@58 true)) (and (=> (= (ControlFlow 0 210613) 213682) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 210613) 213668) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> $abort_flag@57 (=> (and (and (= $abort_code@49 $abort_code@49) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@49)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 213538) 210613))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (=> (and (= $abort_code@49 $EXEC_FAILURE_CODE) (= $abort_flag@57 true)) (and (=> (= (ControlFlow 0 213588) 213538) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 213588) 213524) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2) (= (ControlFlow 0 213586) 213588)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| ($Memory_155814 (|Store__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2 true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t2 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0|)) (and (= $abort_code@49 $abort_code@48) (= $abort_flag@57 $abort_flag@56))) (and (=> (= (ControlFlow 0 213514) 213538) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 213514) 213524) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|  (=> (and (not $abort_flag@56) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1| (|$1_DiemAccount_Balance'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 213496) 213586) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 213496) 213514) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|  (=> $abort_flag@56 (=> (and (and (= $abort_code@48 $abort_code@48) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@48)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 213602) 210613))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_flag@56 $abort_flag@55)) (and (= $abort_code@48 $abort_code@47) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 213448) 213602) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 213448) 213496) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_flag@56 true)) (and (= $abort_code@48 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 213478) 213602) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 213478) 213496) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 213420) 213478) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 213420) 213448) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|  (=> (and inline$$Not$4$dst@1 (= (ControlFlow 0 213484) 213420)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|  (=> (not inline$$Not$4$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 213267) 210613))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= inline$$Not$4$dst@1 inline$$Not$4$dst@1))) (and (=> (= (ControlFlow 0 213251) 213484) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 213251) 213267) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|))))))
(let ((inline$$Not$4$anon0_correct  (=> (and (= inline$$Not$4$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1|)) (= (ControlFlow 0 213215) 213251)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$1$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|)) (= (ControlFlow 0 213221) 213215)) inline$$Not$4$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$1$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 213175) 210613))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|  (=> (and (not $abort_flag@55) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@1))) (and (=> (= (ControlFlow 0 213159) 213221) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 213159) 213175) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|  (=> $abort_flag@55 (=> (and (and (= $abort_code@47 $abort_code@47) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@47)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 213616) 210613))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$1$L9_correct  (=> (= $abort_flag@55 true) (=> (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@0) (= $abort_code@47 inline$$1_Roles_can_hold_balance$1$$t4@1)) (and (=> (= (ControlFlow 0 213049) 213616) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 213049) 213159) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Then_correct  (=> (and (and $abort_flag@53 (= $abort_code@45 $abort_code@45)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@45) (= (ControlFlow 0 213043) 213049))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Then_correct  (=> (and (and $abort_flag@48 (= $abort_code@41 $abort_code@41)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@41) (= (ControlFlow 0 213081) 213049))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Then_correct  (=> (and (and $abort_flag@44 (= $abort_code@38 $abort_code@38)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@38) (= (ControlFlow 0 213113) 213049))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_flag@55 $abort_flag@54)) (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_code@47 $abort_code@46))) (and (=> (= (ControlFlow 0 213029) 213616) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 213029) 213159) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Else_correct  (=> (and (not $abort_flag@53) (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1) (= $abort_code@46 $abort_code@45)) (and (= $abort_flag@54 $abort_flag@53) (= (ControlFlow 0 213017) 213029))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@52) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1) (= $abort_flag@53 $abort_flag@52))) (and (=> (= (ControlFlow 0 212975) 213043) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 212975) 213017) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct  (=> (and (and $abort_flag@52 (= $abort_code@45 $abort_code@45)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@0) (= $abort_flag@53 true))) (and (=> (= (ControlFlow 0 212993) 213043) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 212993) 213017) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Then_correct  (=> $abort_flag@50 (=> (and (and (= $abort_code@43 $abort_code@43) (= $abort_flag@52 true)) (and (= $abort_code@45 $abort_code@43) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@0))) (and (=> (= (ControlFlow 0 212899) 212993) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 212899) 212975) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$5$$t3@1 inline$$1_Roles_has_role$5$$t3@1) (= $abort_flag@52 $abort_flag@51)) (and (= $abort_code@45 $abort_code@44) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$t3@1))) (and (=> (= (ControlFlow 0 212835) 212993) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 212835) 212975) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Else_correct  (=> (and (and (and (not $abort_flag@50) (= inline$$1_Roles_has_role$5$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$5$$t6@2))) (and (= inline$$1_Roles_has_role$5$$t9@1 (= inline$$1_Roles_has_role$5$$t8@1 2)) (= inline$$1_Roles_has_role$5$$t9@1 inline$$1_Roles_has_role$5$$t9@1))) (and (and (= $abort_flag@51 $abort_flag@50) (= inline$$1_Roles_has_role$5$$t3@1 inline$$1_Roles_has_role$5$$t9@1)) (and (= $abort_code@44 $abort_code@43) (= (ControlFlow 0 212881) 212835)))) inline$$1_Roles_has_role$5$L3_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Then$1_correct  (=> (= $abort_code@43 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@50 true) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@0)) (and (=> (= (ControlFlow 0 212951) 212899) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 212951) 212881) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= (ControlFlow 0 212949) 212951)) inline$$1_Roles_has_role$5$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$5$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= $abort_code@43 $abort_code@42)) (and (= $abort_flag@50 $abort_flag@49) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@1))) (and (=> (= (ControlFlow 0 212853) 212899) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 212853) 212881) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon9_Then_correct  (=> inline$$1_Roles_has_role$5$$t5@1 (and (=> (= (ControlFlow 0 212839) 212949) inline$$1_Roles_has_role$5$anon10_Then_correct) (=> (= (ControlFlow 0 212839) 212853) inline$$1_Roles_has_role$5$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$5$$t5@1) (= false false)) (=> (and (and (= $abort_flag@51 $abort_flag@49) (= inline$$1_Roles_has_role$5$$t3@1 false)) (and (= $abort_code@44 $abort_code@42) (= (ControlFlow 0 212823) 212835))) inline$$1_Roles_has_role$5$L3_correct))))
(let ((inline$$1_Roles_has_role$5$anon0_correct  (=> (and (= _$t2 _$t2) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t4@0 _$t2)) (and (= inline$$1_Roles_has_role$5$$t4@0 inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)))) (and (=> (= (ControlFlow 0 212803) 212839) inline$$1_Roles_has_role$5$anon9_Then_correct) (=> (= (ControlFlow 0 212803) 212823) inline$$1_Roles_has_role$5$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon0_correct  (=> (= _$t2 _$t2) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 212957) 212803)) inline$$1_Roles_has_role$5$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$1$$t1@1) (= (ControlFlow 0 212999) 212957)) inline$$1_Roles_has_designated_dealer_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$1$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 true) (= $abort_code@46 $abort_code@42)) (and (= $abort_flag@54 $abort_flag@49) (= (ControlFlow 0 213067) 213029))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Else_correct  (=> (not $abort_flag@48) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1) (= inline$$1_Roles_can_hold_balance$1$$t1@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1)) (and (= $abort_flag@49 $abort_flag@48) (= $abort_code@42 $abort_code@41))) (and (=> (= (ControlFlow 0 212317) 213067) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 212317) 212999) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@47) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1) (= $abort_flag@48 $abort_flag@47))) (and (=> (= (ControlFlow 0 212275) 213081) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 212275) 212317) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@47 (= $abort_code@41 $abort_code@41)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@0) (= $abort_flag@48 true))) (and (=> (= (ControlFlow 0 212293) 213081) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 212293) 212317) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Then_correct  (=> $abort_flag@45 (=> (and (and (= $abort_code@39 $abort_code@39) (= $abort_code@41 $abort_code@39)) (and (= $abort_flag@47 true) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@0))) (and (=> (= (ControlFlow 0 212199) 212293) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 212199) 212275) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$4$$t3@1 inline$$1_Roles_has_role$4$$t3@1) (= $abort_code@41 $abort_code@40)) (and (= $abort_flag@47 $abort_flag@46) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$t3@1))) (and (=> (= (ControlFlow 0 212135) 212293) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 212135) 212275) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Else_correct  (=> (and (and (and (not $abort_flag@45) (= inline$$1_Roles_has_role$4$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$4$$t6@2))) (and (= inline$$1_Roles_has_role$4$$t9@1 (= inline$$1_Roles_has_role$4$$t8@1 6)) (= inline$$1_Roles_has_role$4$$t9@1 inline$$1_Roles_has_role$4$$t9@1))) (and (and (= $abort_code@40 $abort_code@39) (= inline$$1_Roles_has_role$4$$t3@1 inline$$1_Roles_has_role$4$$t9@1)) (and (= $abort_flag@46 $abort_flag@45) (= (ControlFlow 0 212181) 212135)))) inline$$1_Roles_has_role$4$L3_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Then$1_correct  (=> (= $abort_flag@45 true) (=> (and (= $abort_code@39 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@0)) (and (=> (= (ControlFlow 0 212251) 212199) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 212251) 212181) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= (ControlFlow 0 212249) 212251)) inline$$1_Roles_has_role$4$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$4$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= $abort_flag@45 $abort_flag@44)) (and (= $abort_code@39 $abort_code@38) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@1))) (and (=> (= (ControlFlow 0 212153) 212199) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 212153) 212181) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon9_Then_correct  (=> inline$$1_Roles_has_role$4$$t5@1 (and (=> (= (ControlFlow 0 212139) 212249) inline$$1_Roles_has_role$4$anon10_Then_correct) (=> (= (ControlFlow 0 212139) 212153) inline$$1_Roles_has_role$4$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$4$$t5@1) (= false false)) (=> (and (and (= $abort_code@40 $abort_code@38) (= inline$$1_Roles_has_role$4$$t3@1 false)) (and (= $abort_flag@46 $abort_flag@44) (= (ControlFlow 0 212123) 212135))) inline$$1_Roles_has_role$4$L3_correct))))
(let ((inline$$1_Roles_has_role$4$anon0_correct  (=> (and (= _$t2 _$t2) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t4@0 _$t2)) (and (= inline$$1_Roles_has_role$4$$t4@0 inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)))) (and (=> (= (ControlFlow 0 212103) 212139) inline$$1_Roles_has_role$4$anon9_Then_correct) (=> (= (ControlFlow 0 212103) 212123) inline$$1_Roles_has_role$4$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon0_correct  (=> (= _$t2 _$t2) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 212257) 212103)) inline$$1_Roles_has_role$4$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$1$$ret0@1) (= (ControlFlow 0 212299) 212257)) inline$$1_Roles_has_child_VASP_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$1$$t1@1 true)) (and (= $abort_flag@49 $abort_flag@44) (= $abort_code@42 $abort_code@38))) (and (=> (= (ControlFlow 0 213099) 213067) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 213099) 212999) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Else_correct  (=> (not $abort_flag@44) (and (=> (= (ControlFlow 0 211619) 213099) inline$$1_Roles_can_hold_balance$1$anon14_Then_correct) (=> (= (ControlFlow 0 211619) 212299) inline$$1_Roles_can_hold_balance$1$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@43) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1) (= $abort_flag@44 $abort_flag@43))) (and (=> (= (ControlFlow 0 211587) 213113) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 211587) 211619) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@43 (= $abort_code@38 $abort_code@38)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_parent_VASP_role$1$$ret0@0) (= $abort_flag@44 true))) (and (=> (= (ControlFlow 0 211605) 213113) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 211605) 211619) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Then_correct  (=> $abort_flag@41 (=> (and (and (= $abort_code@36 $abort_code@36) (= $abort_code@38 $abort_code@36)) (and (= $abort_flag@43 true) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@0))) (and (=> (= (ControlFlow 0 211511) 211605) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 211511) 211587) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$3$$t3@1 inline$$1_Roles_has_role$3$$t3@1) (= $abort_code@38 $abort_code@37)) (and (= $abort_flag@43 $abort_flag@42) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$t3@1))) (and (=> (= (ControlFlow 0 211447) 211605) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 211447) 211587) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Else_correct  (=> (and (and (and (not $abort_flag@41) (= inline$$1_Roles_has_role$3$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$3$$t6@2))) (and (= inline$$1_Roles_has_role$3$$t9@1 (= inline$$1_Roles_has_role$3$$t8@1 5)) (= inline$$1_Roles_has_role$3$$t9@1 inline$$1_Roles_has_role$3$$t9@1))) (and (and (= $abort_code@37 $abort_code@36) (= inline$$1_Roles_has_role$3$$t3@1 inline$$1_Roles_has_role$3$$t9@1)) (and (= $abort_flag@42 $abort_flag@41) (= (ControlFlow 0 211493) 211447)))) inline$$1_Roles_has_role$3$L3_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Then$1_correct  (=> (= $abort_flag@41 true) (=> (and (= $abort_code@36 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@0)) (and (=> (= (ControlFlow 0 211563) 211511) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 211563) 211493) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= (ControlFlow 0 211561) 211563)) inline$$1_Roles_has_role$3$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$3$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= $abort_flag@41 $abort_flag@40)) (and (= $abort_code@36 $abort_code@35) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@1))) (and (=> (= (ControlFlow 0 211465) 211511) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 211465) 211493) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon9_Then_correct  (=> inline$$1_Roles_has_role$3$$t5@1 (and (=> (= (ControlFlow 0 211451) 211561) inline$$1_Roles_has_role$3$anon10_Then_correct) (=> (= (ControlFlow 0 211451) 211465) inline$$1_Roles_has_role$3$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$3$$t5@1) (= false false)) (=> (and (and (= $abort_code@37 $abort_code@35) (= inline$$1_Roles_has_role$3$$t3@1 false)) (and (= $abort_flag@42 $abort_flag@40) (= (ControlFlow 0 211435) 211447))) inline$$1_Roles_has_role$3$L3_correct))))
(let ((inline$$1_Roles_has_role$3$anon0_correct  (=> (and (= _$t2 _$t2) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t4@0 _$t2)) (and (= inline$$1_Roles_has_role$3$$t4@0 inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)))) (and (=> (= (ControlFlow 0 211415) 211451) inline$$1_Roles_has_role$3$anon9_Then_correct) (=> (= (ControlFlow 0 211415) 211435) inline$$1_Roles_has_role$3$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon0_correct  (=> (= _$t2 _$t2) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 211569) 211415)) inline$$1_Roles_has_role$3$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon0_correct  (=> (and (= _$t2 _$t2) (= (ControlFlow 0 211611) 211569)) inline$$1_Roles_has_parent_VASP_role$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$1$$t1@1 (= (ControlFlow 0 213119) 211611)) inline$$1_Roles_can_hold_balance$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$1$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 210607) 210613))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|  (=> (and (not $abort_flag@40) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 210591) 213119) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 210591) 210607) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|  (=> $abort_flag@40 (=> (and (and (= $abort_code@35 $abort_code@35) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@35)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 213630) 210613))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 210549) 213630) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 210549) 210591) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= (ControlFlow 0 210555) 210549)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 213656) 210613))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (= _$t2 _$t2) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| _$t2)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 210444) 213656) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 210444) 210555) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Then_correct|  (=> (and inline$$Not$3$dst@1 (= (ControlFlow 0 213660) 210444)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Else_correct|  (=> (not inline$$Not$3$dst@1) (=> (and (and (= $abort_code@51 $abort_code@35) (= $abort_flag@59 $abort_flag@40)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 209823) 209825))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|))))
(let ((inline$$Not$3$anon0_correct  (=> (= inline$$Not$3$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t8@1|)) (and (=> (= (ControlFlow 0 209807) 213660) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 209807) 209823) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|  (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t8@1| (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|)) (= (ControlFlow 0 209813) 209807)) inline$$Not$3$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|  (=> (not $abort_flag@39) (=> (and (and (= $abort_code@35 $abort_code@34) (= $abort_flag@40 $abort_flag@39)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 217533) 209813))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@38) (= $abort_code@34 $abort_code@33)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= $abort_flag@39 $abort_flag@38))) (and (=> (= (ControlFlow 0 217387) 217547) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 217387) 217533) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|  (=> (= $abort_code@34 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2|) (= $abort_flag@39 true)) (and (=> (= (ControlFlow 0 214476) 217547) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 214476) 217533) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|  (=> $abort_flag@38 (=> (and (and (= $abort_code@33 $abort_code@33) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@33)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 217401) 214476))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (=> (and (= $abort_code@33 $EXEC_FAILURE_CODE) (= $abort_flag@38 true)) (and (=> (= (ControlFlow 0 217451) 217401) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 217451) 217387) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2) (= (ControlFlow 0 217449) 217451)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| ($Memory_155723 (|Store__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2 true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t2 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1|))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|)) (and (= $abort_code@33 $abort_code@32) (= $abort_flag@38 $abort_flag@37))) (and (=> (= (ControlFlow 0 217377) 217401) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 217377) 217387) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|  (=> (and (not $abort_flag@37) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1| (|$1_DiemAccount_Balance'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 217359) 217449) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 217359) 217377) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|  (=> $abort_flag@37 (=> (and (and (= $abort_code@32 $abort_code@32) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@32)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 217465) 214476))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|) (= $abort_flag@37 $abort_flag@36)) (and (= $abort_code@32 $abort_code@31) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|))) (and (=> (= (ControlFlow 0 217311) 217465) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 217311) 217359) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= $abort_flag@37 true)) (and (= $abort_code@32 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 217341) 217465) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 217341) 217359) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 217283) 217341) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 217283) 217311) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|  (=> (and inline$$Not$5$dst@1 (= (ControlFlow 0 217347) 217283)) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|  (=> (not inline$$Not$5$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 217130) 214476))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= inline$$Not$5$dst@1 inline$$Not$5$dst@1))) (and (=> (= (ControlFlow 0 217114) 217347) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 217114) 217130) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|))))))
(let ((inline$$Not$5$anon0_correct  (=> (and (= inline$$Not$5$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1|)) (= (ControlFlow 0 217078) 217114)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$2$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|)) (= (ControlFlow 0 217084) 217078)) inline$$Not$5$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$2$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 217038) 214476))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|  (=> (and (not $abort_flag@36) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@1))) (and (=> (= (ControlFlow 0 217022) 217084) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 217022) 217038) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|  (=> $abort_flag@36 (=> (and (and (= $abort_code@31 $abort_code@31) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@31)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 217479) 214476))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$2$L9_correct  (=> (= $abort_flag@36 true) (=> (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@0) (= $abort_code@31 inline$$1_Roles_can_hold_balance$2$$t4@1)) (and (=> (= (ControlFlow 0 216912) 217479) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 216912) 217022) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Then_correct  (=> (and (and $abort_flag@34 (= $abort_code@29 $abort_code@29)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@29) (= (ControlFlow 0 216906) 216912))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Then_correct  (=> (and (and $abort_flag@29 (= $abort_code@25 $abort_code@25)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@25) (= (ControlFlow 0 216944) 216912))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Then_correct  (=> (and (and $abort_flag@25 (= $abort_code@22 $abort_code@22)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@22) (= (ControlFlow 0 216976) 216912))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_flag@36 $abort_flag@35)) (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_code@31 $abort_code@30))) (and (=> (= (ControlFlow 0 216892) 217479) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 216892) 217022) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Else_correct  (=> (and (not $abort_flag@34) (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1) (= $abort_code@30 $abort_code@29)) (and (= $abort_flag@35 $abort_flag@34) (= (ControlFlow 0 216880) 216892))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@33) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1) (= $abort_flag@34 $abort_flag@33))) (and (=> (= (ControlFlow 0 216838) 216906) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 216838) 216880) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct  (=> (and (and $abort_flag@33 (= $abort_code@29 $abort_code@29)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@0) (= $abort_flag@34 true))) (and (=> (= (ControlFlow 0 216856) 216906) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 216856) 216880) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Then_correct  (=> $abort_flag@31 (=> (and (and (= $abort_code@27 $abort_code@27) (= $abort_flag@33 true)) (and (= $abort_code@29 $abort_code@27) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@0))) (and (=> (= (ControlFlow 0 216762) 216856) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 216762) 216838) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$8$$t3@1 inline$$1_Roles_has_role$8$$t3@1) (= $abort_flag@33 $abort_flag@32)) (and (= $abort_code@29 $abort_code@28) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$t3@1))) (and (=> (= (ControlFlow 0 216698) 216856) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 216698) 216838) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Else_correct  (=> (and (and (and (not $abort_flag@31) (= inline$$1_Roles_has_role$8$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$8$$t6@2))) (and (= inline$$1_Roles_has_role$8$$t9@1 (= inline$$1_Roles_has_role$8$$t8@1 2)) (= inline$$1_Roles_has_role$8$$t9@1 inline$$1_Roles_has_role$8$$t9@1))) (and (and (= $abort_flag@32 $abort_flag@31) (= inline$$1_Roles_has_role$8$$t3@1 inline$$1_Roles_has_role$8$$t9@1)) (and (= $abort_code@28 $abort_code@27) (= (ControlFlow 0 216744) 216698)))) inline$$1_Roles_has_role$8$L3_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Then$1_correct  (=> (= $abort_code@27 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@31 true) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@0)) (and (=> (= (ControlFlow 0 216814) 216762) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 216814) 216744) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= (ControlFlow 0 216812) 216814)) inline$$1_Roles_has_role$8$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$8$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= $abort_code@27 $abort_code@26)) (and (= $abort_flag@31 $abort_flag@30) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@1))) (and (=> (= (ControlFlow 0 216716) 216762) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 216716) 216744) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon9_Then_correct  (=> inline$$1_Roles_has_role$8$$t5@1 (and (=> (= (ControlFlow 0 216702) 216812) inline$$1_Roles_has_role$8$anon10_Then_correct) (=> (= (ControlFlow 0 216702) 216716) inline$$1_Roles_has_role$8$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$8$$t5@1) (= false false)) (=> (and (and (= $abort_flag@32 $abort_flag@30) (= inline$$1_Roles_has_role$8$$t3@1 false)) (and (= $abort_code@28 $abort_code@26) (= (ControlFlow 0 216686) 216698))) inline$$1_Roles_has_role$8$L3_correct))))
(let ((inline$$1_Roles_has_role$8$anon0_correct  (=> (and (= _$t2 _$t2) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t4@0 _$t2)) (and (= inline$$1_Roles_has_role$8$$t4@0 inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)))) (and (=> (= (ControlFlow 0 216666) 216702) inline$$1_Roles_has_role$8$anon9_Then_correct) (=> (= (ControlFlow 0 216666) 216686) inline$$1_Roles_has_role$8$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon0_correct  (=> (= _$t2 _$t2) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 216820) 216666)) inline$$1_Roles_has_role$8$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$2$$t1@1) (= (ControlFlow 0 216862) 216820)) inline$$1_Roles_has_designated_dealer_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$2$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 true) (= $abort_code@30 $abort_code@26)) (and (= $abort_flag@35 $abort_flag@30) (= (ControlFlow 0 216930) 216892))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Else_correct  (=> (not $abort_flag@29) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1) (= inline$$1_Roles_can_hold_balance$2$$t1@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1)) (and (= $abort_flag@30 $abort_flag@29) (= $abort_code@26 $abort_code@25))) (and (=> (= (ControlFlow 0 216180) 216930) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 216180) 216862) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@28) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1) (= $abort_flag@29 $abort_flag@28))) (and (=> (= (ControlFlow 0 216138) 216944) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 216138) 216180) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@28 (= $abort_code@25 $abort_code@25)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@0) (= $abort_flag@29 true))) (and (=> (= (ControlFlow 0 216156) 216944) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 216156) 216180) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Then_correct  (=> $abort_flag@26 (=> (and (and (= $abort_code@23 $abort_code@23) (= $abort_code@25 $abort_code@23)) (and (= $abort_flag@28 true) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@0))) (and (=> (= (ControlFlow 0 216062) 216156) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 216062) 216138) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$7$$t3@1 inline$$1_Roles_has_role$7$$t3@1) (= $abort_code@25 $abort_code@24)) (and (= $abort_flag@28 $abort_flag@27) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$t3@1))) (and (=> (= (ControlFlow 0 215998) 216156) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 215998) 216138) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Else_correct  (=> (and (and (and (not $abort_flag@26) (= inline$$1_Roles_has_role$7$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$7$$t6@2))) (and (= inline$$1_Roles_has_role$7$$t9@1 (= inline$$1_Roles_has_role$7$$t8@1 6)) (= inline$$1_Roles_has_role$7$$t9@1 inline$$1_Roles_has_role$7$$t9@1))) (and (and (= $abort_code@24 $abort_code@23) (= inline$$1_Roles_has_role$7$$t3@1 inline$$1_Roles_has_role$7$$t9@1)) (and (= $abort_flag@27 $abort_flag@26) (= (ControlFlow 0 216044) 215998)))) inline$$1_Roles_has_role$7$L3_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Then$1_correct  (=> (= $abort_flag@26 true) (=> (and (= $abort_code@23 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@0)) (and (=> (= (ControlFlow 0 216114) 216062) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 216114) 216044) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= (ControlFlow 0 216112) 216114)) inline$$1_Roles_has_role$7$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$7$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= $abort_flag@26 $abort_flag@25)) (and (= $abort_code@23 $abort_code@22) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@1))) (and (=> (= (ControlFlow 0 216016) 216062) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 216016) 216044) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon9_Then_correct  (=> inline$$1_Roles_has_role$7$$t5@1 (and (=> (= (ControlFlow 0 216002) 216112) inline$$1_Roles_has_role$7$anon10_Then_correct) (=> (= (ControlFlow 0 216002) 216016) inline$$1_Roles_has_role$7$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$7$$t5@1) (= false false)) (=> (and (and (= $abort_code@24 $abort_code@22) (= inline$$1_Roles_has_role$7$$t3@1 false)) (and (= $abort_flag@27 $abort_flag@25) (= (ControlFlow 0 215986) 215998))) inline$$1_Roles_has_role$7$L3_correct))))
(let ((inline$$1_Roles_has_role$7$anon0_correct  (=> (and (= _$t2 _$t2) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t4@0 _$t2)) (and (= inline$$1_Roles_has_role$7$$t4@0 inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)))) (and (=> (= (ControlFlow 0 215966) 216002) inline$$1_Roles_has_role$7$anon9_Then_correct) (=> (= (ControlFlow 0 215966) 215986) inline$$1_Roles_has_role$7$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon0_correct  (=> (= _$t2 _$t2) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 216120) 215966)) inline$$1_Roles_has_role$7$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$2$$ret0@1) (= (ControlFlow 0 216162) 216120)) inline$$1_Roles_has_child_VASP_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$2$$t1@1 true)) (and (= $abort_flag@30 $abort_flag@25) (= $abort_code@26 $abort_code@22))) (and (=> (= (ControlFlow 0 216962) 216930) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 216962) 216862) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Else_correct  (=> (not $abort_flag@25) (and (=> (= (ControlFlow 0 215482) 216962) inline$$1_Roles_can_hold_balance$2$anon14_Then_correct) (=> (= (ControlFlow 0 215482) 216162) inline$$1_Roles_can_hold_balance$2$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@24) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1) (= $abort_flag@25 $abort_flag@24))) (and (=> (= (ControlFlow 0 215450) 216976) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 215450) 215482) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@24 (= $abort_code@22 $abort_code@22)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_parent_VASP_role$2$$ret0@0) (= $abort_flag@25 true))) (and (=> (= (ControlFlow 0 215468) 216976) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 215468) 215482) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Then_correct  (=> $abort_flag@22 (=> (and (and (= $abort_code@20 $abort_code@20) (= $abort_flag@24 true)) (and (= $abort_code@22 $abort_code@20) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@0))) (and (=> (= (ControlFlow 0 215374) 215468) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 215374) 215450) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$6$$t3@1 inline$$1_Roles_has_role$6$$t3@1) (= $abort_flag@24 $abort_flag@23)) (and (= $abort_code@22 $abort_code@21) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$t3@1))) (and (=> (= (ControlFlow 0 215310) 215468) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 215310) 215450) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Else_correct  (=> (and (and (and (not $abort_flag@22) (= inline$$1_Roles_has_role$6$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$6$$t6@2))) (and (= inline$$1_Roles_has_role$6$$t9@1 (= inline$$1_Roles_has_role$6$$t8@1 5)) (= inline$$1_Roles_has_role$6$$t9@1 inline$$1_Roles_has_role$6$$t9@1))) (and (and (= $abort_flag@23 $abort_flag@22) (= inline$$1_Roles_has_role$6$$t3@1 inline$$1_Roles_has_role$6$$t9@1)) (and (= $abort_code@21 $abort_code@20) (= (ControlFlow 0 215356) 215310)))) inline$$1_Roles_has_role$6$L3_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Then$1_correct  (=> (= $abort_code@20 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@22 true) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@0)) (and (=> (= (ControlFlow 0 215426) 215374) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 215426) 215356) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= (ControlFlow 0 215424) 215426)) inline$$1_Roles_has_role$6$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$6$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= $abort_code@20 $abort_code@19)) (and (= $abort_flag@22 $abort_flag@21) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@1))) (and (=> (= (ControlFlow 0 215328) 215374) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 215328) 215356) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon9_Then_correct  (=> inline$$1_Roles_has_role$6$$t5@1 (and (=> (= (ControlFlow 0 215314) 215424) inline$$1_Roles_has_role$6$anon10_Then_correct) (=> (= (ControlFlow 0 215314) 215328) inline$$1_Roles_has_role$6$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$6$$t5@1) (= false false)) (=> (and (and (= $abort_flag@23 $abort_flag@21) (= inline$$1_Roles_has_role$6$$t3@1 false)) (and (= $abort_code@21 $abort_code@19) (= (ControlFlow 0 215298) 215310))) inline$$1_Roles_has_role$6$L3_correct))))
(let ((inline$$1_Roles_has_role$6$anon0_correct  (=> (and (= _$t2 _$t2) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t4@0 _$t2)) (and (= inline$$1_Roles_has_role$6$$t4@0 inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)))) (and (=> (= (ControlFlow 0 215278) 215314) inline$$1_Roles_has_role$6$anon9_Then_correct) (=> (= (ControlFlow 0 215278) 215298) inline$$1_Roles_has_role$6$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon0_correct  (=> (= _$t2 _$t2) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 215432) 215278)) inline$$1_Roles_has_role$6$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon0_correct  (=> (and (= _$t2 _$t2) (= (ControlFlow 0 215474) 215432)) inline$$1_Roles_has_parent_VASP_role$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= (ControlFlow 0 216982) 215474)) inline$$1_Roles_can_hold_balance$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$2$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 214470) 214476))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|  (=> (and (not $abort_flag@21) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 214454) 216982) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 214454) 214470) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|  (=> $abort_flag@21 (=> (and (and (= $abort_code@19 $abort_code@19) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@19)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 217493) 214476))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 214412) 217493) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 214412) 214454) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= (ControlFlow 0 214418) 214412)) inline$$1_DiemAccount_exists_at$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 217519) 214476))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (= _$t2 _$t2) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| _$t2)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 214307) 217519) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 214307) 214418) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Then_correct|  (=> (and inline$$Not$2$dst@1 (= (ControlFlow 0 217523) 214307)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Else_correct|  (=> (not inline$$Not$2$dst@1) (=> (and (and (= $abort_code@35 $abort_code@19) (= $abort_flag@40 $abort_flag@21)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 209769) 209813))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|))))
(let ((inline$$Not$2$anon0_correct  (=> (= inline$$Not$2$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1|)) (and (=> (= (ControlFlow 0 209755) 217523) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 209755) 209769) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Then_correct|  (=> _$t5 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|)) (= (ControlFlow 0 209761) 209755)) inline$$Not$2$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Else_correct|  (=> (and (not _$t5) (= $abort_code@52 $abort_code@19)) (=> (and (and (= $abort_flag@60 $abort_flag@21) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 209711) 209715))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|  (=> (not $abort_flag@21) (and (=> (= (ControlFlow 0 209703) 209761) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 209703) 209711) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@20) (= $abort_code@19 $abort_code@18)) (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@1|) (= $abort_flag@21 $abort_flag@20))) (and (=> (= (ControlFlow 0 209557) 217561) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 209557) 209703) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|  (=> (= $abort_code@19 |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@2|) (= $abort_flag@21 true)) (and (=> (= (ControlFlow 0 206646) 217561) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 206646) 209703) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|  (=> $abort_flag@20 (=> (and (and (= $abort_code@18 $abort_code@18) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@18)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory@1|) (= (ControlFlow 0 209571) 206646))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory|) (=> (and (= $abort_code@18 $EXEC_FAILURE_CODE) (= $abort_flag@20 true)) (and (=> (= (ControlFlow 0 209621) 209571) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 209621) 209557) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory|) _$t2) (= (ControlFlow 0 209619) 209621)) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory|) _$t2)) (=> (and (and (= |$1_DiemAccount_Balance'#0'_$memory@0| ($Memory_155905 (|Store__T@[Int]Bool_| (|domain#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory|) _$t2 true) (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory|) _$t2 |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1|))) (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory@0|)) (and (= $abort_code@18 $abort_code@17) (= $abort_flag@20 $abort_flag@19))) (and (=> (= (ControlFlow 0 209547) 209571) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 209547) 209557) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|  (=> (and (not $abort_flag@19) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1| (|$1_DiemAccount_Balance'#0'| |inline$$1_Diem_zero'#0'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 209529) 209619) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 209529) 209547) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|  (=> $abort_flag@19 (=> (and (and (= $abort_code@17 $abort_code@17) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@17)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 209635) 206646))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'#0'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'#0'$0$$t3@1| (|$1_Diem_Diem'#0'| 0))) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t3@1| |inline$$1_Diem_zero'#0'$0$$t3@1|) (= $abort_flag@19 $abort_flag@18)) (and (= $abort_code@17 $abort_code@16) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$t3@1|))) (and (=> (= (ControlFlow 0 209481) 209635) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 209481) 209529) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'#0'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'#0'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t1@0| |inline$$1_Diem_zero'#0'$0$$t1@0|) (= $abort_flag@19 true)) (and (= $abort_code@17 |inline$$1_Diem_zero'#0'$0$$t1@0|) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 209511) 209635) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 209511) 209529) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'#0'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 209453) 209511) |inline$$1_Diem_zero'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 209453) 209481) |inline$$1_Diem_zero'#0'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 209517) 209453)) |inline$$1_Diem_zero'#0'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|  (=> (not inline$$Not$1$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 209300) 206646))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 209284) 209517) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 209284) 209300) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1|)) (= (ControlFlow 0 209248) 209284)) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory|) |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|)) (= (ControlFlow 0 209254) 209248)) inline$$Not$1$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 209208) 206646))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|  (=> (and (not $abort_flag@18) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@1))) (and (=> (= (ControlFlow 0 209192) 209254) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 209192) 209208) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|  (=> $abort_flag@18 (=> (and (and (= $abort_code@16 $abort_code@16) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@16)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 209649) 206646))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct  (=> (= $abort_flag@18 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@0) (= $abort_code@16 inline$$1_Roles_can_hold_balance$0$$t4@1)) (and (=> (= (ControlFlow 0 209082) 209649) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 209082) 209192) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct  (=> (and (and $abort_flag@16 (= $abort_code@14 $abort_code@14)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@14) (= (ControlFlow 0 209076) 209082))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@10) (= (ControlFlow 0 209114) 209082))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@7 $abort_code@7)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@7) (= (ControlFlow 0 209146) 209082))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_flag@18 $abort_flag@17)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_code@16 $abort_code@15))) (and (=> (= (ControlFlow 0 209062) 209649) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 209062) 209192) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct  (=> (and (not $abort_flag@16) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= $abort_code@15 $abort_code@14)) (and (= $abort_flag@17 $abort_flag@16) (= (ControlFlow 0 209050) 209062))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@15) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@16 $abort_flag@15))) (and (=> (= (ControlFlow 0 209008) 209076) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 209008) 209050) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@15 (= $abort_code@14 $abort_code@14)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@16 true))) (and (=> (= (ControlFlow 0 209026) 209076) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 209026) 209050) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@13 (=> (and (and (= $abort_code@12 $abort_code@12) (= $abort_flag@15 true)) (and (= $abort_code@14 $abort_code@12) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 208932) 209026) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 208932) 209008) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t3@1 inline$$1_Roles_has_role$2$$t3@1) (= $abort_flag@15 $abort_flag@14)) (and (= $abort_code@14 $abort_code@13) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t3@1))) (and (=> (= (ControlFlow 0 208868) 209026) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 208868) 209008) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@13) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@14 $abort_flag@13) (= inline$$1_Roles_has_role$2$$t3@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@13 $abort_code@12) (= (ControlFlow 0 208914) 208868)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@12 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@13 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 208984) 208932) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 208984) 208914) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 208982) 208984)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@12 $abort_code@11)) (and (= $abort_flag@13 $abort_flag@12) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 208886) 208932) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 208886) 208914) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 208872) 208982) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 208872) 208886) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@14 $abort_flag@12) (= inline$$1_Roles_has_role$2$$t3@1 false)) (and (= $abort_code@13 $abort_code@11) (= (ControlFlow 0 208856) 208868))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= _$t2 _$t2) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 _$t2)) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 208836) 208872) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 208836) 208856) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= _$t2 _$t2) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 208990) 208836)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1) (= (ControlFlow 0 209032) 208990)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 true) (= $abort_code@15 $abort_code@11)) (and (= $abort_flag@17 $abort_flag@12) (= (ControlFlow 0 209100) 209062))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct  (=> (not $abort_flag@11) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= inline$$1_Roles_can_hold_balance$0$$t1@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1)) (and (= $abort_flag@12 $abort_flag@11) (= $abort_code@11 $abort_code@10))) (and (=> (= (ControlFlow 0 208350) 209100) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 208350) 209032) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@10) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@11 $abort_flag@10))) (and (=> (= (ControlFlow 0 208308) 209114) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 208308) 208350) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@10 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@11 true))) (and (=> (= (ControlFlow 0 208326) 209114) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 208326) 208350) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@8 (=> (and (and (= $abort_code@8 $abort_code@8) (= $abort_code@10 $abort_code@8)) (and (= $abort_flag@10 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 208232) 208326) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 208232) 208308) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t3@1 inline$$1_Roles_has_role$1$$t3@1) (= $abort_code@10 $abort_code@9)) (and (= $abort_flag@10 $abort_flag@9) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t3@1))) (and (=> (= (ControlFlow 0 208168) 208326) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 208168) 208308) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@8) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@9 $abort_code@8) (= inline$$1_Roles_has_role$1$$t3@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@9 $abort_flag@8) (= (ControlFlow 0 208214) 208168)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@8 true) (=> (and (= $abort_code@8 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 208284) 208232) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 208284) 208214) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 208282) 208284)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@8 $abort_flag@7)) (and (= $abort_code@8 $abort_code@7) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 208186) 208232) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 208186) 208214) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 208172) 208282) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 208172) 208186) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@9 $abort_code@7) (= inline$$1_Roles_has_role$1$$t3@1 false)) (and (= $abort_flag@9 $abort_flag@7) (= (ControlFlow 0 208156) 208168))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= _$t2 _$t2) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 _$t2)) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 208136) 208172) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 208136) 208156) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= _$t2 _$t2) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 208290) 208136)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 208332) 208290)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1 true)) (and (= $abort_flag@12 $abort_flag@7) (= $abort_code@11 $abort_code@7))) (and (=> (= (ControlFlow 0 209132) 209100) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 209132) 209032) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct  (=> (not $abort_flag@7) (and (=> (= (ControlFlow 0 207652) 209132) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct) (=> (= (ControlFlow 0 207652) 208332) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@6) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@7 $abort_flag@6))) (and (=> (= (ControlFlow 0 207620) 209146) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 207620) 207652) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@7 true))) (and (=> (= (ControlFlow 0 207638) 209146) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 207638) 207652) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@4 (=> (and (and (= $abort_code@5 $abort_code@5) (= $abort_code@7 $abort_code@5)) (and (= $abort_flag@6 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 207544) 207638) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 207544) 207620) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1 inline$$1_Roles_has_role$0$$t3@1) (= $abort_code@7 $abort_code@6)) (and (= $abort_flag@6 $abort_flag@5) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t3@1))) (and (=> (= (ControlFlow 0 207480) 207638) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 207480) 207620) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@4) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@6 $abort_code@5) (= inline$$1_Roles_has_role$0$$t3@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@5 $abort_flag@4) (= (ControlFlow 0 207526) 207480)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 207596) 207544) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 207596) 207526) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 207594) 207596)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 207498) 207544) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 207498) 207526) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 207484) 207594) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 207484) 207498) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@6 $abort_code@4) (= inline$$1_Roles_has_role$0$$t3@1 false)) (and (= $abort_flag@5 $abort_flag@3) (= (ControlFlow 0 207468) 207480))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= _$t2 _$t2) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 _$t2)) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 207448) 207484) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 207448) 207468) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= _$t2 _$t2) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 207602) 207448)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct  (=> (and (= _$t2 _$t2) (= (ControlFlow 0 207644) 207602)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1 (= (ControlFlow 0 209152) 207644)) inline$$1_Roles_can_hold_balance$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 206640) 206646))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|  (=> (and (not $abort_flag@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 206624) 209152) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 206624) 206640) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct|  (=> $abort_flag@3 (=> (and (and (= $abort_code@4 $abort_code@4) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@4)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 209663) 206646))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 206582) 209663) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 206582) 206624) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|) (= (ControlFlow 0 206588) 206582)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 209689) 206646))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|  (=> (= _$t2 _$t2) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| _$t2)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 206477) 209689) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 206477) 206588) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon0_correct|  (=> (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t3@0| _$t2) (=> (and (= _$t2 _$t2) (= _$t5 _$t5)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| _$t2)) (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|) (= (ControlFlow 0 209693) 206477))) |inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon38_correct|  (=> (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t27@0| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816)) (=> (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t28@0| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t29@0| ($1_DiemAccount_CreateAccountEvent _$t2 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) _$t2))))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0|))) (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0|) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0|)))) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t27@0| ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t23@0|) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t23@0|)))) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0|)))) 0)) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0|))) 0))))) (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0|)))) 0)) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0|))) 0)))) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t30@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t29@0|)) (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t31@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t28@0|) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| $es) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t31@0|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_85531| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t30@0|))))
(Multiset_85531 (|Store__T@[$EventRep]Int_| (|v#Multiset_85531| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t30@0|) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| $es) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t31@0| stream_new@@2)))))) (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t32@0| _$t2) (= (ControlFlow 0 217565) 209693))))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon0_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon55_Else_correct|  (=> (and (and (not |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@8|) (= $1_DiemAccount_AccountOperationsCapability_$memory@1 ($Memory_155588 (|Store__T@[Int]Bool_| (|domain#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 false) (|contents#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@1) (= (ControlFlow 0 205332) 217565))) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon38_correct|)))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon55_Then_correct|  (=> (and (and |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@8| (= $1_DiemAccount_AccountOperationsCapability_$memory@0 ($Memory_155588 (|Store__T@[Int]Bool_| (|domain#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_DiemAccount_AccountOperationsCapability'@1|)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@0) (= (ControlFlow 0 217607) 217565))) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon38_correct|)))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon54_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@7|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@1 ($Memory_153713 (|Store__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| false) (|contents#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@1)) (and (=> (= (ControlFlow 0 205318) 217607) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon55_Then_correct|) (=> (= (ControlFlow 0 205318) 205332) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon55_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon54_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@7| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_153713 (|Store__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_AccountFreezing_FreezingBit'@1|))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@0)) (and (=> (= (ControlFlow 0 217619) 217607) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon55_Then_correct|) (=> (= (ControlFlow 0 217619) 205332) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon55_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon53_Else_correct|  (=> (and (not |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@6|) (= $1_Event_EventHandleGenerator_$memory@3 ($Memory_112049 (|Store__T@[Int]Bool_| (|domain#$Memory_112049| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| false) (|contents#$Memory_112049| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 205304) 217619) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon54_Then_correct|) (=> (= (ControlFlow 0 205304) 205318) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon54_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon53_Then_correct|  (=> (and |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@6| (= $1_Event_EventHandleGenerator_$memory@2 ($Memory_112049 (|Store__T@[Int]Bool_| (|domain#$Memory_112049| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_112049| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_Event_EventHandleGenerator'@2|)))) (and (=> (= (ControlFlow 0 217631) 217619) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon54_Then_correct|) (=> (= (ControlFlow 0 217631) 205318) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon54_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon52_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@5|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@1 ($Memory_154667 (|Store__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| false) (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1)) (and (=> (= (ControlFlow 0 205290) 217631) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon53_Then_correct|) (=> (= (ControlFlow 0 205290) 205304) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon53_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon52_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@5| (=> (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_154667 (|Store__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_DiemAccount_DiemAccount'@1|))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0)) (and (=> (= (ControlFlow 0 217643) 217631) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon53_Then_correct|) (=> (= (ControlFlow 0 217643) 205304) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon53_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon51_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t26@0|) (and (=> (= (ControlFlow 0 205278) 217643) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon52_Then_correct|) (=> (= (ControlFlow 0 205278) 205290) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon52_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon50_Else_correct|  (=> (not $abort_flag@3) (=> (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| _$t2) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t23@0| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (=> (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t24@0| _$t2) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t25@0| _$t2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0|) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t26@0|  (or (or (or (or (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| 0) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0| 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t22@0|)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t3)) 32)))))) (and (=> (= (ControlFlow 0 205272) 217749) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon51_Then_correct|) (=> (= (ControlFlow 0 205272) 205278) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon51_Else_correct|)))))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct  (=> (not $abort_flag@2) (=> (and (= $abort_code@4 $abort_code@3) (= $abort_flag@3 $abort_flag@2)) (and (=> (= (ControlFlow 0 204902) 217763) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon50_Then_correct|) (=> (= (ControlFlow 0 204902) 205272) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon50_Else_correct|))))))
(let ((inline$$1_DualAttestation_publish_credential$0$L3_correct  (=> (and (= $abort_code@4 inline$$1_DualAttestation_publish_credential$0$$t13@1) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 204610) 217763) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon50_Then_correct|) (=> (= (ControlFlow 0 204610) 205272) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon50_Else_correct|)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DualAttestation_publish_credential$0$$t13@1 $abort_code@3) (= (ControlFlow 0 204916) 204610))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Then$1_correct  (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 204966) 204916) inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct) (=> (= (ControlFlow 0 204966) 204902) inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_150071| $1_DualAttestation_Credential_$memory) _$t2) (= (ControlFlow 0 204964) 204966)) inline$$1_DualAttestation_publish_credential$0$anon28_Then$1_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon28_Else_correct  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150071| $1_DualAttestation_Credential_$memory) _$t2)) (= $1_DualAttestation_Credential_$memory@0 ($Memory_150071 (|Store__T@[Int]Bool_| (|domain#$Memory_150071| $1_DualAttestation_Credential_$memory) _$t2 true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_150071| $1_DualAttestation_Credential_$memory) _$t2 inline$$1_DualAttestation_publish_credential$0$$t26@1)))) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 204892) 204916) inline$$1_DualAttestation_publish_credential$0$anon29_Then_correct) (=> (= (ControlFlow 0 204892) 204902) inline$$1_DualAttestation_publish_credential$0$anon29_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon27_Else_correct  (=> (and (not $abort_flag@1) (= inline$$1_DualAttestation_publish_credential$0$$t26@1 ($1_DualAttestation_Credential _$t4 |inline$$1_Vector_empty'u8'$0$v@1| |inline$$1_Vector_empty'u8'$1$v@1| 18446744073709551615 |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 204874) 204964) inline$$1_DualAttestation_publish_credential$0$anon28_Then_correct) (=> (= (ControlFlow 0 204874) 204892) inline$$1_DualAttestation_publish_credential$0$anon28_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon27_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DualAttestation_publish_credential$0$$t13@1 $abort_code@2) (= (ControlFlow 0 204980) 204610))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 204844) 204980) inline$$1_DualAttestation_publish_credential$0$anon27_Then_correct) (=> (= (ControlFlow 0 204844) 204874) inline$$1_DualAttestation_publish_credential$0$anon27_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon26_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 204850) 204844)) |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon26_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DualAttestation_publish_credential$0$$t13@1 $abort_code@2) (= (ControlFlow 0 204994) 204610))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 204762) 204994) inline$$1_DualAttestation_publish_credential$0$anon26_Then_correct) (=> (= (ControlFlow 0 204762) 204850) inline$$1_DualAttestation_publish_credential$0$anon26_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon25_Else_correct  (=> (not $abort_flag@1) (=> (and (|$IsValid'u64'| 18446744073709551615) (= (ControlFlow 0 204768) 204762)) |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon25_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DualAttestation_publish_credential$0$$t13@1 $abort_code@2) (= (ControlFlow 0 205008) 204610))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Vector_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 204672) 205008) inline$$1_DualAttestation_publish_credential$0$anon25_Then_correct) (=> (= (ControlFlow 0 204672) 204768) inline$$1_DualAttestation_publish_credential$0$anon25_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon24_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 204678) 204672)) |inline$$1_Vector_empty'u8'$1$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon24_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DualAttestation_publish_credential$0$$t13@1 $abort_code@2) (= (ControlFlow 0 205022) 204610))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((|inline$$1_Vector_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 204636) 205022) inline$$1_DualAttestation_publish_credential$0$anon24_Then_correct) (=> (= (ControlFlow 0 204636) 204678) inline$$1_DualAttestation_publish_credential$0$anon24_Else_correct)))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon23_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 204642) 204636)) |inline$$1_Vector_empty'u8'$0$anon0_correct|)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon23_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= inline$$1_DualAttestation_publish_credential$0$$t20@0 inline$$1_DualAttestation_publish_credential$0$$t20@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t13@1 inline$$1_DualAttestation_publish_credential$0$$t20@0) (= (ControlFlow 0 204604) 204610))) inline$$1_DualAttestation_publish_credential$0$L3_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_DualAttestation_publish_credential$0$$t20@0) (= inline$$1_DualAttestation_publish_credential$0$$t20@0 6)) (and (= inline$$1_DualAttestation_publish_credential$0$$t20@0 inline$$1_DualAttestation_publish_credential$0$$t20@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 204588) 204642) inline$$1_DualAttestation_publish_credential$0$anon23_Then_correct) (=> (= (ControlFlow 0 204588) 204604) inline$$1_DualAttestation_publish_credential$0$anon23_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_DualAttestation_publish_credential$0$$t17@1)) (= (ControlFlow 0 204548) 204588)) inline$$1_DualAttestation_publish_credential$0$anon22_Else$1_correct)))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Else_correct  (=> (not inline$$1_DualAttestation_publish_credential$0$$t15@0) (=> (and (and (|$IsValid'address'| inline$$1_DualAttestation_publish_credential$0$$t16@0) (= inline$$1_DualAttestation_publish_credential$0$$t16@0 _$t2)) (and (= inline$$1_DualAttestation_publish_credential$0$$t17@1 (|Select__T@[Int]Bool_| (|domain#$Memory_150071| $1_DualAttestation_Credential_$memory) inline$$1_DualAttestation_publish_credential$0$$t16@0)) (= (ControlFlow 0 204554) 204548))) inline$$Not$0$anon0_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon22_Then_correct  (=> inline$$1_DualAttestation_publish_credential$0$$t15@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t14@0)) (= 5 inline$$1_DualAttestation_publish_credential$0$$t13@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t14@0)) 1)) (= 3 inline$$1_DualAttestation_publish_credential$0$$t13@0))) (and (not (= _$t0 186537453)) (= 2 inline$$1_DualAttestation_publish_credential$0$$t13@0))) (= inline$$1_DualAttestation_publish_credential$0$$t13@0 inline$$1_DualAttestation_publish_credential$0$$t13@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t13@1 inline$$1_DualAttestation_publish_credential$0$$t13@0) (= (ControlFlow 0 205094) 204610))) inline$$1_DualAttestation_publish_credential$0$L3_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon21_Else_correct  (=> (not inline$$1_DualAttestation_publish_credential$0$$t12@0) (=> (and (= inline$$1_DualAttestation_publish_credential$0$$t14@0 _$t0) (= inline$$1_DualAttestation_publish_credential$0$$t15@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t14@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t14@0)) 1))) (not (= _$t0 186537453))))) (and (=> (= (ControlFlow 0 204492) 205094) inline$$1_DualAttestation_publish_credential$0$anon22_Then_correct) (=> (= (ControlFlow 0 204492) 204554) inline$$1_DualAttestation_publish_credential$0$anon22_Else_correct))))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon21_Then_correct  (=> inline$$1_DualAttestation_publish_credential$0$$t12@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t10@0)) (= 5 inline$$1_DualAttestation_publish_credential$0$$t13@0)) (and (and (not (= inline$$1_DualAttestation_publish_credential$0$$t11@0 5)) (not (= inline$$1_DualAttestation_publish_credential$0$$t11@0 2))) (= 3 inline$$1_DualAttestation_publish_credential$0$$t13@0))) (= inline$$1_DualAttestation_publish_credential$0$$t13@0 inline$$1_DualAttestation_publish_credential$0$$t13@0)) (and (= inline$$1_DualAttestation_publish_credential$0$$t13@1 inline$$1_DualAttestation_publish_credential$0$$t13@0) (= (ControlFlow 0 205150) 204610))) inline$$1_DualAttestation_publish_credential$0$L3_correct))))
(let ((inline$$1_DualAttestation_publish_credential$0$anon0_correct  (=> (= inline$$1_DualAttestation_publish_credential$0$$t5@0 _$t2) (=> (and (= inline$$1_DualAttestation_publish_credential$0$$t6@0 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t5@0))) (= inline$$1_DualAttestation_publish_credential$0$$t7@0 _$t0)) (=> (and (and (and (= inline$$1_DualAttestation_publish_credential$0$$t8@0 _$t2) (= inline$$1_DualAttestation_publish_credential$0$$t9@0 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t8@0)))) (and (= _$t2 _$t2) (= _$t0 _$t0))) (and (and (= _$t4 _$t4) (= inline$$1_DualAttestation_publish_credential$0$$t10@0 _$t2)) (and (= inline$$1_DualAttestation_publish_credential$0$$t11@0 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t10@0))) (= inline$$1_DualAttestation_publish_credential$0$$t12@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) inline$$1_DualAttestation_publish_credential$0$$t10@0)) (and (not (= inline$$1_DualAttestation_publish_credential$0$$t11@0 5)) (not (= inline$$1_DualAttestation_publish_credential$0$$t11@0 2)))))))) (and (=> (= (ControlFlow 0 204432) 205150) inline$$1_DualAttestation_publish_credential$0$anon21_Then_correct) (=> (= (ControlFlow 0 204432) 204492) inline$$1_DualAttestation_publish_credential$0$anon21_Else_correct)))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon22_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory@2) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0|) (=> (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t17@0| _$t2) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t18@0| (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t17@0|)))) (=> (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t19@0| _$t0) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t20@0| _$t2)) (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t21@0| (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t20@0|))) (= (ControlFlow 0 205154) 204432))) inline$$1_DualAttestation_publish_credential$0$anon0_correct)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon49_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@4|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| ($Memory_136909 (|Store__T@[Int]Bool_| (|domain#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| false) (|contents#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 203351) 205154)) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon22_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon49_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@4| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| ($Memory_136909 (|Store__T@[Int]Bool_| (|domain#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@1|))) (= (ControlFlow 0 217775) 205154)) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon22_correct|))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon48_Else_correct|  (=> (and (not |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@3|) (= |$1_Diem_PreburnQueue'#0'_$memory@1| ($Memory_137107 (|Store__T@[Int]Bool_| (|domain#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| false) (|contents#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|)))) (and (=> (= (ControlFlow 0 203337) 217775) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon49_Then_correct|) (=> (= (ControlFlow 0 203337) 203351) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon49_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon48_Then_correct|  (=> (and |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@3| (= |$1_Diem_PreburnQueue'#0'_$memory@0| ($Memory_137107 (|Store__T@[Int]Bool_| (|domain#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_Diem_PreburnQueue'#0''@1|)))) (and (=> (= (ControlFlow 0 217787) 217775) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon49_Then_correct|) (=> (= (ControlFlow 0 217787) 203351) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon49_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon47_Else_correct|  (=> (and (not |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@2|) (= $1_Event_EventHandleGenerator_$memory@1 ($Memory_112049 (|Store__T@[Int]Bool_| (|domain#$Memory_112049| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| false) (|contents#$Memory_112049| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 203323) 217787) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon48_Then_correct|) (=> (= (ControlFlow 0 203323) 203337) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon48_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon47_Then_correct|  (=> (and |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@2| (= $1_Event_EventHandleGenerator_$memory@0 ($Memory_112049 (|Store__T@[Int]Bool_| (|domain#$Memory_112049| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_112049| $1_Event_EventHandleGenerator_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_Event_EventHandleGenerator'@1|)))) (and (=> (= (ControlFlow 0 217799) 217787) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon48_Then_correct|) (=> (= (ControlFlow 0 217799) 203337) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon48_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon46_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@1|) (=> (and (= $1_DesignatedDealer_Dealer_$memory@1 ($Memory_153465 (|Store__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| false) (|contents#$Memory_153465| $1_DesignatedDealer_Dealer_$memory))) (= $1_DesignatedDealer_Dealer_$memory@2 $1_DesignatedDealer_Dealer_$memory@1)) (and (=> (= (ControlFlow 0 203309) 217799) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon47_Then_correct|) (=> (= (ControlFlow 0 203309) 203323) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon47_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon46_Then_correct|  (=> |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'bool'@1| (=> (and (= $1_DesignatedDealer_Dealer_$memory@0 ($Memory_153465 (|Store__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$temp_0'$1_DesignatedDealer_Dealer'@1|))) (= $1_DesignatedDealer_Dealer_$memory@2 $1_DesignatedDealer_Dealer_$memory@0)) (and (=> (= (ControlFlow 0 217811) 217799) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon47_Then_correct|) (=> (= (ControlFlow 0 217811) 203323) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon47_Else_correct|))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon45_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t16@0|) (and (=> (= (ControlFlow 0 203297) 217811) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon46_Then_correct|) (=> (= (ControlFlow 0 203297) 203309) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon46_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon44_Else_correct|  (=> (not $abort_flag@1) (=> (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0| _$t2) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t14@0| _$t0)) (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t15@0| _$t2) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t16@0|  (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t14@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t14@0|)) 1))) (not (= _$t0 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t15@0|))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@3) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t15@0|)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0|)) (and _$t5 (let ((addr@@11 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@11) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@11)))))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0|))) (and _$t5 (|Select__T@[Int]Bool_| (|domain#$Memory_136500| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0|))) (and _$t5 (not (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t5) (let ((addr@@12 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@12) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@12)))))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0|))) (and (not _$t5) (|Select__T@[Int]Bool_| (|domain#$Memory_136682| |$1_Diem_Preburn'#0'_$memory|) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t13@0|))) (and (not _$t5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))) (and (=> (= (ControlFlow 0 203291) 218105) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon45_Then_correct|) (=> (= (ControlFlow 0 203291) 203297) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon45_Else_correct|))))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$L2_correct  (=> (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory) (=> (and (= $abort_code@2 inline$$1_Roles_new_designated_dealer_role$0$$t6@0) (= $abort_flag@1 true)) (and (=> (= (ControlFlow 0 202999) 218119) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon44_Then_correct|) (=> (= (ControlFlow 0 202999) 203291) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon44_Else_correct|))))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon9_Then_correct  (=> inline$$1_Roles_new_designated_dealer_role$0$$t9@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) _$t2) (= 6 inline$$1_Roles_new_designated_dealer_role$0$$t6@0)) (and (= inline$$1_Roles_new_designated_dealer_role$0$$t6@0 inline$$1_Roles_new_designated_dealer_role$0$$t6@0) (= (ControlFlow 0 202993) 202999))) inline$$1_Roles_new_designated_dealer_role$0$L2_correct))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon8_Then_correct  (=> (and (and inline$$1_Roles_new_designated_dealer_role$0$$t5@0 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) inline$$1_Roles_new_designated_dealer_role$0$$t4@0)) (= 5 inline$$1_Roles_new_designated_dealer_role$0$$t6@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) inline$$1_Roles_new_designated_dealer_role$0$$t4@0)) 1)) (= 3 inline$$1_Roles_new_designated_dealer_role$0$$t6@0))) (and (not (= _$t0 186537453)) (= 2 inline$$1_Roles_new_designated_dealer_role$0$$t6@0)))) (and (= inline$$1_Roles_new_designated_dealer_role$0$$t6@0 inline$$1_Roles_new_designated_dealer_role$0$$t6@0) (= (ControlFlow 0 203071) 202999))) inline$$1_Roles_new_designated_dealer_role$0$L2_correct)))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon7_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory@2) _$t2) (=> (and (and (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory@2) _$t2)) 2) (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory@2)) (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0))) (and (=> (= (ControlFlow 0 202951) 218119) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon44_Then_correct|) (=> (= (ControlFlow 0 202951) 203291) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon44_Else_correct|))))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon10_Else_correct  (=> (and (and (not |inline$$1_Roles_new_designated_dealer_role$0$$temp_0'bool'@1|) (= $1_Roles_RoleId_$memory@1 ($Memory_119270 (|Store__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) _$t2 false) (|contents#$Memory_119270| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 202925) 202951))) inline$$1_Roles_new_designated_dealer_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon10_Then_correct  (=> (and (and |inline$$1_Roles_new_designated_dealer_role$0$$temp_0'bool'@1| (= $1_Roles_RoleId_$memory@0 ($Memory_119270 (|Store__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) _$t2 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) _$t2 |inline$$1_Roles_new_designated_dealer_role$0$$temp_0'$1_Roles_RoleId'@1|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 202965) 202951))) inline$$1_Roles_new_designated_dealer_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon9_Else_correct  (=> (not inline$$1_Roles_new_designated_dealer_role$0$$t9@0) (and (=> (= (ControlFlow 0 202911) 202965) inline$$1_Roles_new_designated_dealer_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 202911) 202925) inline$$1_Roles_new_designated_dealer_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon8_Else_correct  (=> (and (not inline$$1_Roles_new_designated_dealer_role$0$$t5@0) (|$IsValid'u64'| 2)) (=> (and (and (= inline$$1_Roles_new_designated_dealer_role$0$$t8@0 _$t2) (=> (= 2 0) (= inline$$1_Roles_new_designated_dealer_role$0$$t8@0 173345816))) (and (=> (= 2 1) (= inline$$1_Roles_new_designated_dealer_role$0$$t8@0 186537453)) (= inline$$1_Roles_new_designated_dealer_role$0$$t9@0 (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) _$t2)))) (and (=> (= (ControlFlow 0 202905) 202993) inline$$1_Roles_new_designated_dealer_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 202905) 202911) inline$$1_Roles_new_designated_dealer_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_new_designated_dealer_role$0$anon0_correct  (=> (and (= inline$$1_Roles_new_designated_dealer_role$0$$t2@0 _$t0) (= inline$$1_Roles_new_designated_dealer_role$0$$t3@0 _$t0)) (=> (and (and (= _$t0 _$t0) (= _$t2 _$t2)) (and (= inline$$1_Roles_new_designated_dealer_role$0$$t4@0 _$t0) (= inline$$1_Roles_new_designated_dealer_role$0$$t5@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) inline$$1_Roles_new_designated_dealer_role$0$$t4@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) inline$$1_Roles_new_designated_dealer_role$0$$t4@0)) 1))) (not (= _$t0 186537453)))))) (and (=> (= (ControlFlow 0 202839) 203071) inline$$1_Roles_new_designated_dealer_role$0$anon8_Then_correct) (=> (= (ControlFlow 0 202839) 202905) inline$$1_Roles_new_designated_dealer_role$0$anon8_Else_correct))))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon43_Else_correct|  (=> (and (and (not $abort_flag@0) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t11@0| _$t0)) (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t12@0| _$t0) (= (ControlFlow 0 203075) 202839))) inline$$1_Roles_new_designated_dealer_role$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon42_Else_correct|  (=> (and (not $abort_flag@0) (= _$t2 _$t2)) (and (=> (= (ControlFlow 0 202273) 218133) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon43_Then_correct|) (=> (= (ControlFlow 0 202273) 203075) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon43_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon41_Else_correct|  (=> (not |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t8@0|) (and (=> (= (ControlFlow 0 202238) 218147) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 202238) 202273) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon42_Else_correct|)))))
(let ((|inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon0_correct|  (=> (and (and (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t6@0| _$t0) (= _$t0 _$t0)) (and (= _$t2 _$t2) (= _$t3 _$t3))) (and (and (= _$t4 _$t4) (= _$t5 _$t5)) (and (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t7@0| _$t0) (= |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t8@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t7@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$$t7@0|)) 1))) (not (= _$t0 186537453))))))) (and (=> (= (ControlFlow 0 202198) 218219) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 202198) 202238) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon41_Else_correct|)))))
(let ((anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t9 _$t0) (= (ControlFlow 0 218223) 202198)) |inline$$1_DiemAccount_create_designated_dealer'#0'$0$anon0_correct|))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct  (=> (and (= $abort_flag@0 true) (= $abort_code@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1)) (and (=> (= (ControlFlow 0 200091) 219775) anon6_Then_correct) (=> (= (ControlFlow 0 200091) 218223) anon6_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= (ControlFlow 0 200085) 200091))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) _$t0)) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0) (= (ControlFlow 0 200141) 200091))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 200097) 219775) anon6_Then_correct) (=> (= (ControlFlow 0 200097) 218223) anon6_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct  (=> (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0) (=> (and (and (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 ($1_SlidingNonce_spec_try_record_nonce _$t0 _$t1)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1)))) (and (=> (= (ControlFlow 0 200069) 200097) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct) (=> (= (ControlFlow 0 200069) 200085) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct  (=> (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1 ($Memory_124945 (|Store__T@[Int]Bool_| (|domain#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) _$t0 false) (|contents#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory))) (= (ControlFlow 0 200011) 200069)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct  (=> |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0 ($Memory_124945 (|Store__T@[Int]Bool_| (|domain#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) _$t0 true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) _$t0 |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1|))) (= (ControlFlow 0 200111) 200069)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0) (and (=> (= (ControlFlow 0 199997) 200111) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct) (=> (= (ControlFlow 0 199997) 200011) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct  (=> (= _$t0 _$t0) (=> (and (= _$t1 _$t1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) _$t0)))) (and (=> (= (ControlFlow 0 199991) 200141) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct) (=> (= (ControlFlow 0 199991) 199997) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122244| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@13)) 4))))
 :qid |AccountCreationScriptsandybpl.16890:20|
 :skolemid |205|
)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123619| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@14)) 3))))
 :qid |AccountCreationScriptsandybpl.16894:20|
 :skolemid |206|
))) (=> (and (and (and (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123619| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@15)) 3))))
 :qid |AccountCreationScriptsandybpl.16898:20|
 :skolemid |207|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_123619| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@16) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_123619| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@16)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@16)) 3))))
 :qid |AccountCreationScriptsandybpl.16902:20|
 :skolemid |208|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) 186537453)))) (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |AccountCreationScriptsandybpl.16914:21|
 :skolemid |209|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136327| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |AccountCreationScriptsandybpl.16914:268|
 :skolemid |210|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131520| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |AccountCreationScriptsandybpl.16918:21|
 :skolemid |211|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131607| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |AccountCreationScriptsandybpl.16918:231|
 :skolemid |212|
))))) (=> (and (and (and (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_136500| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |AccountCreationScriptsandybpl.16922:22|
 :skolemid |213|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_137008| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_136591| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |AccountCreationScriptsandybpl.16922:293|
 :skolemid |214|
))) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_136682| |$1_Diem_Preburn'#0'_$memory|) addr1@@3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@3)) 2))))
 :qid |AccountCreationScriptsandybpl.16922:565|
 :skolemid |215|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150071| $1_DualAttestation_Credential_$memory) addr1@@4) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr1@@4)) 2)))))
 :qid |AccountCreationScriptsandybpl.16938:20|
 :skolemid |216|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) 186537453))))))) (and (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@17) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@17)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@17)))) 0)) (= addr@@17 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@17))) 0)))))))
 :qid |AccountCreationScriptsandybpl.16950:20|
 :skolemid |217|
)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@18) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@18) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@18)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@18)))) 0)) (= addr@@18 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@18))) 0)))))))
 :qid |AccountCreationScriptsandybpl.16954:20|
 :skolemid |218|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@19)))
 :qid |AccountCreationScriptsandybpl.16962:20|
 :skolemid |219|
)))))) (=> (and (and (and (and (and (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@20) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@20)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@20)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@20)) 2)))))
 :qid |AccountCreationScriptsandybpl.16966:22|
 :skolemid |220|
)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@21) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@21)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@21)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@21)) 2)))))
 :qid |AccountCreationScriptsandybpl.16966:217|
 :skolemid |221|
))) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory|) addr@@22) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@22)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@22)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@22)) 2)))))
 :qid |AccountCreationScriptsandybpl.16966:413|
 :skolemid |222|
))) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) addr@@23) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@23)) 2))))
 :qid |AccountCreationScriptsandybpl.16970:20|
 :skolemid |223|
))) (and (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150071| $1_DualAttestation_Credential_$memory) addr@@24) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@24)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119270| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) addr@@24)) 5)))))
 :qid |AccountCreationScriptsandybpl.16974:20|
 :skolemid |224|
)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@25) (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) addr@@25)))
 :qid |AccountCreationScriptsandybpl.16978:20|
 :skolemid |225|
)))) (and (and (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@26) (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@26)))
 :qid |AccountCreationScriptsandybpl.16982:22|
 :skolemid |226|
)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@27)))
 :qid |AccountCreationScriptsandybpl.16982:218|
 :skolemid |227|
))) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory|) addr@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@28)))
 :qid |AccountCreationScriptsandybpl.16982:415|
 :skolemid |228|
)))) (and (and (and (and (and (|$IsValid'address'| _$t0) (|$IsValid'u64'| _$t1)) (and (|$IsValid'address'| _$t2) (|$IsValid'vec'u8''| _$t3))) (and (and (|$IsValid'vec'u8''| _$t4) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |AccountCreationScriptsandybpl.17003:20|
 :skolemid |229|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119270| $1_Roles_RoleId_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@0)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@0))
 :qid |AccountCreationScriptsandybpl.17007:20|
 :skolemid |230|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_124945| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@1) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@1)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@1) 10000000000))))
 :qid |AccountCreationScriptsandybpl.17011:20|
 :skolemid |231|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_130918| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@1))
))))) (and (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_136500| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@2)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@2))
 :qid |AccountCreationScriptsandybpl.17015:20|
 :skolemid |232|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_136500| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@3)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@3) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@3)) 256) (let (($range_1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@3)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@48 $i_2))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@3) i@@48)))) 0)))
 :qid |AccountCreationScriptsandybpl.17020:223|
 :skolemid |233|
))))))
 :qid |AccountCreationScriptsandybpl.17019:20|
 :skolemid |234|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_136909| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@4)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@4) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@4)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@4) 10000000000))))
 :qid |AccountCreationScriptsandybpl.17024:20|
 :skolemid |235|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_130982| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@5) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@5)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@5) 10000000000))))
 :qid |AccountCreationScriptsandybpl.17028:20|
 :skolemid |236|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_131107| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@5))
)))) (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_136682| |$1_Diem_Preburn'#0'_$memory|) $a_0@@6)))
(|$IsValid'$1_Diem_Preburn'#0''| $rsc@@6))
 :qid |AccountCreationScriptsandybpl.17032:20|
 :skolemid |237|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_136682| |$1_Diem_Preburn'#0'_$memory|) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@7)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@7) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@7)) 256) (let (($range_1@@0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@7)))))
(forall (($i_2@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_2@@0) (let ((i@@49 $i_2@@0))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@7) i@@49)))) 0)))
 :qid |AccountCreationScriptsandybpl.17037:199|
 :skolemid |238|
))))))
 :qid |AccountCreationScriptsandybpl.17036:20|
 :skolemid |239|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_137107| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@7))
))) (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_150071| $1_DualAttestation_Credential_$memory) $a_0@@8)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@8))
 :qid |AccountCreationScriptsandybpl.17041:20|
 :skolemid |240|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_150071| $1_DualAttestation_Credential_$memory) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) $a_0@@9)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@9))
 :qid |AccountCreationScriptsandybpl.17045:20|
 :skolemid |241|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_153465| $1_DesignatedDealer_Dealer_$memory) $a_0@@9))
)))))) (and (and (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) $a_0@@10)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@10))
 :qid |AccountCreationScriptsandybpl.17049:20|
 :skolemid |242|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) $a_0@@11)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@11) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@11))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@11))) 1))))
 :qid |AccountCreationScriptsandybpl.17053:20|
 :skolemid |243|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) $a_0@@11))
))) (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@12)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@12))
 :qid |AccountCreationScriptsandybpl.17057:20|
 :skolemid |244|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_155588| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@13)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@13))
 :qid |AccountCreationScriptsandybpl.17061:20|
 :skolemid |245|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_155723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@13))
)))) (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@14)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@14))
 :qid |AccountCreationScriptsandybpl.17065:20|
 :skolemid |246|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_155814| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@14))
)) (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@15)))
(|$IsValid'$1_DiemAccount_Balance'#0''| $rsc@@15))
 :qid |AccountCreationScriptsandybpl.17069:20|
 :skolemid |247|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_155905| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@15))
))) (and (= $t6 _$t0) (= $t7 _$t0)))) (and (and (and (let ((addr@@29 _$t0))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_118801| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_154667| $1_DiemAccount_DiemAccount_$memory) addr@@29)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) addr@@29) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_153713| $1_AccountFreezing_FreezingBit_$memory) addr@@29)))))) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= _$t2 _$t2))) (and (and (= _$t3 _$t3) (= _$t4 _$t4)) (and (= _$t5 _$t5) (= (ControlFlow 0 200145) 199991))))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_85531_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_85531| stream@@4) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_85531| stream@@4) v@@44) 0)
 :qid |AccountCreationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountCreationScriptsandybpl.2898:13|
 :skolemid |79|
))) (= (ControlFlow 0 198227) 200145)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 305069) 198227) inline$$InitEventStore$0$anon0_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
