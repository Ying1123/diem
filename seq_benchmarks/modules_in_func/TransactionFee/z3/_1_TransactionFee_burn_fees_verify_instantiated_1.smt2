(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_112337 0)) ((($Memory_112337 (|domain#$Memory_112337| |T@[Int]Bool|) (|contents#$Memory_112337| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_121529 0)) ((($Memory_121529 (|domain#$Memory_121529| |T@[Int]Bool|) (|contents#$Memory_121529| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_121458 0)) ((($Memory_121458 (|domain#$Memory_121458| |T@[Int]Bool|) (|contents#$Memory_121458| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_121215 0)) ((($Memory_121215 (|domain#$Memory_121215| |T@[Int]Bool|) (|contents#$Memory_121215| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_121144 0)) ((($Memory_121144 (|domain#$Memory_121144| |T@[Int]Bool|) (|contents#$Memory_121144| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_121073 0)) ((($Memory_121073 (|domain#$Memory_121073| |T@[Int]Bool|) (|contents#$Memory_121073| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_165849 0)) ((($Memory_165849 (|domain#$Memory_165849| |T@[Int]Bool|) (|contents#$Memory_165849| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_120905 0)) ((($Memory_120905 (|domain#$Memory_120905| |T@[Int]Bool|) (|contents#$Memory_120905| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_165223 0)) ((($Memory_165223 (|domain#$Memory_165223| |T@[Int]Bool|) (|contents#$Memory_165223| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_163111 0)) ((($Memory_163111 (|domain#$Memory_163111| |T@[Int]Bool|) (|contents#$Memory_163111| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_163047 0)) ((($Memory_163047 (|domain#$Memory_163047| |T@[Int]Bool|) (|contents#$Memory_163047| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_162647 0)) ((($Memory_162647 (|domain#$Memory_162647| |T@[Int]Bool|) (|contents#$Memory_162647| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_163014 0)) ((($Memory_163014 (|domain#$Memory_163014| |T@[Int]Bool|) (|contents#$Memory_163014| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_159324 0)) ((($Memory_159324 (|domain#$Memory_159324| |T@[Int]Bool|) (|contents#$Memory_159324| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_159037 0)) ((($Memory_159037 (|domain#$Memory_159037| |T@[Int]Bool|) (|contents#$Memory_159037| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_120737 0)) ((($Memory_120737 (|domain#$Memory_120737| |T@[Int]Bool|) (|contents#$Memory_120737| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120498 0)) ((($Memory_120498 (|domain#$Memory_120498| |T@[Int]Bool|) (|contents#$Memory_120498| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_121387 0)) ((($Memory_121387 (|domain#$Memory_121387| |T@[Int]Bool|) (|contents#$Memory_121387| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_130887 0)) ((($Memory_130887 (|domain#$Memory_130887| |T@[Int]Bool|) (|contents#$Memory_130887| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_130823 0)) ((($Memory_130823 (|domain#$Memory_130823| |T@[Int]Bool|) (|contents#$Memory_130823| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_130759 0)) ((($Memory_130759 (|domain#$Memory_130759| |T@[Int]Bool|) (|contents#$Memory_130759| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_131341 0)) ((($Memory_131341 (|domain#$Memory_131341| |T@[Int]Bool|) (|contents#$Memory_131341| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_131254 0)) ((($Memory_131254 (|domain#$Memory_131254| |T@[Int]Bool|) (|contents#$Memory_131254| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_131167 0)) ((($Memory_131167 (|domain#$Memory_131167| |T@[Int]Bool|) (|contents#$Memory_131167| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_136416 0)) ((($Memory_136416 (|domain#$Memory_136416| |T@[Int]Bool|) (|contents#$Memory_136416| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_163355 0)) ((($Memory_163355 (|domain#$Memory_163355| |T@[Int]Bool|) (|contents#$Memory_163355| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_165764 0)) ((($Memory_165764 (|domain#$Memory_165764| |T@[Int]Bool|) (|contents#$Memory_165764| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_136325 0)) ((($Memory_136325 (|domain#$Memory_136325| |T@[Int]Bool|) (|contents#$Memory_136325| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_163291 0)) ((($Memory_163291 (|domain#$Memory_163291| |T@[Int]Bool|) (|contents#$Memory_163291| |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_120569 0)) ((($Memory_120569 (|domain#$Memory_120569| |T@[Int]Bool|) (|contents#$Memory_120569| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_165704 0)) ((($Memory_165704 (|domain#$Memory_165704| |T@[Int]Bool|) (|contents#$Memory_165704| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_136234 0)) ((($Memory_136234 (|domain#$Memory_136234| |T@[Int]Bool|) (|contents#$Memory_136234| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120808 0)) ((($Memory_120808 (|domain#$Memory_120808| |T@[Int]Bool|) (|contents#$Memory_120808| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_130398 0)) ((($Memory_130398 (|domain#$Memory_130398| |T@[Int]Bool|) (|contents#$Memory_130398| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_120653 0)) ((($Memory_120653 (|domain#$Memory_120653| |T@[Int]Bool|) (|contents#$Memory_120653| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120414 0)) ((($Memory_120414 (|domain#$Memory_120414| |T@[Int]Bool|) (|contents#$Memory_120414| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_126328 0)) ((($Memory_126328 (|domain#$Memory_126328| |T@[Int]Bool|) (|contents#$Memory_126328| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_126241 0)) ((($Memory_126241 (|domain#$Memory_126241| |T@[Int]Bool|) (|contents#$Memory_126241| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_126154 0)) ((($Memory_126154 (|domain#$Memory_126154| |T@[Int]Bool|) (|contents#$Memory_126154| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_126067 0)) ((($Memory_126067 (|domain#$Memory_126067| |T@[Int]Bool|) (|contents#$Memory_126067| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_125980 0)) ((($Memory_125980 (|domain#$Memory_125980| |T@[Int]Bool|) (|contents#$Memory_125980| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_125893 0)) ((($Memory_125893 (|domain#$Memory_125893| |T@[Int]Bool|) (|contents#$Memory_125893| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_120259 0)) ((($Memory_120259 (|domain#$Memory_120259| |T@[Int]Bool|) (|contents#$Memory_120259| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_125160 0)) ((($Memory_125160 (|domain#$Memory_125160| |T@[Int]Bool|) (|contents#$Memory_125160| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_120100 0)) ((($Memory_120100 (|domain#$Memory_120100| |T@[Int]Bool|) (|contents#$Memory_120100| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_119694 0)) ((($Memory_119694 (|domain#$Memory_119694| |T@[Int]Bool|) (|contents#$Memory_119694| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_121613 0)) ((($Memory_121613 (|domain#$Memory_121613| |T@[Int]Bool|) (|contents#$Memory_121613| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_125027 0)) ((($Memory_125027 (|domain#$Memory_125027| |T@[Int]Bool|) (|contents#$Memory_125027| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_120989 0)) ((($Memory_120989 (|domain#$Memory_120989| |T@[Int]Bool|) (|contents#$Memory_120989| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_120330 0)) ((($Memory_120330 (|domain#$Memory_120330| |T@[Int]Bool|) (|contents#$Memory_120330| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_120007 0)) ((($Memory_120007 (|domain#$Memory_120007| |T@[Int]Bool|) (|contents#$Memory_120007| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_165510 0)) ((($Memory_165510 (|domain#$Memory_165510| |T@[Int]Bool|) (|contents#$Memory_165510| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_120186 0)) ((($Memory_120186 (|domain#$Memory_120186| |T@[Int]Bool|) (|contents#$Memory_120186| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_124356 0)) ((($Memory_124356 (|domain#$Memory_124356| |T@[Int]Bool|) (|contents#$Memory_124356| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_123798 0)) ((($Memory_123798 (|domain#$Memory_123798| |T@[Int]Bool|) (|contents#$Memory_123798| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_119820 0)) ((($Memory_119820 (|domain#$Memory_119820| |T@[Int]Bool|) (|contents#$Memory_119820| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_119142 0)) ((($Memory_119142 (|domain#$Memory_119142| |T@[Int]Bool|) (|contents#$Memory_119142| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_92611 0)) (((Multiset_92611 (|v#Multiset_92611| |T@[$EventRep]Int|) (|l#Multiset_92611| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_92611| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_92611|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_198185 0)) ((($Mutation_198185 (|l#$Mutation_198185| T@$Location) (|p#$Mutation_198185| (Seq Int)) (|v#$Mutation_198185| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_198141 0)) ((($Mutation_198141 (|l#$Mutation_198141| T@$Location) (|p#$Mutation_198141| (Seq Int)) (|v#$Mutation_198141| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_184132 0)) ((($Mutation_184132 (|l#$Mutation_184132| T@$Location) (|p#$Mutation_184132| (Seq Int)) (|v#$Mutation_184132| |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_178934 0)) ((($Mutation_178934 (|l#$Mutation_178934| T@$Location) (|p#$Mutation_178934| (Seq Int)) (|v#$Mutation_178934| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_173758 0)) ((($Mutation_173758 (|l#$Mutation_173758| T@$Location) (|p#$Mutation_173758| (Seq Int)) (|v#$Mutation_173758| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_43866 0)) ((($Mutation_43866 (|l#$Mutation_43866| T@$Location) (|p#$Mutation_43866| (Seq Int)) (|v#$Mutation_43866| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_143660 0)) ((($Mutation_143660 (|l#$Mutation_143660| T@$Location) (|p#$Mutation_143660| (Seq Int)) (|v#$Mutation_143660| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_143613 0)) ((($Mutation_143613 (|l#$Mutation_143613| T@$Location) (|p#$Mutation_143613| (Seq Int)) (|v#$Mutation_143613| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_141541 0)) ((($Mutation_141541 (|l#$Mutation_141541| T@$Location) (|p#$Mutation_141541| (Seq Int)) (|v#$Mutation_141541| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_141494 0)) ((($Mutation_141494 (|l#$Mutation_141494| T@$Location) (|p#$Mutation_141494| (Seq Int)) (|v#$Mutation_141494| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_139422 0)) ((($Mutation_139422 (|l#$Mutation_139422| T@$Location) (|p#$Mutation_139422| (Seq Int)) (|v#$Mutation_139422| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_139375 0)) ((($Mutation_139375 (|l#$Mutation_139375| T@$Location) (|p#$Mutation_139375| (Seq Int)) (|v#$Mutation_139375| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_138591 0)) ((($Mutation_138591 (|l#$Mutation_138591| T@$Location) (|p#$Mutation_138591| (Seq Int)) (|v#$Mutation_138591| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_137816 0)) ((($Mutation_137816 (|l#$Mutation_137816| T@$Location) (|p#$Mutation_137816| (Seq Int)) (|v#$Mutation_137816| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_137041 0)) ((($Mutation_137041 (|l#$Mutation_137041| T@$Location) (|p#$Mutation_137041| (Seq Int)) (|v#$Mutation_137041| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_129009 0)) ((($Mutation_129009 (|l#$Mutation_129009| T@$Location) (|p#$Mutation_129009| (Seq Int)) (|v#$Mutation_129009| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_119637 0)) ((($Mutation_119637 (|l#$Mutation_119637| T@$Location) (|p#$Mutation_119637| (Seq Int)) (|v#$Mutation_119637| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_112968 0)) ((($Mutation_112968 (|l#$Mutation_112968| T@$Location) (|p#$Mutation_112968| (Seq Int)) (|v#$Mutation_112968| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11233 0)) ((($Mutation_11233 (|l#$Mutation_11233| T@$Location) (|p#$Mutation_11233| (Seq Int)) (|v#$Mutation_11233| Int) ) ) ))
(declare-datatypes ((T@$Mutation_108344 0)) ((($Mutation_108344 (|l#$Mutation_108344| T@$Location) (|p#$Mutation_108344| (Seq Int)) (|v#$Mutation_108344| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_107598 0)) ((($Mutation_107598 (|l#$Mutation_107598| T@$Location) (|p#$Mutation_107598| (Seq Int)) (|v#$Mutation_107598| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_106194 0)) ((($Mutation_106194 (|l#$Mutation_106194| T@$Location) (|p#$Mutation_106194| (Seq Int)) (|v#$Mutation_106194| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_105448 0)) ((($Mutation_105448 (|l#$Mutation_105448| T@$Location) (|p#$Mutation_105448| (Seq Int)) (|v#$Mutation_105448| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_104044 0)) ((($Mutation_104044 (|l#$Mutation_104044| T@$Location) (|p#$Mutation_104044| (Seq Int)) (|v#$Mutation_104044| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_103298 0)) ((($Mutation_103298 (|l#$Mutation_103298| T@$Location) (|p#$Mutation_103298| (Seq Int)) (|v#$Mutation_103298| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_101894 0)) ((($Mutation_101894 (|l#$Mutation_101894| T@$Location) (|p#$Mutation_101894| (Seq Int)) (|v#$Mutation_101894| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_101148 0)) ((($Mutation_101148 (|l#$Mutation_101148| T@$Location) (|p#$Mutation_101148| (Seq Int)) (|v#$Mutation_101148| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_99744 0)) ((($Mutation_99744 (|l#$Mutation_99744| T@$Location) (|p#$Mutation_99744| (Seq Int)) (|v#$Mutation_99744| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_98998 0)) ((($Mutation_98998 (|l#$Mutation_98998| T@$Location) (|p#$Mutation_98998| (Seq Int)) (|v#$Mutation_98998| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_97594 0)) ((($Mutation_97594 (|l#$Mutation_97594| T@$Location) (|p#$Mutation_97594| (Seq Int)) (|v#$Mutation_97594| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_96848 0)) ((($Mutation_96848 (|l#$Mutation_96848| T@$Location) (|p#$Mutation_96848| (Seq Int)) (|v#$Mutation_96848| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_95406 0)) ((($Mutation_95406 (|l#$Mutation_95406| T@$Location) (|p#$Mutation_95406| (Seq Int)) (|v#$Mutation_95406| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_94660 0)) ((($Mutation_94660 (|l#$Mutation_94660| T@$Location) (|p#$Mutation_94660| (Seq Int)) (|v#$Mutation_94660| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_92611_| (|T@[$1_Event_EventHandle]Multiset_92611| T@$1_Event_EventHandle) T@Multiset_92611)
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
(declare-fun |$IsValid'$1_SlidingNonce_SlidingNonce'| (T@$1_SlidingNonce_SlidingNonce) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemSystem_DiemSystem'| (T@$1_DiemSystem_DiemSystem) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (T@$1_RegisteredCurrencies_RegisteredCurrencies) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (T@$1_DiemConsensusConfig_DiemConsensusConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
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
(declare-fun |$IsValid'$1_Diem_BurnCapability'#0''| (|T@$1_Diem_BurnCapability'#0'|) Bool)
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
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| (|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'#0''| (|T@$1_TransactionFee_TransactionFee'#0'|) Bool)
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
(declare-fun ReverseVec_11086 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_84051 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_83263 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_83460 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_83657 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_84248 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_83854 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_83066 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_92611| |T@[$1_Event_EventHandle]Multiset_92611|) |T@[$1_Event_EventHandle]Multiset_92611|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |TransactionFeebpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |TransactionFeebpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |TransactionFeebpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |TransactionFeebpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |TransactionFeebpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |TransactionFeebpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |TransactionFeebpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |TransactionFeebpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |TransactionFeebpl.595:13|
 :skolemid |15|
))))
 :qid |TransactionFeebpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |TransactionFeebpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |TransactionFeebpl.608:17|
 :skolemid |18|
)))))
 :qid |TransactionFeebpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |TransactionFeebpl.775:13|
 :skolemid |20|
))))
 :qid |TransactionFeebpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |TransactionFeebpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |TransactionFeebpl.788:17|
 :skolemid |23|
)))))
 :qid |TransactionFeebpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |TransactionFeebpl.955:13|
 :skolemid |25|
))))
 :qid |TransactionFeebpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |TransactionFeebpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |TransactionFeebpl.968:17|
 :skolemid |28|
)))))
 :qid |TransactionFeebpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |TransactionFeebpl.1135:13|
 :skolemid |30|
))))
 :qid |TransactionFeebpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |TransactionFeebpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |TransactionFeebpl.1148:17|
 :skolemid |33|
)))))
 :qid |TransactionFeebpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |TransactionFeebpl.1315:13|
 :skolemid |35|
))))
 :qid |TransactionFeebpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |TransactionFeebpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |TransactionFeebpl.1328:17|
 :skolemid |38|
)))))
 :qid |TransactionFeebpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |TransactionFeebpl.1495:13|
 :skolemid |40|
))))
 :qid |TransactionFeebpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |TransactionFeebpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |TransactionFeebpl.1508:17|
 :skolemid |43|
)))))
 :qid |TransactionFeebpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'vec'u8''| (seq.nth v@@16 i@@18)))
 :qid |TransactionFeebpl.1675:13|
 :skolemid |45|
))))
 :qid |TransactionFeebpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 (Seq (Seq Int))) (e@@5 (Seq Int)) ) (! (let ((i@@19 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |TransactionFeebpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |TransactionFeebpl.1688:17|
 :skolemid |48|
)))))
 :qid |TransactionFeebpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'address'| (seq.nth v@@18 i@@21)))
 :qid |TransactionFeebpl.1855:13|
 :skolemid |50|
))))
 :qid |TransactionFeebpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |TransactionFeebpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |TransactionFeebpl.1868:17|
 :skolemid |53|
)))))
 :qid |TransactionFeebpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'u8'| (seq.nth v@@20 i@@24)))
 :qid |TransactionFeebpl.2035:13|
 :skolemid |55|
))))
 :qid |TransactionFeebpl.2033:28|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'u8''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'u8'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |TransactionFeebpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |TransactionFeebpl.2048:17|
 :skolemid |58|
)))))
 :qid |TransactionFeebpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'u8'| v@@21 e@@7))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |TransactionFeebpl.2221:15|
 :skolemid |60|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |TransactionFeebpl.2237:15|
 :skolemid |61|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |TransactionFeebpl.2308:15|
 :skolemid |62|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |TransactionFeebpl.2311:15|
 :skolemid |63|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_92611_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_92611| stream) 0) (forall ((v@@22 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_92611| stream) v@@22) 0)
 :qid |TransactionFeebpl.134:13|
 :skolemid |2|
))))
 :qid |TransactionFeebpl.2372:13|
 :skolemid |64|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |TransactionFeebpl.2413:80|
 :skolemid |66|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |TransactionFeebpl.2419:15|
 :skolemid |67|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |TransactionFeebpl.2469:82|
 :skolemid |68|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |TransactionFeebpl.2475:15|
 :skolemid |69|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |TransactionFeebpl.2525:80|
 :skolemid |70|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |TransactionFeebpl.2531:15|
 :skolemid |71|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |TransactionFeebpl.2581:79|
 :skolemid |72|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |TransactionFeebpl.2587:15|
 :skolemid |73|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |TransactionFeebpl.2637:76|
 :skolemid |74|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |TransactionFeebpl.2643:15|
 :skolemid |75|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |TransactionFeebpl.2693:78|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |TransactionFeebpl.2699:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |TransactionFeebpl.2749:74|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |TransactionFeebpl.2755:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |TransactionFeebpl.2805:69|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |TransactionFeebpl.2811:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |TransactionFeebpl.2861:70|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |TransactionFeebpl.2867:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |TransactionFeebpl.2917:60|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |TransactionFeebpl.2923:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |TransactionFeebpl.2973:66|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |TransactionFeebpl.2979:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |TransactionFeebpl.3029:60|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |TransactionFeebpl.3035:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |TransactionFeebpl.3085:63|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |TransactionFeebpl.3091:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |TransactionFeebpl.3141:79|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |TransactionFeebpl.3147:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |TransactionFeebpl.3197:82|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |TransactionFeebpl.3203:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |TransactionFeebpl.3253:88|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |TransactionFeebpl.3259:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |TransactionFeebpl.3309:72|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |TransactionFeebpl.3315:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |TransactionFeebpl.3394:61|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |TransactionFeebpl.4199:36|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |TransactionFeebpl.4218:71|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |TransactionFeebpl.4282:46|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |TransactionFeebpl.4295:64|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |TransactionFeebpl.4308:75|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |TransactionFeebpl.4321:72|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |TransactionFeebpl.4350:55|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |TransactionFeebpl.4372:46|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |TransactionFeebpl.4390:49|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |TransactionFeebpl.4475:71|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |TransactionFeebpl.4489:91|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |TransactionFeebpl.4503:113|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |TransactionFeebpl.4517:89|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |TransactionFeebpl.4531:75|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |TransactionFeebpl.4545:73|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |TransactionFeebpl.4565:48|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |TransactionFeebpl.4581:57|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |TransactionFeebpl.4595:83|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |TransactionFeebpl.4609:103|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |TransactionFeebpl.4623:125|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |TransactionFeebpl.4637:101|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |TransactionFeebpl.4651:87|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |TransactionFeebpl.4665:85|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |TransactionFeebpl.4679:48|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |TransactionFeebpl.4700:45|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |TransactionFeebpl.4714:51|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |TransactionFeebpl.4737:48|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |TransactionFeebpl.5029:49|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |TransactionFeebpl.5042:65|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |TransactionFeebpl.5614:45|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |TransactionFeebpl.5627:45|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |TransactionFeebpl.5640:37|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |TransactionFeebpl.5653:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |TransactionFeebpl.5667:55|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34) true)
 :qid |TransactionFeebpl.5681:47|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@35))))
 :qid |TransactionFeebpl.5701:38|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@36))))
 :qid |TransactionFeebpl.5722:44|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))))
 :qid |TransactionFeebpl.5773:53|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))))
 :qid |TransactionFeebpl.5835:53|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@39))))
 :qid |TransactionFeebpl.5897:45|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |TransactionFeebpl.5923:55|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |TransactionFeebpl.5937:55|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@42) true)
 :qid |TransactionFeebpl.5951:47|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@43)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@43))))
 :qid |TransactionFeebpl.5968:38|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@44)))
 :qid |TransactionFeebpl.5982:48|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@45)))
 :qid |TransactionFeebpl.5996:48|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@46) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@46)))
 :qid |TransactionFeebpl.6010:40|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@47)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@47)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@47))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@47))))
 :qid |TransactionFeebpl.6030:41|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@48)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@48)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@48))))
 :qid |TransactionFeebpl.6048:57|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@48))
)))
(assert (forall ((s@@49 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@49) true)
 :qid |TransactionFeebpl.13033:68|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@50)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50))))
 :qid |TransactionFeebpl.13055:66|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@51)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51))))
 :qid |TransactionFeebpl.13081:66|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@52)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))))
 :qid |TransactionFeebpl.13110:56|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@53)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))))
 :qid |TransactionFeebpl.13140:56|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@53))
)))
(assert (forall ((s@@54 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@54) true)
 :qid |TransactionFeebpl.13462:31|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@54))
)))
(assert (forall ((s@@55 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@55) true)
 :qid |TransactionFeebpl.13807:31|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@55))
)))
(assert (forall ((s@@56 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@56)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@56)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@56))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@56))))
 :qid |TransactionFeebpl.13826:35|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@57) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@57)))
 :qid |TransactionFeebpl.14235:45|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@58)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@58))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@58))))
 :qid |TransactionFeebpl.14254:50|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@59) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@59)))
 :qid |TransactionFeebpl.14269:52|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@60) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@60)))
 :qid |TransactionFeebpl.14283:46|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@61) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@61)))
 :qid |TransactionFeebpl.14307:38|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@62) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@62)))
 :qid |TransactionFeebpl.14321:39|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@62))
)))
(assert (forall ((s@@63 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@63)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@63)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@63))))
 :qid |TransactionFeebpl.14373:65|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@63))
)))
(assert (forall ((s@@64 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@64)  (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@64)) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@64))))
 :qid |TransactionFeebpl.14391:65|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@64))
)))
(assert (forall ((s@@65 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@65)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@65)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@65))))
 :qid |TransactionFeebpl.14409:57|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@65))
)))
(assert (forall ((s@@66 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@66)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@66))))
 :qid |TransactionFeebpl.19584:60|
 :skolemid |418|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67))))
 :qid |TransactionFeebpl.19601:66|
 :skolemid |419|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@68)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@68))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@68))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@68))))
 :qid |TransactionFeebpl.19630:50|
 :skolemid |420|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@69) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@69)))
 :qid |TransactionFeebpl.19649:45|
 :skolemid |421|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@70)) true))
 :qid |TransactionFeebpl.19956:87|
 :skolemid |422|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@71)))
 :qid |TransactionFeebpl.20157:47|
 :skolemid |423|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@72)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@72))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@72))))
 :qid |TransactionFeebpl.20177:58|
 :skolemid |424|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@73) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@73)))
 :qid |TransactionFeebpl.20192:39|
 :skolemid |425|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@74))))
 :qid |TransactionFeebpl.20214:58|
 :skolemid |426|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75))))
 :qid |TransactionFeebpl.20231:58|
 :skolemid |427|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76) true)
 :qid |TransactionFeebpl.20246:51|
 :skolemid |428|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77))))
 :qid |TransactionFeebpl.20263:60|
 :skolemid |429|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@78)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@78))))
 :qid |TransactionFeebpl.20549:47|
 :skolemid |430|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@79))))
 :qid |TransactionFeebpl.20571:63|
 :skolemid |431|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@80)))
 :qid |TransactionFeebpl.20586:57|
 :skolemid |432|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80))
)))
(assert (forall ((s@@81 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@81)))
 :qid |TransactionFeebpl.20599:55|
 :skolemid |433|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@82)))
 :qid |TransactionFeebpl.20613:55|
 :skolemid |434|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@83)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@83))))
 :qid |TransactionFeebpl.20630:54|
 :skolemid |435|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@84) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@84)))
 :qid |TransactionFeebpl.20644:55|
 :skolemid |436|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@85) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@85)))
 :qid |TransactionFeebpl.20658:57|
 :skolemid |437|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@86)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@86))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@86))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@86))))
 :qid |TransactionFeebpl.20680:56|
 :skolemid |438|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@87)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@87)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@87))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@87))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@87))))
 :qid |TransactionFeebpl.20705:52|
 :skolemid |439|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@88) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@88)))
 :qid |TransactionFeebpl.20721:54|
 :skolemid |440|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@89)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@89)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@89))))
 :qid |TransactionFeebpl.21563:47|
 :skolemid |441|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@90)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@90))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@90))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@90))))
 :qid |TransactionFeebpl.21587:47|
 :skolemid |442|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@91) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@91)))
 :qid |TransactionFeebpl.21819:63|
 :skolemid |443|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@92) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@92)))
 :qid |TransactionFeebpl.22155:49|
 :skolemid |444|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@93)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@93)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@93))))
 :qid |TransactionFeebpl.22198:49|
 :skolemid |445|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@94)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@94)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@94))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@94))))
 :qid |TransactionFeebpl.22227:48|
 :skolemid |446|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@95) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@95)))
 :qid |TransactionFeebpl.22511:47|
 :skolemid |447|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@95))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_11086 v@@23)))
 (and (= (seq.len r@@0) (seq.len v@@23)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len r@@0))) (= (seq.nth r@@0 i@@27) (seq.nth v@@23 (- (- (seq.len v@@23) i@@27) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@27))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_11086 v@@23))
)))
(assert (forall ((v@@24 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_84051 v@@24)))
 (and (= (seq.len r@@1) (seq.len v@@24)) (forall ((i@@28 Int) ) (!  (=> (and (>= i@@28 0) (< i@@28 (seq.len r@@1))) (= (seq.nth r@@1 i@@28) (seq.nth v@@24 (- (- (seq.len v@@24) i@@28) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@28))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_84051 v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_83263 v@@25)))
 (and (= (seq.len r@@2) (seq.len v@@25)) (forall ((i@@29 Int) ) (!  (=> (and (>= i@@29 0) (< i@@29 (seq.len r@@2))) (= (seq.nth r@@2 i@@29) (seq.nth v@@25 (- (- (seq.len v@@25) i@@29) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@29))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83263 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_83460 v@@26)))
 (and (= (seq.len r@@3) (seq.len v@@26)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@3))) (= (seq.nth r@@3 i@@30) (seq.nth v@@26 (- (- (seq.len v@@26) i@@30) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@30))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83460 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_83657 v@@27)))
 (and (= (seq.len r@@4) (seq.len v@@27)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@4))) (= (seq.nth r@@4 i@@31) (seq.nth v@@27 (- (- (seq.len v@@27) i@@31) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@31))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83657 v@@27))
)))
(assert (forall ((v@@28 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_84248 v@@28)))
 (and (= (seq.len r@@5) (seq.len v@@28)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@5))) (= (seq.nth r@@5 i@@32) (seq.nth v@@28 (- (- (seq.len v@@28) i@@32) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@32))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_84248 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@6 (ReverseVec_83854 v@@29)))
 (and (= (seq.len r@@6) (seq.len v@@29)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@6))) (= (seq.nth r@@6 i@@33) (seq.nth v@@29 (- (- (seq.len v@@29) i@@33) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@33))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83854 v@@29))
)))
(assert (forall ((v@@30 (Seq |T@#0|)) ) (! (let ((r@@7 (ReverseVec_83066 v@@30)))
 (and (= (seq.len r@@7) (seq.len v@@30)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@7))) (= (seq.nth r@@7 i@@34) (seq.nth v@@30 (- (- (seq.len v@@30) i@@34) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@34))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83066 v@@30))
)))
(assert (forall ((|l#0| Bool) (i@@35 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@35) |l#0|)
 :qid |TransactionFeebpl.250:54|
 :skolemid |538|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@35))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_92611|) (|l#1| |T@[$1_Event_EventHandle]Multiset_92611|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_92611_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_92611| (|Select__T@[$1_Event_EventHandle]Multiset_92611_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_92611| (|Select__T@[$1_Event_EventHandle]Multiset_92611_| |l#1| handle@@0))))
(Multiset_92611 (|lambda#3| (|v#Multiset_92611| (|Select__T@[$1_Event_EventHandle]Multiset_92611_| |l#0@@0| handle@@0)) (|v#Multiset_92611| (|Select__T@[$1_Event_EventHandle]Multiset_92611_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |TransactionFeebpl.2382:13|
 :skolemid |539|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_92611_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@31 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@31) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@31) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@31)))
 :qid |TransactionFeebpl.129:29|
 :skolemid |540|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@31))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@15 () Bool)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_119820)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_119142)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory| () T@$Memory_163291)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_120653)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_131254)
(declare-fun $t7 () |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|)
(declare-fun $t8 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11| () T@$Memory_120653)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@7| () T@$Memory_131254)
(declare-fun |Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| Int) |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory@0| () T@$Memory_163291)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@16 () Int)
(declare-fun $abort_flag@14 () Bool)
(declare-fun $abort_code@15 () Int)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@5| () T@$Memory_131254)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@1| () Int)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@6| () T@$Memory_131254)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3| () T@$Memory_131254)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@4| () T@$Memory_131254)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'_| (|T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| Int |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'_| (|T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| Int) |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun $abort_code@14 () Int)
(declare-fun $abort_flag@13 () Bool)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t13@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t10@1| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t8@0| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t6@0| () Bool)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t5@0| () Int)
(declare-fun |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t4@0| () Int)
(declare-fun $t21@3 () T@$Mutation_184132)
(declare-fun $t21@2 () T@$Mutation_184132)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$ret0@1| () T@$Mutation_137816)
(declare-fun |Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| Int |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t37 () Int)
(declare-fun $abort_flag@12 () Bool)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$ret0@1| () T@$Mutation_137816)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@9| () T@$Memory_120653)
(declare-fun $abort_code@13 () Int)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$ret0@0| () T@$Mutation_137816)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@10| () T@$Memory_120653)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t20@1| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t0@1| () T@$Mutation_137816)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@8| () T@$Memory_120653)
(declare-fun $abort_flag@11 () Bool)
(declare-fun $abort_code@12 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@7| () T@$Memory_120653)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| () T@$Memory_120653)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4| () T@$Mutation_141494)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5| () T@$Memory_120653)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| () T@$Memory_120653)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$ret0@0| () T@$Mutation_137816)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t52@1| () T@$Mutation_112968)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t53@1| () T@$1_Diem_BurnEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_92611_| (|T@[$1_Event_EventHandle]Multiset_92611| T@$1_Event_EventHandle T@Multiset_92611) |T@[$1_Event_EventHandle]Multiset_92611|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_92611|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_92611)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_92611_| (|Store__T@[$1_Event_EventHandle]Multiset_92611_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_92611|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_92611)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_92611_| (|Store__T@[$1_Event_EventHandle]Multiset_92611_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_92611_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t18@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t50@1| () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t49@1| () T@$Mutation_11233)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3| () T@$Mutation_141494)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t49@2| () T@$Mutation_11233)
(declare-fun inline$$Sub$2$dst@2 () Int)
(declare-fun inline$$Sub$2$dst@0 () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t47@1| () Int)
(declare-fun inline$$Sub$2$dst@1 () Int)
(declare-fun $abort_code@11 () Int)
(declare-fun $abort_flag@10 () Bool)
(declare-fun inline$$Ge$2$dst@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4| () T@$Memory_120653)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t46@0| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t43@1| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t42@1| () T@$Mutation_11233)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2| () T@$Mutation_141494)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t42@2| () T@$Mutation_11233)
(declare-fun inline$$Sub$1$dst@2 () Int)
(declare-fun inline$$Sub$1$dst@0 () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t39@1| () Int)
(declare-fun inline$$CastU128$1$dst@1 () Int)
(declare-fun inline$$Sub$1$dst@1 () Int)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun inline$$CastU128$1$dst@0 () Int)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun inline$$Ge$1$dst@1 () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t38@0| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t34@1| () Int)
(declare-fun inline$$CastU128$0$dst@1 () Int)
(declare-fun inline$$CastU128$0$dst@0 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@0| () T@$Mutation_141494)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@1| () T@$Mutation_141494)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t31@0| () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@0| () Int)
(declare-fun inline$$Gt$1$dst@1 () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@1| () T@$Mutation_141541)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1| () T@$Mutation_137816)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t29@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@2| () T@$Mutation_141541)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_Diem'$1_XDX_XDX''@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t28@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t26@0| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t22@1| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t19@0| () Bool)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t21@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t10@0| () T@$Mutation_141494)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@0| () T@$Mutation_141541)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t42@0| () T@$Mutation_11233)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t49@0| () T@$Mutation_11233)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t52@0| () T@$Mutation_112968)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t12@0| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t13@0| () Int)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t14@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t15@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t16@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t17@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t26@0| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t27@0| () Int)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t28@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t29@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t30@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t31@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t1@1| () T@$Mutation_137816)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| () T@$Memory_120653)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| () T@$Memory_120653)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3| () T@$Mutation_141494)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| () T@$Memory_120653)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@0| () T@$Mutation_137816)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1| () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t41@1| () T@$Mutation_112968)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t42@1| () T@$1_Diem_PreburnEvent)
(declare-fun |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1| () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t26@0| () (Seq Int))
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t39@1| () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t38@1| () T@$Mutation_11233)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2| () T@$Mutation_141494)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t38@2| () T@$Mutation_11233)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t36@1| () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t35@0| () Int)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t31@1| () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@0| () T@$Mutation_141494)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@1| () T@$Mutation_141494)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t27@0| () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@0| () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t25@0| () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@2| () T@$Mutation_141541)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@1| () T@$Mutation_141541)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_Diem'$1_XDX_XDX''@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t24@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $t23 () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $t26@0 () T@$Mutation_137816)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t20@1| () Bool)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t22@0| () Int)
(declare-fun |inline$$1_Diem_value'$1_XDX_XDX'$1$$t1@1| () Int)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t17@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t9@0| () T@$Mutation_141494)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@0| () T@$Mutation_141541)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t38@0| () T@$Mutation_11233)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t41@0| () T@$Mutation_112968)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t10@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t11@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t12@0| () (Seq Int))
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t13@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t14@0| () T@$1_Diem_PreburnEvent)
(declare-fun |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t21@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t22@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t23@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t24@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t25@0| () T@$1_Diem_PreburnEvent)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t19@0| () Int)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t15@1| () Int)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t6@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t7@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t8@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t9@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t10@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t11@0| () T@$1_Diem_PreburnEvent)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t13@0| () (Seq Int))
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun $t28 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t29 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t30 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t31 () (Seq Int))
(declare-fun $t32 () T@$1_Event_EventHandle)
(declare-fun $t33 () T@$1_Diem_PreburnEvent)
(declare-fun $t34 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t35 () (Seq Int))
(declare-fun $t36 () T@$1_Event_EventHandle)
(declare-fun $abort_flag@1 () Bool)
(declare-fun |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t9@2| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun $abort_code@2 () Int)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@1| () T@$Memory_131254)
(declare-fun |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t8@1| () Int)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@2| () T@$Memory_131254)
(declare-fun |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t9@0| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t4@0| () Int)
(declare-fun |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t9@1| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@0| () T@$Memory_131254)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t5@1| () Bool)
(declare-fun |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t7@0| () Int)
(declare-fun |$temp_0'$1_TransactionFee_TransactionFee'$1_XDX_XDX''@0| () |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|)
(declare-fun $t21@1 () T@$Mutation_184132)
(declare-fun $t22@0 () T@$Mutation_141541)
(declare-fun $t24@0 () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $t22@1 () T@$Mutation_141541)
(declare-fun |$temp_0'$1_Diem_Diem'$1_XDX_XDX''@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $t21 () T@$Mutation_184132)
(declare-fun $t21@0 () T@$Mutation_184132)
(declare-fun $abort_code@0 () Int)
(declare-fun $t16 () Bool)
(declare-fun $t19 () Int)
(declare-fun $t17 () Bool)
(declare-fun $t10 () Int)
(declare-fun |inline$$1_TransactionFee_is_coin_initialized'$1_XDX_XDX'$0$$t1@1| () Bool)
(declare-fun $t15 () Int)
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t9 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_123798)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_124356)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_120007)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_120100)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_120186)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_120259)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_120330)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_130823)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_136325)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_120414)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_120498)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_120569)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_120737)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_120808)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_120905)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_165223)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_120989)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_121073)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_121144)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_121215)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_121387)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_121458)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_165510)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_162647)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_163014)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_165704)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_165764)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_165849)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_163111)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_163047)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_121529)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_121613)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_119694)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $t5 () T@$Mutation_184132)
(declare-fun $t22 () T@$Mutation_141541)
(declare-fun $t26 () T@$Mutation_137816)
(push 1)
(set-info :boogie-vc-id $1_TransactionFee_burn_fees$verify_instantiated_1)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 348758) (let ((anon38_Else_correct  (=> (not $abort_flag@15) (and (=> (= (ControlFlow 0 267463) (- 0 356146)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 267463) (- 0 356158)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 267463) (- 0 356176)) (not (not (= (|$addr#$signer| _$t0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0) 186537453))) (and (=> (= (ControlFlow 0 267463) (- 0 356190)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 267463) (- 0 356200)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453))) (and (=> (= (ControlFlow 0 267463) (- 0 356210)) (not (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) true))) (=> (not (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) true)) (and (=> (= (ControlFlow 0 267463) (- 0 356223)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0)))))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))))) (and (=> (= (ControlFlow 0 267463) (- 0 356244)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7)) 0)))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7)) 0))) (and (=> (= (ControlFlow 0 267463) (- 0 356267)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (< (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7)))))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (< (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))))) (and (=> (= (ControlFlow 0 267463) (- 0 356292)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))) 0)))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))) 0))) (and (=> (= (ControlFlow 0 267463) (- 0 356317)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))) 18446744073709551615)))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))) 18446744073709551615))) (and (=> (= (ControlFlow 0 267463) (- 0 356347)) (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 267463) (- 0 356365)) (=> (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816))))) (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@7|) (|$addr#$signer| _$t0)))) (=> (=> (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816))))) (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@7|) (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 267463) (- 0 356382)) (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816)) (- (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|contents#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453)))))) (=> (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816)) (- (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|contents#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453))))) (=> (= (ControlFlow 0 267463) (- 0 356402)) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|contents#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory@0|) 186537453))) 0)))))))))))))))))))))))))))))))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 258758) (- 0 355686)) (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453))) (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) true)) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7)) 0))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (< (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))) 0))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))) 18446744073709551615))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453))) (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) true)) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0))))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7)) 0))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (< (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))) 0))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))) 18446744073709551615))) (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (= (ControlFlow 0 258758) (- 0 355867)) (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) $t6)) (= 5 $t10@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t10@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453)) (= 5 $t10@0))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) true) (= 1 $t10@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0)))) (= 4 $t10@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7)) 0)) (= 7 $t10@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (< (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t8) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7)))) (= 8 $t10@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))) 0)) (= 1 $t10@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| $t7))) 18446744073709551615)) (= 8 $t10@0))) (and (and (not (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t10@0))))))))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@15 (= $abort_code@16 $abort_code@16)) (and (= $t10@0 $abort_code@16) (= (ControlFlow 0 267477) 258758))) L6_correct)))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon17_Else_correct|  (=> (and (and (not $abort_flag@14) (= $abort_flag@15 $abort_flag@14)) (and (= $abort_code@16 $abort_code@15) (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@7| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@5|))) (and (=> (= (ControlFlow 0 266999) 267477) anon38_Then_correct) (=> (= (ControlFlow 0 266999) 267463) anon38_Else_correct)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$L3_correct|  (=> (= $abort_flag@15 true) (=> (and (= $abort_code@16 |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@1|) (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@7| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@6|)) (and (=> (= (ControlFlow 0 266963) 267477) anon38_Then_correct) (=> (= (ControlFlow 0 266963) 267463) anon38_Else_correct))))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon17_Then_correct|  (=> $abort_flag@14 (=> (and (and (= $abort_code@15 $abort_code@15) (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@6| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@5|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@1| $abort_code@15) (= (ControlFlow 0 267013) 266963))) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon16_Then$1_correct|  (=> (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@5| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3|) (=> (and (= $abort_code@15 $EXEC_FAILURE_CODE) (= $abort_flag@14 true)) (and (=> (= (ControlFlow 0 267065) 267013) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 267065) 266999) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon16_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 267063) 267065)) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon16_Then$1_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon16_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0))) (=> (and (and (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@4| ($Memory_131254 (|Store__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'_| (|contents#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1|))) (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@5| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@4|)) (and (= $abort_code@15 $abort_code@14) (= $abort_flag@14 $abort_flag@13))) (and (=> (= (ControlFlow 0 266989) 267013) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 266989) 266999) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon15_Then_correct|  (=> inline$$Not$2$dst@1 (and (=> (= (ControlFlow 0 266967) 267063) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 266967) 266989) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon15_Else_correct|  (=> (not inline$$Not$2$dst@1) (=> (and (and (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t13@0| |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t13@0|) (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@6| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t13@0|) (= (ControlFlow 0 266957) 266963))) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon14_Else$1_correct|  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t13@0|) (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t13@0| 6)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t13@0| |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t13@0|) (= inline$$Not$2$dst@1 inline$$Not$2$dst@1))) (and (=> (= (ControlFlow 0 266941) 266967) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 266941) 266957) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon15_Else_correct|))))))
(let ((inline$$Not$2$anon0_correct  (=> (and (= inline$$Not$2$dst@1  (not |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t10@1|)) (= (ControlFlow 0 266901) 266941)) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon14_Else$1_correct|)))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon14_Else_correct|  (=> (not |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t8@0|) (=> (and (and (|$IsValid'address'| |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t9@0| (|$addr#$signer| _$t0))) (and (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t10@1| (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3|) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t9@0|)) (= (ControlFlow 0 266907) 266901))) inline$$Not$2$anon0_correct))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon14_Then_correct|  (=> |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t8@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816)) (= 5 |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@0|)) (=> (and (and (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@0| |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@0|) (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@6| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@0|) (= (ControlFlow 0 267091) 266963))) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$L3_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon13_Else_correct|  (=> (and (not |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t6@0|) (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t8@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11|) 173345816)))) (and (=> (= (ControlFlow 0 266845) 267091) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 266845) 266907) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon14_Else_correct|)))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon13_Then_correct|  (=> (and |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t6@0| (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t5@0|)) (= 5 |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t5@0|)) 1)) (= 3 |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@0|))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@0|)))) (=> (and (and (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@0| |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@0|) (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@6| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@1| |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t7@0|) (= (ControlFlow 0 267163) 266963))) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t4@0| (|$addr#$signer| _$t0)) (=> (and (and (= _$t0 _$t0) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1|)) (and (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t5@0| (|$addr#$signer| _$t0)) (= |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t6@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t5@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$$t5@0|)) 1))) (not (= (|$addr#$signer| _$t0) 186537453)))))) (and (=> (= (ControlFlow 0 266827) 267163) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon13_Then_correct|) (=> (= (ControlFlow 0 266827) 266845) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon13_Else_correct|))))))
(let ((anon37_Else_correct  (=> (not $abort_flag@13) (=> (and (and (= $t21@3 ($Mutation_184132 (|l#$Mutation_184132| $t21@2) (|p#$Mutation_184132| $t21@2) (|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|v#$Mutation_184132| $t21@2)) (|v#$Mutation_137816| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$ret0@1|)))) (= |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory@0| ($Memory_163291 (|Store__T@[Int]Bool_| (|domain#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) (|a#$Global| (|l#$Mutation_184132| $t21@3)) true) (|Store__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|contents#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) (|a#$Global| (|l#$Mutation_184132| $t21@3)) (|v#$Mutation_184132| $t21@3))))) (and (= $t37 (|$addr#$signer| _$t0)) (= (ControlFlow 0 267167) 266827))) |inline$$1_Diem_publish_burn_capability'$1_XDX_XDX'$0$anon0_correct|))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@13 (= $abort_code@14 $abort_code@14)) (and (= $t10@0 $abort_code@14) (= (ControlFlow 0 267491) 258758))) L6_correct)))
(let ((|inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon10_Else_correct|  (=> (not $abort_flag@12) (=> (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2| (|v#$Mutation_137816| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$ret0@1|)) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2|)) (=> (and (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$ret0@1|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@9|)) (and (= $abort_code@14 $abort_code@13) (= $abort_flag@13 $abort_flag@12))) (and (=> (= (ControlFlow 0 266176) 267491) anon37_Then_correct) (=> (= (ControlFlow 0 266176) 267167) anon37_Else_correct)))))))
(let ((|inline$$1_Diem_burn_now'$1_XDX_XDX'$0$L3_correct|  (=> (and (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@11| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@10|)) (and (= $abort_code@14 |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t20@1|) (= $abort_flag@13 true))) (and (=> (= (ControlFlow 0 260454) 267491) anon37_Then_correct) (=> (= (ControlFlow 0 260454) 267167) anon37_Else_correct)))))
(let ((|inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon10_Then_correct|  (=> $abort_flag@12 (=> (and (and (= $abort_code@13 $abort_code@13) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t20@1| $abort_code@13)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@10| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@9|) (= (ControlFlow 0 266190) 260454))) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L9_correct|  (=> (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2| (|v#$Mutation_137816| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t0@1|)) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2|)) (=> (and (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@9| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@8|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t0@1|)) (and (= $abort_flag@12 $abort_flag@11) (= $abort_code@13 $abort_code@12))) (and (=> (= (ControlFlow 0 265835) 266190) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 265835) 266176) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon10_Else_correct|))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon48_Else_correct|  (=> (and (and (not $abort_flag@11) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@7| ($Memory_120653 (|Store__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4|)) (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4|))))) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@8| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@7|) (= (ControlFlow 0 265960) 265835))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L9_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon47_Else_correct|  (=> (and (and (not inline$$Not$1$dst@1) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5| ($Memory_120653 (|Store__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4|)) (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4|))))) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@8| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) (= (ControlFlow 0 265821) 265835))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L9_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|  (=> (and (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@9| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$ret0@0|)) (and (= $abort_flag@12 true) (= $abort_code@13 |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1|))) (and (=> (= (ControlFlow 0 264751) 266190) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 264751) 266176) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon10_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon48_Then_correct|  (=> $abort_flag@11 (=> (and (and (= $abort_code@12 $abort_code@12) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| $abort_code@12)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 265974) 264751))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|))))
(let ((|inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1| (|v#$Mutation_112968| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t52@1|)) (= $es@1 (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_92611_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1|)))
(let ((stream_new (let ((len (|l#Multiset_92611| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_92611| stream@@0) (|$ToEventRep'$1_Diem_BurnEvent'| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t53@1|))))
(Multiset_92611 (|Store__T@[$EventRep]Int_| (|v#Multiset_92611| stream@@0) (|$ToEventRep'$1_Diem_BurnEvent'| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t53@1|) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_92611_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1| stream_new)))))) (and (=> (= (ControlFlow 0 265932) 265974) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon48_Then_correct|) (=> (= (ControlFlow 0 265932) 265960) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon48_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon47_Then_correct|  (=> (and (and inline$$Not$1$dst@1 (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t52@1| ($Mutation_112968 (|l#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4|) (seq.++ (|p#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4|) (seq.unit 9)) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4|))))) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t53@1| ($1_Diem_BurnEvent |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t18@0| 186537453)) (= (ControlFlow 0 265938) 265932))) |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$anon0_correct|)))
(let ((inline$$Not$1$anon0_correct  (=> (= inline$$Not$1$dst@1  (not |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t50@1|)) (and (=> (= (ControlFlow 0 265793) 265938) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon47_Then_correct|) (=> (= (ControlFlow 0 265793) 265821) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon47_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon46_Else_correct|  (=> (and (not $abort_flag@11) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t49@1| ($Mutation_11233 (|l#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|) (seq.++ (|p#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|) (seq.unit 1)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|))))) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t49@2| ($Mutation_11233 (|l#$Mutation_11233| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t49@1|) (|p#$Mutation_11233| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t49@1|) inline$$Sub$2$dst@2)) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4| ($Mutation_141494 (|l#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|) (|p#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|) (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|v#$Mutation_11233| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t49@2|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)))))) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t50@1| (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@4|))) (= (ControlFlow 0 265799) 265793))) inline$$Not$1$anon0_correct))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon46_Then_correct|  (=> $abort_flag@11 (=> (and (and (= $abort_code@12 $abort_code@12) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| $abort_code@12)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 265988) 264751))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|))))
(let ((inline$$Sub$2$anon3_Then$1_correct  (=> (= $abort_code@12 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@11 true) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@0)) (and (=> (= (ControlFlow 0 265709) 265988) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon46_Then_correct|) (=> (= (ControlFlow 0 265709) 265799) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon46_Else_correct|))))))
(let ((inline$$Sub$2$anon3_Then_correct  (=> (and (< |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t47@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1|) (= (ControlFlow 0 265707) 265709)) inline$$Sub$2$anon3_Then$1_correct)))
(let ((inline$$Sub$2$anon3_Else_correct  (=> (<= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t47@1|) (=> (and (and (= inline$$Sub$2$dst@1 (- |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t47@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1|)) (= $abort_code@12 $abort_code@11)) (and (= $abort_flag@11 $abort_flag@10) (= inline$$Sub$2$dst@2 inline$$Sub$2$dst@1))) (and (=> (= (ControlFlow 0 265659) 265988) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon46_Then_correct|) (=> (= (ControlFlow 0 265659) 265799) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon46_Else_correct|))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon45_Then_correct|  (=> (and inline$$Ge$2$dst@1 (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t47@1| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)))) (and (=> (= (ControlFlow 0 265715) 265707) inline$$Sub$2$anon3_Then_correct) (=> (= (ControlFlow 0 265715) 265659) inline$$Sub$2$anon3_Else_correct)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon45_Else_correct|  (=> (and (not inline$$Ge$2$dst@1) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4| ($Memory_120653 (|Store__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|)) (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|))))) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t46@0| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t46@0|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t46@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4|) (= (ControlFlow 0 265568) 264751))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon44_Else$1_correct|  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t46@0|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t46@0| 8)) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t46@0| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t46@0|) (= inline$$Ge$2$dst@1 inline$$Ge$2$dst@1))) (and (=> (= (ControlFlow 0 265540) 265715) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon45_Then_correct|) (=> (= (ControlFlow 0 265540) 265568) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon45_Else_correct|))))))
(let ((inline$$Ge$2$anon0_correct  (=> (and (= inline$$Ge$2$dst@1 (>= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t43@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1|)) (= (ControlFlow 0 265504) 265540)) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon44_Else$1_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon44_Else_correct|  (=> (and (not $abort_flag@10) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t42@1| ($Mutation_11233 (|l#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|) (seq.++ (|p#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|) (seq.unit 0)) (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|))))) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t42@2| ($Mutation_11233 (|l#$Mutation_11233| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t42@1|) (|p#$Mutation_11233| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t42@1|) inline$$Sub$1$dst@2)) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3| ($Mutation_141494 (|l#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|) (|p#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|) (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_11233| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t42@2|) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)))))) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t43@1| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@3|))) (= (ControlFlow 0 265510) 265504))) inline$$Ge$2$anon0_correct))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon44_Then_correct|  (=> $abort_flag@10 (=> (and (and (= $abort_code@11 $abort_code@11) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| $abort_code@11)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 266002) 264751))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|))))
(let ((inline$$Sub$1$anon3_Then$1_correct  (=> (= $abort_flag@10 true) (=> (and (= $abort_code@11 $EXEC_FAILURE_CODE) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@0)) (and (=> (= (ControlFlow 0 265410) 266002) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon44_Then_correct|) (=> (= (ControlFlow 0 265410) 265510) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon44_Else_correct|))))))
(let ((inline$$Sub$1$anon3_Then_correct  (=> (and (< |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t39@1| inline$$CastU128$1$dst@1) (= (ControlFlow 0 265408) 265410)) inline$$Sub$1$anon3_Then$1_correct)))
(let ((inline$$Sub$1$anon3_Else_correct  (=> (<= inline$$CastU128$1$dst@1 |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t39@1|) (=> (and (and (= inline$$Sub$1$dst@1 (- |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t39@1| inline$$CastU128$1$dst@1)) (= $abort_flag@10 $abort_flag@9)) (and (= $abort_code@11 $abort_code@10) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@1))) (and (=> (= (ControlFlow 0 265360) 266002) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon44_Then_correct|) (=> (= (ControlFlow 0 265360) 265510) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon44_Else_correct|))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon43_Else_correct|  (=> (not $abort_flag@9) (and (=> (= (ControlFlow 0 265416) 265408) inline$$Sub$1$anon3_Then_correct) (=> (= (ControlFlow 0 265416) 265360) inline$$Sub$1$anon3_Else_correct)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon43_Then_correct|  (=> $abort_flag@9 (=> (and (and (= $abort_code@10 $abort_code@10) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| $abort_code@10)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 266016) 264751))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|))))
(let ((inline$$CastU128$1$anon3_Then$1_correct  (=> (= $abort_code@10 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9 true) (= inline$$CastU128$1$dst@1 inline$$CastU128$1$dst@0)) (and (=> (= (ControlFlow 0 265265) 266016) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon43_Then_correct|) (=> (= (ControlFlow 0 265265) 265416) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon43_Else_correct|))))))
(let ((inline$$CastU128$1$anon3_Then_correct  (=> (and (> |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1| $MAX_U128) (= (ControlFlow 0 265263) 265265)) inline$$CastU128$1$anon3_Then$1_correct)))
(let ((inline$$CastU128$1$anon3_Else_correct  (=> (and (and (>= $MAX_U128 |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1|) (= $abort_code@10 $abort_code@9)) (and (= $abort_flag@9 $abort_flag@8) (= inline$$CastU128$1$dst@1 |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1|))) (and (=> (= (ControlFlow 0 265215) 266016) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon43_Then_correct|) (=> (= (ControlFlow 0 265215) 265416) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon43_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon42_Then_correct|  (=> (and inline$$Ge$1$dst@1 (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t39@1| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|)))) (and (=> (= (ControlFlow 0 265271) 265263) inline$$CastU128$1$anon3_Then_correct) (=> (= (ControlFlow 0 265271) 265215) inline$$CastU128$1$anon3_Else_correct)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon42_Else_correct|  (=> (not inline$$Ge$1$dst@1) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t38@0| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t38@0|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t38@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 265136) 264751))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon41_Else$1_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t38@0|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t38@0| 8)) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t38@0| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t38@0|) (= inline$$Ge$1$dst@1 inline$$Ge$1$dst@1))) (and (=> (= (ControlFlow 0 265120) 265271) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 265120) 265136) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon42_Else_correct|))))))
(let ((inline$$Ge$1$anon0_correct  (=> (and (= inline$$Ge$1$dst@1 (>= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t34@1| inline$$CastU128$0$dst@1)) (= (ControlFlow 0 265084) 265120)) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon41_Else$1_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon41_Else_correct|  (=> (and (not $abort_flag@8) (= (ControlFlow 0 265090) 265084)) inline$$Ge$1$anon0_correct)))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon41_Then_correct|  (=> $abort_flag@8 (=> (and (and (= $abort_code@9 $abort_code@9) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| $abort_code@9)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 266030) 264751))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|))))
(let ((inline$$CastU128$0$anon3_Then$1_correct  (=> (= $abort_flag@8 true) (=> (and (= $abort_code@9 $EXEC_FAILURE_CODE) (= inline$$CastU128$0$dst@1 inline$$CastU128$0$dst@0)) (and (=> (= (ControlFlow 0 265030) 266030) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 265030) 265090) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon41_Else_correct|))))))
(let ((inline$$CastU128$0$anon3_Then_correct  (=> (and (> |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1| $MAX_U128) (= (ControlFlow 0 265028) 265030)) inline$$CastU128$0$anon3_Then$1_correct)))
(let ((inline$$CastU128$0$anon3_Else_correct  (=> (and (and (>= $MAX_U128 |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1|) (= $abort_flag@8 $abort_flag@7)) (and (= $abort_code@9 $abort_code@8) (= inline$$CastU128$0$dst@1 |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1|))) (and (=> (= (ControlFlow 0 264980) 266030) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 264980) 265090) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon41_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon40_Else_correct|  (=> (and (and (not $abort_flag@7) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|))) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t34@1| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2|))))) (and (=> (= (ControlFlow 0 265036) 265028) inline$$CastU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 265036) 264980) inline$$CastU128$0$anon3_Else_correct)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon40_Then_correct|  (=> $abort_flag@7 (=> (and (and (= $abort_code@8 $abort_code@8) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| $abort_code@8)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 266044) 264751))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon39_Then$1_correct|  (=> (= $abort_code@8 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@7 true) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@0|)) (and (=> (= (ControlFlow 0 266096) 266044) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon40_Then_correct|) (=> (= (ControlFlow 0 266096) 265036) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon40_Else_correct|))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon39_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (= (ControlFlow 0 266094) 266096)) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon39_Then$1_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon39_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@1| ($Mutation_141494 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816))) (= $abort_code@8 $abort_code@7)) (and (= $abort_flag@7 $abort_flag@6) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@2| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@1|))) (and (=> (= (ControlFlow 0 264885) 266044) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon40_Then_correct|) (=> (= (ControlFlow 0 264885) 265036) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon40_Else_correct|))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon38_Else_correct|  (=> (and (not |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t31@0|) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 264863) 266094) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon39_Then_correct|) (=> (= (ControlFlow 0 264863) 264885) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon39_Else_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon38_Then_correct|  (=> |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t31@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (= 5 |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@0|)) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@0| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@0|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 266122) 264751))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon37_Then_correct|  (=> inline$$Gt$1$dst@1 (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@1| ($Mutation_141541 (|l#$Mutation_137816| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1|) (seq.++ (|p#$Mutation_137816| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1|) (seq.unit 0)) (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|v#$Mutation_137816| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1|)))) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t29@1| (|v#$Mutation_141541| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@1|))) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@2| ($Mutation_141541 (|l#$Mutation_141541| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@1|) (|p#$Mutation_141541| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@1|) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_Diem'$1_XDX_XDX''@1|)) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|v#$Mutation_141541| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@2|)))) (=> (and (and (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|v#$Mutation_141541| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@2|)) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t28@0|)) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t28@0|) (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t29@1|)) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|v#$Mutation_141541| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@2|)) 0))) (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t0@1| ($Mutation_137816 (|l#$Mutation_137816| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1|) (|p#$Mutation_137816| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1|) (|$1_Diem_Preburn'$1_XDX_XDX'| (|v#$Mutation_141541| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@2|)))) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1| (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t28@0|))) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t30@1|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t31@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)))))) (and (=> (= (ControlFlow 0 264849) 266122) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon38_Then_correct|) (=> (= (ControlFlow 0 264849) 264863) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon38_Else_correct|)))))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon37_Else_correct|  (=> (not inline$$Gt$1$dst@1) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t26@0| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t26@0|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t26@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 264745) 264751))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon36_Else$1_correct|  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t26@0|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t26@0| 1)) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t26@0| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t26@0|) (= inline$$Gt$1$dst@1 inline$$Gt$1$dst@1))) (and (=> (= (ControlFlow 0 264729) 264849) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon37_Then_correct|) (=> (= (ControlFlow 0 264729) 264745) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon37_Else_correct|))))))
(let ((inline$$Gt$1$anon0_correct  (=> (and (= inline$$Gt$1$dst@1 (> |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t22@1| 0)) (= (ControlFlow 0 264693) 264729)) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon36_Else$1_correct|)))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon36_Else_correct|  (=> (and (and (and (not |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t19@0|) (|$IsValid'vec'u8''| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t18@0|)) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t18@0| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816))) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t18@0| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t18@0|))) (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t21@1| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|v#$Mutation_137816| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1|))) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t22@1| (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t21@1|))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 264699) 264693)))) inline$$Gt$1$anon0_correct)))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon36_Then_correct|  (=> |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t19@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (= 5 |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@0|)) (=> (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@0| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@0|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t20@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@6| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 266148) 264751))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$L13_correct|)))))
(let ((|inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon0_correct|  (=> (= (seq.len (|p#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t10@0|)) 0) (=> (and (and (and (and (= (seq.len (|p#$Mutation_141541| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t27@0|)) 0) (= (seq.len (|p#$Mutation_141494| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t33@0|)) 0)) (and (= (seq.len (|p#$Mutation_11233| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t42@0|)) 0) (= (seq.len (|p#$Mutation_11233| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t49@0|)) 0))) (and (and (= (seq.len (|p#$Mutation_112968| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t52@0|)) 0) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t12@0| (|v#$Mutation_137816| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1|))) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t13@0| (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t12@0|))) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t14@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816))))) (and (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t15@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t16@0| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)))) (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t17@0| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t15@0|)) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1| (|v#$Mutation_137816| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1|)))) (and (and (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1| |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1|) (= 186537453 186537453)) (and (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1|) (= |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$$t19@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816))))))) (and (=> (= (ControlFlow 0 264611) 266148) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon36_Then_correct|) (=> (= (ControlFlow 0 264611) 264699) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon36_Else_correct|))))))
(let ((|inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon9_Else_correct|  (=> (and (and (and (not $abort_flag@6) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t26@0| (|v#$Mutation_137816| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1|))) (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t27@0| (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t26@0|))) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t28@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)))) (and (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t29@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t30@0| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)))) (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t31@0| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t29@0|)) (= (ControlFlow 0 266154) 264611)))) |inline$$1_Diem_burn_with_resource_cap'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon9_Then_correct|  (=> $abort_flag@6 (=> (and (and (= $abort_code@7 $abort_code@7) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t20@1| $abort_code@7)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@10| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 266204) 260454))) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L7_correct|  (=> (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2| (|v#$Mutation_137816| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t1@1|)) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@2|)) (=> (and (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t1@1|) (= $abort_code@7 $abort_code@6)) (and (= $abort_flag@6 $abort_flag@5) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|))) (and (=> (= (ControlFlow 0 262774) 266204) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 262774) 266154) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon9_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon44_Else_correct|  (=> (and (and (not $abort_flag@5) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| ($Memory_120653 (|Store__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|a#$Global| (|l#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|a#$Global| (|l#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3|)) (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3|))))) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 262899) 262774))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L7_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon43_Else_correct|  (=> (and (and (not inline$$Not$0$dst@1) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| ($Memory_120653 (|Store__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|a#$Global| (|l#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|a#$Global| (|l#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3|)) (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3|))))) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0|) (= (ControlFlow 0 262760) 262774))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L7_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L10_correct|  (=> (and (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$ret0@0|) (= $abort_code@7 |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1|)) (and (= $abort_flag@6 true) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|))) (and (=> (= (ControlFlow 0 262060) 266204) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 262060) 266154) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon9_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon44_Then_correct|  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1| $abort_code@6) (= (ControlFlow 0 262913) 262060))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L10_correct|)))
(let ((|inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1| (|v#$Mutation_112968| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t41@1|)) (= $es@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_92611_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1|)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_92611| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_92611| stream@@1) (|$ToEventRep'$1_Diem_PreburnEvent'| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t42@1|))))
(Multiset_92611 (|Store__T@[$EventRep]Int_| (|v#Multiset_92611| stream@@1) (|$ToEventRep'$1_Diem_PreburnEvent'| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t42@1|) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_92611_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1| stream_new@@0)))))) (and (=> (= (ControlFlow 0 262871) 262913) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon44_Then_correct|) (=> (= (ControlFlow 0 262871) 262899) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon44_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon43_Then_correct|  (=> (and (and inline$$Not$0$dst@1 (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t41@1| ($Mutation_112968 (|l#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3|) (seq.++ (|p#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3|) (seq.unit 10)) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3|))))) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t42@1| ($1_Diem_PreburnEvent |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t26@0| 186537453)) (= (ControlFlow 0 262877) 262871))) |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$anon0_correct|)))
(let ((inline$$Not$0$anon0_correct  (=> (= inline$$Not$0$dst@1  (not |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t39@1|)) (and (=> (= (ControlFlow 0 262732) 262877) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon43_Then_correct|) (=> (= (ControlFlow 0 262732) 262760) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon43_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon42_Else_correct|  (=> (and (not $abort_flag@5) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t38@1| ($Mutation_11233 (|l#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|) (seq.++ (|p#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|) (seq.unit 1)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|))))) (=> (and (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t38@2| ($Mutation_11233 (|l#$Mutation_11233| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t38@1|) (|p#$Mutation_11233| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t38@1|) inline$$AddU64$0$dst@2)) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3| ($Mutation_141494 (|l#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|) (|p#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|) (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (|v#$Mutation_11233| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t38@2|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)))))) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t39@1| (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@3|))) (= (ControlFlow 0 262738) 262732))) inline$$Not$0$anon0_correct))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon42_Then_correct|  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1| $abort_code@6) (= (ControlFlow 0 262927) 262060))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L10_correct|)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@5 true) (=> (and (= $abort_code@6 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 262648) 262927) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 262648) 262738) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon42_Else_correct|))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t36@1| |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1|) $MAX_U64) (= (ControlFlow 0 262646) 262648)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t36@1| |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1|)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t36@1| |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1|)) (= $abort_flag@5 $abort_flag@4)) (and (= $abort_code@6 $abort_code@5) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 262594) 262927) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 262594) 262738) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon42_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon41_Then_correct|  (=> (and inline$$Ge$0$dst@1 (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t36@1| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)))) (and (=> (= (ControlFlow 0 262654) 262646) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 262654) 262594) inline$$AddU64$0$anon3_Else_correct)))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon41_Else_correct|  (=> (and (and (not inline$$Ge$0$dst@1) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t35@0| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t35@0|)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t35@0|) (= (ControlFlow 0 262491) 262060))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L10_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon40_Else$1_correct|  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t35@0|) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t35@0| 8)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t35@0| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t35@0|) (= inline$$Ge$0$dst@1 inline$$Ge$0$dst@1))) (and (=> (= (ControlFlow 0 262475) 262654) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 262475) 262491) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon41_Else_correct|))))))
(let ((inline$$Ge$0$anon0_correct  (=> (and (= inline$$Ge$0$dst@1 (>= inline$$Sub$0$dst@2 |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1|)) (= (ControlFlow 0 262439) 262475)) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon40_Else$1_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon40_Else_correct|  (=> (and (not $abort_flag@4) (= (ControlFlow 0 262445) 262439)) inline$$Ge$0$anon0_correct)))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon40_Then_correct|  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1| $abort_code@5) (= (ControlFlow 0 262941) 262060))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L10_correct|)))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_code@5 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@4 true) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 262385) 262941) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon40_Then_correct|) (=> (= (ControlFlow 0 262385) 262445) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon40_Else_correct|))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< 18446744073709551615 |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t31@1|) (= (ControlFlow 0 262383) 262385)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t31@1| 18446744073709551615) (=> (and (and (= inline$$Sub$0$dst@1 (- 18446744073709551615 |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t31@1|)) (= $abort_code@5 $abort_code@4)) (and (= $abort_flag@4 $abort_flag@3) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 262335) 262941) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon40_Then_correct|) (=> (= (ControlFlow 0 262335) 262445) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon40_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon39_Else_correct|  (=> (not $abort_flag@3) (=> (and (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|)) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1|)) (and (|$IsValid'u64'| 18446744073709551615) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t31@1| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2|))))) (and (=> (= (ControlFlow 0 262391) 262383) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 262391) 262335) inline$$Sub$0$anon3_Else_correct))))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon39_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1| $abort_code@4) (= (ControlFlow 0 262955) 262060))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L10_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon38_Then$1_correct|  (=> (= $abort_flag@3 true) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@0|)) (and (=> (= (ControlFlow 0 263007) 262955) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon39_Then_correct|) (=> (= (ControlFlow 0 263007) 262391) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon39_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon38_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (ControlFlow 0 263005) 263007)) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon38_Then$1_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon38_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (=> (and (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@1| ($Mutation_141494 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= $abort_flag@3 $abort_flag@2)) (and (= $abort_code@4 $abort_code@3) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@2| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@1|))) (and (=> (= (ControlFlow 0 262222) 262955) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon39_Then_correct|) (=> (= (ControlFlow 0 262222) 262391) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon39_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon37_Else_correct|  (=> (not |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t27@0|) (=> (and (and (|$IsValid'vec'u8''| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t26@0|) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t26@0| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t26@0| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t26@0|) (|$IsValid'address'| 173345816))) (and (=> (= (ControlFlow 0 262200) 263005) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon38_Then_correct|) (=> (= (ControlFlow 0 262200) 262222) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon38_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon37_Then_correct|  (=> |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t27@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@0|)) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@0| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@0|)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@0|) (= (ControlFlow 0 263033) 262060))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L10_correct|))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon36_Else_correct|  (=> (not |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t25@0|) (=> (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@2| ($Mutation_141541 (|l#$Mutation_141541| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@1|) (|p#$Mutation_141541| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@1|) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_Diem'$1_XDX_XDX''@1|)) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|v#$Mutation_141541| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@2|))) (=> (and (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|v#$Mutation_141541| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@2|)) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|v#$Mutation_141541| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@2|)) (+ (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t24@1|) (|$value#$1_Diem_Diem'$1_XDX_XDX'| $t23)))) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t1@1| ($Mutation_137816 (|l#$Mutation_137816| $t26@0) (|p#$Mutation_137816| $t26@0) (|$1_Diem_Preburn'$1_XDX_XDX'| (|v#$Mutation_141541| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@2|)))) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t27@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 262168) 263033) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon37_Then_correct|) (=> (= (ControlFlow 0 262168) 262200) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon37_Else_correct|)))))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon36_Then_correct|  (=> |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t25@0| (=> (and (and (and (> (+ (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|v#$Mutation_141541| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@1|)) (|$value#$1_Diem_Diem'$1_XDX_XDX'| $t23)) 18446744073709551615) (= 8 |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@0|)) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@0| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@0|)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@0|) (= (ControlFlow 0 263069) 262060))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L10_correct|))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon35_Then_correct|  (=> (and (and |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t20@1| (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@1| ($Mutation_141541 (|l#$Mutation_137816| $t26@0) (seq.++ (|p#$Mutation_137816| $t26@0) (seq.unit 0)) (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|v#$Mutation_137816| $t26@0))))) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t24@1| (|v#$Mutation_141541| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@1|)) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t25@0| (> (+ (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|v#$Mutation_141541| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@1|)) (|$value#$1_Diem_Diem'$1_XDX_XDX'| $t23)) 18446744073709551615)))) (and (=> (= (ControlFlow 0 262100) 263069) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon36_Then_correct|) (=> (= (ControlFlow 0 262100) 262168) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon36_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon35_Else_correct|  (=> (and (and (not |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t20@1|) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t22@0| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t22@0|)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t22@0|) (= (ControlFlow 0 262054) 262060))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L10_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon34_Else_correct|  (=> (and (and (and (not $abort_flag@2) (|$IsValid'u64'| 0)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t20@1| (= |inline$$1_Diem_value'$1_XDX_XDX'$1$$t1@1| 0)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t22@0|) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t22@0| 1)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t22@0| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t22@0|) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t20@1| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t20@1|)))) (and (=> (= (ControlFlow 0 262038) 262100) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon35_Then_correct|) (=> (= (ControlFlow 0 262038) 262054) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon35_Else_correct|)))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon34_Then_correct|  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1| $abort_code@3) (= (ControlFlow 0 263083) 262060))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L10_correct|)))
(let ((|inline$$1_Diem_value'$1_XDX_XDX'$1$anon0_correct|  (=> (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t17@1| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t17@1|) (=> (and (= |inline$$1_Diem_value'$1_XDX_XDX'$1$$t1@1| (|$value#$1_Diem_Diem'$1_XDX_XDX'| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t17@1|)) (= |inline$$1_Diem_value'$1_XDX_XDX'$1$$t1@1| |inline$$1_Diem_value'$1_XDX_XDX'$1$$t1@1|)) (and (=> (= (ControlFlow 0 261984) 263083) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon34_Then_correct|) (=> (= (ControlFlow 0 261984) 262038) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon34_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon33_Else_correct|  (=> (and (and (not $abort_flag@2) (= |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1| |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1|)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t17@1| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|v#$Mutation_137816| $t26@0))) (= (ControlFlow 0 261990) 261984))) |inline$$1_Diem_value'$1_XDX_XDX'$1$anon0_correct|)))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon33_Then_correct|  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t16@1| $abort_code@3) (= (ControlFlow 0 263097) 262060))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$L10_correct|)))
(let ((|inline$$1_Diem_value'$1_XDX_XDX'$0$anon0_correct|  (=> (= $t23 $t23) (=> (and (= |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1| (|$value#$1_Diem_Diem'$1_XDX_XDX'| $t23)) (= |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1| |inline$$1_Diem_value'$1_XDX_XDX'$0$$t1@1|)) (and (=> (= (ControlFlow 0 261863) 263097) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon33_Then_correct|) (=> (= (ControlFlow 0 261863) 261990) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon33_Else_correct|))))))
(let ((|inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon0_correct|  (=> (= (seq.len (|p#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t9@0|)) 0) (=> (and (= (seq.len (|p#$Mutation_141541| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t23@0|)) 0) (= (seq.len (|p#$Mutation_141494| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t29@0|)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_11233| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t38@0|)) 0) (= (seq.len (|p#$Mutation_112968| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t41@0|)) 0)) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t10@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t11@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (and (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t12@0| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t13@0| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t11@0|))) (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t14@0| ($1_Diem_PreburnEvent (|$value#$1_Diem_Diem'$1_XDX_XDX'| $t23) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$t12@0| 186537453)) (= $t23 $t23))) (and (and (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1| (|v#$Mutation_137816| $t26@0)) (= |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1| |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1|)) (and (= 186537453 186537453) (= (ControlFlow 0 261869) 261863)))) |inline$$1_Diem_value'$1_XDX_XDX'$0$anon0_correct|))))))
(let ((|inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon8_Then_correct|  (=> inline$$Gt$0$dst@1 (=> (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t21@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t22@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t23@0| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t24@0| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t22@0|))) (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t25@0| ($1_Diem_PreburnEvent (|$value#$1_Diem_Diem'$1_XDX_XDX'| $t23) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t23@0| 186537453)) (= (ControlFlow 0 263103) 261869))) |inline$$1_Diem_preburn_with_resource'$1_XDX_XDX'$0$anon0_correct|)))))
(let ((|inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon8_Else_correct|  (=> (not inline$$Gt$0$dst@1) (=> (and (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t19@0| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t19@0|) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t20@1| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t19@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@10| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 260448) 260454))) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon0$1_correct|  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t19@0|) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t19@0| 7)) (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t19@0| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t19@0|) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 260432) 263103) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon8_Then_correct|) (=> (= (ControlFlow 0 260432) 260448) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon8_Else_correct|))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t15@1| 0)) (= (ControlFlow 0 260396) 260432)) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon0$1_correct|)))
(let ((|inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t6@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (and (and (and (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t7@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t8@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t9@0| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t10@0| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t8@0|)))) (and (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t11@0| ($1_Diem_PreburnEvent (|$value#$1_Diem_Diem'$1_XDX_XDX'| $t23) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t9@0| 186537453)) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t13@0| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t14@0| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t12@0|))))) (and (and (and (= $t23 $t23) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1| (|v#$Mutation_137816| $t26@0))) (and (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1| |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1|) (= 186537453 186537453))) (and (and (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1|) (= |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$$t15@1| (|$value#$1_Diem_Diem'$1_XDX_XDX'| $t23))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 260402) 260396))))) inline$$Gt$0$anon0_correct))))
(let ((anon36_Else_correct  (=> (and (not $abort_flag@2) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1|)) (=> (and (and (= $t26@0 ($Mutation_137816 (|l#$Mutation_184132| $t21@2) (seq.++ (|p#$Mutation_184132| $t21@2) (seq.unit 1)) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|v#$Mutation_184132| $t21@2)))) (|$IsValid'address'| 186537453)) (and (= $t28 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $t29 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (and (and (= $t30 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $t31 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= $t32 (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t30)) (= $t33 ($1_Diem_PreburnEvent (|$value#$1_Diem_Diem'$1_XDX_XDX'| $t23) $t31 186537453)))) (and (and (= $t34 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $t35 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= $t36 (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t34)) (= (ControlFlow 0 266210) 260402)))) |inline$$1_Diem_burn_now'$1_XDX_XDX'$0$anon0_correct|)))))
(let ((anon36_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t10@0 $abort_code@3) (= (ControlFlow 0 267505) 258758))) L6_correct)))
(let ((|inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon11_Else_correct|  (=> (and (not $abort_flag@1) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t9@2| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t9@2|)) (=> (and (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1)) (and (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@1|) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t9@2|))) (and (=> (= (ControlFlow 0 259334) 267505) anon36_Then_correct) (=> (= (ControlFlow 0 259334) 266210) anon36_Else_correct))))))
(let ((|inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$L3_correct|  (=> (and (and (= $abort_code@3 |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t8@1|) (= $abort_flag@2 true)) (and (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@3| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@2|) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 259292) 267505) anon36_Then_correct) (=> (= (ControlFlow 0 259292) 266210) anon36_Else_correct)))))
(let ((|inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon11_Then_correct|  (=> $abort_flag@1 (=> (and (and (= $abort_code@2 $abort_code@2) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t8@1| $abort_code@2)) (and (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@2| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 259348) 259292))) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon10_Then$1_correct|  (=> (and (and (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@1| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) (= $abort_flag@1 true)) (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t9@2| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t9@0|))) (and (=> (= (ControlFlow 0 259400) 259348) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 259400) 259334) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon11_Else_correct|)))))
(let ((|inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon10_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t4@0|)) (= (ControlFlow 0 259398) 259400)) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon10_Then$1_correct|)))
(let ((|inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon10_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t4@0|) (=> (and (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t9@1| (|Select__T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'_| (|contents#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t4@0|)) (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@0| ($Memory_131254 (|Store__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t4@0| false) (|contents#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|)))) (=> (and (and (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@1| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@0|) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t9@2| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t9@1|))) (and (=> (= (ControlFlow 0 259316) 259348) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 259316) 259334) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon11_Else_correct|)))))))
(let ((|inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon9_Then_correct|  (=> |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t5@1| (and (=> (= (ControlFlow 0 259296) 259398) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 259296) 259316) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon10_Else_correct|)))))
(let ((|inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon9_Else_correct|  (=> (not |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t5@1|) (=> (and (and (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t7@0| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t7@0|) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t8@1| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t7@0|)) (and (= |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory@2| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 259286) 259292))) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon0_correct|  (=> (and (= _$t0 _$t0) (|$IsValid'address'| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t4@0|)) (=> (and (and (and (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t4@0| (|$addr#$signer| _$t0)) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t4@0| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t4@0|)) (and (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t5@1| (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t4@0|)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t7@0|) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t7@0| 4)) (and (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t7@0| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t7@0|) (= |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t5@1| |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$$t5@1|)))) (and (=> (= (ControlFlow 0 259270) 259296) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 259270) 259286) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon9_Else_correct|))))))
(let ((anon35_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_TransactionFee_TransactionFee'$1_XDX_XDX''@0| (|v#$Mutation_184132| $t21@1))) (=> (and (and (= |$temp_0'$1_TransactionFee_TransactionFee'$1_XDX_XDX''@0| |$temp_0'$1_TransactionFee_TransactionFee'$1_XDX_XDX''@0|) (= $t22@0 ($Mutation_141541 (|l#$Mutation_184132| $t21@1) (seq.++ (|p#$Mutation_184132| $t21@1) (seq.unit 0)) (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|v#$Mutation_184132| $t21@1))))) (and (= $t24@0 (|v#$Mutation_141541| $t22@0)) (= $t22@1 ($Mutation_141541 (|l#$Mutation_141541| $t22@0) (|p#$Mutation_141541| $t22@0) |$temp_0'$1_Diem_Diem'$1_XDX_XDX''@0|)))) (=> (and (and (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|v#$Mutation_141541| $t22@1)) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|v#$Mutation_141541| $t22@1))) (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| $t23) (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| $t23) (|$value#$1_Diem_Diem'$1_XDX_XDX'| $t24@0)))) (and (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|v#$Mutation_141541| $t22@1)) 0) (= $t21@2 ($Mutation_184132 (|l#$Mutation_184132| $t21@1) (|p#$Mutation_184132| $t21@1) (|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|v#$Mutation_141541| $t22@1) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|v#$Mutation_184132| $t21@1)))))) (and (= $t23 $t23) (= (ControlFlow 0 259406) 259270)))) |inline$$1_Diem_remove_burn_capability'$1_XDX_XDX'$0$anon0_correct|)))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t10@0 $abort_code@1) (= (ControlFlow 0 267519) 258758))) L6_correct)))
(let ((anon34_Then$1_correct  (=> (= $t21@1 $t21) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 267571) 267519) anon35_Then_correct) (=> (= (ControlFlow 0 267571) 259406) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453)) (= (ControlFlow 0 267569) 267571)) anon34_Then$1_correct)))
(let ((anon34_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453) (=> (and (and (= $t21@0 ($Mutation_184132 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|contents#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453))) (= $t21@1 $t21@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 258832) 267519) anon35_Then_correct) (=> (= (ControlFlow 0 258832) 259406) anon35_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not $t16) (|$IsValid'address'| 186537453)) (and (=> (= (ControlFlow 0 258810) 267569) anon34_Then_correct) (=> (= (ControlFlow 0 258810) 258832) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> $t16 (=> (and (|$IsValid'u64'| 0) (|$IsValid'u64'| $t19)) (=> (and (and (= $t19 1) (= $t19 $t19)) (and (= $t10@0 $t19) (= (ControlFlow 0 267601) 258758))) L6_correct)))))
(let ((anon32_Else_correct  (=> (and (not $t17) (= $t16  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 258798) 267601) anon33_Then_correct) (=> (= (ControlFlow 0 258798) 258810) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> $t17 (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t10)) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 267633) 258758))) L6_correct))))
(let ((anon31_Then_correct  (=> (and |inline$$1_TransactionFee_is_coin_initialized'$1_XDX_XDX'$0$$t1@1| (= $t17  (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 258778) 267633) anon32_Then_correct) (=> (= (ControlFlow 0 258778) 258798) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (and (not |inline$$1_TransactionFee_is_coin_initialized'$1_XDX_XDX'$0$$t1@1|) (= $t15 $t15)) (and (= $t10@0 $t15) (= (ControlFlow 0 258246) 258758))) L6_correct)))
(let ((anon30_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t15) (= $t15 5)) (and (= $t15 $t15) (= |inline$$1_TransactionFee_is_coin_initialized'$1_XDX_XDX'$0$$t1@1| |inline$$1_TransactionFee_is_coin_initialized'$1_XDX_XDX'$0$$t1@1|))) (and (=> (= (ControlFlow 0 258230) 258778) anon31_Then_correct) (=> (= (ControlFlow 0 258230) 258246) anon31_Else_correct))))))
(let ((anon29_Then_correct  (=> $t12 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) $t11)) (= 5 $t10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) $t11)) 1)) (= 3 $t10))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 267719) 258758))) L6_correct))))
(let ((anon28_Then_correct  (=> $t9 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t10)) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 267745) 258758))) L6_correct))))
(let ((anon30_Then_correct true))
(let ((|inline$$1_TransactionFee_is_coin_initialized'$1_XDX_XDX'$0$anon0_correct|  (=> (|$IsValid'address'| 186537453) (=> (and (= |inline$$1_TransactionFee_is_coin_initialized'$1_XDX_XDX'$0$$t1@1| (|Select__T@[Int]Bool_| (|domain#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453)) (= |inline$$1_TransactionFee_is_coin_initialized'$1_XDX_XDX'$0$$t1@1| |inline$$1_TransactionFee_is_coin_initialized'$1_XDX_XDX'$0$$t1@1|)) (and (=> (= (ControlFlow 0 258188) 267647) anon30_Then_correct) (=> (= (ControlFlow 0 258188) 258230) anon30_Else_correct))))))
(let ((anon29_Else_correct  (=> (and (not $t12) (= (ControlFlow 0 258194) 258188)) |inline$$1_TransactionFee_is_coin_initialized'$1_XDX_XDX'$0$anon0_correct|)))
(let ((anon28_Else_correct  (=> (not $t9) (=> (and (= $t11 (|$addr#$signer| _$t0)) (= $t12  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) $t11)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) $t11)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))))) (and (=> (= (ControlFlow 0 258101) 267719) anon29_Then_correct) (=> (= (ControlFlow 0 258101) 258194) anon29_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr)) 0)) (= addr 173345816)))
 :qid |TransactionFeebpl.17874:20|
 :skolemid |375|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@0)) 1)) (= addr@@0 186537453)))
 :qid |TransactionFeebpl.17882:20|
 :skolemid |376|
)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@1)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@1)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@1)) 2))))))
 :qid |TransactionFeebpl.17890:20|
 :skolemid |377|
))) (and (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@2)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@2)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@2)) 2))))))
 :qid |TransactionFeebpl.17894:20|
 :skolemid |378|
)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@3)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@3)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@3)) 2))))))
 :qid |TransactionFeebpl.17898:20|
 :skolemid |379|
))))) (=> (and (and (and (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@4)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@4)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@4)) 2))))))
 :qid |TransactionFeebpl.17902:20|
 :skolemid |380|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@5)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@5)) 2)))))
 :qid |TransactionFeebpl.17906:20|
 :skolemid |381|
))) (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@6)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@6)) 2)))))
 :qid |TransactionFeebpl.17910:20|
 :skolemid |382|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@7)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@7)) 2)))))
 :qid |TransactionFeebpl.17914:20|
 :skolemid |383|
)))) (and (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123798| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@8)) 4))))
 :qid |TransactionFeebpl.17918:20|
 :skolemid |384|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124356| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@9)) 3))))
 :qid |TransactionFeebpl.17922:20|
 :skolemid |385|
))) (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124356| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@10)) 3))))
 :qid |TransactionFeebpl.17926:20|
 :skolemid |386|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124356| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_124356| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@11)) 3))))
 :qid |TransactionFeebpl.17930:20|
 :skolemid |387|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120007| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120007| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120100| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_120186| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120259| $1_DiemSystem_CapabilityHolder_$memory) 173345816))))) (and (and (let (($range_0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_120186| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_120186| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_120186| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13)))) i1)))) 3))))
 :qid |TransactionFeebpl.17950:151|
 :skolemid |388|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120330| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (forall ((mint_cap_owner1 Int) (mint_cap_owner2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1) (=> (|$IsValid'address'| mint_cap_owner2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_130823| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner1) (|Select__T@[Int]Bool_| (|domain#$Memory_130823| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner2)) (= mint_cap_owner1 mint_cap_owner2))))
 :qid |TransactionFeebpl.17959:104|
 :skolemid |389|
))) (forall ((addr3 Int) ) (!  (=> (|$IsValid'address'| addr3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130823| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))))
 :qid |TransactionFeebpl.17963:20|
 :skolemid |390|
)))))) (=> (and (and (and (and (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |TransactionFeebpl.17967:20|
 :skolemid |391|
)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136325| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |TransactionFeebpl.17971:20|
 :skolemid |392|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120414| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120498| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120569| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120737| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120808| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120905| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_165223| $1_DualAttestation_Credential_$memory) addr1@@0) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr1@@0)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr1@@0)) 2)))))
 :qid |TransactionFeebpl.18003:20|
 :skolemid |393|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_120989| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_121073| $1_ChainId_ChainId_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_121144| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_121215| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_121215| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_121215| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_121215| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_121144| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_121387| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_121458| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (and (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (= (|Select__T@[Int]Bool_| (|domain#$Memory_165510| $1_DiemAccount_DiemAccount_$memory) addr@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@15)))
 :qid |TransactionFeebpl.18039:20|
 :skolemid |394|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (= (|Select__T@[Int]Bool_| (|domain#$Memory_162647| $1_VASPDomain_VASPDomainManager_$memory) addr@@16)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@16)) 1))))
 :qid |TransactionFeebpl.18043:20|
 :skolemid |395|
)))) (and (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (= (|Select__T@[Int]Bool_| (|domain#$Memory_163014| $1_VASPDomain_VASPDomains_$memory) addr@@17)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@17)) 5))))
 :qid |TransactionFeebpl.18047:20|
 :skolemid |396|
)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_165704| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_165764| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@18)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@18)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@18)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@18)) 2)))))
 :qid |TransactionFeebpl.18051:20|
 :skolemid |397|
))) (and (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (= (|Select__T@[Int]Bool_| (|domain#$Memory_165849| $1_DesignatedDealer_Dealer_$memory) addr@@19)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@19)) 2))))
 :qid |TransactionFeebpl.18055:20|
 :skolemid |398|
)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (= (|Select__T@[Int]Bool_| (|domain#$Memory_165223| $1_DualAttestation_Credential_$memory) addr@@20)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@20)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@20)) 5)))))
 :qid |TransactionFeebpl.18059:20|
 :skolemid |399|
))))) (and (and (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (= (|Select__T@[Int]Bool_| (|domain#$Memory_120007| $1_SlidingNonce_SlidingNonce_$memory) addr@@21)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@21)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@21)) 1)))))
 :qid |TransactionFeebpl.18063:20|
 :skolemid |400|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (= (|Select__T@[Int]Bool_| (|domain#$Memory_124356| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@22)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@22)) 3))))
 :qid |TransactionFeebpl.18067:20|
 :skolemid |401|
))) (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (= (|Select__T@[Int]Bool_| (|domain#$Memory_123798| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@23)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@23)) 4))))
 :qid |TransactionFeebpl.18071:20|
 :skolemid |402|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_163111| $1_VASP_ParentVASP_$memory) addr@@24)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@24)) 5))))
 :qid |TransactionFeebpl.18075:20|
 :skolemid |403|
)))) (and (and (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_163047| $1_VASP_ChildVASP_$memory) addr@@25)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_119820| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) addr@@25)) 6))))
 :qid |TransactionFeebpl.18079:20|
 :skolemid |404|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_121529| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_121613| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_119694| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))))))) (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |TransactionFeebpl.18097:20|
 :skolemid |405|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |TransactionFeebpl.18101:20|
 :skolemid |406|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_119820| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@1) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@1)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@1) 10000000000))))
 :qid |TransactionFeebpl.18105:20|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@1))
)))) (and (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'_| (|contents#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) $a_0@@2)))
(|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| $rsc@@2))
 :qid |TransactionFeebpl.18109:20|
 :skolemid |408|
 :pattern ( (|Select__T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'_| (|contents#$Memory_131254| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@3)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@3) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@3)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@3) 10000000000))))
 :qid |TransactionFeebpl.18113:20|
 :skolemid |409|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|contents#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) $a_0@@4)))
(|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| $rsc@@4))
 :qid |TransactionFeebpl.18117:20|
 :skolemid |410|
 :pattern ( (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|contents#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) $a_0@@4))
)) (= $t6 (|$addr#$signer| _$t0)))) (and (and (= $t7 (|Select__T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'_| (|contents#$Memory_163291| |$1_TransactionFee_TransactionFee'$1_XDX_XDX'_$memory|) 186537453)) (= $t8 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_120653| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (= _$t0 _$t0) (= $t9  (not (|Select__T@[Int]Bool_| (|domain#$Memory_119142| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 258043) 267745) anon28_Then_correct) (=> (= (ControlFlow 0 258043) 258101) anon28_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_92611_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_92611| stream@@2) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_92611| stream@@2) v@@32) 0)
 :qid |TransactionFeebpl.134:13|
 :skolemid |2|
))))
 :qid |TransactionFeebpl.2372:13|
 :skolemid |64|
))) (= (ControlFlow 0 256717) 258043)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_184132| $t5)) 0) (=> (and (and (= (seq.len (|p#$Mutation_184132| $t21)) 0) (= (seq.len (|p#$Mutation_141541| $t22)) 0)) (and (= (seq.len (|p#$Mutation_137816| $t26)) 0) (= (ControlFlow 0 256727) 256717))) inline$$InitEventStore$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 348758) 256727) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_112337 0)) ((($Memory_112337 (|domain#$Memory_112337| |T@[Int]Bool|) (|contents#$Memory_112337| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_121529 0)) ((($Memory_121529 (|domain#$Memory_121529| |T@[Int]Bool|) (|contents#$Memory_121529| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_121458 0)) ((($Memory_121458 (|domain#$Memory_121458| |T@[Int]Bool|) (|contents#$Memory_121458| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_121215 0)) ((($Memory_121215 (|domain#$Memory_121215| |T@[Int]Bool|) (|contents#$Memory_121215| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_121144 0)) ((($Memory_121144 (|domain#$Memory_121144| |T@[Int]Bool|) (|contents#$Memory_121144| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_121073 0)) ((($Memory_121073 (|domain#$Memory_121073| |T@[Int]Bool|) (|contents#$Memory_121073| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_165849 0)) ((($Memory_165849 (|domain#$Memory_165849| |T@[Int]Bool|) (|contents#$Memory_165849| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_120905 0)) ((($Memory_120905 (|domain#$Memory_120905| |T@[Int]Bool|) (|contents#$Memory_120905| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_165223 0)) ((($Memory_165223 (|domain#$Memory_165223| |T@[Int]Bool|) (|contents#$Memory_165223| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_163111 0)) ((($Memory_163111 (|domain#$Memory_163111| |T@[Int]Bool|) (|contents#$Memory_163111| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_163047 0)) ((($Memory_163047 (|domain#$Memory_163047| |T@[Int]Bool|) (|contents#$Memory_163047| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_162647 0)) ((($Memory_162647 (|domain#$Memory_162647| |T@[Int]Bool|) (|contents#$Memory_162647| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_163014 0)) ((($Memory_163014 (|domain#$Memory_163014| |T@[Int]Bool|) (|contents#$Memory_163014| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_159324 0)) ((($Memory_159324 (|domain#$Memory_159324| |T@[Int]Bool|) (|contents#$Memory_159324| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_159037 0)) ((($Memory_159037 (|domain#$Memory_159037| |T@[Int]Bool|) (|contents#$Memory_159037| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_120737 0)) ((($Memory_120737 (|domain#$Memory_120737| |T@[Int]Bool|) (|contents#$Memory_120737| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120498 0)) ((($Memory_120498 (|domain#$Memory_120498| |T@[Int]Bool|) (|contents#$Memory_120498| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_121387 0)) ((($Memory_121387 (|domain#$Memory_121387| |T@[Int]Bool|) (|contents#$Memory_121387| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_130887 0)) ((($Memory_130887 (|domain#$Memory_130887| |T@[Int]Bool|) (|contents#$Memory_130887| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_130823 0)) ((($Memory_130823 (|domain#$Memory_130823| |T@[Int]Bool|) (|contents#$Memory_130823| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_130759 0)) ((($Memory_130759 (|domain#$Memory_130759| |T@[Int]Bool|) (|contents#$Memory_130759| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_131341 0)) ((($Memory_131341 (|domain#$Memory_131341| |T@[Int]Bool|) (|contents#$Memory_131341| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_131254 0)) ((($Memory_131254 (|domain#$Memory_131254| |T@[Int]Bool|) (|contents#$Memory_131254| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_131167 0)) ((($Memory_131167 (|domain#$Memory_131167| |T@[Int]Bool|) (|contents#$Memory_131167| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_136416 0)) ((($Memory_136416 (|domain#$Memory_136416| |T@[Int]Bool|) (|contents#$Memory_136416| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_163355 0)) ((($Memory_163355 (|domain#$Memory_163355| |T@[Int]Bool|) (|contents#$Memory_163355| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_165764 0)) ((($Memory_165764 (|domain#$Memory_165764| |T@[Int]Bool|) (|contents#$Memory_165764| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_136325 0)) ((($Memory_136325 (|domain#$Memory_136325| |T@[Int]Bool|) (|contents#$Memory_136325| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_163291 0)) ((($Memory_163291 (|domain#$Memory_163291| |T@[Int]Bool|) (|contents#$Memory_163291| |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_120569 0)) ((($Memory_120569 (|domain#$Memory_120569| |T@[Int]Bool|) (|contents#$Memory_120569| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_165704 0)) ((($Memory_165704 (|domain#$Memory_165704| |T@[Int]Bool|) (|contents#$Memory_165704| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_136234 0)) ((($Memory_136234 (|domain#$Memory_136234| |T@[Int]Bool|) (|contents#$Memory_136234| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120808 0)) ((($Memory_120808 (|domain#$Memory_120808| |T@[Int]Bool|) (|contents#$Memory_120808| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_130398 0)) ((($Memory_130398 (|domain#$Memory_130398| |T@[Int]Bool|) (|contents#$Memory_130398| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_120653 0)) ((($Memory_120653 (|domain#$Memory_120653| |T@[Int]Bool|) (|contents#$Memory_120653| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120414 0)) ((($Memory_120414 (|domain#$Memory_120414| |T@[Int]Bool|) (|contents#$Memory_120414| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_126328 0)) ((($Memory_126328 (|domain#$Memory_126328| |T@[Int]Bool|) (|contents#$Memory_126328| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_126241 0)) ((($Memory_126241 (|domain#$Memory_126241| |T@[Int]Bool|) (|contents#$Memory_126241| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_126154 0)) ((($Memory_126154 (|domain#$Memory_126154| |T@[Int]Bool|) (|contents#$Memory_126154| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_126067 0)) ((($Memory_126067 (|domain#$Memory_126067| |T@[Int]Bool|) (|contents#$Memory_126067| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_125980 0)) ((($Memory_125980 (|domain#$Memory_125980| |T@[Int]Bool|) (|contents#$Memory_125980| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_125893 0)) ((($Memory_125893 (|domain#$Memory_125893| |T@[Int]Bool|) (|contents#$Memory_125893| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_120259 0)) ((($Memory_120259 (|domain#$Memory_120259| |T@[Int]Bool|) (|contents#$Memory_120259| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_125160 0)) ((($Memory_125160 (|domain#$Memory_125160| |T@[Int]Bool|) (|contents#$Memory_125160| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_120100 0)) ((($Memory_120100 (|domain#$Memory_120100| |T@[Int]Bool|) (|contents#$Memory_120100| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_119694 0)) ((($Memory_119694 (|domain#$Memory_119694| |T@[Int]Bool|) (|contents#$Memory_119694| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_121613 0)) ((($Memory_121613 (|domain#$Memory_121613| |T@[Int]Bool|) (|contents#$Memory_121613| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_125027 0)) ((($Memory_125027 (|domain#$Memory_125027| |T@[Int]Bool|) (|contents#$Memory_125027| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_120989 0)) ((($Memory_120989 (|domain#$Memory_120989| |T@[Int]Bool|) (|contents#$Memory_120989| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_120330 0)) ((($Memory_120330 (|domain#$Memory_120330| |T@[Int]Bool|) (|contents#$Memory_120330| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_120007 0)) ((($Memory_120007 (|domain#$Memory_120007| |T@[Int]Bool|) (|contents#$Memory_120007| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_165510 0)) ((($Memory_165510 (|domain#$Memory_165510| |T@[Int]Bool|) (|contents#$Memory_165510| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_120186 0)) ((($Memory_120186 (|domain#$Memory_120186| |T@[Int]Bool|) (|contents#$Memory_120186| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_124356 0)) ((($Memory_124356 (|domain#$Memory_124356| |T@[Int]Bool|) (|contents#$Memory_124356| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_123798 0)) ((($Memory_123798 (|domain#$Memory_123798| |T@[Int]Bool|) (|contents#$Memory_123798| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_119820 0)) ((($Memory_119820 (|domain#$Memory_119820| |T@[Int]Bool|) (|contents#$Memory_119820| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_119142 0)) ((($Memory_119142 (|domain#$Memory_119142| |T@[Int]Bool|) (|contents#$Memory_119142| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_92611 0)) (((Multiset_92611 (|v#Multiset_92611| |T@[$EventRep]Int|) (|l#Multiset_92611| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_92611| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_92611|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_198185 0)) ((($Mutation_198185 (|l#$Mutation_198185| T@$Location) (|p#$Mutation_198185| (Seq Int)) (|v#$Mutation_198185| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_198141 0)) ((($Mutation_198141 (|l#$Mutation_198141| T@$Location) (|p#$Mutation_198141| (Seq Int)) (|v#$Mutation_198141| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_184132 0)) ((($Mutation_184132 (|l#$Mutation_184132| T@$Location) (|p#$Mutation_184132| (Seq Int)) (|v#$Mutation_184132| |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_178934 0)) ((($Mutation_178934 (|l#$Mutation_178934| T@$Location) (|p#$Mutation_178934| (Seq Int)) (|v#$Mutation_178934| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_173758 0)) ((($Mutation_173758 (|l#$Mutation_173758| T@$Location) (|p#$Mutation_173758| (Seq Int)) (|v#$Mutation_173758| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_43866 0)) ((($Mutation_43866 (|l#$Mutation_43866| T@$Location) (|p#$Mutation_43866| (Seq Int)) (|v#$Mutation_43866| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_143660 0)) ((($Mutation_143660 (|l#$Mutation_143660| T@$Location) (|p#$Mutation_143660| (Seq Int)) (|v#$Mutation_143660| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_143613 0)) ((($Mutation_143613 (|l#$Mutation_143613| T@$Location) (|p#$Mutation_143613| (Seq Int)) (|v#$Mutation_143613| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_141541 0)) ((($Mutation_141541 (|l#$Mutation_141541| T@$Location) (|p#$Mutation_141541| (Seq Int)) (|v#$Mutation_141541| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_141494 0)) ((($Mutation_141494 (|l#$Mutation_141494| T@$Location) (|p#$Mutation_141494| (Seq Int)) (|v#$Mutation_141494| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_139422 0)) ((($Mutation_139422 (|l#$Mutation_139422| T@$Location) (|p#$Mutation_139422| (Seq Int)) (|v#$Mutation_139422| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_139375 0)) ((($Mutation_139375 (|l#$Mutation_139375| T@$Location) (|p#$Mutation_139375| (Seq Int)) (|v#$Mutation_139375| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_138591 0)) ((($Mutation_138591 (|l#$Mutation_138591| T@$Location) (|p#$Mutation_138591| (Seq Int)) (|v#$Mutation_138591| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_137816 0)) ((($Mutation_137816 (|l#$Mutation_137816| T@$Location) (|p#$Mutation_137816| (Seq Int)) (|v#$Mutation_137816| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_137041 0)) ((($Mutation_137041 (|l#$Mutation_137041| T@$Location) (|p#$Mutation_137041| (Seq Int)) (|v#$Mutation_137041| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_129009 0)) ((($Mutation_129009 (|l#$Mutation_129009| T@$Location) (|p#$Mutation_129009| (Seq Int)) (|v#$Mutation_129009| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_119637 0)) ((($Mutation_119637 (|l#$Mutation_119637| T@$Location) (|p#$Mutation_119637| (Seq Int)) (|v#$Mutation_119637| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_112968 0)) ((($Mutation_112968 (|l#$Mutation_112968| T@$Location) (|p#$Mutation_112968| (Seq Int)) (|v#$Mutation_112968| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11233 0)) ((($Mutation_11233 (|l#$Mutation_11233| T@$Location) (|p#$Mutation_11233| (Seq Int)) (|v#$Mutation_11233| Int) ) ) ))
(declare-datatypes ((T@$Mutation_108344 0)) ((($Mutation_108344 (|l#$Mutation_108344| T@$Location) (|p#$Mutation_108344| (Seq Int)) (|v#$Mutation_108344| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_107598 0)) ((($Mutation_107598 (|l#$Mutation_107598| T@$Location) (|p#$Mutation_107598| (Seq Int)) (|v#$Mutation_107598| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_106194 0)) ((($Mutation_106194 (|l#$Mutation_106194| T@$Location) (|p#$Mutation_106194| (Seq Int)) (|v#$Mutation_106194| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_105448 0)) ((($Mutation_105448 (|l#$Mutation_105448| T@$Location) (|p#$Mutation_105448| (Seq Int)) (|v#$Mutation_105448| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_104044 0)) ((($Mutation_104044 (|l#$Mutation_104044| T@$Location) (|p#$Mutation_104044| (Seq Int)) (|v#$Mutation_104044| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_103298 0)) ((($Mutation_103298 (|l#$Mutation_103298| T@$Location) (|p#$Mutation_103298| (Seq Int)) (|v#$Mutation_103298| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_101894 0)) ((($Mutation_101894 (|l#$Mutation_101894| T@$Location) (|p#$Mutation_101894| (Seq Int)) (|v#$Mutation_101894| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_101148 0)) ((($Mutation_101148 (|l#$Mutation_101148| T@$Location) (|p#$Mutation_101148| (Seq Int)) (|v#$Mutation_101148| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_99744 0)) ((($Mutation_99744 (|l#$Mutation_99744| T@$Location) (|p#$Mutation_99744| (Seq Int)) (|v#$Mutation_99744| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_98998 0)) ((($Mutation_98998 (|l#$Mutation_98998| T@$Location) (|p#$Mutation_98998| (Seq Int)) (|v#$Mutation_98998| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_97594 0)) ((($Mutation_97594 (|l#$Mutation_97594| T@$Location) (|p#$Mutation_97594| (Seq Int)) (|v#$Mutation_97594| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_96848 0)) ((($Mutation_96848 (|l#$Mutation_96848| T@$Location) (|p#$Mutation_96848| (Seq Int)) (|v#$Mutation_96848| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_95406 0)) ((($Mutation_95406 (|l#$Mutation_95406| T@$Location) (|p#$Mutation_95406| (Seq Int)) (|v#$Mutation_95406| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_94660 0)) ((($Mutation_94660 (|l#$Mutation_94660| T@$Location) (|p#$Mutation_94660| (Seq Int)) (|v#$Mutation_94660| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_92611_| (|T@[$1_Event_EventHandle]Multiset_92611| T@$1_Event_EventHandle) T@Multiset_92611)
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
(declare-fun |$IsValid'$1_SlidingNonce_SlidingNonce'| (T@$1_SlidingNonce_SlidingNonce) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemSystem_DiemSystem'| (T@$1_DiemSystem_DiemSystem) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (T@$1_RegisteredCurrencies_RegisteredCurrencies) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (T@$1_DiemConsensusConfig_DiemConsensusConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
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
(declare-fun |$IsValid'$1_Diem_BurnCapability'#0''| (|T@$1_Diem_BurnCapability'#0'|) Bool)
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
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| (|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'#0''| (|T@$1_TransactionFee_TransactionFee'#0'|) Bool)
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
(declare-fun ReverseVec_11086 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_84051 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_83263 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_83460 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_83657 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_84248 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_83854 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_83066 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_92611| |T@[$1_Event_EventHandle]Multiset_92611|) |T@[$1_Event_EventHandle]Multiset_92611|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |TransactionFeebpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |TransactionFeebpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |TransactionFeebpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |TransactionFeebpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |TransactionFeebpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |TransactionFeebpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |TransactionFeebpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |TransactionFeebpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |TransactionFeebpl.595:13|
 :skolemid |15|
))))
 :qid |TransactionFeebpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |TransactionFeebpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |TransactionFeebpl.608:17|
 :skolemid |18|
)))))
 :qid |TransactionFeebpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |TransactionFeebpl.775:13|
 :skolemid |20|
))))
 :qid |TransactionFeebpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |TransactionFeebpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |TransactionFeebpl.788:17|
 :skolemid |23|
)))))
 :qid |TransactionFeebpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |TransactionFeebpl.955:13|
 :skolemid |25|
))))
 :qid |TransactionFeebpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |TransactionFeebpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |TransactionFeebpl.968:17|
 :skolemid |28|
)))))
 :qid |TransactionFeebpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |TransactionFeebpl.1135:13|
 :skolemid |30|
))))
 :qid |TransactionFeebpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |TransactionFeebpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |TransactionFeebpl.1148:17|
 :skolemid |33|
)))))
 :qid |TransactionFeebpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |TransactionFeebpl.1315:13|
 :skolemid |35|
))))
 :qid |TransactionFeebpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |TransactionFeebpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |TransactionFeebpl.1328:17|
 :skolemid |38|
)))))
 :qid |TransactionFeebpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |TransactionFeebpl.1495:13|
 :skolemid |40|
))))
 :qid |TransactionFeebpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |TransactionFeebpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |TransactionFeebpl.1508:17|
 :skolemid |43|
)))))
 :qid |TransactionFeebpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'vec'u8''| (seq.nth v@@16 i@@18)))
 :qid |TransactionFeebpl.1675:13|
 :skolemid |45|
))))
 :qid |TransactionFeebpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 (Seq (Seq Int))) (e@@5 (Seq Int)) ) (! (let ((i@@19 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |TransactionFeebpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |TransactionFeebpl.1688:17|
 :skolemid |48|
)))))
 :qid |TransactionFeebpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'address'| (seq.nth v@@18 i@@21)))
 :qid |TransactionFeebpl.1855:13|
 :skolemid |50|
))))
 :qid |TransactionFeebpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |TransactionFeebpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |TransactionFeebpl.1868:17|
 :skolemid |53|
)))))
 :qid |TransactionFeebpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'u8'| (seq.nth v@@20 i@@24)))
 :qid |TransactionFeebpl.2035:13|
 :skolemid |55|
))))
 :qid |TransactionFeebpl.2033:28|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'u8''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'u8'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |TransactionFeebpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |TransactionFeebpl.2048:17|
 :skolemid |58|
)))))
 :qid |TransactionFeebpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'u8'| v@@21 e@@7))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |TransactionFeebpl.2221:15|
 :skolemid |60|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |TransactionFeebpl.2237:15|
 :skolemid |61|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |TransactionFeebpl.2308:15|
 :skolemid |62|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |TransactionFeebpl.2311:15|
 :skolemid |63|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_92611_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_92611| stream) 0) (forall ((v@@22 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_92611| stream) v@@22) 0)
 :qid |TransactionFeebpl.134:13|
 :skolemid |2|
))))
 :qid |TransactionFeebpl.2372:13|
 :skolemid |64|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |TransactionFeebpl.2413:80|
 :skolemid |66|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |TransactionFeebpl.2419:15|
 :skolemid |67|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |TransactionFeebpl.2469:82|
 :skolemid |68|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |TransactionFeebpl.2475:15|
 :skolemid |69|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |TransactionFeebpl.2525:80|
 :skolemid |70|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |TransactionFeebpl.2531:15|
 :skolemid |71|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |TransactionFeebpl.2581:79|
 :skolemid |72|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |TransactionFeebpl.2587:15|
 :skolemid |73|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |TransactionFeebpl.2637:76|
 :skolemid |74|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |TransactionFeebpl.2643:15|
 :skolemid |75|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |TransactionFeebpl.2693:78|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |TransactionFeebpl.2699:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |TransactionFeebpl.2749:74|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |TransactionFeebpl.2755:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |TransactionFeebpl.2805:69|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |TransactionFeebpl.2811:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |TransactionFeebpl.2861:70|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |TransactionFeebpl.2867:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |TransactionFeebpl.2917:60|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |TransactionFeebpl.2923:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |TransactionFeebpl.2973:66|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |TransactionFeebpl.2979:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |TransactionFeebpl.3029:60|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |TransactionFeebpl.3035:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |TransactionFeebpl.3085:63|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |TransactionFeebpl.3091:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |TransactionFeebpl.3141:79|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |TransactionFeebpl.3147:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |TransactionFeebpl.3197:82|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |TransactionFeebpl.3203:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |TransactionFeebpl.3253:88|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |TransactionFeebpl.3259:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |TransactionFeebpl.3309:72|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |TransactionFeebpl.3315:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |TransactionFeebpl.3394:61|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |TransactionFeebpl.4199:36|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |TransactionFeebpl.4218:71|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |TransactionFeebpl.4282:46|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |TransactionFeebpl.4295:64|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |TransactionFeebpl.4308:75|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |TransactionFeebpl.4321:72|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |TransactionFeebpl.4350:55|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |TransactionFeebpl.4372:46|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |TransactionFeebpl.4390:49|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |TransactionFeebpl.4475:71|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |TransactionFeebpl.4489:91|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |TransactionFeebpl.4503:113|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |TransactionFeebpl.4517:89|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |TransactionFeebpl.4531:75|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |TransactionFeebpl.4545:73|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |TransactionFeebpl.4565:48|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |TransactionFeebpl.4581:57|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |TransactionFeebpl.4595:83|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |TransactionFeebpl.4609:103|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |TransactionFeebpl.4623:125|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |TransactionFeebpl.4637:101|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |TransactionFeebpl.4651:87|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |TransactionFeebpl.4665:85|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |TransactionFeebpl.4679:48|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |TransactionFeebpl.4700:45|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |TransactionFeebpl.4714:51|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |TransactionFeebpl.4737:48|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |TransactionFeebpl.5029:49|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |TransactionFeebpl.5042:65|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |TransactionFeebpl.5614:45|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |TransactionFeebpl.5627:45|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |TransactionFeebpl.5640:37|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |TransactionFeebpl.5653:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |TransactionFeebpl.5667:55|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34) true)
 :qid |TransactionFeebpl.5681:47|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@35))))
 :qid |TransactionFeebpl.5701:38|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@36))))
 :qid |TransactionFeebpl.5722:44|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))))
 :qid |TransactionFeebpl.5773:53|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))))
 :qid |TransactionFeebpl.5835:53|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@39))))
 :qid |TransactionFeebpl.5897:45|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |TransactionFeebpl.5923:55|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |TransactionFeebpl.5937:55|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@42) true)
 :qid |TransactionFeebpl.5951:47|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@43)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@43))))
 :qid |TransactionFeebpl.5968:38|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@44)))
 :qid |TransactionFeebpl.5982:48|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@45)))
 :qid |TransactionFeebpl.5996:48|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@46) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@46)))
 :qid |TransactionFeebpl.6010:40|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@47)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@47)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@47))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@47))))
 :qid |TransactionFeebpl.6030:41|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@48)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@48)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@48))))
 :qid |TransactionFeebpl.6048:57|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@48))
)))
(assert (forall ((s@@49 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@49) true)
 :qid |TransactionFeebpl.13033:68|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@50)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@50))))
 :qid |TransactionFeebpl.13055:66|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@51)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@51))))
 :qid |TransactionFeebpl.13081:66|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@52)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@52))))
 :qid |TransactionFeebpl.13110:56|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@53)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@53))))
 :qid |TransactionFeebpl.13140:56|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@53))
)))
(assert (forall ((s@@54 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@54) true)
 :qid |TransactionFeebpl.13462:31|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@54))
)))
(assert (forall ((s@@55 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@55) true)
 :qid |TransactionFeebpl.13807:31|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@55))
)))
(assert (forall ((s@@56 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@56)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@56)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@56))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@56))))
 :qid |TransactionFeebpl.13826:35|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@57) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@57)))
 :qid |TransactionFeebpl.14235:45|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@58)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@58))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@58))))
 :qid |TransactionFeebpl.14254:50|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@59) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@59)))
 :qid |TransactionFeebpl.14269:52|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@60) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@60)))
 :qid |TransactionFeebpl.14283:46|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@61) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@61)))
 :qid |TransactionFeebpl.14307:38|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@62) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@62)))
 :qid |TransactionFeebpl.14321:39|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@62))
)))
(assert (forall ((s@@63 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@63)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@63)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@63))))
 :qid |TransactionFeebpl.14373:65|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@63))
)))
(assert (forall ((s@@64 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@64)  (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@64)) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@64))))
 :qid |TransactionFeebpl.14391:65|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@64))
)))
(assert (forall ((s@@65 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@65)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@65)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@65))))
 :qid |TransactionFeebpl.14409:57|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@65))
)))
(assert (forall ((s@@66 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@66)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@66))))
 :qid |TransactionFeebpl.19584:60|
 :skolemid |418|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67))))
 :qid |TransactionFeebpl.19601:66|
 :skolemid |419|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@68)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@68))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@68))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@68))))
 :qid |TransactionFeebpl.19630:50|
 :skolemid |420|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@69) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@69)))
 :qid |TransactionFeebpl.19649:45|
 :skolemid |421|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@70)) true))
 :qid |TransactionFeebpl.19956:87|
 :skolemid |422|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@71)))
 :qid |TransactionFeebpl.20157:47|
 :skolemid |423|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@72)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@72))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@72))))
 :qid |TransactionFeebpl.20177:58|
 :skolemid |424|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@73) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@73)))
 :qid |TransactionFeebpl.20192:39|
 :skolemid |425|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@74))))
 :qid |TransactionFeebpl.20214:58|
 :skolemid |426|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75))))
 :qid |TransactionFeebpl.20231:58|
 :skolemid |427|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76) true)
 :qid |TransactionFeebpl.20246:51|
 :skolemid |428|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77))))
 :qid |TransactionFeebpl.20263:60|
 :skolemid |429|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@78)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@78))))
 :qid |TransactionFeebpl.20549:47|
 :skolemid |430|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@79))))
 :qid |TransactionFeebpl.20571:63|
 :skolemid |431|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@80)))
 :qid |TransactionFeebpl.20586:57|
 :skolemid |432|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80))
)))
(assert (forall ((s@@81 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@81)))
 :qid |TransactionFeebpl.20599:55|
 :skolemid |433|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@82)))
 :qid |TransactionFeebpl.20613:55|
 :skolemid |434|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@83)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@83))))
 :qid |TransactionFeebpl.20630:54|
 :skolemid |435|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@84) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@84)))
 :qid |TransactionFeebpl.20644:55|
 :skolemid |436|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@85) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@85)))
 :qid |TransactionFeebpl.20658:57|
 :skolemid |437|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@86)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@86))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@86))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@86))))
 :qid |TransactionFeebpl.20680:56|
 :skolemid |438|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@87)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@87)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@87))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@87))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@87))))
 :qid |TransactionFeebpl.20705:52|
 :skolemid |439|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@88) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@88)))
 :qid |TransactionFeebpl.20721:54|
 :skolemid |440|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@89)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@89)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@89))))
 :qid |TransactionFeebpl.21563:47|
 :skolemid |441|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@90)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@90))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@90))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@90))))
 :qid |TransactionFeebpl.21587:47|
 :skolemid |442|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@91) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@91)))
 :qid |TransactionFeebpl.21819:63|
 :skolemid |443|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@92) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@92)))
 :qid |TransactionFeebpl.22155:49|
 :skolemid |444|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@93)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@93)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@93))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@93))))
 :qid |TransactionFeebpl.22198:49|
 :skolemid |445|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@94)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@94)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@94))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@94))))
 :qid |TransactionFeebpl.22227:48|
 :skolemid |446|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@95) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@95)))
 :qid |TransactionFeebpl.22511:47|
 :skolemid |447|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@95))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_11086 v@@23)))
 (and (= (seq.len r@@0) (seq.len v@@23)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len r@@0))) (= (seq.nth r@@0 i@@27) (seq.nth v@@23 (- (- (seq.len v@@23) i@@27) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@27))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_11086 v@@23))
)))
(assert (forall ((v@@24 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_84051 v@@24)))
 (and (= (seq.len r@@1) (seq.len v@@24)) (forall ((i@@28 Int) ) (!  (=> (and (>= i@@28 0) (< i@@28 (seq.len r@@1))) (= (seq.nth r@@1 i@@28) (seq.nth v@@24 (- (- (seq.len v@@24) i@@28) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@28))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_84051 v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_83263 v@@25)))
 (and (= (seq.len r@@2) (seq.len v@@25)) (forall ((i@@29 Int) ) (!  (=> (and (>= i@@29 0) (< i@@29 (seq.len r@@2))) (= (seq.nth r@@2 i@@29) (seq.nth v@@25 (- (- (seq.len v@@25) i@@29) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@29))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83263 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_83460 v@@26)))
 (and (= (seq.len r@@3) (seq.len v@@26)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@3))) (= (seq.nth r@@3 i@@30) (seq.nth v@@26 (- (- (seq.len v@@26) i@@30) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@30))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83460 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_83657 v@@27)))
 (and (= (seq.len r@@4) (seq.len v@@27)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@4))) (= (seq.nth r@@4 i@@31) (seq.nth v@@27 (- (- (seq.len v@@27) i@@31) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@31))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83657 v@@27))
)))
(assert (forall ((v@@28 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_84248 v@@28)))
 (and (= (seq.len r@@5) (seq.len v@@28)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@5))) (= (seq.nth r@@5 i@@32) (seq.nth v@@28 (- (- (seq.len v@@28) i@@32) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@32))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_84248 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@6 (ReverseVec_83854 v@@29)))
 (and (= (seq.len r@@6) (seq.len v@@29)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@6))) (= (seq.nth r@@6 i@@33) (seq.nth v@@29 (- (- (seq.len v@@29) i@@33) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@33))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83854 v@@29))
)))
(assert (forall ((v@@30 (Seq |T@#0|)) ) (! (let ((r@@7 (ReverseVec_83066 v@@30)))
 (and (= (seq.len r@@7) (seq.len v@@30)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@7))) (= (seq.nth r@@7 i@@34) (seq.nth v@@30 (- (- (seq.len v@@30) i@@34) 1))))
 :qid |TransactionFeebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@34))
))))
 :qid |TransactionFeebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83066 v@@30))
)))
(assert (forall ((|l#0| Bool) (i@@35 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@35) |l#0|)
 :qid |TransactionFeebpl.250:54|
 :skolemid |538|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@35))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_92611|) (|l#1| |T@[$1_Event_EventHandle]Multiset_92611|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_92611_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_92611| (|Select__T@[$1_Event_EventHandle]Multiset_92611_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_92611| (|Select__T@[$1_Event_EventHandle]Multiset_92611_| |l#1| handle@@0))))
(Multiset_92611 (|lambda#3| (|v#Multiset_92611| (|Select__T@[$1_Event_EventHandle]Multiset_92611_| |l#0@@0| handle@@0)) (|v#Multiset_92611| (|Select__T@[$1_Event_EventHandle]Multiset_92611_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |TransactionFeebpl.2382:13|
 :skolemid |539|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_92611_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@31 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@31) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@31) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@31)))
 :qid |TransactionFeebpl.129:29|
 :skolemid |540|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@31))
)))
; Valid

