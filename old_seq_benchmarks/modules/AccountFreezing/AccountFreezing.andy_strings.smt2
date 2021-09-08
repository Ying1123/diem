(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_446080 0)) ((($Memory_446080 (|domain#$Memory_446080| |T@[Int]Bool|) (|contents#$Memory_446080| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_1056100 0)) ((($Memory_1056100 (|domain#$Memory_1056100| |T@[Int]Bool|) (|contents#$Memory_1056100| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_454466 0)) ((($Memory_454466 (|domain#$Memory_454466| |T@[Int]Bool|) (|contents#$Memory_454466| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_576871 0)) ((($Memory_576871 (|domain#$Memory_576871| |T@[Int]Bool|) (|contents#$Memory_576871| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_577217 0)) ((($Memory_577217 (|domain#$Memory_577217| |T@[Int]Bool|) (|contents#$Memory_577217| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_576561 0)) ((($Memory_576561 (|domain#$Memory_576561| |T@[Int]Bool|) (|contents#$Memory_576561| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_552594 0)) ((($Memory_552594 (|domain#$Memory_552594| |T@[Int]Bool|) (|contents#$Memory_552594| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_552423 0)) ((($Memory_552423 (|domain#$Memory_552423| |T@[Int]Bool|) (|contents#$Memory_552423| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_552252 0)) ((($Memory_552252 (|domain#$Memory_552252| |T@[Int]Bool|) (|contents#$Memory_552252| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_458221 0)) ((($Memory_458221 (|domain#$Memory_458221| |T@[Int]Bool|) (|contents#$Memory_458221| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_HaltAllTransactions 0)) ((($1_DiemTransactionPublishingOption_HaltAllTransactions (|$dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| 0)
(declare-datatypes ((T@$Memory_549748 0)) ((($Memory_549748 (|domain#$Memory_549748| |T@[Int]Bool|) (|contents#$Memory_549748| |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_540908 0)) ((($Memory_540908 (|domain#$Memory_540908| |T@[Int]Bool|) (|contents#$Memory_540908| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_458306 0)) ((($Memory_458306 (|domain#$Memory_458306| |T@[Int]Bool|) (|contents#$Memory_458306| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_458604 0)) ((($Memory_458604 (|domain#$Memory_458604| |T@[Int]Bool|) (|contents#$Memory_458604| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_458704 0)) ((($Memory_458704 (|domain#$Memory_458704| |T@[Int]Bool|) (|contents#$Memory_458704| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_457989 0)) ((($Memory_457989 (|domain#$Memory_457989| |T@[Int]Bool|) (|contents#$Memory_457989| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_520293 0)) ((($Memory_520293 (|domain#$Memory_520293| |T@[Int]Bool|) (|contents#$Memory_520293| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_513260 0)) ((($Memory_513260 (|domain#$Memory_513260| |T@[Int]Bool|) (|contents#$Memory_513260| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_513196 0)) ((($Memory_513196 (|domain#$Memory_513196| |T@[Int]Bool|) (|contents#$Memory_513196| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_513132 0)) ((($Memory_513132 (|domain#$Memory_513132| |T@[Int]Bool|) (|contents#$Memory_513132| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_514240 0)) ((($Memory_514240 (|domain#$Memory_514240| |T@[Int]Bool|) (|contents#$Memory_514240| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_513784 0)) ((($Memory_513784 (|domain#$Memory_513784| |T@[Int]Bool|) (|contents#$Memory_513784| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_513328 0)) ((($Memory_513328 (|domain#$Memory_513328| |T@[Int]Bool|) (|contents#$Memory_513328| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_454395 0)) ((($Memory_454395 (|domain#$Memory_454395| |T@[Int]Bool|) (|contents#$Memory_454395| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_496149 0)) ((($Memory_496149 (|domain#$Memory_496149| |T@[Int]Bool|) (|contents#$Memory_496149| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_496062 0)) ((($Memory_496062 (|domain#$Memory_496062| |T@[Int]Bool|) (|contents#$Memory_496062| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_495975 0)) ((($Memory_495975 (|domain#$Memory_495975| |T@[Int]Bool|) (|contents#$Memory_495975| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_491342 0)) ((($Memory_491342 (|domain#$Memory_491342| |T@[Int]Bool|) (|contents#$Memory_491342| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_491255 0)) ((($Memory_491255 (|domain#$Memory_491255| |T@[Int]Bool|) (|contents#$Memory_491255| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_491168 0)) ((($Memory_491168 (|domain#$Memory_491168| |T@[Int]Bool|) (|contents#$Memory_491168| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_583321 0)) ((($Memory_583321 (|domain#$Memory_583321| |T@[Int]Bool|) (|contents#$Memory_583321| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_496504 0)) ((($Memory_496504 (|domain#$Memory_496504| |T@[Int]Bool|) (|contents#$Memory_496504| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_536306 0)) ((($Memory_536306 (|domain#$Memory_536306| |T@[Int]Bool|) (|contents#$Memory_536306| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_496929 0)) ((($Memory_496929 (|domain#$Memory_496929| |T@[Int]Bool|) (|contents#$Memory_496929| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_458136 0)) ((($Memory_458136 (|domain#$Memory_458136| |T@[Int]Bool|) (|contents#$Memory_458136| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_496413 0)) ((($Memory_496413 (|domain#$Memory_496413| |T@[Int]Bool|) (|contents#$Memory_496413| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_536242 0)) ((($Memory_536242 (|domain#$Memory_536242| |T@[Int]Bool|) (|contents#$Memory_536242| |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_518971 0)) ((($Memory_518971 (|domain#$Memory_518971| |T@[Int]Bool|) (|contents#$Memory_518971| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_496830 0)) ((($Memory_496830 (|domain#$Memory_496830| |T@[Int]Bool|) (|contents#$Memory_496830| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_458076 0)) ((($Memory_458076 (|domain#$Memory_458076| |T@[Int]Bool|) (|contents#$Memory_458076| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_496322 0)) ((($Memory_496322 (|domain#$Memory_496322| |T@[Int]Bool|) (|contents#$Memory_496322| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_536178 0)) ((($Memory_536178 (|domain#$Memory_536178| |T@[Int]Bool|) (|contents#$Memory_536178| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_496731 0)) ((($Memory_496731 (|domain#$Memory_496731| |T@[Int]Bool|) (|contents#$Memory_496731| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_490471 0)) ((($Memory_490471 (|domain#$Memory_490471| |T@[Int]Bool|) (|contents#$Memory_490471| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_490285 0)) ((($Memory_490285 (|domain#$Memory_490285| |T@[Int]Bool|) (|contents#$Memory_490285| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_490221 0)) ((($Memory_490221 (|domain#$Memory_490221| |T@[Int]Bool|) (|contents#$Memory_490221| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_486168 0)) ((($Memory_486168 (|domain#$Memory_486168| |T@[Int]Bool|) (|contents#$Memory_486168| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_486081 0)) ((($Memory_486081 (|domain#$Memory_486081| |T@[Int]Bool|) (|contents#$Memory_486081| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_485994 0)) ((($Memory_485994 (|domain#$Memory_485994| |T@[Int]Bool|) (|contents#$Memory_485994| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_485907 0)) ((($Memory_485907 (|domain#$Memory_485907| |T@[Int]Bool|) (|contents#$Memory_485907| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_485820 0)) ((($Memory_485820 (|domain#$Memory_485820| |T@[Int]Bool|) (|contents#$Memory_485820| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_486433 0)) ((($Memory_486433 (|domain#$Memory_486433| |T@[Int]Bool|) (|contents#$Memory_486433| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_484877 0)) ((($Memory_484877 (|domain#$Memory_484877| |T@[Int]Bool|) (|contents#$Memory_484877| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_484989 0)) ((($Memory_484989 (|domain#$Memory_484989| |T@[Int]Bool|) (|contents#$Memory_484989| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_484796 0)) ((($Memory_484796 (|domain#$Memory_484796| |T@[Int]Bool|) (|contents#$Memory_484796| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_484715 0)) ((($Memory_484715 (|domain#$Memory_484715| |T@[Int]Bool|) (|contents#$Memory_484715| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_484634 0)) ((($Memory_484634 (|domain#$Memory_484634| |T@[Int]Bool|) (|contents#$Memory_484634| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_484553 0)) ((($Memory_484553 (|domain#$Memory_484553| |T@[Int]Bool|) (|contents#$Memory_484553| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_484417 0)) ((($Memory_484417 (|domain#$Memory_484417| |T@[Int]Bool|) (|contents#$Memory_484417| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_457889 0)) ((($Memory_457889 (|domain#$Memory_457889| |T@[Int]Bool|) (|contents#$Memory_457889| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_484472 0)) ((($Memory_484472 (|domain#$Memory_484472| |T@[Int]Bool|) (|contents#$Memory_484472| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_458404 0)) ((($Memory_458404 (|domain#$Memory_458404| |T@[Int]Bool|) (|contents#$Memory_458404| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_458504 0)) ((($Memory_458504 (|domain#$Memory_458504| |T@[Int]Bool|) (|contents#$Memory_458504| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_454860 0)) ((($Memory_454860 (|domain#$Memory_454860| |T@[Int]Bool|) (|contents#$Memory_454860| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_452927 0)) ((($Memory_452927 (|domain#$Memory_452927| |T@[Int]Bool|) (|contents#$Memory_452927| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_414242 0)) (((Multiset_414242 (|v#Multiset_414242| |T@[$EventRep]Int|) (|l#Multiset_414242| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_414242| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_414242|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_1047815 0)) ((($Mutation_1047815 (|l#$Mutation_1047815| T@$Location) (|p#$Mutation_1047815| (Seq Int)) (|v#$Mutation_1047815| T@$1_DiemAccount_DiemWriteSetManager) ) ) ))
(declare-datatypes ((T@$Mutation_858160 0)) ((($Mutation_858160 (|l#$Mutation_858160| T@$Location) (|p#$Mutation_858160| (Seq Int)) (|v#$Mutation_858160| T@$1_DiemAccount_AccountOperationsCapability) ) ) ))
(declare-datatypes ((T@$Mutation_854450 0)) ((($Mutation_854450 (|l#$Mutation_854450| T@$Location) (|p#$Mutation_854450| (Seq Int)) (|v#$Mutation_854450| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_851487 0)) ((($Mutation_851487 (|l#$Mutation_851487| T@$Location) (|p#$Mutation_851487| (Seq Int)) (|v#$Mutation_851487| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_676021 0)) ((($Mutation_676021 (|l#$Mutation_676021| T@$Location) (|p#$Mutation_676021| (Seq Int)) (|v#$Mutation_676021| |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_664967 0)) ((($Mutation_664967 (|l#$Mutation_664967| T@$Location) (|p#$Mutation_664967| (Seq Int)) (|v#$Mutation_664967| |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_653899 0)) ((($Mutation_653899 (|l#$Mutation_653899| T@$Location) (|p#$Mutation_653899| (Seq Int)) (|v#$Mutation_653899| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_653854 0)) ((($Mutation_653854 (|l#$Mutation_653854| T@$Location) (|p#$Mutation_653854| (Seq Int)) (|v#$Mutation_653854| |T@$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_578848 0)) ((($Mutation_578848 (|l#$Mutation_578848| T@$Location) (|p#$Mutation_578848| (Seq Int)) (|v#$Mutation_578848| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_578806 0)) ((($Mutation_578806 (|l#$Mutation_578806| T@$Location) (|p#$Mutation_578806| (Seq Int)) (|v#$Mutation_578806| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_566830 0)) ((($Mutation_566830 (|l#$Mutation_566830| T@$Location) (|p#$Mutation_566830| (Seq Int)) (|v#$Mutation_566830| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_546052 0)) ((($Mutation_546052 (|l#$Mutation_546052| T@$Location) (|p#$Mutation_546052| (Seq Int)) (|v#$Mutation_546052| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_539760 0)) ((($Mutation_539760 (|l#$Mutation_539760| T@$Location) (|p#$Mutation_539760| (Seq Int)) (|v#$Mutation_539760| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_539715 0)) ((($Mutation_539715 (|l#$Mutation_539715| T@$Location) (|p#$Mutation_539715| (Seq Int)) (|v#$Mutation_539715| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_538786 0)) ((($Mutation_538786 (|l#$Mutation_538786| T@$Location) (|p#$Mutation_538786| (Seq Int)) (|v#$Mutation_538786| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_538741 0)) ((($Mutation_538741 (|l#$Mutation_538741| T@$Location) (|p#$Mutation_538741| (Seq Int)) (|v#$Mutation_538741| |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_537866 0)) ((($Mutation_537866 (|l#$Mutation_537866| T@$Location) (|p#$Mutation_537866| (Seq Int)) (|v#$Mutation_537866| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_537821 0)) ((($Mutation_537821 (|l#$Mutation_537821| T@$Location) (|p#$Mutation_537821| (Seq Int)) (|v#$Mutation_537821| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_529888 0)) ((($Mutation_529888 (|l#$Mutation_529888| T@$Location) (|p#$Mutation_529888| (Seq Int)) (|v#$Mutation_529888| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_520742 0)) ((($Mutation_520742 (|l#$Mutation_520742| T@$Location) (|p#$Mutation_520742| (Seq Int)) (|v#$Mutation_520742| T@$1_VASPDomain_VASPDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_520681 0)) ((($Mutation_520681 (|l#$Mutation_520681| T@$Location) (|p#$Mutation_520681| (Seq Int)) (|v#$Mutation_520681| T@$1_VASPDomain_VASPDomains) ) ) ))
(declare-datatypes ((T@$Mutation_64449 0)) ((($Mutation_64449 (|l#$Mutation_64449| T@$Location) (|p#$Mutation_64449| (Seq Int)) (|v#$Mutation_64449| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_503244 0)) ((($Mutation_503244 (|l#$Mutation_503244| T@$Location) (|p#$Mutation_503244| (Seq Int)) (|v#$Mutation_503244| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_501512 0)) ((($Mutation_501512 (|l#$Mutation_501512| T@$Location) (|p#$Mutation_501512| (Seq Int)) (|v#$Mutation_501512| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_499780 0)) ((($Mutation_499780 (|l#$Mutation_499780| T@$Location) (|p#$Mutation_499780| (Seq Int)) (|v#$Mutation_499780| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_488962 0)) ((($Mutation_488962 (|l#$Mutation_488962| T@$Location) (|p#$Mutation_488962| (Seq Int)) (|v#$Mutation_488962| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_480734 0)) ((($Mutation_480734 (|l#$Mutation_480734| T@$Location) (|p#$Mutation_480734| (Seq Int)) (|v#$Mutation_480734| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_479191 0)) ((($Mutation_479191 (|l#$Mutation_479191| T@$Location) (|p#$Mutation_479191| (Seq Int)) (|v#$Mutation_479191| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_479151 0)) ((($Mutation_479151 (|l#$Mutation_479151| T@$Location) (|p#$Mutation_479151| (Seq Int)) (|v#$Mutation_479151| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_453446 0)) ((($Mutation_453446 (|l#$Mutation_453446| T@$Location) (|p#$Mutation_453446| (Seq Int)) (|v#$Mutation_453446| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_446711 0)) ((($Mutation_446711 (|l#$Mutation_446711| T@$Location) (|p#$Mutation_446711| (Seq Int)) (|v#$Mutation_446711| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_16758 0)) ((($Mutation_16758 (|l#$Mutation_16758| T@$Location) (|p#$Mutation_16758| (Seq Int)) (|v#$Mutation_16758| Int) ) ) ))
(declare-datatypes ((T@$Mutation_440805 0)) ((($Mutation_440805 (|l#$Mutation_440805| T@$Location) (|p#$Mutation_440805| (Seq Int)) (|v#$Mutation_440805| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_440059 0)) ((($Mutation_440059 (|l#$Mutation_440059| T@$Location) (|p#$Mutation_440059| (Seq Int)) (|v#$Mutation_440059| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_438655 0)) ((($Mutation_438655 (|l#$Mutation_438655| T@$Location) (|p#$Mutation_438655| (Seq Int)) (|v#$Mutation_438655| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_437909 0)) ((($Mutation_437909 (|l#$Mutation_437909| T@$Location) (|p#$Mutation_437909| (Seq Int)) (|v#$Mutation_437909| (Seq T@$1_XUS_XUS)) ) ) ))
(declare-datatypes ((T@$Mutation_436505 0)) ((($Mutation_436505 (|l#$Mutation_436505| T@$Location) (|p#$Mutation_436505| (Seq Int)) (|v#$Mutation_436505| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_435759 0)) ((($Mutation_435759 (|l#$Mutation_435759| T@$Location) (|p#$Mutation_435759| (Seq Int)) (|v#$Mutation_435759| (Seq T@$1_XDX_XDX)) ) ) ))
(declare-datatypes ((T@$Mutation_434355 0)) ((($Mutation_434355 (|l#$Mutation_434355| T@$Location) (|p#$Mutation_434355| (Seq Int)) (|v#$Mutation_434355| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_433609 0)) ((($Mutation_433609 (|l#$Mutation_433609| T@$Location) (|p#$Mutation_433609| (Seq Int)) (|v#$Mutation_433609| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_432205 0)) ((($Mutation_432205 (|l#$Mutation_432205| T@$Location) (|p#$Mutation_432205| (Seq Int)) (|v#$Mutation_432205| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_431459 0)) ((($Mutation_431459 (|l#$Mutation_431459| T@$Location) (|p#$Mutation_431459| (Seq Int)) (|v#$Mutation_431459| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_430055 0)) ((($Mutation_430055 (|l#$Mutation_430055| T@$Location) (|p#$Mutation_430055| (Seq Int)) (|v#$Mutation_430055| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_429309 0)) ((($Mutation_429309 (|l#$Mutation_429309| T@$Location) (|p#$Mutation_429309| (Seq Int)) (|v#$Mutation_429309| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_427905 0)) ((($Mutation_427905 (|l#$Mutation_427905| T@$Location) (|p#$Mutation_427905| (Seq Int)) (|v#$Mutation_427905| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_427159 0)) ((($Mutation_427159 (|l#$Mutation_427159| T@$Location) (|p#$Mutation_427159| (Seq Int)) (|v#$Mutation_427159| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_425755 0)) ((($Mutation_425755 (|l#$Mutation_425755| T@$Location) (|p#$Mutation_425755| (Seq Int)) (|v#$Mutation_425755| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_425009 0)) ((($Mutation_425009 (|l#$Mutation_425009| T@$Location) (|p#$Mutation_425009| (Seq Int)) (|v#$Mutation_425009| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_423605 0)) ((($Mutation_423605 (|l#$Mutation_423605| T@$Location) (|p#$Mutation_423605| (Seq Int)) (|v#$Mutation_423605| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_422859 0)) ((($Mutation_422859 (|l#$Mutation_422859| T@$Location) (|p#$Mutation_422859| (Seq Int)) (|v#$Mutation_422859| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_421455 0)) ((($Mutation_421455 (|l#$Mutation_421455| T@$Location) (|p#$Mutation_421455| (Seq Int)) (|v#$Mutation_421455| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_420709 0)) ((($Mutation_420709 (|l#$Mutation_420709| T@$Location) (|p#$Mutation_420709| (Seq Int)) (|v#$Mutation_420709| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_419305 0)) ((($Mutation_419305 (|l#$Mutation_419305| T@$Location) (|p#$Mutation_419305| (Seq Int)) (|v#$Mutation_419305| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_418559 0)) ((($Mutation_418559 (|l#$Mutation_418559| T@$Location) (|p#$Mutation_418559| (Seq Int)) (|v#$Mutation_418559| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_417117 0)) ((($Mutation_417117 (|l#$Mutation_417117| T@$Location) (|p#$Mutation_417117| (Seq Int)) (|v#$Mutation_417117| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_416371 0)) ((($Mutation_416371 (|l#$Mutation_416371| T@$Location) (|p#$Mutation_416371| (Seq Int)) (|v#$Mutation_416371| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_XDX_XDX''| ((Seq T@$1_XDX_XDX)) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| ((Seq T@$1_XDX_XDX) T@$1_XDX_XDX) Int)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| ((Seq T@$1_XUS_XUS)) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| ((Seq T@$1_XUS_XUS) T@$1_XUS_XUS) Int)
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
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_414242_| (|T@[$1_Event_EventHandle]Multiset_414242| T@$1_Event_EventHandle) T@Multiset_414242)
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
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| (|T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| (|T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'#0''| (|T@$1_Diem_PreburnQueue'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'#0''| (|T@$1_AccountLimits_LimitsDefinition'#0'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'#0''| (|T@$1_AccountLimits_Window'#0'|) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| (|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'#0''| (|T@$1_TransactionFee_TransactionFee'#0'|) Bool)
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int (Seq Int) Int) (Seq Int))
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| (T@$1_DiemTransactionPublishingOption_HaltAllTransactions) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| (|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| (|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'#0''| (|T@$1_DesignatedDealer_TierInfo'#0'|) Bool)
(declare-fun |$IsValid'$1_ChainId_ChainId'| (T@$1_ChainId_ChainId) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeAccountEvent'| (T@$1_AccountFreezing_FreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeEventsHolder'| (T@$1_AccountFreezing_FreezeEventsHolder) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| (T@$1_AccountFreezing_UnfreezeAccountEvent) Bool)
(declare-fun $1_DiemAccount_spec_abstract_create_authentication_key ((Seq Int)) (Seq Int))
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
(declare-fun ReverseVec_16611 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_375704 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_374325 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_374522 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_374719 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_376295 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_375310 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_375113 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_374916 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_375507 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_374128 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun ReverseVec_375901 ((Seq T@$1_XDX_XDX)) (Seq T@$1_XDX_XDX))
(declare-fun ReverseVec_376098 ((Seq T@$1_XUS_XUS)) (Seq T@$1_XUS_XUS))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_414242| |T@[$1_Event_EventHandle]Multiset_414242|) |T@[$1_Event_EventHandle]Multiset_414242|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountFreezingandybpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountFreezingandybpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountFreezingandybpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountFreezingandybpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountFreezingandybpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountFreezingandybpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountFreezingandybpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountFreezingandybpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |AccountFreezingandybpl.595:13|
 :skolemid |15|
))))
 :qid |AccountFreezingandybpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |AccountFreezingandybpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |AccountFreezingandybpl.608:17|
 :skolemid |18|
)))))
 :qid |AccountFreezingandybpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |AccountFreezingandybpl.775:13|
 :skolemid |20|
))))
 :qid |AccountFreezingandybpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |AccountFreezingandybpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |AccountFreezingandybpl.788:17|
 :skolemid |23|
)))))
 :qid |AccountFreezingandybpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |AccountFreezingandybpl.955:13|
 :skolemid |25|
))))
 :qid |AccountFreezingandybpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |AccountFreezingandybpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |AccountFreezingandybpl.968:17|
 :skolemid |28|
)))))
 :qid |AccountFreezingandybpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |AccountFreezingandybpl.1135:13|
 :skolemid |30|
))))
 :qid |AccountFreezingandybpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |AccountFreezingandybpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |AccountFreezingandybpl.1148:17|
 :skolemid |33|
)))))
 :qid |AccountFreezingandybpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |AccountFreezingandybpl.1315:13|
 :skolemid |35|
))))
 :qid |AccountFreezingandybpl.1313:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |AccountFreezingandybpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |AccountFreezingandybpl.1328:17|
 :skolemid |38|
)))))
 :qid |AccountFreezingandybpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |AccountFreezingandybpl.1495:13|
 :skolemid |40|
))))
 :qid |AccountFreezingandybpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |AccountFreezingandybpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |AccountFreezingandybpl.1508:17|
 :skolemid |43|
)))))
 :qid |AccountFreezingandybpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |AccountFreezingandybpl.1675:13|
 :skolemid |45|
))))
 :qid |AccountFreezingandybpl.1673:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |AccountFreezingandybpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |AccountFreezingandybpl.1688:17|
 :skolemid |48|
)))))
 :qid |AccountFreezingandybpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |AccountFreezingandybpl.1855:13|
 :skolemid |50|
))))
 :qid |AccountFreezingandybpl.1853:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |AccountFreezingandybpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |AccountFreezingandybpl.1868:17|
 :skolemid |53|
)))))
 :qid |AccountFreezingandybpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |AccountFreezingandybpl.2035:13|
 :skolemid |55|
))))
 :qid |AccountFreezingandybpl.2033:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |AccountFreezingandybpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |AccountFreezingandybpl.2048:17|
 :skolemid |58|
)))))
 :qid |AccountFreezingandybpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq T@$1_XDX_XDX)) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'$1_XDX_XDX'| (seq.nth v@@22 i@@27)))
 :qid |AccountFreezingandybpl.2215:13|
 :skolemid |60|
))))
 :qid |AccountFreezingandybpl.2213:36|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_XDX_XDX)) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@28 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |AccountFreezingandybpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |AccountFreezingandybpl.2228:17|
 :skolemid |63|
)))))
 :qid |AccountFreezingandybpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq T@$1_XUS_XUS)) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'$1_XUS_XUS'| (seq.nth v@@24 i@@30)))
 :qid |AccountFreezingandybpl.2395:13|
 :skolemid |65|
))))
 :qid |AccountFreezingandybpl.2393:36|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_XUS_XUS)) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@31 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |AccountFreezingandybpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |AccountFreezingandybpl.2408:17|
 :skolemid |68|
)))))
 :qid |AccountFreezingandybpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'vec'u8''| (seq.nth v@@26 i@@33)))
 :qid |AccountFreezingandybpl.2575:13|
 :skolemid |70|
))))
 :qid |AccountFreezingandybpl.2573:33|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 (Seq (Seq Int))) (e@@10 (Seq Int)) ) (! (let ((i@@34 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |AccountFreezingandybpl.2580:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |AccountFreezingandybpl.2588:17|
 :skolemid |73|
)))))
 :qid |AccountFreezingandybpl.2584:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v@@28 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len v@@28))) (|$IsValid'address'| (seq.nth v@@28 i@@36)))
 :qid |AccountFreezingandybpl.2755:13|
 :skolemid |75|
))))
 :qid |AccountFreezingandybpl.2753:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 (Seq Int)) (e@@11 Int) ) (! (let ((i@@37 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (and (|$IsValid'u64'| i@@38) (and (>= i@@38 0) (< i@@38 (seq.len v@@29)))) (= (seq.nth v@@29 i@@38) e@@11))
 :qid |AccountFreezingandybpl.2760:13|
 :skolemid |77|
))) (= i@@37 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@37) (and (>= i@@37 0) (< i@@37 (seq.len v@@29)))) (= (seq.nth v@@29 i@@37) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@37)) (not (= (seq.nth v@@29 j@@11) e@@11)))
 :qid |AccountFreezingandybpl.2768:17|
 :skolemid |78|
)))))
 :qid |AccountFreezingandybpl.2764:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v@@30 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@30)  (and (|$IsValid'u64'| (seq.len v@@30)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len v@@30))) (|$IsValid'u64'| (seq.nth v@@30 i@@39)))
 :qid |AccountFreezingandybpl.2935:13|
 :skolemid |80|
))))
 :qid |AccountFreezingandybpl.2933:29|
 :skolemid |81|
 :pattern ( (|$IsValid'vec'u64''| v@@30))
)))
(assert (forall ((v@@31 (Seq Int)) (e@@12 Int) ) (! (let ((i@@40 (|$IndexOfVec'u64'| v@@31 e@@12)))
(ite  (not (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (>= i@@41 0) (< i@@41 (seq.len v@@31)))) (= (seq.nth v@@31 i@@41) e@@12))
 :qid |AccountFreezingandybpl.2940:13|
 :skolemid |82|
))) (= i@@40 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len v@@31)))) (= (seq.nth v@@31 i@@40) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@40)) (not (= (seq.nth v@@31 j@@12) e@@12)))
 :qid |AccountFreezingandybpl.2948:17|
 :skolemid |83|
)))))
 :qid |AccountFreezingandybpl.2944:15|
 :skolemid |84|
 :pattern ( (|$IndexOfVec'u64'| v@@31 e@@12))
)))
(assert (forall ((v@@32 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@32)  (and (|$IsValid'u64'| (seq.len v@@32)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len v@@32))) (|$IsValid'u8'| (seq.nth v@@32 i@@42)))
 :qid |AccountFreezingandybpl.3115:13|
 :skolemid |85|
))))
 :qid |AccountFreezingandybpl.3113:28|
 :skolemid |86|
 :pattern ( (|$IsValid'vec'u8''| v@@32))
)))
(assert (forall ((v@@33 (Seq Int)) (e@@13 Int) ) (! (let ((i@@43 (|$IndexOfVec'u8'| v@@33 e@@13)))
(ite  (not (exists ((i@@44 Int) ) (!  (and (and (|$IsValid'u64'| i@@44) (and (>= i@@44 0) (< i@@44 (seq.len v@@33)))) (= (seq.nth v@@33 i@@44) e@@13))
 :qid |AccountFreezingandybpl.3120:13|
 :skolemid |87|
))) (= i@@43 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@43) (and (>= i@@43 0) (< i@@43 (seq.len v@@33)))) (= (seq.nth v@@33 i@@43) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@13) (>= j@@13 0)) (< j@@13 i@@43)) (not (= (seq.nth v@@33 j@@13) e@@13)))
 :qid |AccountFreezingandybpl.3128:17|
 :skolemid |88|
)))))
 :qid |AccountFreezingandybpl.3124:15|
 :skolemid |89|
 :pattern ( (|$IndexOfVec'u8'| v@@33 e@@13))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |AccountFreezingandybpl.3301:15|
 :skolemid |90|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |AccountFreezingandybpl.3317:15|
 :skolemid |91|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountFreezingandybpl.3384:15|
 :skolemid |92|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountFreezingandybpl.3387:15|
 :skolemid |93|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 Int) (v2@@1 Int) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1)))
 :qid |AccountFreezingandybpl.3414:15|
 :skolemid |94|
 :pattern ( (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1))
)))
(assert (forall ((v@@34 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'address'| v@@34)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |AccountFreezingandybpl.3419:15|
 :skolemid |95|
 :pattern ( (|$1_BCS_serialize'address'| v@@34))
)))
(assert (forall ((v@@35 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@35)))
(= (seq.len r@@1) $serialized_address_len))
 :qid |AccountFreezingandybpl.3433:15|
 :skolemid |96|
 :pattern ( (|$1_BCS_serialize'address'| v@@35))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_414242| stream) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream) v@@36) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountFreezingandybpl.3521:80|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@2)))
 :qid |AccountFreezingandybpl.3527:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountFreezingandybpl.3577:82|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@3 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@3 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@3)))
 :qid |AccountFreezingandybpl.3583:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@3))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountFreezingandybpl.3633:80|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@4 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@4 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@4)))
 :qid |AccountFreezingandybpl.3639:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@4))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountFreezingandybpl.3689:79|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_AdminTransactionEvent) (v2@@5 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5)))
 :qid |AccountFreezingandybpl.3695:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountFreezingandybpl.3745:76|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_CreateAccountEvent) (v2@@6 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6)))
 :qid |AccountFreezingandybpl.3751:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountFreezingandybpl.3801:78|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@7 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7)))
 :qid |AccountFreezingandybpl.3807:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountFreezingandybpl.3857:74|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@8 T@$1_DiemAccount_SentPaymentEvent) (v2@@8 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8)))
 :qid |AccountFreezingandybpl.3863:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountFreezingandybpl.3913:69|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@9 T@$1_DiemBlock_NewBlockEvent) (v2@@9 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@9) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@9)))
 :qid |AccountFreezingandybpl.3919:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@9) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@9))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountFreezingandybpl.3969:70|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@10 T@$1_DiemConfig_NewEpochEvent) (v2@@10 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@10)))
 :qid |AccountFreezingandybpl.3975:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@10))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountFreezingandybpl.4025:60|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |AccountFreezingandybpl.4031:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountFreezingandybpl.4081:66|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |AccountFreezingandybpl.4087:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountFreezingandybpl.4137:60|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |AccountFreezingandybpl.4143:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountFreezingandybpl.4193:63|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |AccountFreezingandybpl.4199:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountFreezingandybpl.4249:79|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |AccountFreezingandybpl.4255:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountFreezingandybpl.4305:82|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |AccountFreezingandybpl.4311:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountFreezingandybpl.4361:88|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |AccountFreezingandybpl.4367:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountFreezingandybpl.4417:72|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@18 T@$1_VASPDomain_VASPDomainEvent) (v2@@18 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@18) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@18)))
 :qid |AccountFreezingandybpl.4423:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@18) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@18))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |AccountFreezingandybpl.4477:15|
 :skolemid |133|
)))
(assert (forall ((addr Int) ) (! true
 :qid |AccountFreezingandybpl.4486:15|
 :skolemid |134|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |AccountFreezingandybpl.4516:61|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |AccountFreezingandybpl.5117:36|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |AccountFreezingandybpl.8992:71|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |AccountFreezingandybpl.9783:46|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |AccountFreezingandybpl.9796:64|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |AccountFreezingandybpl.9809:75|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |AccountFreezingandybpl.9822:72|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |AccountFreezingandybpl.9861:55|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |AccountFreezingandybpl.9883:46|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |AccountFreezingandybpl.11733:49|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |AccountFreezingandybpl.11828:71|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |AccountFreezingandybpl.11842:91|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |AccountFreezingandybpl.11856:113|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |AccountFreezingandybpl.11870:75|
 :skolemid |261|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |AccountFreezingandybpl.11884:73|
 :skolemid |262|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |AccountFreezingandybpl.11904:48|
 :skolemid |263|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |AccountFreezingandybpl.11920:57|
 :skolemid |264|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |AccountFreezingandybpl.11934:83|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |AccountFreezingandybpl.11948:103|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |AccountFreezingandybpl.11962:125|
 :skolemid |267|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |AccountFreezingandybpl.11976:87|
 :skolemid |268|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |AccountFreezingandybpl.11990:85|
 :skolemid |269|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |AccountFreezingandybpl.12004:48|
 :skolemid |270|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |AccountFreezingandybpl.12025:45|
 :skolemid |271|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |AccountFreezingandybpl.12039:51|
 :skolemid |272|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |AccountFreezingandybpl.12062:48|
 :skolemid |273|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |AccountFreezingandybpl.12373:49|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |AccountFreezingandybpl.12386:65|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |AccountFreezingandybpl.13000:45|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |AccountFreezingandybpl.13013:45|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |AccountFreezingandybpl.13026:37|
 :skolemid |278|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |AccountFreezingandybpl.13039:55|
 :skolemid |279|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |AccountFreezingandybpl.13053:55|
 :skolemid |280|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@33) true)
 :qid |AccountFreezingandybpl.13067:47|
 :skolemid |281|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@34))))
 :qid |AccountFreezingandybpl.13087:38|
 :skolemid |282|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@35))))
 :qid |AccountFreezingandybpl.13108:44|
 :skolemid |283|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))))
 :qid |AccountFreezingandybpl.13159:53|
 :skolemid |284|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))))
 :qid |AccountFreezingandybpl.13221:53|
 :skolemid |285|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@38))))
 :qid |AccountFreezingandybpl.13283:45|
 :skolemid |286|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39) true)
 :qid |AccountFreezingandybpl.13309:55|
 :skolemid |287|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40) true)
 :qid |AccountFreezingandybpl.13323:55|
 :skolemid |288|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@41) true)
 :qid |AccountFreezingandybpl.13337:47|
 :skolemid |289|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |AccountFreezingandybpl.13354:38|
 :skolemid |290|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |AccountFreezingandybpl.13368:48|
 :skolemid |291|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |AccountFreezingandybpl.13382:48|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@45) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@45)))
 :qid |AccountFreezingandybpl.13396:40|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@46)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@46)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@46))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@46))))
 :qid |AccountFreezingandybpl.13416:41|
 :skolemid |294|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@47)))
 :qid |AccountFreezingandybpl.13431:53|
 :skolemid |295|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@48)))
 :qid |AccountFreezingandybpl.13445:53|
 :skolemid |296|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@49)))
 :qid |AccountFreezingandybpl.13459:45|
 :skolemid |297|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50))))
 :qid |AccountFreezingandybpl.13476:60|
 :skolemid |298|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51))))
 :qid |AccountFreezingandybpl.13493:60|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@52))))
 :qid |AccountFreezingandybpl.13510:52|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52))
)))
(assert (forall ((s@@53 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53))))
 :qid |AccountFreezingandybpl.13527:57|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54) true)
 :qid |AccountFreezingandybpl.18684:68|
 :skolemid |308|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))))
 :qid |AccountFreezingandybpl.18706:66|
 :skolemid |309|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))))
 :qid |AccountFreezingandybpl.18732:66|
 :skolemid |310|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@57))))
 :qid |AccountFreezingandybpl.18758:58|
 :skolemid |311|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@58)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))))
 :qid |AccountFreezingandybpl.18787:56|
 :skolemid |312|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))))
 :qid |AccountFreezingandybpl.18817:56|
 :skolemid |313|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@60))))
 :qid |AccountFreezingandybpl.18847:48|
 :skolemid |314|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@60))
)))
(assert (forall ((s@@61 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@61) true)
 :qid |AccountFreezingandybpl.19332:31|
 :skolemid |315|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@61))
)))
(assert (forall ((s@@62 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@62) true)
 :qid |AccountFreezingandybpl.19676:31|
 :skolemid |316|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@63)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@63)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@63))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@63))))
 :qid |AccountFreezingandybpl.19695:35|
 :skolemid |317|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@64)))
 :qid |AccountFreezingandybpl.20121:45|
 :skolemid |318|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@65))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@65))))
 :qid |AccountFreezingandybpl.20140:50|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@66)))
 :qid |AccountFreezingandybpl.20155:52|
 :skolemid |320|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@67)))
 :qid |AccountFreezingandybpl.20169:46|
 :skolemid |321|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@68) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@68)))
 :qid |AccountFreezingandybpl.22070:38|
 :skolemid |356|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@69) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@69)))
 :qid |AccountFreezingandybpl.22084:39|
 :skolemid |357|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@69))
)))
(assert (forall ((s@@70 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70))))
 :qid |AccountFreezingandybpl.23893:65|
 :skolemid |381|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@71))))
 :qid |AccountFreezingandybpl.23911:65|
 :skolemid |382|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@71))
)))
(assert (forall ((s@@72 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@72)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@72)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@72))))
 :qid |AccountFreezingandybpl.23929:57|
 :skolemid |383|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@72))
)))
(assert (forall ((payer Int) (metadata (Seq Int)) (deposit_value Int) ) (! (let (($$res ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res))
 :qid |AccountFreezingandybpl.25060:15|
 :skolemid |384|
)))
(assert (forall ((s@@73 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@73)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@73)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@73))))
 :qid |AccountFreezingandybpl.25088:60|
 :skolemid |385|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@74)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@74)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@74))))
 :qid |AccountFreezingandybpl.25105:66|
 :skolemid |386|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@75)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@75)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@75))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@75))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@75))))
 :qid |AccountFreezingandybpl.25134:50|
 :skolemid |387|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@76) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@76)))
 :qid |AccountFreezingandybpl.25153:45|
 :skolemid |388|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@77)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@77)) true))
 :qid |AccountFreezingandybpl.27018:87|
 :skolemid |427|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemTransactionPublishingOption_HaltAllTransactions) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@78) true)
 :qid |AccountFreezingandybpl.27032:75|
 :skolemid |428|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@79)))
 :qid |AccountFreezingandybpl.27696:47|
 :skolemid |429|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@80)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@80)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@80))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@80))))
 :qid |AccountFreezingandybpl.27716:58|
 :skolemid |430|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@80))
)))
(assert (forall ((s@@81 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@81)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@81)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@81))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@81))))
 :qid |AccountFreezingandybpl.27737:61|
 :skolemid |431|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@82)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@82)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@82))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@82))))
 :qid |AccountFreezingandybpl.27759:61|
 :skolemid |432|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@83)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@83)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@83))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@83))))
 :qid |AccountFreezingandybpl.27781:53|
 :skolemid |433|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@83))
)))
(assert (forall ((s@@84 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@84) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@84)))
 :qid |AccountFreezingandybpl.31467:39|
 :skolemid |611|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@84))
)))
(assert (forall ((s@@85 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@85)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@85)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@85))))
 :qid |AccountFreezingandybpl.31583:58|
 :skolemid |612|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@86)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@86)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@86))))
 :qid |AccountFreezingandybpl.31600:58|
 :skolemid |613|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@86))
)))
(assert (forall ((s@@87 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@87) true)
 :qid |AccountFreezingandybpl.31615:51|
 :skolemid |614|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@87))
)))
(assert (forall ((s@@88 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@88)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@88)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@88))))
 :qid |AccountFreezingandybpl.31632:60|
 :skolemid |615|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@88))
)))
(assert (forall ((auth_key_prefix (Seq Int)) ) (! (let (($$res@@0 ($1_DiemAccount_spec_abstract_create_authentication_key auth_key_prefix)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |AccountFreezingandybpl.33217:15|
 :skolemid |632|
)))
(assert (forall ((s@@89 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@89)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@89)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@89))))
 :qid |AccountFreezingandybpl.33297:47|
 :skolemid |633|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@90)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@90)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@90))))
 :qid |AccountFreezingandybpl.33319:63|
 :skolemid |634|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@91) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@91)))
 :qid |AccountFreezingandybpl.33334:57|
 :skolemid |635|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@91))
)))
(assert (forall ((s@@92 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@92) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@92)))
 :qid |AccountFreezingandybpl.33347:55|
 :skolemid |636|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@92))
)))
(assert (forall ((s@@93 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@93) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@93)))
 :qid |AccountFreezingandybpl.33361:55|
 :skolemid |637|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@93))
)))
(assert (forall ((s@@94 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@94) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@94)))
 :qid |AccountFreezingandybpl.33375:47|
 :skolemid |638|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@95)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@95)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@95))))
 :qid |AccountFreezingandybpl.33392:54|
 :skolemid |639|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@96) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@96)))
 :qid |AccountFreezingandybpl.33406:55|
 :skolemid |640|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@97) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@97)))
 :qid |AccountFreezingandybpl.33420:57|
 :skolemid |641|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@98)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@98)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@98))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@98))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@98))))
 :qid |AccountFreezingandybpl.33442:56|
 :skolemid |642|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@99)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@99)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@99))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@99))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@99))))
 :qid |AccountFreezingandybpl.33467:52|
 :skolemid |643|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@100) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@100)))
 :qid |AccountFreezingandybpl.33483:54|
 :skolemid |644|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@101)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@101)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@101))))
 :qid |AccountFreezingandybpl.99714:47|
 :skolemid |3763|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@101))
)))
(assert (forall ((s@@102 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@102)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@102)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@102))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@102))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@102))))
 :qid |AccountFreezingandybpl.99738:47|
 :skolemid |3764|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@102))
)))
(assert (forall ((s@@103 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@103) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@103)))
 :qid |AccountFreezingandybpl.99979:49|
 :skolemid |3765|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@103))
)))
(assert (forall ((s@@104 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@104)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@104)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@104))))
 :qid |AccountFreezingandybpl.100022:49|
 :skolemid |3766|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@104))
)))
(assert (forall ((s@@105 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@105)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@105)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@105))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@105))))
 :qid |AccountFreezingandybpl.100051:48|
 :skolemid |3767|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@105))
)))
(assert (forall ((s@@106 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@106) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@106)))
 :qid |AccountFreezingandybpl.100346:47|
 :skolemid |3768|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@106))
)))
(assert (forall ((v@@37 (Seq Int)) ) (! (let ((r@@2 (ReverseVec_16611 v@@37)))
 (and (= (seq.len r@@2) (seq.len v@@37)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@2))) (= (seq.nth r@@2 i@@45) (seq.nth v@@37 (- (- (seq.len v@@37) i@@45) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@45))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_16611 v@@37))
)))
(assert (forall ((v@@38 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@3 (ReverseVec_375704 v@@38)))
 (and (= (seq.len r@@3) (seq.len v@@38)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@3))) (= (seq.nth r@@3 i@@46) (seq.nth v@@38 (- (- (seq.len v@@38) i@@46) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@46))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_375704 v@@38))
)))
(assert (forall ((v@@39 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@4 (ReverseVec_374325 v@@39)))
 (and (= (seq.len r@@4) (seq.len v@@39)) (forall ((i@@47 Int) ) (!  (=> (and (>= i@@47 0) (< i@@47 (seq.len r@@4))) (= (seq.nth r@@4 i@@47) (seq.nth v@@39 (- (- (seq.len v@@39) i@@47) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@47))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_374325 v@@39))
)))
(assert (forall ((v@@40 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@5 (ReverseVec_374522 v@@40)))
 (and (= (seq.len r@@5) (seq.len v@@40)) (forall ((i@@48 Int) ) (!  (=> (and (>= i@@48 0) (< i@@48 (seq.len r@@5))) (= (seq.nth r@@5 i@@48) (seq.nth v@@40 (- (- (seq.len v@@40) i@@48) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@48))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_374522 v@@40))
)))
(assert (forall ((v@@41 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@6 (ReverseVec_374719 v@@41)))
 (and (= (seq.len r@@6) (seq.len v@@41)) (forall ((i@@49 Int) ) (!  (=> (and (>= i@@49 0) (< i@@49 (seq.len r@@6))) (= (seq.nth r@@6 i@@49) (seq.nth v@@41 (- (- (seq.len v@@41) i@@49) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@49))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_374719 v@@41))
)))
(assert (forall ((v@@42 (Seq (Seq Int))) ) (! (let ((r@@7 (ReverseVec_376295 v@@42)))
 (and (= (seq.len r@@7) (seq.len v@@42)) (forall ((i@@50 Int) ) (!  (=> (and (>= i@@50 0) (< i@@50 (seq.len r@@7))) (= (seq.nth r@@7 i@@50) (seq.nth v@@42 (- (- (seq.len v@@42) i@@50) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@50))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_376295 v@@42))
)))
(assert (forall ((v@@43 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@8 (ReverseVec_375310 v@@43)))
 (and (= (seq.len r@@8) (seq.len v@@43)) (forall ((i@@51 Int) ) (!  (=> (and (>= i@@51 0) (< i@@51 (seq.len r@@8))) (= (seq.nth r@@8 i@@51) (seq.nth v@@43 (- (- (seq.len v@@43) i@@51) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@51))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_375310 v@@43))
)))
(assert (forall ((v@@44 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@9 (ReverseVec_375113 v@@44)))
 (and (= (seq.len r@@9) (seq.len v@@44)) (forall ((i@@52 Int) ) (!  (=> (and (>= i@@52 0) (< i@@52 (seq.len r@@9))) (= (seq.nth r@@9 i@@52) (seq.nth v@@44 (- (- (seq.len v@@44) i@@52) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@52))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_375113 v@@44))
)))
(assert (forall ((v@@45 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@10 (ReverseVec_374916 v@@45)))
 (and (= (seq.len r@@10) (seq.len v@@45)) (forall ((i@@53 Int) ) (!  (=> (and (>= i@@53 0) (< i@@53 (seq.len r@@10))) (= (seq.nth r@@10 i@@53) (seq.nth v@@45 (- (- (seq.len v@@45) i@@53) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@53))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_374916 v@@45))
)))
(assert (forall ((v@@46 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@11 (ReverseVec_375507 v@@46)))
 (and (= (seq.len r@@11) (seq.len v@@46)) (forall ((i@@54 Int) ) (!  (=> (and (>= i@@54 0) (< i@@54 (seq.len r@@11))) (= (seq.nth r@@11 i@@54) (seq.nth v@@46 (- (- (seq.len v@@46) i@@54) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@54))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_375507 v@@46))
)))
(assert (forall ((v@@47 (Seq |T@#0|)) ) (! (let ((r@@12 (ReverseVec_374128 v@@47)))
 (and (= (seq.len r@@12) (seq.len v@@47)) (forall ((i@@55 Int) ) (!  (=> (and (>= i@@55 0) (< i@@55 (seq.len r@@12))) (= (seq.nth r@@12 i@@55) (seq.nth v@@47 (- (- (seq.len v@@47) i@@55) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@12 i@@55))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_374128 v@@47))
)))
(assert (forall ((v@@48 (Seq T@$1_XDX_XDX)) ) (! (let ((r@@13 (ReverseVec_375901 v@@48)))
 (and (= (seq.len r@@13) (seq.len v@@48)) (forall ((i@@56 Int) ) (!  (=> (and (>= i@@56 0) (< i@@56 (seq.len r@@13))) (= (seq.nth r@@13 i@@56) (seq.nth v@@48 (- (- (seq.len v@@48) i@@56) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@13 i@@56))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_375901 v@@48))
)))
(assert (forall ((v@@49 (Seq T@$1_XUS_XUS)) ) (! (let ((r@@14 (ReverseVec_376098 v@@49)))
 (and (= (seq.len r@@14) (seq.len v@@49)) (forall ((i@@57 Int) ) (!  (=> (and (>= i@@57 0) (< i@@57 (seq.len r@@14))) (= (seq.nth r@@14 i@@57) (seq.nth v@@49 (- (- (seq.len v@@49) i@@57) 1))))
 :qid |AccountFreezingandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@14 i@@57))
))))
 :qid |AccountFreezingandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_376098 v@@49))
)))
(assert (forall ((|l#0| Bool) (i@@58 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@58) |l#0|)
 :qid |AccountFreezingandybpl.250:54|
 :skolemid |3854|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@58))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_414242|) (|l#1| |T@[$1_Event_EventHandle]Multiset_414242|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| |l#1| handle@@0))))
(Multiset_414242 (|lambda#3| (|v#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| |l#0@@0| handle@@0)) (|v#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountFreezingandybpl.3490:13|
 :skolemid |3855|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@50) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@50) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@50)))
 :qid |AccountFreezingandybpl.129:29|
 :skolemid |3856|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@50))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_16758)
(declare-fun $t14@1 () T@$Mutation_453446)
(declare-fun $t24@1 () T@$Mutation_16758)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_453446)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_452927)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_454395)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_454466)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_452927)
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
(declare-fun $t14 () T@$Mutation_453446)
(declare-fun $t14@0 () T@$Mutation_453446)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_453446)
(declare-fun $t24 () T@$Mutation_16758)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1861287) (let ((L5_correct  (=> (and (= $t24@0 ($Mutation_16758 (|l#$Mutation_453446| $t14@1) (seq.++ (|p#$Mutation_453446| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_453446| $t14@1)))) (= $t24@1 ($Mutation_16758 (|l#$Mutation_16758| $t24@0) (|p#$Mutation_16758| $t24@0) _$t2))) (=> (and (and (= $t14@2 ($Mutation_453446 (|l#$Mutation_453446| $t14@1) (|p#$Mutation_453446| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_16758| $t24@1)))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_454395| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_454466| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_452927 (|Store__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_453446| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_453446| $t14@2)) (|v#$Mutation_453446| $t14@2)))))) (and (=> (= (ControlFlow 0 1072619) (- 0 1861923)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_454395| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_454395| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (and (=> (= (ControlFlow 0 1072619) (- 0 1861937)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_454466| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_454466| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 1072619) (- 0 1861964)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 1072619) (- 0 1861974)) (not (not (= (|$addr#$signer| _$t0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0) 0))) (and (=> (= (ControlFlow 0 1072619) (- 0 1861988)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 1072619) (- 0 1862012)) (= $t25 _$t2)))))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 1072677) 1072619)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 1072447) 1072619)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 1072443) (- 0 1862056)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 1072443) (- 0 1862093)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 1072673) 1072443))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 1072657) 1072677) anon25_Then_correct) (=> (= (ControlFlow 0 1072657) 1072673) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 1072327) 1072443))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 1072311) 1072447) anon26_Then_correct) (=> (= (ControlFlow 0 1072311) 1072327) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 1072275) 1072311)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 1072281) 1072275)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_453446| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_453446| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 1072229) 1072657) anon24_Then_correct) (=> (= (ControlFlow 0 1072229) 1072281) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 1072691) 1072443))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1072743) 1072691) anon23_Then_correct) (=> (= (ControlFlow 0 1072743) 1072229) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 1072741) 1072743)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_453446 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 1072183) 1072691) anon23_Then_correct) (=> (= (ControlFlow 0 1072183) 1072229) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 1072161) (- 0 1861585)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 1072161) 1072741) anon22_Then_correct) (=> (= (ControlFlow 0 1072161) 1072183) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 1072773) 1072443))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= (|$addr#$signer| _$t0) 0)))) (and (=> (= (ControlFlow 0 1072141) 1072773) anon21_Then_correct) (=> (= (ControlFlow 0 1072141) 1072161) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 1072799) 1072443))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |AccountFreezingandybpl.4705:20|
 :skolemid |136|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 1072119) 1072799) anon20_Then_correct) (=> (= (ControlFlow 0 1072119) 1072141) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_414242| stream@@0) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@0) v@@51) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1072007) 1072119)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_453446| $t7)) 0) (= (seq.len (|p#$Mutation_453446| $t14)) 0)) (and (= (seq.len (|p#$Mutation_16758| $t24)) 0) (= (ControlFlow 0 1072017) 1072007))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 1861287) 1072017) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_454860)
(declare-fun $t2 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t3 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_454860)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_454860)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_454860)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1862406) (let ((L2_correct  (and (=> (= (ControlFlow 0 1073711) (- 0 1863152)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 1073711) (- 0 1863183)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct  (=> $t6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 1073599) 1073711))) L2_correct))))
(let ((anon12_Then_correct  (=> $t3 (=> (and (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 1073741) 1073711))) L2_correct))))
(let ((anon11_Then_correct  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 1073767) 1073711))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (and (=> (= (ControlFlow 0 1073557) (- 0 1862798)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 1073557) (- 0 1862808)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 1073557) (- 0 1862822)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 1073557) (- 0 1862833)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 1073557) (- 0 1862843)) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (and (=> (= (ControlFlow 0 1073557) (- 0 1862852)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0) (and (=> (= (ControlFlow 0 1073557) (- 0 1862867)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@0)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@0)) 1))))
 :qid |AccountFreezingandybpl.5760:15|
 :skolemid |140|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@1)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@1)) 1))))
 :qid |AccountFreezingandybpl.5760:15|
 :skolemid |140|
)) (and (=> (= (ControlFlow 0 1073557) (- 0 1862914)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@2)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |AccountFreezingandybpl.5764:15|
 :skolemid |141|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@3)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |AccountFreezingandybpl.5764:15|
 :skolemid |141|
)) (and (=> (= (ControlFlow 0 1073557) (- 0 1862961)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@4)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@4)) 4))))
 :qid |AccountFreezingandybpl.5768:15|
 :skolemid |142|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@5)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@5)) 4))))
 :qid |AccountFreezingandybpl.5768:15|
 :skolemid |142|
)) (and (=> (= (ControlFlow 0 1073557) (- 0 1863008)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@6)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@6)) 2))))
 :qid |AccountFreezingandybpl.5772:15|
 :skolemid |143|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@7)) 2))))
 :qid |AccountFreezingandybpl.5772:15|
 :skolemid |143|
)) (and (=> (= (ControlFlow 0 1073557) (- 0 1863055)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@8)) 5))))
 :qid |AccountFreezingandybpl.5776:15|
 :skolemid |144|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@9)) 5))))
 :qid |AccountFreezingandybpl.5776:15|
 :skolemid |144|
)) (=> (= (ControlFlow 0 1073557) (- 0 1863102)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2) addr@@10)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@10)) 6))))
 :qid |AccountFreezingandybpl.5780:15|
 :skolemid |145|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) false) (|contents#$Memory_454860| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 1073151) 1073557))) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 1073571) 1073557))) anon9_correct)))
(let ((anon13_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 1073137) 1073571) anon14_Then_correct) (=> (= (ControlFlow 0 1073137) 1073151) anon14_Else_correct)))))
(let ((anon12_Else_correct  (=> (not $t3) (=> (and (|$IsValid'u64'| 0) (= $t5 (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 1073131) (- 0 1862648)) (=> (= 0 0) (= $t5 173345816))) (=> (=> (= 0 0) (= $t5 173345816)) (and (=> (= (ControlFlow 0 1073131) (- 0 1862664)) (=> (= 0 1) (= $t5 186537453))) (=> (=> (= 0 1) (= $t5 186537453)) (and (=> (= (ControlFlow 0 1073131) (- 0 1862680)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0)) (=> (= $t6 (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 1073131) 1073599) anon13_Then_correct) (=> (= (ControlFlow 0 1073131) 1073137) anon13_Else_correct)))))))))))))
(let ((anon11_Else_correct  (=> (and (not $t1) (= $t3  (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (and (=> (= (ControlFlow 0 1073053) 1073741) anon12_Then_correct) (=> (= (ControlFlow 0 1073053) 1073131) anon12_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |AccountFreezingandybpl.5574:20|
 :skolemid |138|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
))) (=> (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |AccountFreezingandybpl.5578:20|
 :skolemid |139|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@1))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 1073031) 1073767) anon11_Then_correct) (=> (= (ControlFlow 0 1073031) 1073053) anon11_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_414242| stream@@1) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@1) v@@52) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1072923) 1073031)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 1862406) 1072923) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_457889)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_454860)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_457989)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_458076)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_458136)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_458221)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_458306)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_458404)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_458504)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_458604)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_458704)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_454860)
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
 (=> (= (ControlFlow 0 0) 1863261) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 1074717) (- 0 1863878)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_457889| $1_DiemAccount_DiemAccount_$memory) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@11)))
 :qid |AccountFreezingandybpl.5997:15|
 :skolemid |156|
))) (=> (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_457889| $1_DiemAccount_DiemAccount_$memory) addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@12)))
 :qid |AccountFreezingandybpl.5997:15|
 :skolemid |156|
)) (and (=> (= (ControlFlow 0 1074717) (- 0 1863903)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@13)) 1))))
 :qid |AccountFreezingandybpl.6003:15|
 :skolemid |157|
))) (=> (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) addr@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@14)) 1))))
 :qid |AccountFreezingandybpl.6003:15|
 :skolemid |157|
)) (and (=> (= (ControlFlow 0 1074717) (- 0 1863928)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_458076| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_458136| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@15)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@15)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@15)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@15)) 2)))))
 :qid |AccountFreezingandybpl.6009:15|
 :skolemid |158|
))) (=> (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_458076| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_458136| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@16)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@16)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@16)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@16)) 2)))))
 :qid |AccountFreezingandybpl.6009:15|
 :skolemid |158|
)) (and (=> (= (ControlFlow 0 1074717) (- 0 1863961)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458221| $1_DesignatedDealer_Dealer_$memory) addr@@17) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@17)) 2))))
 :qid |AccountFreezingandybpl.6015:15|
 :skolemid |159|
))) (=> (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458221| $1_DesignatedDealer_Dealer_$memory) addr@@18) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@18)) 2))))
 :qid |AccountFreezingandybpl.6015:15|
 :skolemid |159|
)) (and (=> (= (ControlFlow 0 1074717) (- 0 1863986)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458306| $1_DualAttestation_Credential_$memory) addr@@19) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@19)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@19)) 5)))))
 :qid |AccountFreezingandybpl.6021:15|
 :skolemid |160|
))) (=> (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458306| $1_DualAttestation_Credential_$memory) addr@@20) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@20)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@20)) 5)))))
 :qid |AccountFreezingandybpl.6021:15|
 :skolemid |160|
)) (and (=> (= (ControlFlow 0 1074717) (- 0 1864018)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@21) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@21)) 3))))
 :qid |AccountFreezingandybpl.6027:15|
 :skolemid |161|
))) (=> (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@22) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@22)) 3))))
 :qid |AccountFreezingandybpl.6027:15|
 :skolemid |161|
)) (and (=> (= (ControlFlow 0 1074717) (- 0 1864043)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@23) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@23)) 4))))
 :qid |AccountFreezingandybpl.6033:15|
 :skolemid |162|
))) (=> (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@24) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@24)) 4))))
 :qid |AccountFreezingandybpl.6033:15|
 :skolemid |162|
)) (and (=> (= (ControlFlow 0 1074717) (- 0 1864068)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458604| $1_VASP_ParentVASP_$memory) addr@@25) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@25)) 5))))
 :qid |AccountFreezingandybpl.6039:15|
 :skolemid |163|
))) (=> (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458604| $1_VASP_ParentVASP_$memory) addr@@26) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@26)) 5))))
 :qid |AccountFreezingandybpl.6039:15|
 :skolemid |163|
)) (and (=> (= (ControlFlow 0 1074717) (- 0 1864093)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458704| $1_VASP_ChildVASP_$memory) addr@@27) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@27)) 6))))
 :qid |AccountFreezingandybpl.6045:15|
 :skolemid |164|
))) (=> (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458704| $1_VASP_ChildVASP_$memory) addr@@28) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) addr@@28)) 6))))
 :qid |AccountFreezingandybpl.6045:15|
 :skolemid |164|
)) (and (=> (= (ControlFlow 0 1074717) (- 0 1864121)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 1074717) (- 0 1864132)) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 1074717) (- 0 1864141)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) _$t1@@0)))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 1074163) (- 0 1863848)) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 1074163) (- 0 1863854)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t10@0)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0 $abort_code@1@@0) (= (ControlFlow 0 1074731) 1074163))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1074783) 1074731) anon12_Then_correct@@0) (=> (= (ControlFlow 0 1074783) 1074717) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 1074781) 1074783)) anon11_Then$1_correct)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) $t11@0@@0))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 1074428) 1074731) anon12_Then_correct@@0) (=> (= (ControlFlow 0 1074428) 1074717) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0@@0 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 1074406) (- 0 1863505)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1)) (=> (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_457889| $1_DiemAccount_DiemAccount_$memory) addr@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@29)))
 :qid |AccountFreezingandybpl.5945:20|
 :skolemid |147|
)) (=> (and (and (and (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) addr@@30) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@30)) 1))))
 :qid |AccountFreezingandybpl.5949:20|
 :skolemid |148|
)) (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_458076| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@31) (|Select__T@[Int]Bool_| (|domain#$Memory_458136| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@31)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@31)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@31)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@31)) 2)))))
 :qid |AccountFreezingandybpl.5953:20|
 :skolemid |149|
))) (and (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458221| $1_DesignatedDealer_Dealer_$memory) addr@@32) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@32)) 2))))
 :qid |AccountFreezingandybpl.5957:20|
 :skolemid |150|
)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458306| $1_DualAttestation_Credential_$memory) addr@@33) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@33)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@33)) 5)))))
 :qid |AccountFreezingandybpl.5961:20|
 :skolemid |151|
)))) (and (and (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@34) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@34)) 3))))
 :qid |AccountFreezingandybpl.5965:20|
 :skolemid |152|
)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@35) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@35)) 4))))
 :qid |AccountFreezingandybpl.5969:20|
 :skolemid |153|
))) (and (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458604| $1_VASP_ParentVASP_$memory) addr@@36) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@36)) 5))))
 :qid |AccountFreezingandybpl.5973:20|
 :skolemid |154|
)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458704| $1_VASP_ChildVASP_$memory) addr@@37) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@37)) 6))))
 :qid |AccountFreezingandybpl.5977:20|
 :skolemid |155|
))))) (and (=> (= (ControlFlow 0 1074406) 1074781) anon11_Then_correct@@0) (=> (= (ControlFlow 0 1074406) 1074428) anon11_Else_correct@@0)))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@0 $t9@@0)) (and (= $t10@0 $t9@@0) (= (ControlFlow 0 1074131) 1074163))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 6)) (and (= $t9@@0 $t9@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 1074115) 1074406) anon10_Then_correct) (=> (= (ControlFlow 0 1074115) 1074131) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 1074079) 1074115)) anon0$2_correct)))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |AccountFreezingandybpl.5841:20|
 :skolemid |146|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@2))
))) (and (= $t4 (|$addr#$signer| _$t0@@1)) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (and (= _$t0@@1 _$t0@@1) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5@@0) (= $t5@@0 (|$addr#$signer| _$t0@@1))) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@0)) (= (ControlFlow 0 1074085) 1074079)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_414242| stream@@2) 0) (forall ((v@@53 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@2) v@@53) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1073917) 1074085)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 1863261) 1073917) inline$$InitEventStore$0$anon0_correct@@1)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_454860)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_454860)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_454860)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1864161) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 1075946) (- 0 1865134)) (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 1075946) (- 0 1865200)) (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t4@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)) (= 6 $t4@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0))))))))
(let ((anon16_Then_correct  (=> $t10@@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)) (= 6 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 1075734) 1075946))) L2_correct@@0))))
(let ((anon15_Then_correct  (=> (and (and $t7@@0 (or (or (or (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)))) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 1076038) 1075946))) L2_correct@@0)))
(let ((anon14_Then_correct@@0  (=> $t5@@1 (=> (and (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 1076068) 1075946))) L2_correct@@0))))
(let ((anon13_Then_correct@@0  (=> $t3@@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 1076094) 1075946))) L2_correct@@0))))
(let ((anon11_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1)) (and (=> (= (ControlFlow 0 1075692) (- 0 1864736)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 1075692) (- 0 1864746)) (not (not (= (|$addr#$signer| _$t0@@2) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@2) 186537453))) (and (=> (= (ControlFlow 0 1075692) (- 0 1864760)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 1075692) (- 0 1864772)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 1075692) (- 0 1864790)) (not (not (= (|$addr#$signer| _$t1@@1) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@1) 173345816))) (and (=> (= (ControlFlow 0 1075692) (- 0 1864804)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 1075692) (- 0 1864815)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 1075692) (- 0 1864825)) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2)) (and (=> (= (ControlFlow 0 1075692) (- 0 1864834)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1) (and (=> (= (ControlFlow 0 1075692) (- 0 1864849)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@38)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@38)) 0))))
 :qid |AccountFreezingandybpl.6578:15|
 :skolemid |167|
))) (=> (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@39)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@39)) 0))))
 :qid |AccountFreezingandybpl.6578:15|
 :skolemid |167|
)) (and (=> (= (ControlFlow 0 1075692) (- 0 1864896)) (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@40)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@40)) 3))))
 :qid |AccountFreezingandybpl.6582:15|
 :skolemid |168|
))) (=> (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@41)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@41)) 3))))
 :qid |AccountFreezingandybpl.6582:15|
 :skolemid |168|
)) (and (=> (= (ControlFlow 0 1075692) (- 0 1864943)) (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@42)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@42)) 4))))
 :qid |AccountFreezingandybpl.6586:15|
 :skolemid |169|
))) (=> (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@43)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@43)) 4))))
 :qid |AccountFreezingandybpl.6586:15|
 :skolemid |169|
)) (and (=> (= (ControlFlow 0 1075692) (- 0 1864990)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@44)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@44)) 2))))
 :qid |AccountFreezingandybpl.6590:15|
 :skolemid |170|
))) (=> (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@45)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@45)) 2))))
 :qid |AccountFreezingandybpl.6590:15|
 :skolemid |170|
)) (and (=> (= (ControlFlow 0 1075692) (- 0 1865037)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@46)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@46)) 5))))
 :qid |AccountFreezingandybpl.6594:15|
 :skolemid |171|
))) (=> (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@47)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@47)) 5))))
 :qid |AccountFreezingandybpl.6594:15|
 :skolemid |171|
)) (=> (= (ControlFlow 0 1075692) (- 0 1865084)) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@0) addr@@48)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@48)) 6))))
 :qid |AccountFreezingandybpl.6598:15|
 :skolemid |172|
))))))))))))))))))))))))))))))))))
(let ((anon17_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_Roles_RoleId_$memory@1@@1 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) false) (|contents#$Memory_454860| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@1) (= (ControlFlow 0 1075242) 1075692))) anon11_correct)))
(let ((anon17_Then_correct  (=> (and (and |$temp_0'bool'@0@@0| (= $1_Roles_RoleId_$memory@0@@1 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) |$temp_0'$1_Roles_RoleId'@0@@0|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@1) (= (ControlFlow 0 1075706) 1075692))) anon11_correct)))
(let ((anon16_Else_correct  (=> (not $t10@@0) (and (=> (= (ControlFlow 0 1075228) 1075706) anon17_Then_correct) (=> (= (ControlFlow 0 1075228) 1075242) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (not $t7@@0) (=> (and (|$IsValid'u64'| 1) (= $t9@@1 (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 1075222) (- 0 1864586)) (=> (= 1 0) (= $t9@@1 173345816))) (=> (=> (= 1 0) (= $t9@@1 173345816)) (and (=> (= (ControlFlow 0 1075222) (- 0 1864602)) (=> (= 1 1) (= $t9@@1 186537453))) (=> (=> (= 1 1) (= $t9@@1 186537453)) (and (=> (= (ControlFlow 0 1075222) (- 0 1864618)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2)) (=> (= $t10@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 1075222) 1075734) anon16_Then_correct) (=> (= (ControlFlow 0 1075222) 1075228) anon16_Else_correct)))))))))))))
(let ((anon14_Else_correct@@0  (=> (not $t5@@1) (=> (and (= $t6@@0 (|$addr#$signer| _$t1@@1)) (= $t7@@0  (or (or (or (not (= (|$addr#$signer| _$t1@@1) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))))) (and (=> (= (ControlFlow 0 1075144) 1076038) anon15_Then_correct) (=> (= (ControlFlow 0 1075144) 1075222) anon15_Else_correct))))))
(let ((anon13_Else_correct@@0  (=> (and (not $t3@@0) (= $t5@@1  (not (= (|$addr#$signer| _$t0@@2) 186537453)))) (and (=> (= (ControlFlow 0 1075072) 1076068) anon14_Then_correct@@0) (=> (= (ControlFlow 0 1075072) 1075144) anon14_Else_correct@@0)))))
(let ((anon0$1_correct@@2  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@2))) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@1)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@3))
 :qid |AccountFreezingandybpl.6335:20|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |AccountFreezingandybpl.6339:20|
 :skolemid |166|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@4))
)) (= $t2@@0 (|$addr#$signer| _$t1@@1)))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2)) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@1 _$t1@@1) (= $t3@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 1075050) 1076094) anon13_Then_correct@@0) (=> (= (ControlFlow 0 1075050) 1075072) anon13_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_414242| stream@@3) 0) (forall ((v@@54 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@3) v@@54) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1074922) 1075050)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 1864161) 1074922) inline$$InitEventStore$0$anon0_correct@@2)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_454860)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_454860)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_454860)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@3 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1865337) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 1077141) (- 0 1866108)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (=> (= (ControlFlow 0 1077141) (- 0 1866162)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $t6@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@1)) (= 5 $t6@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@1)) 5)) (= 3 $t6@@1))))))))
(let ((anon10_Then_correct@@0  (=> $t9@@2 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@1)) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 1076973) 1077141))) L2_correct@@1))))
(let ((anon9_Then_correct  (=> (and (and $t5@@2 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@1)) 5)) (= 3 $t6@@1)))) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 1077193) 1077141))) L2_correct@@1)))
(let ((anon7_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6)) (and (=> (= (ControlFlow 0 1076931) (- 0 1865728)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 1076931) (- 0 1865740)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 1076931) (- 0 1865758)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 1076931) (- 0 1865769)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 1076931) (- 0 1865781)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (and (=> (= (ControlFlow 0 1076931) (- 0 1865799)) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2)) (and (=> (= (ControlFlow 0 1076931) (- 0 1865808)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6) (and (=> (= (ControlFlow 0 1076931) (- 0 1865823)) (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@49)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@49)) 0))))
 :qid |AccountFreezingandybpl.7312:15|
 :skolemid |174|
))) (=> (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@50)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@50)) 0))))
 :qid |AccountFreezingandybpl.7312:15|
 :skolemid |174|
)) (and (=> (= (ControlFlow 0 1076931) (- 0 1865870)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@51)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@51)) 1))))
 :qid |AccountFreezingandybpl.7316:15|
 :skolemid |175|
))) (=> (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@52)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@52)) 1))))
 :qid |AccountFreezingandybpl.7316:15|
 :skolemid |175|
)) (and (=> (= (ControlFlow 0 1076931) (- 0 1865917)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@53)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@53)) 3))))
 :qid |AccountFreezingandybpl.7320:15|
 :skolemid |176|
))) (=> (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@54)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@54)) 3))))
 :qid |AccountFreezingandybpl.7320:15|
 :skolemid |176|
)) (and (=> (= (ControlFlow 0 1076931) (- 0 1865964)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@55)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@55)) 4))))
 :qid |AccountFreezingandybpl.7324:15|
 :skolemid |177|
))) (=> (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@56)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@56)) 4))))
 :qid |AccountFreezingandybpl.7324:15|
 :skolemid |177|
)) (and (=> (= (ControlFlow 0 1076931) (- 0 1866011)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@57)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@57)) 2))))
 :qid |AccountFreezingandybpl.7328:15|
 :skolemid |178|
))) (=> (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@58)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@58)) 2))))
 :qid |AccountFreezingandybpl.7328:15|
 :skolemid |178|
)) (=> (= (ControlFlow 0 1076931) (- 0 1866058)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@1) addr@@59)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@59)) 5))))
 :qid |AccountFreezingandybpl.7332:15|
 :skolemid |179|
))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_Roles_RoleId_$memory@1@@2 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) false) (|contents#$Memory_454860| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@1@@2) (= (ControlFlow 0 1076499) 1076931))) anon7_correct)))
(let ((anon11_Then_correct@@1  (=> (and (and |$temp_0'bool'@0@@1| (= $1_Roles_RoleId_$memory@0@@2 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) |$temp_0'$1_Roles_RoleId'@0@@1|)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@0@@2) (= (ControlFlow 0 1076945) 1076931))) anon7_correct)))
(let ((anon10_Else_correct@@0  (=> (not $t9@@2) (and (=> (= (ControlFlow 0 1076485) 1076945) anon11_Then_correct@@1) (=> (= (ControlFlow 0 1076485) 1076499) anon11_Else_correct@@1)))))
(let ((anon9_Else_correct  (=> (not $t5@@2) (=> (and (|$IsValid'u64'| 6) (= $t8 (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 1076479) (- 0 1865578)) (=> (= 6 0) (= $t8 173345816))) (=> (=> (= 6 0) (= $t8 173345816)) (and (=> (= (ControlFlow 0 1076479) (- 0 1865594)) (=> (= 6 1) (= $t8 186537453))) (=> (=> (= 6 1) (= $t8 186537453)) (and (=> (= (ControlFlow 0 1076479) (- 0 1865610)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2)) (=> (= $t9@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 1076479) 1076973) anon10_Then_correct@@0) (=> (= (ControlFlow 0 1076479) 1076485) anon10_Else_correct@@0)))))))))))))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'address'| (|$addr#$signer| _$t1@@2))) (=> (and (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |AccountFreezingandybpl.7143:20|
 :skolemid |173|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@5))
)) (= $t2@@1 (|$addr#$signer| _$t0@@3))) (and (= $t3@@1 (|$addr#$signer| _$t0@@3)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2)))) (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@2 _$t1@@2)) (and (= $t4@@1 (|$addr#$signer| _$t0@@3)) (= $t5@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@1)) 5))))))) (and (=> (= (ControlFlow 0 1076401) 1077193) anon9_Then_correct) (=> (= (ControlFlow 0 1076401) 1076479) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_414242| stream@@4) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@4) v@@55) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1076271) 1076401)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 1865337) 1076271) inline$$InitEventStore$0$anon0_correct@@3)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_454860)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_454860)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_454860)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1866271) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 1078322) (- 0 1867100)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (=> (= (ControlFlow 0 1078322) (- 0 1867176)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@2)) (= 5 $t6@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2))))))))
(let ((anon10_Then_correct@@1  (=> $t9@@3 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@2)) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 1078090) 1078322))) L2_correct@@2))))
(let ((anon9_Then_correct@@0  (=> (and (and $t5@@3 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2)))) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 1078394) 1078322))) L2_correct@@2)))
(let ((anon7_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2)) (and (=> (= (ControlFlow 0 1078048) (- 0 1866692)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@2))) (and (=> (= (ControlFlow 0 1078048) (- 0 1866704)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (and (=> (= (ControlFlow 0 1078048) (- 0 1866722)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 1078048) (- 0 1866736)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 1078048) (- 0 1866747)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@2))) (and (=> (= (ControlFlow 0 1078048) (- 0 1866759)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (and (=> (= (ControlFlow 0 1078048) (- 0 1866777)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 1078048) (- 0 1866791)) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3)) (and (=> (= (ControlFlow 0 1078048) (- 0 1866800)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2) (and (=> (= (ControlFlow 0 1078048) (- 0 1866815)) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@60)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@60)) 0))))
 :qid |AccountFreezingandybpl.7718:15|
 :skolemid |181|
))) (=> (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@61)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@61)) 0))))
 :qid |AccountFreezingandybpl.7718:15|
 :skolemid |181|
)) (and (=> (= (ControlFlow 0 1078048) (- 0 1866862)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@62)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@62)) 1))))
 :qid |AccountFreezingandybpl.7722:15|
 :skolemid |182|
))) (=> (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@63)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@63)) 1))))
 :qid |AccountFreezingandybpl.7722:15|
 :skolemid |182|
)) (and (=> (= (ControlFlow 0 1078048) (- 0 1866909)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@64)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@64)) 3))))
 :qid |AccountFreezingandybpl.7726:15|
 :skolemid |183|
))) (=> (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@65)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@65)) 3))))
 :qid |AccountFreezingandybpl.7726:15|
 :skolemid |183|
)) (and (=> (= (ControlFlow 0 1078048) (- 0 1866956)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@66)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@66)) 4))))
 :qid |AccountFreezingandybpl.7730:15|
 :skolemid |184|
))) (=> (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@67)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@67)) 4))))
 :qid |AccountFreezingandybpl.7730:15|
 :skolemid |184|
)) (and (=> (= (ControlFlow 0 1078048) (- 0 1867003)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@68)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@68)) 5))))
 :qid |AccountFreezingandybpl.7734:15|
 :skolemid |185|
))) (=> (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@69)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@69)) 5))))
 :qid |AccountFreezingandybpl.7734:15|
 :skolemid |185|
)) (=> (= (ControlFlow 0 1078048) (- 0 1867050)) (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@2) addr@@70)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@70)) 6))))
 :qid |AccountFreezingandybpl.7738:15|
 :skolemid |186|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@0@@2|) (= $1_Roles_RoleId_$memory@1@@3 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) false) (|contents#$Memory_454860| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@1@@3) (= (ControlFlow 0 1077588) 1078048))) anon7_correct@@0)))
(let ((anon11_Then_correct@@2  (=> (and (and |$temp_0'bool'@0@@2| (= $1_Roles_RoleId_$memory@0@@3 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) |$temp_0'$1_Roles_RoleId'@0@@2|)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@0@@3) (= (ControlFlow 0 1078062) 1078048))) anon7_correct@@0)))
(let ((anon10_Else_correct@@1  (=> (not $t9@@3) (and (=> (= (ControlFlow 0 1077574) 1078062) anon11_Then_correct@@2) (=> (= (ControlFlow 0 1077574) 1077588) anon11_Else_correct@@2)))))
(let ((anon9_Else_correct@@0  (=> (not $t5@@3) (=> (and (|$IsValid'u64'| 2) (= $t8@@0 (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 1077568) (- 0 1866542)) (=> (= 2 0) (= $t8@@0 173345816))) (=> (=> (= 2 0) (= $t8@@0 173345816)) (and (=> (= (ControlFlow 0 1077568) (- 0 1866558)) (=> (= 2 1) (= $t8@@0 186537453))) (=> (=> (= 2 1) (= $t8@@0 186537453)) (and (=> (= (ControlFlow 0 1077568) (- 0 1866574)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3)) (=> (= $t9@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 1077568) 1078090) anon10_Then_correct@@1) (=> (= (ControlFlow 0 1077568) 1077574) anon10_Else_correct@@1)))))))))))))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3))) (=> (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |AccountFreezingandybpl.7539:20|
 :skolemid |180|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@6))
)) (= $t2@@2 (|$addr#$signer| _$t0@@4))) (and (= $t3@@2 (|$addr#$signer| _$t0@@4)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3)))) (and (and (= _$t0@@4 _$t0@@4) (= _$t1@@3 _$t1@@3)) (and (= $t4@@2 (|$addr#$signer| _$t0@@4)) (= $t5@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))))))) (and (=> (= (ControlFlow 0 1077490) 1078394) anon9_Then_correct@@0) (=> (= (ControlFlow 0 1077490) 1077568) anon9_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_414242| stream@@5) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@5) v@@56) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1077348) 1077490)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 1866271) 1077348) inline$$InitEventStore$0$anon0_correct@@4)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_454860)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_454860)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_454860)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1867323) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 1079531) (- 0 1868152)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (=> (= (ControlFlow 0 1079531) (- 0 1868228)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t6@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3))))))))
(let ((anon10_Then_correct@@2  (=> $t9@@4 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@3)) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 1079299) 1079531))) L2_correct@@3))))
(let ((anon9_Then_correct@@1  (=> (and (and $t5@@4 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3)))) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 1079603) 1079531))) L2_correct@@3)))
(let ((anon7_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5)) (and (=> (= (ControlFlow 0 1079257) (- 0 1867744)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@3))) (and (=> (= (ControlFlow 0 1079257) (- 0 1867756)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (and (=> (= (ControlFlow 0 1079257) (- 0 1867774)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 1079257) (- 0 1867788)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 1079257) (- 0 1867799)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 1079257) (- 0 1867811)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (and (=> (= (ControlFlow 0 1079257) (- 0 1867829)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 1079257) (- 0 1867843)) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4)) (and (=> (= (ControlFlow 0 1079257) (- 0 1867852)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5) (and (=> (= (ControlFlow 0 1079257) (- 0 1867867)) (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@71)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@71)) 0))))
 :qid |AccountFreezingandybpl.8124:15|
 :skolemid |188|
))) (=> (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@72)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@72)) 0))))
 :qid |AccountFreezingandybpl.8124:15|
 :skolemid |188|
)) (and (=> (= (ControlFlow 0 1079257) (- 0 1867914)) (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@73)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@73)) 1))))
 :qid |AccountFreezingandybpl.8128:15|
 :skolemid |189|
))) (=> (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@74)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@74)) 1))))
 :qid |AccountFreezingandybpl.8128:15|
 :skolemid |189|
)) (and (=> (= (ControlFlow 0 1079257) (- 0 1867961)) (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@75)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@75)) 3))))
 :qid |AccountFreezingandybpl.8132:15|
 :skolemid |190|
))) (=> (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@76)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@76)) 3))))
 :qid |AccountFreezingandybpl.8132:15|
 :skolemid |190|
)) (and (=> (= (ControlFlow 0 1079257) (- 0 1868008)) (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@77)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@77)) 4))))
 :qid |AccountFreezingandybpl.8136:15|
 :skolemid |191|
))) (=> (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@78)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@78)) 4))))
 :qid |AccountFreezingandybpl.8136:15|
 :skolemid |191|
)) (and (=> (= (ControlFlow 0 1079257) (- 0 1868055)) (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@79)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@79)) 2))))
 :qid |AccountFreezingandybpl.8140:15|
 :skolemid |192|
))) (=> (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@80)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@80)) 2))))
 :qid |AccountFreezingandybpl.8140:15|
 :skolemid |192|
)) (=> (= (ControlFlow 0 1079257) (- 0 1868102)) (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@3) addr@@81)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@81)) 6))))
 :qid |AccountFreezingandybpl.8144:15|
 :skolemid |193|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@3|) (= $1_Roles_RoleId_$memory@1@@4 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) false) (|contents#$Memory_454860| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@1@@4) (= (ControlFlow 0 1078797) 1079257))) anon7_correct@@1)))
(let ((anon11_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@3| (= $1_Roles_RoleId_$memory@0@@4 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) |$temp_0'$1_Roles_RoleId'@0@@3|)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@0@@4) (= (ControlFlow 0 1079271) 1079257))) anon7_correct@@1)))
(let ((anon10_Else_correct@@2  (=> (not $t9@@4) (and (=> (= (ControlFlow 0 1078783) 1079271) anon11_Then_correct@@3) (=> (= (ControlFlow 0 1078783) 1078797) anon11_Else_correct@@3)))))
(let ((anon9_Else_correct@@1  (=> (not $t5@@4) (=> (and (|$IsValid'u64'| 5) (= $t8@@1 (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 1078777) (- 0 1867594)) (=> (= 5 0) (= $t8@@1 173345816))) (=> (=> (= 5 0) (= $t8@@1 173345816)) (and (=> (= (ControlFlow 0 1078777) (- 0 1867610)) (=> (= 5 1) (= $t8@@1 186537453))) (=> (=> (= 5 1) (= $t8@@1 186537453)) (and (=> (= (ControlFlow 0 1078777) (- 0 1867626)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4)) (=> (= $t9@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 1078777) 1079299) anon10_Then_correct@@2) (=> (= (ControlFlow 0 1078777) 1078783) anon10_Else_correct@@2)))))))))))))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4))) (=> (and (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |AccountFreezingandybpl.7945:20|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@7))
)) (= $t2@@3 (|$addr#$signer| _$t0@@5))) (and (= $t3@@3 (|$addr#$signer| _$t0@@5)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4)))) (and (and (= _$t0@@5 _$t0@@5) (= _$t1@@4 _$t1@@4)) (and (= $t4@@3 (|$addr#$signer| _$t0@@5)) (= $t5@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))))))) (and (=> (= (ControlFlow 0 1078699) 1079603) anon9_Then_correct@@1) (=> (= (ControlFlow 0 1078699) 1078777) anon9_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_414242| stream@@6) 0) (forall ((v@@57 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@6) v@@57) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1078557) 1078699)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 1867323) 1078557) inline$$InitEventStore$0$anon0_correct@@5)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_454860)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_454860)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_454860)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@2 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1868375) (let ((L2_correct@@4  (and (=> (= (ControlFlow 0 1080752) (- 0 1869234)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (=> (= (ControlFlow 0 1080752) (- 0 1869310)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@4)) (= 5 $t6@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4))))))))
(let ((anon10_Then_correct@@3  (=> $t9@@5 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@4)) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 1080520) 1080752))) L2_correct@@4))))
(let ((anon9_Then_correct@@2  (=> (and (and $t5@@5 (or (or (or (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4)))) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 1080844) 1080752))) L2_correct@@4)))
(let ((anon7_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4)) (and (=> (= (ControlFlow 0 1080478) (- 0 1868826)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@4))) (and (=> (= (ControlFlow 0 1080478) (- 0 1868838)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (and (=> (= (ControlFlow 0 1080478) (- 0 1868856)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 1080478) (- 0 1868870)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 1080478) (- 0 1868881)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@4))) (and (=> (= (ControlFlow 0 1080478) (- 0 1868893)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (and (=> (= (ControlFlow 0 1080478) (- 0 1868911)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 1080478) (- 0 1868925)) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5)) (and (=> (= (ControlFlow 0 1080478) (- 0 1868934)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4) (and (=> (= (ControlFlow 0 1080478) (- 0 1868949)) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@82)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@82)) 0))))
 :qid |AccountFreezingandybpl.8530:15|
 :skolemid |195|
))) (=> (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@83)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@83)) 0))))
 :qid |AccountFreezingandybpl.8530:15|
 :skolemid |195|
)) (and (=> (= (ControlFlow 0 1080478) (- 0 1868996)) (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@84)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@84)) 1))))
 :qid |AccountFreezingandybpl.8534:15|
 :skolemid |196|
))) (=> (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@85)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@85)) 1))))
 :qid |AccountFreezingandybpl.8534:15|
 :skolemid |196|
)) (and (=> (= (ControlFlow 0 1080478) (- 0 1869043)) (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@86)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@86)) 3))))
 :qid |AccountFreezingandybpl.8538:15|
 :skolemid |197|
))) (=> (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@87)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@87)) 3))))
 :qid |AccountFreezingandybpl.8538:15|
 :skolemid |197|
)) (and (=> (= (ControlFlow 0 1080478) (- 0 1869090)) (forall ((addr@@88 Int) ) (!  (=> (|$IsValid'address'| addr@@88) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@88)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@88)) 2))))
 :qid |AccountFreezingandybpl.8542:15|
 :skolemid |198|
))) (=> (forall ((addr@@89 Int) ) (!  (=> (|$IsValid'address'| addr@@89) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@89)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@89)) 2))))
 :qid |AccountFreezingandybpl.8542:15|
 :skolemid |198|
)) (and (=> (= (ControlFlow 0 1080478) (- 0 1869137)) (forall ((addr@@90 Int) ) (!  (=> (|$IsValid'address'| addr@@90) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@90)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@90)) 5))))
 :qid |AccountFreezingandybpl.8546:15|
 :skolemid |199|
))) (=> (forall ((addr@@91 Int) ) (!  (=> (|$IsValid'address'| addr@@91) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@91)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@91)) 5))))
 :qid |AccountFreezingandybpl.8546:15|
 :skolemid |199|
)) (=> (= (ControlFlow 0 1080478) (- 0 1869184)) (forall ((addr@@92 Int) ) (!  (=> (|$IsValid'address'| addr@@92) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@4) addr@@92)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@92)) 6))))
 :qid |AccountFreezingandybpl.8550:15|
 :skolemid |200|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@4|) (= $1_Roles_RoleId_$memory@1@@5 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) false) (|contents#$Memory_454860| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@1@@5) (= (ControlFlow 0 1080018) 1080478))) anon7_correct@@2)))
(let ((anon11_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@4| (= $1_Roles_RoleId_$memory@0@@5 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) |$temp_0'$1_Roles_RoleId'@0@@4|)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@0@@5) (= (ControlFlow 0 1080492) 1080478))) anon7_correct@@2)))
(let ((anon10_Else_correct@@3  (=> (not $t9@@5) (and (=> (= (ControlFlow 0 1080004) 1080492) anon11_Then_correct@@4) (=> (= (ControlFlow 0 1080004) 1080018) anon11_Else_correct@@4)))))
(let ((anon9_Else_correct@@2  (=> (not $t5@@5) (=> (and (|$IsValid'u64'| 4) (= $t8@@2 (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 1079998) (- 0 1868676)) (=> (= 4 0) (= $t8@@2 173345816))) (=> (=> (= 4 0) (= $t8@@2 173345816)) (and (=> (= (ControlFlow 0 1079998) (- 0 1868692)) (=> (= 4 1) (= $t8@@2 186537453))) (=> (=> (= 4 1) (= $t8@@2 186537453)) (and (=> (= (ControlFlow 0 1079998) (- 0 1868708)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5)) (=> (= $t9@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 1079998) 1080520) anon10_Then_correct@@3) (=> (= (ControlFlow 0 1079998) 1080004) anon10_Else_correct@@3)))))))))))))
(let ((anon0$1_correct@@6  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) (|$IsValid'address'| (|$addr#$signer| _$t1@@5))) (=> (and (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |AccountFreezingandybpl.8351:20|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@8))
)) (= $t2@@4 (|$addr#$signer| _$t0@@6))) (and (= $t3@@4 (|$addr#$signer| _$t0@@6)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5)))) (and (and (= _$t0@@6 _$t0@@6) (= _$t1@@5 _$t1@@5)) (and (= $t4@@4 (|$addr#$signer| _$t0@@6)) (= $t5@@5  (or (or (or (not (= (|$addr#$signer| _$t0@@6) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))))))) (and (=> (= (ControlFlow 0 1079920) 1080844) anon9_Then_correct@@2) (=> (= (ControlFlow 0 1079920) 1079998) anon9_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_414242| stream@@7) 0) (forall ((v@@58 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@7) v@@58) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1079766) 1079920)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 1868375) 1079766) inline$$InitEventStore$0$anon0_correct@@6)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_454860)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_454860)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_454860)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1869457) (let ((L2_correct@@5  (and (=> (= (ControlFlow 0 1081995) (- 0 1870316)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (=> (= (ControlFlow 0 1081995) (- 0 1870392)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@5)) (= 5 $t6@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@5))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5))))))))
(let ((anon10_Then_correct@@4  (=> $t9@@6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@5)) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 1081763) 1081995))) L2_correct@@5))))
(let ((anon9_Then_correct@@3  (=> (and (and $t5@@6 (or (or (or (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5)))) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 1082087) 1081995))) L2_correct@@5)))
(let ((anon7_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3)) (and (=> (= (ControlFlow 0 1081721) (- 0 1869908)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@5))) (and (=> (= (ControlFlow 0 1081721) (- 0 1869920)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (and (=> (= (ControlFlow 0 1081721) (- 0 1869938)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 1081721) (- 0 1869952)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 1081721) (- 0 1869963)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@5))) (and (=> (= (ControlFlow 0 1081721) (- 0 1869975)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (and (=> (= (ControlFlow 0 1081721) (- 0 1869993)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 1081721) (- 0 1870007)) (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6)) (and (=> (= (ControlFlow 0 1081721) (- 0 1870016)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3) (and (=> (= (ControlFlow 0 1081721) (- 0 1870031)) (forall ((addr@@93 Int) ) (!  (=> (|$IsValid'address'| addr@@93) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@93)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@93)) 0))))
 :qid |AccountFreezingandybpl.8936:15|
 :skolemid |202|
))) (=> (forall ((addr@@94 Int) ) (!  (=> (|$IsValid'address'| addr@@94) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@94)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@94)) 0))))
 :qid |AccountFreezingandybpl.8936:15|
 :skolemid |202|
)) (and (=> (= (ControlFlow 0 1081721) (- 0 1870078)) (forall ((addr@@95 Int) ) (!  (=> (|$IsValid'address'| addr@@95) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@95)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@95)) 1))))
 :qid |AccountFreezingandybpl.8940:15|
 :skolemid |203|
))) (=> (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@96)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@96)) 1))))
 :qid |AccountFreezingandybpl.8940:15|
 :skolemid |203|
)) (and (=> (= (ControlFlow 0 1081721) (- 0 1870125)) (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@97)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@97)) 4))))
 :qid |AccountFreezingandybpl.8944:15|
 :skolemid |204|
))) (=> (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@98)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@98)) 4))))
 :qid |AccountFreezingandybpl.8944:15|
 :skolemid |204|
)) (and (=> (= (ControlFlow 0 1081721) (- 0 1870172)) (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@99)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@99)) 2))))
 :qid |AccountFreezingandybpl.8948:15|
 :skolemid |205|
))) (=> (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@100)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@100)) 2))))
 :qid |AccountFreezingandybpl.8948:15|
 :skolemid |205|
)) (and (=> (= (ControlFlow 0 1081721) (- 0 1870219)) (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@101)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@101)) 5))))
 :qid |AccountFreezingandybpl.8952:15|
 :skolemid |206|
))) (=> (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@102) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@102)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@102) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@102)) 5))))
 :qid |AccountFreezingandybpl.8952:15|
 :skolemid |206|
)) (=> (= (ControlFlow 0 1081721) (- 0 1870266)) (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@103) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory@2@@5) addr@@103)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@103) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@103)) 6))))
 :qid |AccountFreezingandybpl.8956:15|
 :skolemid |207|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_Roles_RoleId_$memory@1@@6 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) false) (|contents#$Memory_454860| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@1@@6) (= (ControlFlow 0 1081261) 1081721))) anon7_correct@@3)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@5| (= $1_Roles_RoleId_$memory@0@@6 ($Memory_454860 (|Store__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) |$temp_0'$1_Roles_RoleId'@0@@5|)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@0@@6) (= (ControlFlow 0 1081735) 1081721))) anon7_correct@@3)))
(let ((anon10_Else_correct@@4  (=> (not $t9@@6) (and (=> (= (ControlFlow 0 1081247) 1081735) anon11_Then_correct@@5) (=> (= (ControlFlow 0 1081247) 1081261) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct@@3  (=> (not $t5@@6) (=> (and (|$IsValid'u64'| 3) (= $t8@@3 (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 1081241) (- 0 1869758)) (=> (= 3 0) (= $t8@@3 173345816))) (=> (=> (= 3 0) (= $t8@@3 173345816)) (and (=> (= (ControlFlow 0 1081241) (- 0 1869774)) (=> (= 3 1) (= $t8@@3 186537453))) (=> (=> (= 3 1) (= $t8@@3 186537453)) (and (=> (= (ControlFlow 0 1081241) (- 0 1869790)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6)) (=> (= $t9@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 1081241) 1081763) anon10_Then_correct@@4) (=> (= (ControlFlow 0 1081241) 1081247) anon10_Else_correct@@4)))))))))))))
(let ((anon0$1_correct@@7  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@7)) (|$IsValid'address'| (|$addr#$signer| _$t1@@6))) (=> (and (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |AccountFreezingandybpl.8757:20|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@9))
)) (= $t2@@5 (|$addr#$signer| _$t0@@7))) (and (= $t3@@5 (|$addr#$signer| _$t0@@7)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6)))) (and (and (= _$t0@@7 _$t0@@7) (= _$t1@@6 _$t1@@6)) (and (= $t4@@5 (|$addr#$signer| _$t0@@7)) (= $t5@@6  (or (or (or (not (= (|$addr#$signer| _$t0@@7) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))))))) (and (=> (= (ControlFlow 0 1081163) 1082087) anon9_Then_correct@@3) (=> (= (ControlFlow 0 1081163) 1081241) anon9_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_414242| stream@@8) 0) (forall ((v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@8) v@@59) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1081009) 1081163)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 1869457) 1081009) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 () T@$Memory_458504)
(declare-fun $t5@@7 () Int)
(declare-fun _$t1@@7 () T@$signer)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t6@@6 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0 () T@$Memory_458504)
(declare-fun |Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| Int T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|)
(declare-fun |Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| Int) T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun $t17@0@@0 () T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun $t16 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 () Bool)
(declare-fun $t11@@0 () Bool)
(declare-fun $t8@@4 () Int)
(declare-fun $t10@@1 () Bool)
(declare-fun $t9@@7 () Int)
(declare-fun $t7@@1 () Bool)
(declare-fun $t12@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_ValidatorOperatorConfig_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1870540) (let ((anon24_Else_correct@@0  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 1083454) (- 0 1871727)) (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@104) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@104) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@104)) 4))))
 :qid |AccountFreezingandybpl.9568:15|
 :skolemid |214|
))) (=> (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@105) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@105) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@105)) 4))))
 :qid |AccountFreezingandybpl.9568:15|
 :skolemid |214|
)) (and (=> (= (ControlFlow 0 1083454) (- 0 1871755)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@7))) (and (=> (= (ControlFlow 0 1083454) (- 0 1871767)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@7)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@7)) 0))) (and (=> (= (ControlFlow 0 1083454) (- 0 1871785)) (not (not (= (|$addr#$signer| _$t1@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@7) 173345816))) (and (=> (= (ControlFlow 0 1083454) (- 0 1871799)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8)))) (and (=> (= (ControlFlow 0 1083454) (- 0 1871812)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4))) (and (=> (= (ControlFlow 0 1083454) (- 0 1871831)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@8)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@8))) (and (=> (= (ControlFlow 0 1083454) (- 0 1871842)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 1083454) (- 0 1871852)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@6))) (and (=> (= (ControlFlow 0 1083454) (- 0 1871864)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@6)) 0))) (and (=> (= (ControlFlow 0 1083454) (- 0 1871882)) (not (not (= (|$addr#$signer| _$t1@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@7) 173345816))) (and (=> (= (ControlFlow 0 1083454) (- 0 1871896)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8)))) (and (=> (= (ControlFlow 0 1083454) (- 0 1871909)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4))) (=> (= (ControlFlow 0 1083454) (- 0 1871928)) (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) (|$addr#$signer| _$t0@@8))))))))))))))))))))))))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 1083174) (- 0 1871362)) (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@7)) 0))) (not (= (|$addr#$signer| _$t1@@7) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4))) (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@6)) 0))) (not (= (|$addr#$signer| _$t1@@7) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4)))) (=> (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@7)) 0))) (not (= (|$addr#$signer| _$t1@@7) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4))) (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@6)) 0))) (not (= (|$addr#$signer| _$t1@@7) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4))) (=> (= (ControlFlow 0 1083174) (- 0 1871497)) (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@7)) (= 5 $t8@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@7)) 0)) (= 3 $t8@0))) (and (not (= (|$addr#$signer| _$t1@@7) 173345816)) (= 2 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) (= 5 $t8@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4)) (= 3 $t8@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@8)) (= 6 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@6)) (= 5 $t8@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t6@@6)) 0)) (= 3 $t8@0))) (and (not (= (|$addr#$signer| _$t1@@7) 173345816)) (= 2 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) (= 5 $t8@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4)) (= 3 $t8@0))))))))
(let ((anon24_Then_correct@@0  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t8@0 $abort_code@1@@1) (= (ControlFlow 0 1083468) 1083174))) L3_correct@@0)))
(let ((anon23_Then$1_correct  (=> (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1083520) 1083468) anon24_Then_correct@@0) (=> (= (ControlFlow 0 1083520) 1083454) anon24_Else_correct@@0))))))
(let ((anon23_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@8)) (= (ControlFlow 0 1083518) 1083520)) anon23_Then$1_correct)))
(let ((anon23_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@8))) (=> (and (and (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0 ($Memory_458504 (|Store__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@8) true) (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@8) $t17@0@@0))) (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 1083231) 1083468) anon24_Then_correct@@0) (=> (= (ControlFlow 0 1083231) 1083454) anon24_Else_correct@@0))))))
(let ((anon22_Then_correct@@0  (=> inline$$Not$0$dst@1@@0 (=> (and (= $t17@0@@0 ($1_ValidatorOperatorConfig_ValidatorOperatorConfig _$t2@@0)) (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@106) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@106)) 4))))
 :qid |AccountFreezingandybpl.9548:20|
 :skolemid |213|
))) (and (=> (= (ControlFlow 0 1083209) 1083518) anon23_Then_correct@@0) (=> (= (ControlFlow 0 1083209) 1083231) anon23_Else_correct@@0))))))
(let ((anon22_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t16 $t16)) (and (= $t8@0 $t16) (= (ControlFlow 0 1082766) 1083174))) L3_correct@@0)))
(let ((anon21_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t16) (= $t16 6)) (and (= $t16 $t16) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 1082750) 1083209) anon22_Then_correct@@0) (=> (= (ControlFlow 0 1082750) 1082766) anon22_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1)) (= (ControlFlow 0 1082710) 1082750)) anon21_Else$1_correct)))
(let ((anon21_Else_correct@@0  (=> (and (not false) (= (ControlFlow 0 1082716) 1082710)) inline$$Not$0$anon0_correct@@0)))
(let ((anon20_Then_correct@@0  (=> $t11@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) (= 5 $t8@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4)) (= 3 $t8@@4))) (= $t8@@4 $t8@@4)) (and (= $t8@0 $t8@@4) (= (ControlFlow 0 1083590) 1083174))) L3_correct@@0))))
(let ((anon19_Then_correct  (=> $t10@@1 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t1@@7) 173345816)) (= 2 $t8@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t9@@7)) (= 5 $t8@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t9@@7)) 0)) (= 3 $t8@@4))) (and (not (= (|$addr#$signer| _$t1@@7) 173345816)) (= 2 $t8@@4))) (= $t8@@4 $t8@@4)) (and (= $t8@0 $t8@@4) (= (ControlFlow 0 1083682) 1083174))) L3_correct@@0))))
(let ((anon18_Then_correct  (=> $t7@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t8@@4)) (= $t8@@4 $t8@@4)) (and (= $t8@0 $t8@@4) (= (ControlFlow 0 1083708) 1083174))) L3_correct@@0))))
(let ((anon21_Then_correct@@0 true))
(let ((inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct  (=> (= $t12@@0 $t12@@0) (=> (and (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t12@@0)) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1)) (and (=> (= (ControlFlow 0 1082666) 1083534) anon21_Then_correct@@0) (=> (= (ControlFlow 0 1082666) 1082716) anon21_Else_correct@@0))))))
(let ((anon20_Else_correct@@0  (=> (and (and (not $t11@@0) (|$IsValid'address'| $t12@@0)) (and (= $t12@@0 (|$addr#$signer| _$t0@@8)) (= (ControlFlow 0 1082672) 1082666))) inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct)))
(let ((anon19_Else_correct  (=> (and (not $t10@@1) (= $t11@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4))))) (and (=> (= (ControlFlow 0 1082549) 1083590) anon20_Then_correct@@0) (=> (= (ControlFlow 0 1082549) 1082672) anon20_Else_correct@@0)))))
(let ((anon18_Else_correct  (=> (not $t7@@1) (=> (and (= $t9@@7 (|$addr#$signer| _$t1@@7)) (= $t10@@1  (or (or (or (not (= (|$addr#$signer| _$t1@@7) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t9@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t9@@7)) 0))) (not (= (|$addr#$signer| _$t1@@7) 173345816))))) (and (=> (= (ControlFlow 0 1082509) 1083682) anon19_Then_correct) (=> (= (ControlFlow 0 1082509) 1082549) anon19_Else_correct))))))
(let ((anon0$1_correct@@8  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@107) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@107) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@107)) 4))))
 :qid |AccountFreezingandybpl.9325:20|
 :skolemid |209|
))) (=> (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@8)) (|$IsValid'address'| (|$addr#$signer| _$t1@@7))) (and (|$IsValid'vec'u8''| _$t2@@0) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@10))
 :qid |AccountFreezingandybpl.9337:20|
 :skolemid |210|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10))
)))) (=> (and (and (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@11)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@11))
 :qid |AccountFreezingandybpl.9341:20|
 :skolemid |211|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@11))
)) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@12)))
(|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| $rsc@@12))
 :qid |AccountFreezingandybpl.9345:20|
 :skolemid |212|
 :pattern ( (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@12))
))) (and (= $t5@@7 (|$addr#$signer| _$t1@@7)) (= $t6@@6 (|$addr#$signer| _$t1@@7)))) (and (and (= _$t0@@8 _$t0@@8) (= _$t1@@7 _$t1@@7)) (and (= _$t2@@0 _$t2@@0) (= $t7@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 1082437) 1083708) anon18_Then_correct) (=> (= (ControlFlow 0 1082437) 1082509) anon18_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_414242| stream@@9) 0) (forall ((v@@60 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@9) v@@60) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1082254) 1082437)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 1870540) 1082254) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8)))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1 () T@$Memory_458404)
(declare-fun _$t0@@9 () T@$signer)
(declare-fun $t5@@8 () Int)
(declare-fun _$t1@@8 () T@$signer)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t7@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0 () T@$Memory_458404)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int T@$1_ValidatorConfig_ValidatorConfig) |T@[Int]$1_ValidatorConfig_ValidatorConfig|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun $t18@0@@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t16@@0 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun $t17 () |T@$1_Option_Option'address'|)
(declare-fun _$t2@@1 () (Seq Int))
(declare-fun $t15 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t10@@2 () Bool)
(declare-fun $t11@@1 () Int)
(declare-fun $t7@@2 () Int)
(declare-fun $t9@@8 () Bool)
(declare-fun $t8@@5 () Int)
(declare-fun $t6@@7 () Bool)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1871945) (let ((anon21_Else_correct@@1  (=> (not $abort_flag@0@@2) (and (=> (= (ControlFlow 0 1084927) (- 0 1873059)) (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@108) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@108) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@108)) 3))))
 :qid |AccountFreezingandybpl.10482:15|
 :skolemid |229|
))) (=> (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@109) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@109) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@109)) 3))))
 :qid |AccountFreezingandybpl.10482:15|
 :skolemid |229|
)) (and (=> (= (ControlFlow 0 1084927) (- 0 1873087)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@9)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@9))) (and (=> (= (ControlFlow 0 1084927) (- 0 1873098)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 1084927) (- 0 1873108)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@8))) (and (=> (= (ControlFlow 0 1084927) (- 0 1873120)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@8)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@8)) 0))) (and (=> (= (ControlFlow 0 1084927) (- 0 1873138)) (not (not (= (|$addr#$signer| _$t1@@8) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@8) 173345816))) (and (=> (= (ControlFlow 0 1084927) (- 0 1873152)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9)))) (and (=> (= (ControlFlow 0 1084927) (- 0 1873165)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 3))) (and (=> (= (ControlFlow 0 1084927) (- 0 1873184)) (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@1) (|$addr#$signer| _$t0@@9))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@1) (|$addr#$signer| _$t0@@9)) (=> (= (ControlFlow 0 1084927) (- 0 1873193)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr1) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr1)))))
 :qid |AccountFreezingandybpl.10531:15|
 :skolemid |230|
))))))))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 1084634) (- 0 1872851)) (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@9)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@8)) 0))) (not (= (|$addr#$signer| _$t1@@8) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 3)))) (=> (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@9)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@8)) 0))) (not (= (|$addr#$signer| _$t1@@8) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 3))) (=> (= (ControlFlow 0 1084634) (- 0 1872925)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@9)) (= 6 $t7@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t7@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@8)) (= 5 $t7@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t5@@8)) 0)) (= 3 $t7@0))) (and (not (= (|$addr#$signer| _$t1@@8) 173345816)) (= 2 $t7@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) (= 5 $t7@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 3)) (= 3 $t7@0))))))))
(let ((anon21_Then_correct@@1  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t7@0 $abort_code@1@@2) (= (ControlFlow 0 1084941) 1084634))) L3_correct@@1)))
(let ((anon20_Then$1_correct  (=> (= $1_ValidatorConfig_ValidatorConfig_$memory@1 $1_ValidatorConfig_ValidatorConfig_$memory) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1084993) 1084941) anon21_Then_correct@@1) (=> (= (ControlFlow 0 1084993) 1084927) anon21_Else_correct@@1))))))
(let ((anon20_Then_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@9)) (= (ControlFlow 0 1084991) 1084993)) anon20_Then$1_correct)))
(let ((anon20_Else_correct@@1  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@9))) (=> (and (and (= $1_ValidatorConfig_ValidatorConfig_$memory@0 ($Memory_458404 (|Store__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@9) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@9) $t18@0@@0))) (= $1_ValidatorConfig_ValidatorConfig_$memory@1 $1_ValidatorConfig_ValidatorConfig_$memory@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 1084745) 1084941) anon21_Then_correct@@1) (=> (= (ControlFlow 0 1084745) 1084927) anon21_Else_correct@@1))))))
(let ((anon19_Then_correct@@0  (=> inline$$Not$0$dst@1@@1 (=> (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| $t16@@0) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t16@@0)) 1)) (= $t16@@0 (|$1_Option_Option'$1_ValidatorConfig_Config'| (as seq.empty (Seq T@$1_ValidatorConfig_Config))))) (=> (and (and (and (|$IsValid'$1_Option_Option'address''| $t17) (<= (seq.len (|$vec#$1_Option_Option'address'| $t17)) 1)) (= $t17 (|$1_Option_Option'address'| (as seq.empty (Seq Int))))) (and (= $t18@0@@0 ($1_ValidatorConfig_ValidatorConfig $t16@@0 $t17 _$t2@@1)) (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@110) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@110)) 3))))
 :qid |AccountFreezingandybpl.10462:20|
 :skolemid |228|
)))) (and (=> (= (ControlFlow 0 1084723) 1084991) anon20_Then_correct@@1) (=> (= (ControlFlow 0 1084723) 1084745) anon20_Else_correct@@1)))))))
(let ((anon19_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t15 $t15)) (and (= $t7@0 $t15) (= (ControlFlow 0 1084402) 1084634))) L3_correct@@1)))
(let ((anon18_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t15) (= $t15 6)) (and (= $t15 $t15) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 1084386) 1084723) anon19_Then_correct@@0) (=> (= (ControlFlow 0 1084386) 1084402) anon19_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t12@0)) (= (ControlFlow 0 1084346) 1084386)) anon18_Else$1_correct)))
(let ((anon18_Else_correct@@0  (=> (not $t10@@2) (=> (and (and (|$IsValid'address'| $t11@@1) (= $t11@@1 (|$addr#$signer| _$t0@@9))) (and (= $t12@0 (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t11@@1)) (= (ControlFlow 0 1084352) 1084346))) inline$$Not$0$anon0_correct@@1))))
(let ((anon18_Then_correct@@0  (=> $t10@@2 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) (= 5 $t7@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 3)) (= 3 $t7@@2))) (= $t7@@2 $t7@@2)) (and (= $t7@0 $t7@@2) (= (ControlFlow 0 1085049) 1084634))) L3_correct@@1))))
(let ((anon17_Else_correct@@0  (=> (and (not $t9@@8) (= $t10@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@9))) 3))))) (and (=> (= (ControlFlow 0 1084290) 1085049) anon18_Then_correct@@0) (=> (= (ControlFlow 0 1084290) 1084352) anon18_Else_correct@@0)))))
(let ((anon17_Then_correct@@0  (=> $t9@@8 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t1@@8) 173345816)) (= 2 $t7@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@5)) (= 5 $t7@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@5)) 0)) (= 3 $t7@@2))) (and (not (= (|$addr#$signer| _$t1@@8) 173345816)) (= 2 $t7@@2))) (= $t7@@2 $t7@@2)) (and (= $t7@0 $t7@@2) (= (ControlFlow 0 1085141) 1084634))) L3_correct@@1))))
(let ((anon16_Else_correct@@0  (=> (not $t6@@7) (=> (and (= $t8@@5 (|$addr#$signer| _$t1@@8)) (= $t9@@8  (or (or (or (not (= (|$addr#$signer| _$t1@@8) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@5)) 0))) (not (= (|$addr#$signer| _$t1@@8) 173345816))))) (and (=> (= (ControlFlow 0 1084250) 1085141) anon17_Then_correct@@0) (=> (= (ControlFlow 0 1084250) 1084290) anon17_Else_correct@@0))))))
(let ((anon16_Then_correct@@0  (=> $t6@@7 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t7@@2)) (= $t7@@2 $t7@@2)) (and (= $t7@0 $t7@@2) (= (ControlFlow 0 1085167) 1084634))) L3_correct@@1))))
(let ((anon0$1_correct@@9  (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@111) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@111)) 4))))
 :qid |AccountFreezingandybpl.10207:20|
 :skolemid |221|
))) (and (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@112) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@112)) 3))))
 :qid |AccountFreezingandybpl.10211:20|
 :skolemid |222|
)) (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@113) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@113)) 3))))
 :qid |AccountFreezingandybpl.10215:20|
 :skolemid |223|
)))) (and (and (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@114) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@114)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@114)) 3))))
 :qid |AccountFreezingandybpl.10219:20|
 :skolemid |224|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@9))) (and (|$IsValid'address'| (|$addr#$signer| _$t1@@8)) (|$IsValid'vec'u8''| _$t2@@1)))) (and (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@13)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@13))
 :qid |AccountFreezingandybpl.10231:20|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@14)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@14))
 :qid |AccountFreezingandybpl.10235:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@14))
))) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@15)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@15) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@15))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@15))) 1))))
 :qid |AccountFreezingandybpl.10239:20|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@15))
)) (= $t5@@8 (|$addr#$signer| _$t1@@8)))) (and (and (= _$t0@@9 _$t0@@9) (= _$t1@@8 _$t1@@8)) (and (= _$t2@@1 _$t2@@1) (= $t6@@7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_452927| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 1084178) 1085167) anon16_Then_correct@@0) (=> (= (ControlFlow 0 1084178) 1084250) anon16_Else_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_414242| stream@@10) 0) (forall ((v@@61 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@10) v@@61) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1083906) 1084178)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 1871945) 1083906) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $t13@0 () T@$Mutation_479191)
(declare-fun $t12@1 () T@$Mutation_479151)
(declare-fun $t13@1 () T@$Mutation_479191)
(declare-fun $t11@@2 () |T@$1_Option_Option'address'|)
(declare-fun $t12@2 () T@$Mutation_479151)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@0 () T@$Memory_458404)
(declare-fun $t4@@6 () Int)
(declare-fun _$t0@@10 () T@$signer)
(declare-fun $t6@0@@0 () Int)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t12@@1 () T@$Mutation_479151)
(declare-fun $t7@@3 () Int)
(declare-fun $t12@0@@0 () T@$Mutation_479151)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1 () Bool)
(declare-fun $t10@@3 () Int)
(declare-fun $t5@@9 () Bool)
(declare-fun $t6@@8 () Int)
(declare-fun $t13 () T@$Mutation_479191)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_remove_operator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1873233) (let ((anon18_Else_correct@@1  (=> (and (and (not $abort_flag@0@@3) (= $t13@0 ($Mutation_479191 (|l#$Mutation_479151| $t12@1) (seq.++ (|p#$Mutation_479151| $t12@1) (seq.unit 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t12@1))))) (and (= $t13@1 ($Mutation_479191 (|l#$Mutation_479191| $t13@0) (|p#$Mutation_479191| $t13@0) $t11@@2)) (= $t12@2 ($Mutation_479151 (|l#$Mutation_479151| $t12@1) (|p#$Mutation_479151| $t12@1) ($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t12@1)) (|v#$Mutation_479191| $t13@1) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t12@1))))))) (and (=> (= (ControlFlow 0 1086170) (- 0 1873995)) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t12@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t12@2)))) 1) (and (=> (= (ControlFlow 0 1086170) (- 0 1874008)) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t12@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t12@2)))) 1) (=> (and (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@115) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@115)) 3))))
 :qid |AccountFreezingandybpl.10811:20|
 :skolemid |237|
)) (= $1_ValidatorConfig_ValidatorConfig_$memory@0@@0 ($Memory_458404 (|Store__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_479151| $t12@2)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_479151| $t12@2)) (|v#$Mutation_479151| $t12@2))))) (and (=> (= (ControlFlow 0 1086170) (- 0 1874069)) (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@116) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@116)) 3))))
 :qid |AccountFreezingandybpl.10822:15|
 :skolemid |238|
))) (=> (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@117) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@117) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@117)) 3))))
 :qid |AccountFreezingandybpl.10822:15|
 :skolemid |238|
)) (and (=> (= (ControlFlow 0 1086170) (- 0 1874097)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@6))) (and (=> (= (ControlFlow 0 1086170) (- 0 1874109)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@6)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@6)) 3))) (and (=> (= (ControlFlow 0 1086170) (- 0 1874127)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@6))) (and (=> (= (ControlFlow 0 1086170) (- 0 1874139)) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) (|$addr#$signer| _$t0@@10))))) 0)))) (=> (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) (|$addr#$signer| _$t0@@10))))) 0))) (=> (= (ControlFlow 0 1086170) (- 0 1874150)) (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (not (= addr@@118 $t4@@6)) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@0) addr@@118)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@118)))))
 :qid |AccountFreezingandybpl.10851:15|
 :skolemid |239|
)))))))))))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 1085893) (- 0 1873857)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@6)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@6)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@6)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@6))) (=> (= (ControlFlow 0 1085893) (- 0 1873888)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@6)) (= 5 $t6@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t4@@6)) 3)) (= 3 $t6@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t4@@6)) (= 5 $t6@0@@0))))))))
(let ((anon18_Then_correct@@1  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t6@0@@0 $abort_code@1@@3) (= (ControlFlow 0 1086184) 1085893))) L3_correct@@2)))
(let ((anon17_Then$1_correct  (=> (= $t12@1 $t12@@1) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1086236) 1086184) anon18_Then_correct@@1) (=> (= (ControlFlow 0 1086236) 1086170) anon18_Else_correct@@1))))))
(let ((anon17_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3)) (= (ControlFlow 0 1086234) 1086236)) anon17_Then$1_correct)))
(let ((anon17_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3) (=> (and (and (= $t12@0@@0 ($Mutation_479151 ($Global $t7@@3) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3))) (= $t12@1 $t12@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 1085941) 1086184) anon18_Then_correct@@1) (=> (= (ControlFlow 0 1085941) 1086170) anon18_Else_correct@@1))))))
(let ((anon16_Then_correct@@1  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1 (=> (and (and (|$IsValid'$1_Option_Option'address''| $t11@@2) (<= (seq.len (|$vec#$1_Option_Option'address'| $t11@@2)) 1)) (= $t11@@2 (|$1_Option_Option'address'| (as seq.empty (Seq Int))))) (and (=> (= (ControlFlow 0 1085919) 1086234) anon17_Then_correct@@1) (=> (= (ControlFlow 0 1085919) 1085941) anon17_Else_correct@@1))))))
(let ((anon16_Else_correct@@1  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1) (= $t10@@3 $t10@@3)) (and (= $t6@0@@0 $t10@@3) (= (ControlFlow 0 1085793) 1085893))) L3_correct@@2)))
(let ((anon15_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t10@@3) (= $t10@@3 5)) (and (= $t10@@3 $t10@@3) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1))) (and (=> (= (ControlFlow 0 1085777) 1085919) anon16_Then_correct@@1) (=> (= (ControlFlow 0 1085777) 1085793) anon16_Else_correct@@1))))))
(let ((anon14_Then_correct@@1  (=> $t5@@9 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@10))) (= 5 $t6@@8)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@10))) 3)) (= 3 $t6@@8))) (= $t6@@8 $t6@@8)) (and (= $t6@0@@0 $t6@@8) (= (ControlFlow 0 1086306) 1085893))) L3_correct@@2))))
(let ((anon15_Then_correct@@0 true))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct  (=> (= $t7@@3 $t7@@3) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1)) (and (=> (= (ControlFlow 0 1085735) 1086250) anon15_Then_correct@@0) (=> (= (ControlFlow 0 1085735) 1085777) anon15_Else_correct@@0))))))
(let ((anon14_Else_correct@@1  (=> (not $t5@@9) (=> (and (and (|$IsValid'address'| $t7@@3) (= $t7@@3 (|$addr#$signer| _$t0@@10))) (and (= $t7@@3 $t7@@3) (= (ControlFlow 0 1085741) 1085735))) inline$$1_ValidatorConfig_exists_config$0$anon0_correct))))
(let ((anon0$1_correct@@10  (=> (and (forall ((addr@@119 Int) ) (!  (=> (|$IsValid'address'| addr@@119) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@119) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@119) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@119)) 4))))
 :qid |AccountFreezingandybpl.10623:20|
 :skolemid |231|
)) (forall ((addr@@120 Int) ) (!  (=> (|$IsValid'address'| addr@@120) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@120) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@120) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@120)) 3))))
 :qid |AccountFreezingandybpl.10627:20|
 :skolemid |232|
))) (=> (and (and (and (forall ((addr@@121 Int) ) (!  (=> (|$IsValid'address'| addr@@121) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@121) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@121) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@121)) 3))))
 :qid |AccountFreezingandybpl.10631:20|
 :skolemid |233|
)) (forall ((addr@@122 Int) ) (!  (=> (|$IsValid'address'| addr@@122) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@122) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@122)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@122) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@122)) 3))))
 :qid |AccountFreezingandybpl.10635:20|
 :skolemid |234|
))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@10)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@16)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@16))
 :qid |AccountFreezingandybpl.10641:20|
 :skolemid |235|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@16))
)))) (and (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@17)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@17) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@17))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@17))) 1))))
 :qid |AccountFreezingandybpl.10645:20|
 :skolemid |236|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@17))
)) (= $t4@@6 (|$addr#$signer| _$t0@@10))) (and (= _$t0@@10 _$t0@@10) (= $t5@@9  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@10))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@10))) 3))))))) (and (=> (= (ControlFlow 0 1085610) 1086306) anon14_Then_correct@@1) (=> (= (ControlFlow 0 1085610) 1085741) anon14_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_414242| stream@@11) 0) (forall ((v@@62 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@11) v@@62) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1085372) 1085610)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (seq.len (|p#$Mutation_479151| $t12@@1)) 0) (=> (and (= (seq.len (|p#$Mutation_479191| $t13)) 0) (= (ControlFlow 0 1085382) 1085372)) inline$$InitEventStore$0$anon0_correct@@10))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 1873233) 1085382) anon0_correct@@10)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t25@1 () T@$Mutation_479151)
(declare-fun $t26@0 () T@$1_ValidatorConfig_Config)
(declare-fun _$t2@@2 () (Seq Int))
(declare-fun _$t3 () (Seq Int))
(declare-fun _$t4 () (Seq Int))
(declare-fun $t27 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun $t28@0 () T@$Mutation_480734)
(declare-fun $t28@1 () T@$Mutation_480734)
(declare-fun $t25@2 () T@$Mutation_479151)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@1 () T@$Memory_458404)
(declare-fun _$t0@@11 () T@$signer)
(declare-fun _$t1@@9 () Int)
(declare-fun $t15@0@@0 () Int)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t25@@0 () T@$Mutation_479151)
(declare-fun $t25@0 () T@$Mutation_479151)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$modifies () |T@[Int]Bool|)
(declare-fun $t24@@0 () Int)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun $t21 () Int)
(declare-fun $t16@0 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t14@@0 () Bool)
(declare-fun $t13@@0 () Int)
(declare-fun $t12@@2 () Int)
(declare-fun $t15@@0 () Int)
(declare-fun $t11@@3 () T@$Mutation_479151)
(declare-fun $t28 () T@$Mutation_480734)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_set_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1874198) (let ((anon29_Else_correct  (=> (and (not $abort_flag@0@@4) (= |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| (|v#$Mutation_479151| $t25@1))) (=> (and (and (and (= |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0|) (= $t26@0 ($1_ValidatorConfig_Config _$t2@@2 _$t3 _$t4))) (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| $t27) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t27)) 1))) (and (and (= $t27 (|$1_Option_Option'$1_ValidatorConfig_Config'| (seq.unit $t26@0))) (= $t28@0 ($Mutation_480734 (|l#$Mutation_479151| $t25@1) (seq.++ (|p#$Mutation_479151| $t25@1) (seq.unit 0)) (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t25@1))))) (and (= $t28@1 ($Mutation_480734 (|l#$Mutation_480734| $t28@0) (|p#$Mutation_480734| $t28@0) $t27)) (= $t25@2 ($Mutation_479151 (|l#$Mutation_479151| $t25@1) (|p#$Mutation_479151| $t25@1) ($1_ValidatorConfig_ValidatorConfig (|v#$Mutation_480734| $t28@1) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t25@1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t25@1)))))))) (and (=> (= (ControlFlow 0 1087495) (- 0 1875163)) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t25@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t25@2)))) 1) (and (=> (= (ControlFlow 0 1087495) (- 0 1875176)) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t25@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t25@2)))) 1) (=> (and (forall ((addr@@123 Int) ) (!  (=> (|$IsValid'address'| addr@@123) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@123) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@123) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@123)) 3))))
 :qid |AccountFreezingandybpl.11249:20|
 :skolemid |244|
)) (= $1_ValidatorConfig_ValidatorConfig_$memory@0@@1 ($Memory_458404 (|Store__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_479151| $t25@2)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_479151| $t25@2)) (|v#$Mutation_479151| $t25@2))))) (and (=> (= (ControlFlow 0 1087495) (- 0 1875237)) (forall ((addr@@124 Int) ) (!  (=> (|$IsValid'address'| addr@@124) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr@@124) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@124) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@124)) 3))))
 :qid |AccountFreezingandybpl.11260:15|
 :skolemid |245|
))) (=> (forall ((addr@@125 Int) ) (!  (=> (|$IsValid'address'| addr@@125) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr@@125) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@125) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@125)) 3))))
 :qid |AccountFreezingandybpl.11260:15|
 :skolemid |245|
)) (and (=> (= (ControlFlow 0 1087495) (- 0 1875265)) (not (not (= (|$addr#$signer| _$t0@@11) (let ((t_ref (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref)) 0)))))) (=> (not (not (= (|$addr#$signer| _$t0@@11) (let ((t_ref@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@0)) 0))))) (and (=> (= (ControlFlow 0 1087495) (- 0 1875281)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2))) (and (=> (= (ControlFlow 0 1087495) (- 0 1875291)) (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))) 0))))) (=> (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))) 0)))) (and (=> (= (ControlFlow 0 1087495) (- 0 1875302)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9))) (and (=> (= (ControlFlow 0 1087495) (- 0 1875313)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@9) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@9)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@9) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@9)))) 0))) (and (=> (= (ControlFlow 0 1087495) (- 0 1875320)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@9) ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (seq.unit ($1_ValidatorConfig_Config _$t2@@2 _$t3 _$t4))) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9))))) (=> (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) _$t1@@9) ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (seq.unit ($1_ValidatorConfig_Config _$t2@@2 _$t3 _$t4))) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))) (=> (= (ControlFlow 0 1087495) (- 0 1875342)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@0) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@1) addr1@@0)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@0)))))
 :qid |AccountFreezingandybpl.11299:15|
 :skolemid |246|
))))))))))))))))))))))))))
(let ((anon26_Then_correct@@0 true))
(let ((anon24_Then_correct@@1 true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 1086903) (- 0 1874961)) (or (or (or (not (= (|$addr#$signer| _$t0@@11) (let ((t_ref@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@1)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))) (=> (or (or (or (not (= (|$addr#$signer| _$t0@@11) (let ((t_ref@@2 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@2)) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2))) (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9))) (=> (= (ControlFlow 0 1086903) (- 0 1874995)) (or (or (or (and (not (= (|$addr#$signer| _$t0@@11) (let ((t_ref@@3 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@3)) 0)))) (= 7 $t15@0@@0)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t2@@2)) (= 7 $t15@0@@0))) (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))) 0))) (= 7 $t15@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)) (= 5 $t15@0@@0))))))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t15@0@@0 $abort_code@1@@4) (= (ControlFlow 0 1087509) 1086903))) L7_correct)))
(let ((anon28_Then$1_correct  (=> (= $t25@1 $t25@@0) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1087561) 1087509) anon29_Then_correct) (=> (= (ControlFlow 0 1087561) 1087495) anon29_Else_correct))))))
(let ((anon28_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)) (= (ControlFlow 0 1087559) 1087561)) anon28_Then$1_correct)))
(let ((anon28_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9) (=> (and (and (= $t25@0 ($Mutation_479151 ($Global _$t1@@9) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9))) (= $t25@1 $t25@0)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 1087190) 1087509) anon29_Then_correct) (=> (= (ControlFlow 0 1087190) 1087495) anon29_Else_correct))))))
(let ((anon27_Then_correct  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 (and (=> (= (ControlFlow 0 1087168) (- 0 1874833)) (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1@@9)) (=> (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1@@9) (and (=> (= (ControlFlow 0 1087168) 1087559) anon28_Then_correct) (=> (= (ControlFlow 0 1087168) 1087190) anon28_Else_correct)))))))
(let ((anon27_Else_correct  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0) (= $t24@@0 $t24@@0)) (and (= $t15@0@@0 $t24@@0) (= (ControlFlow 0 1087158) 1086903))) L7_correct)))
(let ((anon26_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24@@0) (= $t24@@0 5)) (and (= $t24@@0 $t24@@0) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 1087142) 1087168) anon27_Then_correct) (=> (= (ControlFlow 0 1087142) 1087158) anon27_Else_correct))))))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@0  (=> (= _$t1@@9 _$t1@@9) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 1087100) 1087575) anon26_Then_correct@@0) (=> (= (ControlFlow 0 1087100) 1087142) anon26_Else_correct@@0))))))
(let ((anon25_Then_correct@@0  (=> (and inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (= (ControlFlow 0 1087106) 1087100)) inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@0)))
(let ((anon25_Else_correct@@0  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= $t21 $t21)) (and (= $t15@0@@0 $t21) (= (ControlFlow 0 1086999) 1086903))) L7_correct)))
(let ((anon24_Else_correct@@1  (=> (and (not false) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t21) (= $t21 7)) (and (= $t21 $t21) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 1086983) 1087106) anon25_Then_correct@@0) (=> (= (ControlFlow 0 1086983) 1086999) anon25_Else_correct@@0))))))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t2@@2)) (and (=> (= (ControlFlow 0 1086937) 1087589) anon24_Then_correct@@1) (=> (= (ControlFlow 0 1086937) 1086983) anon24_Else_correct@@1)))))
(let ((anon23_Then_correct@@1  (=> (and $t16@0 (= (ControlFlow 0 1086943) 1086937)) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct)))
(let ((anon23_Else_correct@@1  (=> (and (and (not $t16@0) (= $t18 $t18)) (and (= $t15@0@@0 $t18) (= (ControlFlow 0 1086779) 1086903))) L7_correct)))
(let ((anon22_Else_correct@@1  (=> (not $t14@@0) (=> (and (and (and (|$IsValid'address'| $t13@@0) (= $t13@@0 (let ((t_ref@@4 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@4)) 0)))) (and (= $t16@0 (= $t12@@2 $t13@@0)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t18) (= $t18 7)) (and (= $t18 $t18) (= $t16@0 $t16@0)))) (and (=> (= (ControlFlow 0 1086763) 1086943) anon23_Then_correct@@1) (=> (= (ControlFlow 0 1086763) 1086779) anon23_Else_correct@@1))))))
(let ((anon22_Then_correct@@1  (=> $t14@@0 (=> (and (and (or (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))) 0))) (= 7 $t15@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)) (= 5 $t15@@0))) (= $t15@@0 $t15@@0)) (and (= $t15@0@@0 $t15@@0) (= (ControlFlow 0 1087635) 1086903))) L7_correct))))
(let ((anon0$1_correct@@11  (=> (and (forall ((addr@@126 Int) ) (!  (=> (|$IsValid'address'| addr@@126) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@126) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@126)) 3))))
 :qid |AccountFreezingandybpl.10933:20|
 :skolemid |240|
)) (forall ((addr@@127 Int) ) (!  (=> (|$IsValid'address'| addr@@127) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@127) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@127) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@127)) 3))))
 :qid |AccountFreezingandybpl.10937:20|
 :skolemid |241|
))) (=> (and (and (and (and (forall ((addr@@128 Int) ) (!  (=> (|$IsValid'address'| addr@@128) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@128) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@128)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@128) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@128)) 3))))
 :qid |AccountFreezingandybpl.10941:20|
 :skolemid |242|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@11))) (and (|$IsValid'address'| _$t1@@9) (|$IsValid'vec'u8''| _$t2@@2))) (and (and (|$IsValid'vec'u8''| _$t3) (|$IsValid'vec'u8''| _$t4)) (and (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@18)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@18) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@18))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@18))) 1))))
 :qid |AccountFreezingandybpl.10959:20|
 :skolemid |243|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@18))
)) (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1@@9)))) (and (and (and (= _$t0@@11 _$t0@@11) (= _$t1@@9 _$t1@@9)) (and (= _$t2@@2 _$t2@@2) (= _$t3 _$t3))) (and (and (= _$t4 _$t4) (|$IsValid'address'| $t12@@2)) (and (= $t12@@2 (|$addr#$signer| _$t0@@11)) (= $t14@@0  (or (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@9)))))))) (and (=> (= (ControlFlow 0 1086705) 1087635) anon22_Then_correct@@1) (=> (= (ControlFlow 0 1086705) 1086763) anon22_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_414242| stream@@12) 0) (forall ((v@@63 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@12) v@@63) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1086474) 1086705)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (and (and (= (seq.len (|p#$Mutation_479151| $t11@@3)) 0) (= (seq.len (|p#$Mutation_479151| $t25@@0)) 0)) (and (= (seq.len (|p#$Mutation_480734| $t28)) 0) (= (ControlFlow 0 1086484) 1086474))) inline$$InitEventStore$0$anon0_correct@@11)))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 1874198) 1086484) anon0_correct@@11)))
PreconditionGeneratedEntry_correct@@1)))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t21@0 () T@$Mutation_479191)
(declare-fun $t20@1 () T@$Mutation_479151)
(declare-fun $t21@1 () T@$Mutation_479191)
(declare-fun $t19 () |T@$1_Option_Option'address'|)
(declare-fun $t20@2 () T@$Mutation_479151)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@2 () T@$Memory_458404)
(declare-fun $t7@@4 () Int)
(declare-fun _$t1@@10 () Int)
(declare-fun $t8@@6 () Int)
(declare-fun $t9@@9 () Int)
(declare-fun $t11@0@@1 () Int)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $t20@@0 () T@$Mutation_479151)
(declare-fun $t15@@1 () Int)
(declare-fun $t20@0 () T@$Mutation_479151)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1 () Bool)
(declare-fun $t18@@0 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 () Bool)
(declare-fun _$t0@@12 () T@$signer)
(declare-fun $t14@@1 () Int)
(declare-fun $t10@@4 () Bool)
(declare-fun $t11@@4 () Int)
(declare-fun $t21@@0 () T@$Mutation_479191)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_set_operator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1875385) (let ((anon25_Else_correct@@1  (=> (and (and (not $abort_flag@0@@5) (= $t21@0 ($Mutation_479191 (|l#$Mutation_479151| $t20@1) (seq.++ (|p#$Mutation_479151| $t20@1) (seq.unit 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t20@1))))) (and (= $t21@1 ($Mutation_479191 (|l#$Mutation_479191| $t21@0) (|p#$Mutation_479191| $t21@0) $t19)) (= $t20@2 ($Mutation_479151 (|l#$Mutation_479151| $t20@1) (|p#$Mutation_479151| $t20@1) ($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t20@1)) (|v#$Mutation_479191| $t21@1) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t20@1))))))) (and (=> (= (ControlFlow 0 1089037) (- 0 1876450)) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t20@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t20@2)))) 1) (and (=> (= (ControlFlow 0 1089037) (- 0 1876463)) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t20@2)))) 1)) (=> (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_479151| $t20@2)))) 1) (=> (and (forall ((addr@@129 Int) ) (!  (=> (|$IsValid'address'| addr@@129) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@129) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@129) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@129)) 3))))
 :qid |AccountFreezingandybpl.11634:20|
 :skolemid |254|
)) (= $1_ValidatorConfig_ValidatorConfig_$memory@0@@2 ($Memory_458404 (|Store__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_479151| $t20@2)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_479151| $t20@2)) (|v#$Mutation_479151| $t20@2))))) (and (=> (= (ControlFlow 0 1089037) (- 0 1876524)) (forall ((addr@@130 Int) ) (!  (=> (|$IsValid'address'| addr@@130) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@130) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@130) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@130)) 3))))
 :qid |AccountFreezingandybpl.11645:15|
 :skolemid |255|
))) (=> (forall ((addr@@131 Int) ) (!  (=> (|$IsValid'address'| addr@@131) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@131) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@131) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@131)) 3))))
 :qid |AccountFreezingandybpl.11645:15|
 :skolemid |255|
)) (and (=> (= (ControlFlow 0 1089037) (- 0 1876552)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t7@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t7@@4))) (and (=> (= (ControlFlow 0 1089037) (- 0 1876564)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t7@@4)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t7@@4)) 3))) (and (=> (= (ControlFlow 0 1089037) (- 0 1876582)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@10)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@10))) (and (=> (= (ControlFlow 0 1089037) (- 0 1876593)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@10)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@10))) (and (=> (= (ControlFlow 0 1089037) (- 0 1876604)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@6))) (and (=> (= (ControlFlow 0 1089037) (- 0 1876616)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@6)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@6)) 3))) (and (=> (= (ControlFlow 0 1089037) (- 0 1876634)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@6))) (and (=> (= (ControlFlow 0 1089037) (- 0 1876646)) (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) $t9@@9)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) $t9@@9)))) 0)) (and (=> (= (ControlFlow 0 1089037) (- 0 1876654)) (= (let ((t_ref@@5 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) $t9@@9)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@5)) 0)) _$t1@@10)) (=> (= (let ((t_ref@@6 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) $t9@@9)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@6)) 0)) _$t1@@10) (=> (= (ControlFlow 0 1089037) (- 0 1876665)) (forall ((addr@@132 Int) ) (!  (=> (|$IsValid'address'| addr@@132) (=> (not (= addr@@132 $t9@@9)) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory@0@@2) addr@@132)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@132)))))
 :qid |AccountFreezingandybpl.11699:15|
 :skolemid |256|
)))))))))))))))))))))))))))))))
(let ((anon22_Then_correct@@2 true))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 1088517) (- 0 1876204)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t7@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t7@@4)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@10))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@10))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@6)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@6)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t7@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t7@@4)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@10))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@10))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@6)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@6))) (=> (= (ControlFlow 0 1088517) (- 0 1876275)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t7@@4)) (= 5 $t11@0@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t7@@4)) 3)) (= 3 $t11@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@10)) (= 7 $t11@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@10)) (= 5 $t11@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@6)) (= 5 $t11@0@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t8@@6)) 3)) (= 3 $t11@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@6)) (= 5 $t11@0@@1))))))))
(let ((anon25_Then_correct@@1  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t11@0@@1 $abort_code@1@@5) (= (ControlFlow 0 1089051) 1088517))) L5_correct@@0)))
(let ((anon24_Then$1_correct  (=> (= $t20@1 $t20@@0) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1089103) 1089051) anon25_Then_correct@@1) (=> (= (ControlFlow 0 1089103) 1089037) anon25_Else_correct@@1))))))
(let ((anon24_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@@1)) (= (ControlFlow 0 1089101) 1089103)) anon24_Then$1_correct)))
(let ((anon24_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@@1) (=> (and (and (= $t20@0 ($Mutation_479151 ($Global $t15@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@@1))) (= $t20@1 $t20@0)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 1088746) 1089051) anon25_Then_correct@@1) (=> (= (ControlFlow 0 1088746) 1089037) anon25_Else_correct@@1))))))
(let ((anon23_Then_correct@@2  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1 (=> (and (and (|$IsValid'$1_Option_Option'address''| $t19) (<= (seq.len (|$vec#$1_Option_Option'address'| $t19)) 1)) (= $t19 (|$1_Option_Option'address'| (seq.unit _$t1@@10)))) (and (=> (= (ControlFlow 0 1088724) 1089101) anon24_Then_correct@@2) (=> (= (ControlFlow 0 1088724) 1088746) anon24_Else_correct@@2))))))
(let ((anon23_Else_correct@@2  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1) (= $t18@@0 $t18@@0)) (and (= $t11@0@@1 $t18@@0) (= (ControlFlow 0 1088696) 1088517))) L5_correct@@0)))
(let ((anon22_Else_correct@@2  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t18@@0) (= $t18@@0 5)) (and (= $t18@@0 $t18@@0) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1))) (and (=> (= (ControlFlow 0 1088680) 1088724) anon23_Then_correct@@2) (=> (= (ControlFlow 0 1088680) 1088696) anon23_Else_correct@@2))))))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@1  (=> (= $t15@@1 $t15@@1) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@@1)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@1)) (and (=> (= (ControlFlow 0 1088638) 1089117) anon22_Then_correct@@2) (=> (= (ControlFlow 0 1088638) 1088680) anon22_Else_correct@@2))))))
(let ((anon21_Then_correct@@2  (=> inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 (=> (and (and (|$IsValid'address'| $t15@@1) (= $t15@@1 (|$addr#$signer| _$t0@@12))) (and (= $t15@@1 $t15@@1) (= (ControlFlow 0 1088644) 1088638))) inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@1))))
(let ((anon21_Else_correct@@2  (=> (and (and (not inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0) (= $t14@@1 $t14@@1)) (and (= $t11@0@@1 $t14@@1) (= (ControlFlow 0 1088293) 1088517))) L5_correct@@0)))
(let ((anon20_Else_correct@@2  (=> (and (not false) (|$IsValid'u64'| 3)) (=> (and (and (|$IsValid'u64'| $t14@@1) (= $t14@@1 7)) (and (= $t14@@1 $t14@@1) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 1088277) 1088644) anon21_Then_correct@@2) (=> (= (ControlFlow 0 1088277) 1088293) anon21_Else_correct@@2))))))
(let ((anon19_Then_correct@@1  (=> $t10@@4 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12))) (= 5 $t11@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12))) 3)) (= 3 $t11@@4))) (= $t11@@4 $t11@@4)) (and (= $t11@0@@1 $t11@@4) (= (ControlFlow 0 1089187) 1088517))) L5_correct@@0))))
(let ((anon20_Then_correct@@2 true))
(let ((inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct@@0  (=> (= _$t1@@10 _$t1@@10) (=> (and (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t1@@10)) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 1088231) 1089131) anon20_Then_correct@@2) (=> (= (ControlFlow 0 1088231) 1088277) anon20_Else_correct@@2))))))
(let ((anon19_Else_correct@@1  (=> (and (not $t10@@4) (= (ControlFlow 0 1088237) 1088231)) inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct@@0)))
(let ((anon0$1_correct@@12  (=> (forall ((addr@@133 Int) ) (!  (=> (|$IsValid'address'| addr@@133) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@133) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@133) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@133)) 4))))
 :qid |AccountFreezingandybpl.11369:20|
 :skolemid |247|
)) (=> (and (forall ((addr@@134 Int) ) (!  (=> (|$IsValid'address'| addr@@134) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@134) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@134) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@134)) 3))))
 :qid |AccountFreezingandybpl.11373:20|
 :skolemid |248|
)) (forall ((addr@@135 Int) ) (!  (=> (|$IsValid'address'| addr@@135) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@135) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@135) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@135)) 3))))
 :qid |AccountFreezingandybpl.11377:20|
 :skolemid |249|
))) (=> (and (and (forall ((addr@@136 Int) ) (!  (=> (|$IsValid'address'| addr@@136) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@136) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@136)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) addr@@136) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) addr@@136)) 3))))
 :qid |AccountFreezingandybpl.11381:20|
 :skolemid |250|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@12))) (and (|$IsValid'address'| _$t1@@10) (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@19)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@19))
 :qid |AccountFreezingandybpl.11390:20|
 :skolemid |251|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@19))
)))) (=> (and (and (and (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@20)))
(|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| $rsc@@20))
 :qid |AccountFreezingandybpl.11394:20|
 :skolemid |252|
 :pattern ( (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_458504| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@20))
)) (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@21)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@21) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@21))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@21))) 1))))
 :qid |AccountFreezingandybpl.11398:20|
 :skolemid |253|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_458404| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@21))
))) (and (= $t7@@4 (|$addr#$signer| _$t0@@12)) (= $t8@@6 (|$addr#$signer| _$t0@@12)))) (and (and (= $t9@@9 (|$addr#$signer| _$t0@@12)) (= _$t0@@12 _$t0@@12)) (and (= _$t1@@10 _$t1@@10) (= $t10@@4  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12))) 3))))))) (and (=> (= (ControlFlow 0 1088126) 1089187) anon19_Then_correct@@1) (=> (= (ControlFlow 0 1088126) 1088237) anon19_Else_correct@@1))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_414242| stream@@13) 0) (forall ((v@@64 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@13) v@@64) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1087834) 1088126)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (= (seq.len (|p#$Mutation_479151| $t20@@0)) 0) (=> (and (= (seq.len (|p#$Mutation_479191| $t21@@0)) 0) (= (ControlFlow 0 1087844) 1087834)) inline$$InitEventStore$0$anon0_correct@@12))))
(let ((PreconditionGeneratedEntry_correct@@2  (=> (= (ControlFlow 0 1875385) 1087844) anon0_correct@@12)))
PreconditionGeneratedEntry_correct@@2)))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t37 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int) T@$1_VASPDomain_VASPDomains)
(declare-fun $1_VASPDomain_VASPDomains_$memory@0 () T@$Memory_520293)
(declare-fun _$t1@@11 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_520293)
(declare-fun $t11@@5 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun _$t2@@3 () (Seq Int))
(declare-fun $t12@@3 () Int)
(declare-fun _$t0@@13 () T@$signer)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t13@@1 () T@$1_Event_EventHandle)
(declare-fun $t14@@2 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_414242_| (|T@[$1_Event_EventHandle]Multiset_414242| T@$1_Event_EventHandle T@Multiset_414242) |T@[$1_Event_EventHandle]Multiset_414242|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_414242|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_414242)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|Store__T@[$1_Event_EventHandle]Multiset_414242_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_414242|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_414242)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|Store__T@[$1_Event_EventHandle]Multiset_414242_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_414242_| ?x0 ?y1))) :weight 0)))
(declare-fun $t17@0@@1 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_446711)
(declare-fun $t36@0 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun $t33@1 () T@$Mutation_520742)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 () T@$1_VASPDomain_VASPDomain)
(declare-fun $t33 () T@$Mutation_520742)
(declare-fun $t33@0 () T@$Mutation_520742)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|T@[Int]$1_VASPDomain_VASPDomainManager| Int) T@$1_VASPDomain_VASPDomainManager)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t24@2 () T@$Mutation_520681)
(declare-fun $t24@1@@0 () T@$Mutation_520681)
(declare-fun |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$m'@1| () T@$Mutation_431459)
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int T@$1_VASPDomain_VASPDomains) |T@[Int]$1_VASPDomain_VASPDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun $t31@0 () T@$Mutation_431459)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun $t30 () Int)
(declare-fun |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$res@1| () Bool)
(declare-fun $t26@0@@0 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t4@1 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0 () T@$1_VASPDomain_VASPDomain)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 () Int)
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t9@1 () T@$1_VASPDomain_VASPDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |$temp_0'$1_VASPDomain_VASPDomains'@0| () T@$1_VASPDomain_VASPDomains)
(declare-fun $t24@@1 () T@$Mutation_520681)
(declare-fun $t24@0@@0 () T@$Mutation_520681)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun $t21@0@@0 () Bool)
(declare-fun $t23@@0 () Int)
(declare-fun inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 () Bool)
(declare-fun $t20@@1 () Int)
(declare-fun $t16@@1 () Bool)
(declare-fun $t15@@2 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun $t9@@10 () T@$Mutation_520681)
(declare-fun $t31 () T@$Mutation_431459)
(declare-fun $t34 () T@$Mutation_446711)
(push 1)
(set-info :boogie-vc-id $1_VASPDomain_add_vasp_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1876712) (let ((anon45_Else_correct  (=> (and (not $abort_flag@2) (= $t37 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_520293| $1_VASPDomain_VASPDomains_$memory@0) _$t1@@11)))) (and (=> (= (ControlFlow 0 1091598) (- 0 1878856)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) _$t1@@11)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) _$t1@@11))) (and (=> (= (ControlFlow 0 1091598) (- 0 1878867)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (and (=> (= (ControlFlow 0 1091598) (- 0 1878877)) (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (and (>= i@@59 0) (< i@@59 (seq.len $t11@@5)))) (= (seq.nth $t11@@5 i@@59) ($1_VASPDomain_VASPDomain _$t2@@3)))
 :qid |AccountFreezingandybpl.1860:13|
 :skolemid |52|
)))) (=> (not (exists ((i@@60 Int) ) (!  (and (and (|$IsValid'u64'| i@@60) (and (>= i@@60 0) (< i@@60 (seq.len $t11@@5)))) (= (seq.nth $t11@@5 i@@60) ($1_VASPDomain_VASPDomain _$t2@@3)))
 :qid |AccountFreezingandybpl.1860:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 1091598) (- 0 1878889)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t12@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t12@@3))) (and (=> (= (ControlFlow 0 1091598) (- 0 1878901)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t12@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t12@@3)) 1))) (and (=> (= (ControlFlow 0 1091598) (- 0 1878919)) (not (not (= (|$addr#$signer| _$t0@@13) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@13) 186537453))) (and (=> (= (ControlFlow 0 1091598) (- 0 1878933)) (not (> (seq.len _$t2@@3) 63))) (=> (not (> (seq.len _$t2@@3) 63)) (and (=> (= (ControlFlow 0 1091598) (- 0 1878945)) (exists ((i@@61 Int) ) (!  (and (and (|$IsValid'u64'| i@@61) (and (>= i@@61 0) (< i@@61 (seq.len $t37)))) (= (seq.nth $t37 i@@61) ($1_VASPDomain_VASPDomain _$t2@@3)))
 :qid |AccountFreezingandybpl.1860:13|
 :skolemid |52|
))) (=> (exists ((i@@62 Int) ) (!  (and (and (|$IsValid'u64'| i@@62) (and (>= i@@62 0) (< i@@62 (seq.len $t37)))) (= (seq.nth $t37 i@@62) ($1_VASPDomain_VASPDomain _$t2@@3)))
 :qid |AccountFreezingandybpl.1860:13|
 :skolemid |52|
)) (and (=> (= (ControlFlow 0 1091598) (- 0 1878955)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $EmptyEventStore) $t13@@1)))
(let ((stream_new (let ((len (|l#Multiset_414242| stream@@14)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@14) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@2))))
(Multiset_414242 (|Store__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@14) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@2) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $EmptyEventStore) $t13@@1 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@15 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| expected) handle@@15)) (|l#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| actual) handle@@15))) (forall ((v@@65 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| expected) handle@@15)) v@@65) (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| actual) handle@@15)) v@@65))
 :qid |AccountFreezingandybpl.139:13|
 :skolemid |3|
)))
 :qid |AccountFreezingandybpl.3496:13|
 :skolemid |98|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $EmptyEventStore) $t13@@1)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_414242| stream@@15)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@15) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@2))))
(Multiset_414242 (|Store__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@15) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@2) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $EmptyEventStore) $t13@@1 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@16 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| expected@@0) handle@@16)) (|l#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| actual@@0) handle@@16))) (forall ((v@@66 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| expected@@0) handle@@16)) v@@66) (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| actual@@0) handle@@16)) v@@66))
 :qid |AccountFreezingandybpl.139:13|
 :skolemid |3|
)))
 :qid |AccountFreezingandybpl.3496:13|
 :skolemid |98|
))))) (=> (= (ControlFlow 0 1091598) (- 0 1878980)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $EmptyEventStore) $t13@@1)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_414242| stream@@16)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@16) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@2))))
(Multiset_414242 (|Store__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@16) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t14@@2) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $EmptyEventStore) $t13@@1 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@17 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| actual@@1) handle@@17)) (|l#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| expected@@1) handle@@17))) (forall ((v@@67 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| actual@@1) handle@@17)) v@@67) (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| expected@@1) handle@@17)) v@@67))
 :qid |AccountFreezingandybpl.139:13|
 :skolemid |3|
)))
 :qid |AccountFreezingandybpl.3496:13|
 :skolemid |98|
)))))))))))))))))))))))))))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 1090130) (- 0 1878648)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) _$t1@@11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (exists ((i@@63 Int) ) (!  (and (and (|$IsValid'u64'| i@@63) (and (>= i@@63 0) (< i@@63 (seq.len $t11@@5)))) (= (seq.nth $t11@@5 i@@63) ($1_VASPDomain_VASPDomain _$t2@@3)))
 :qid |AccountFreezingandybpl.1860:13|
 :skolemid |52|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t12@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t12@@3)) 1))) (not (= (|$addr#$signer| _$t0@@13) 186537453))) (> (seq.len _$t2@@3) 63))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) _$t1@@11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (exists ((i@@64 Int) ) (!  (and (and (|$IsValid'u64'| i@@64) (and (>= i@@64 0) (< i@@64 (seq.len $t11@@5)))) (= (seq.nth $t11@@5 i@@64) ($1_VASPDomain_VASPDomain _$t2@@3)))
 :qid |AccountFreezingandybpl.1860:13|
 :skolemid |52|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t12@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t12@@3)) 1))) (not (= (|$addr#$signer| _$t0@@13) 186537453))) (> (seq.len _$t2@@3) 63)) (=> (= (ControlFlow 0 1090130) (- 0 1878714)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) _$t1@@11)) (= 5 $t17@0@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= 5 $t17@0@@1))) (and (exists ((i@@65 Int) ) (!  (and (and (|$IsValid'u64'| i@@65) (and (>= i@@65 0) (< i@@65 (seq.len $t11@@5)))) (= (seq.nth $t11@@5 i@@65) ($1_VASPDomain_VASPDomain _$t2@@3)))
 :qid |AccountFreezingandybpl.1860:13|
 :skolemid |52|
)) (= 7 $t17@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t12@@3)) (= 5 $t17@0@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t12@@3)) 1)) (= 3 $t17@0@@1))) (and (not (= (|$addr#$signer| _$t0@@13) 186537453)) (= 2 $t17@0@@1))) (and (> (seq.len _$t2@@3) 63) (= 7 $t17@0@@1))))))))
(let ((anon45_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0@@1 $abort_code@3) (= (ControlFlow 0 1091612) 1090130))) L7_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1| (|v#$Mutation_446711| $t34@0)) (= $es@0 (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_414242| stream@@17)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t36@0))))
(Multiset_414242 (|Store__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t36@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 1091412) 1091612) anon45_Then_correct) (=> (= (ControlFlow 0 1091412) 1091598) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (and (not $abort_flag@2) (= $t34@0 ($Mutation_446711 (|l#$Mutation_520742| $t33@1) (seq.++ (|p#$Mutation_520742| $t33@1) (seq.unit 0)) (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|v#$Mutation_520742| $t33@1))))) (and (= $t36@0 ($1_VASPDomain_VASPDomainEvent false inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 _$t1@@11)) (= (ControlFlow 0 1091418) 1091412))) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct|)))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0@@1 $abort_code@3) (= (ControlFlow 0 1091626) 1090130))) L7_correct@@0)))
(let ((anon43_Then$1_correct  (=> (= $t33@1 $t33) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 1091678) 1091626) anon44_Then_correct) (=> (= (ControlFlow 0 1091678) 1091418) anon44_Else_correct))))))
(let ((anon43_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= (ControlFlow 0 1091676) 1091678)) anon43_Then$1_correct)))
(let ((anon43_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) 186537453) (=> (and (and (= $t33@0 ($Mutation_520742 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (= $t33@1 $t33@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 1091303) 1091626) anon44_Then_correct) (=> (= (ControlFlow 0 1091303) 1091418) anon44_Else_correct))))))
(let ((anon42_Else_correct  (=> (and (not $abort_flag@1) (= $t24@2 ($Mutation_520681 (|l#$Mutation_520681| $t24@1@@0) (|p#$Mutation_520681| $t24@1@@0) ($1_VASPDomain_VASPDomains (|v#$Mutation_431459| |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$m'@1|))))) (and (=> (= (ControlFlow 0 1091281) (- 0 1878238)) (let (($range_0 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@66 $i_1))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2)) i@@66))) 63)))
 :qid |AccountFreezingandybpl.20574:107|
 :skolemid |333|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i@@67 $i_1@@0))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2)) i@@67))) 63)))
 :qid |AccountFreezingandybpl.20574:107|
 :skolemid |333|
))) (and (=> (= (ControlFlow 0 1091281) (- 0 1878286)) (let (($range_0@@1 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i@@68 $i_1@@1))
(let (($range_2 ($Range (+ i@@68 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2))))))
(forall (($i_3 Int) ) (!  (=> ($InRange $range_2 $i_3) (let ((j@@14 $i_3))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2)) i@@68) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2)) j@@14)))))
 :qid |AccountFreezingandybpl.20582:112|
 :skolemid |334|
)))))
 :qid |AccountFreezingandybpl.20581:107|
 :skolemid |335|
)))) (=> (let (($range_0@@2 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2))))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@2) (let ((i@@69 $i_1@@2))
(let (($range_2@@0 ($Range (+ i@@69 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2))))))
(forall (($i_3@@0 Int) ) (!  (=> ($InRange $range_2@@0 $i_3@@0) (let ((j@@15 $i_3@@0))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2)) i@@69) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2)) j@@15)))))
 :qid |AccountFreezingandybpl.20582:112|
 :skolemid |334|
)))))
 :qid |AccountFreezingandybpl.20581:107|
 :skolemid |335|
))) (and (=> (= (ControlFlow 0 1091281) (- 0 1878371)) (let (($range_0@@3 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2))))
(forall (($i_1@@3 Int) ) (!  (=> (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@3))) (let (($elem (seq.nth $range_0@@3 $i_1@@3)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem)) 63)))
 :qid |AccountFreezingandybpl.20589:88|
 :skolemid |336|
)))) (=> (let (($range_0@@4 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@2))))
(forall (($i_1@@4 Int) ) (!  (=> (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@4))) (let (($elem@@0 (seq.nth $range_0@@4 $i_1@@4)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem@@0)) 63)))
 :qid |AccountFreezingandybpl.20589:88|
 :skolemid |336|
))) (=> (and (= $1_VASPDomain_VASPDomains_$memory@0 ($Memory_520293 (|Store__T@[Int]Bool_| (|domain#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) (|a#$Global| (|l#$Mutation_520681| $t24@2)) true) (|Store__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) (|a#$Global| (|l#$Mutation_520681| $t24@2)) (|v#$Mutation_520681| $t24@2)))) (|$IsValid'address'| 186537453)) (and (=> (= (ControlFlow 0 1091281) 1091676) anon43_Then_correct) (=> (= (ControlFlow 0 1091281) 1091303) anon43_Else_correct))))))))))))
(let ((anon42_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0@@1 $abort_code@2) (= (ControlFlow 0 1091692) 1090130))) L7_correct@@0)))
(let ((|inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$m'@1| ($Mutation_431459 (|l#$Mutation_431459| $t31@0) (|p#$Mutation_431459| $t31@0) (seq.++ (|v#$Mutation_431459| $t31@0) (seq.unit inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1)))) (and (=> (= (ControlFlow 0 1091055) 1091692) anon42_Then_correct) (=> (= (ControlFlow 0 1091055) 1091281) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> inline$$Not$0$dst@1@@2 (=> (and (= $t31@0 ($Mutation_431459 (|l#$Mutation_520681| $t24@1@@0) (seq.++ (|p#$Mutation_520681| $t24@1@@0) (seq.unit 0)) (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0)))) (= (ControlFlow 0 1091061) 1091055)) |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$anon0_correct|))))
(let ((anon41_Else_correct  (=> (not inline$$Not$0$dst@1@@2) (and (=> (= (ControlFlow 0 1090988) (- 0 1877995)) (let (($range_0@@5 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0))))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@5) (let ((i@@70 $i_1@@5))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0)) i@@70))) 63)))
 :qid |AccountFreezingandybpl.20520:107|
 :skolemid |329|
)))) (=> (let (($range_0@@6 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0))))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@6) (let ((i@@71 $i_1@@6))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0)) i@@71))) 63)))
 :qid |AccountFreezingandybpl.20520:107|
 :skolemid |329|
))) (and (=> (= (ControlFlow 0 1090988) (- 0 1878043)) (let (($range_0@@7 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0))))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@7) (let ((i@@72 $i_1@@7))
(let (($range_2@@1 ($Range (+ i@@72 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0))))))
(forall (($i_3@@1 Int) ) (!  (=> ($InRange $range_2@@1 $i_3@@1) (let ((j@@16 $i_3@@1))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0)) i@@72) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0)) j@@16)))))
 :qid |AccountFreezingandybpl.20528:112|
 :skolemid |330|
)))))
 :qid |AccountFreezingandybpl.20527:107|
 :skolemid |331|
)))) (=> (let (($range_0@@8 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0))))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@8 $i_1@@8) (let ((i@@73 $i_1@@8))
(let (($range_2@@2 ($Range (+ i@@73 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0))))))
(forall (($i_3@@2 Int) ) (!  (=> ($InRange $range_2@@2 $i_3@@2) (let ((j@@17 $i_3@@2))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0)) i@@73) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0)) j@@17)))))
 :qid |AccountFreezingandybpl.20528:112|
 :skolemid |330|
)))))
 :qid |AccountFreezingandybpl.20527:107|
 :skolemid |331|
))) (and (=> (= (ControlFlow 0 1090988) (- 0 1878128)) (let (($range_0@@9 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0))))
(forall (($i_1@@9 Int) ) (!  (=> (and (>= $i_1@@9 0) (< $i_1@@9 (seq.len $range_0@@9))) (let (($elem@@1 (seq.nth $range_0@@9 $i_1@@9)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem@@1)) 63)))
 :qid |AccountFreezingandybpl.20535:88|
 :skolemid |332|
)))) (=> (let (($range_0@@10 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0))))
(forall (($i_1@@10 Int) ) (!  (=> (and (>= $i_1@@10 0) (< $i_1@@10 (seq.len $range_0@@10))) (let (($elem@@2 (seq.nth $range_0@@10 $i_1@@10)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem@@2)) 63)))
 :qid |AccountFreezingandybpl.20535:88|
 :skolemid |332|
))) (=> (= $t30 $t30) (=> (and (= $t17@0@@1 $t30) (= (ControlFlow 0 1090988) 1090130)) L7_correct@@0)))))))))))
(let ((anon40_Else$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (and (|$IsValid'u64'| $t30) (= $t30 7)) (and (= $t30 $t30) (= inline$$Not$0$dst@1@@2 inline$$Not$0$dst@1@@2))) (and (=> (= (ControlFlow 0 1090794) 1091061) anon41_Then_correct) (=> (= (ControlFlow 0 1090794) 1090988) anon41_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (and (= inline$$Not$0$dst@1@@2  (not |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$res@1|)) (= (ControlFlow 0 1090754) 1090794)) anon40_Else$1_correct)))
(let ((anon40_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 1090760) 1090754)) inline$$Not$0$anon0_correct@@2)))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0@@1 $abort_code@2) (= (ControlFlow 0 1091706) 1090130))) L7_correct@@0)))
(let ((|inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$res@1| (exists ((i@@74 Int) ) (!  (and (and (|$IsValid'u64'| i@@74) (and (>= i@@74 0) (< i@@74 (seq.len $t26@0@@0)))) (= (seq.nth $t26@0@@0 i@@74) inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1))
 :qid |AccountFreezingandybpl.1860:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 1090710) 1091706) anon40_Then_correct) (=> (= (ControlFlow 0 1090710) 1090760) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (and (not $abort_flag@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1)) (and (= $t26@0@@0 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_520681| $t24@1@@0))) (= (ControlFlow 0 1090716) 1090710))) |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$anon0_correct|)))
(let ((anon39_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0@@1 $abort_code@2) (= (ControlFlow 0 1091720) 1090130))) L7_correct@@0)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$L3_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 inline$$1_VASPDomain_create_vasp_domain$0$$t4@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0)) (and (=> (= (ControlFlow 0 1090610) 1091720) anon39_Then_correct) (=> (= (ControlFlow 0 1090610) 1090716) anon39_Else_correct))))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon7_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t4@1 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0) (= (ControlFlow 0 1090604) 1090610))) inline$$1_VASPDomain_create_vasp_domain$0$L3_correct)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Then_correct  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t4@1 $abort_code@1@@6) (= (ControlFlow 0 1090642) 1090610))) inline$$1_VASPDomain_create_vasp_domain$0$L3_correct)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon7_Then_correct  (=> (and inline$$Le$0$dst@1 (= inline$$1_VASPDomain_create_vasp_domain$0$$t9@1 ($1_VASPDomain_VASPDomain _$t2@@3))) (=> (and (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t9@1 inline$$1_VASPDomain_create_vasp_domain$0$$t9@1) (= $abort_flag@1 $abort_flag@0@@6)) (and (= $abort_code@2 $abort_code@1@@6) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 inline$$1_VASPDomain_create_vasp_domain$0$$t9@1))) (and (=> (= (ControlFlow 0 1090628) 1091720) anon39_Then_correct) (=> (= (ControlFlow 0 1090628) 1090716) anon39_Else_correct))))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_create_vasp_domain$0$$t8@0) (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 7)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 1090588) 1090628) inline$$1_VASPDomain_create_vasp_domain$0$anon7_Then_correct) (=> (= (ControlFlow 0 1090588) 1090604) inline$$1_VASPDomain_create_vasp_domain$0$anon7_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u8'$0$l@1| 63)) (= (ControlFlow 0 1090552) 1090588)) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else$1_correct)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else_correct  (=> (not $abort_flag@0@@6) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 1090558) 1090552)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t2@@3)) (and (=> (= (ControlFlow 0 1090492) 1090642) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Then_correct) (=> (= (ControlFlow 0 1090492) 1090558) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else_correct)))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon0_correct  (=> (and (= _$t2@@3 _$t2@@3) (= (ControlFlow 0 1090498) 1090492)) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((anon38_Else_correct  (=> (and (and (not $abort_flag@0@@6) (= |$temp_0'$1_VASPDomain_VASPDomains'@0| (|v#$Mutation_520681| $t24@1@@0))) (and (= |$temp_0'$1_VASPDomain_VASPDomains'@0| |$temp_0'$1_VASPDomain_VASPDomains'@0|) (= (ControlFlow 0 1090648) 1090498))) inline$$1_VASPDomain_create_vasp_domain$0$anon0_correct)))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t17@0@@1 $abort_code@1@@6) (= (ControlFlow 0 1091734) 1090130))) L7_correct@@0)))
(let ((anon37_Then$1_correct  (=> (= $t24@1@@0 $t24@@1) (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1091786) 1091734) anon38_Then_correct) (=> (= (ControlFlow 0 1091786) 1090648) anon38_Else_correct))))))
(let ((anon37_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) _$t1@@11)) (= (ControlFlow 0 1091784) 1091786)) anon37_Then$1_correct)))
(let ((anon37_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) _$t1@@11) (=> (and (and (= $t24@0@@0 ($Mutation_520681 ($Global _$t1@@11) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) _$t1@@11))) (= $t24@1@@0 $t24@0@@0)) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 1090214) 1091734) anon38_Then_correct) (=> (= (ControlFlow 0 1090214) 1090648) anon38_Else_correct))))))
(let ((anon36_Then_correct  (=> $t21@0@@0 (and (=> (= (ControlFlow 0 1090192) 1091784) anon37_Then_correct) (=> (= (ControlFlow 0 1090192) 1090214) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (and (not $t21@0@@0) (= $t23@@0 $t23@@0)) (and (= $t17@0@@1 $t23@@0) (= (ControlFlow 0 1090188) 1090130))) L7_correct@@0)))
(let ((anon35_Then_correct  (=> inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 (=> (and (= $t21@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) _$t1@@11)) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 5)) (and (= $t23@@0 $t23@@0) (= $t21@0@@0 $t21@0@@0))) (and (=> (= (ControlFlow 0 1090172) 1090192) anon36_Then_correct) (=> (= (ControlFlow 0 1090172) 1090188) anon36_Else_correct)))))))
(let ((anon35_Else_correct  (=> (and (and (not inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1) (= $t20@@1 $t20@@1)) (and (= $t17@0@@1 $t20@@1) (= (ControlFlow 0 1089918) 1090130))) L7_correct@@0)))
(let ((anon34_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t20@@1) (= $t20@@1 5)) (and (= $t20@@1 $t20@@1) (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1))) (and (=> (= (ControlFlow 0 1089902) 1090172) anon35_Then_correct) (=> (= (ControlFlow 0 1089902) 1089918) anon35_Else_correct))))))
(let ((anon33_Then_correct  (=> $t16@@1 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t15@@2)) (= 5 $t17@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t15@@2)) 1)) (= 3 $t17@@0))) (and (not (= (|$addr#$signer| _$t0@@13) 186537453)) (= 2 $t17@@0))) (= $t17@@0 $t17@@0)) (and (= $t17@0@@1 $t17@@0) (= (ControlFlow 0 1091872) 1090130))) L7_correct@@0))))
(let ((anon34_Then_correct true))
(let ((inline$$1_VASPDomain_tc_domain_manager_exists$0$anon0_correct  (=> (|$IsValid'address'| 186537453) (=> (and (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1)) (and (=> (= (ControlFlow 0 1089860) 1091800) anon34_Then_correct) (=> (= (ControlFlow 0 1089860) 1089902) anon34_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not $t16@@1) (= (ControlFlow 0 1089866) 1089860)) inline$$1_VASPDomain_tc_domain_manager_exists$0$anon0_correct)))
(let ((anon0$1_correct@@13  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@13)) (=> (and (|$IsValid'address'| _$t1@@11) (|$IsValid'vec'u8''| _$t2@@3)) (=> (and (and (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@22)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@22))
 :qid |AccountFreezingandybpl.20253:20|
 :skolemid |322|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $a_0@@22))
)) (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@23)))
(|$IsValid'$1_VASPDomain_VASPDomainManager'| $rsc@@23))
 :qid |AccountFreezingandybpl.20257:20|
 :skolemid |323|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@23))
))) (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) $a_0@@24)))
 (and (|$IsValid'$1_VASPDomain_VASPDomains'| $rsc@@24) (and (and (let (($range_1 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@24)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@75 $i_2))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@24) i@@75))) 63)))
 :qid |AccountFreezingandybpl.20262:140|
 :skolemid |324|
))) (let (($range_3 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@24)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@76 $i_4))
(let (($range_5 ($Range (+ i@@76 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@24)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@18 $i_6))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@24) i@@76) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@24) j@@18)))))
 :qid |AccountFreezingandybpl.20264:98|
 :skolemid |325|
)))))
 :qid |AccountFreezingandybpl.20263:202|
 :skolemid |326|
)))) (let (($range_7 (|$domains#$1_VASPDomain_VASPDomains| $rsc@@24)))
(forall (($i_8 Int) ) (!  (=> (and (>= $i_8 0) (< $i_8 (seq.len $range_7))) (let (($elem@@3 (seq.nth $range_7 $i_8)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem@@3)) 63)))
 :qid |AccountFreezingandybpl.20265:229|
 :skolemid |327|
))))))
 :qid |AccountFreezingandybpl.20261:20|
 :skolemid |328|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) $a_0@@24))
)) (= $t11@@5 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_520293| $1_VASPDomain_VASPDomains_$memory) _$t1@@11))))) (=> (and (and (and (= $t12@@3 (|$addr#$signer| _$t0@@13)) (= $t13@@1 (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_457989| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (and (= $t14@@2 ($1_VASPDomain_VASPDomainEvent false ($1_VASPDomain_VASPDomain _$t2@@3) _$t1@@11)) (= _$t0@@13 _$t0@@13))) (and (and (= _$t1@@11 _$t1@@11) (= _$t2@@3 _$t2@@3)) (and (= $t15@@2 (|$addr#$signer| _$t0@@13)) (= $t16@@1  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_454860| $1_Roles_RoleId_$memory) $t15@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_454860| $1_Roles_RoleId_$memory) $t15@@2)) 1))) (not (= (|$addr#$signer| _$t0@@13) 186537453))))))) (and (=> (= (ControlFlow 0 1089773) 1091872) anon33_Then_correct) (=> (= (ControlFlow 0 1089773) 1089866) anon33_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@13  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_414242_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_414242| stream@@18) 0) (forall ((v@@68 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_414242| stream@@18) v@@68) 0)
 :qid |AccountFreezingandybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountFreezingandybpl.3480:13|
 :skolemid |97|
))) (= (ControlFlow 0 1089385) 1089773)) anon0$1_correct@@13)))
(let ((anon0_correct@@13  (=> (and (= (seq.len (|p#$Mutation_520681| $t9@@10)) 0) (= (seq.len (|p#$Mutation_520681| $t24@@1)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_431459| $t31)) 0) (= (seq.len (|p#$Mutation_520742| $t33)) 0)) (and (= (seq.len (|p#$Mutation_446711| $t34)) 0) (= (ControlFlow 0 1089395) 1089385))) inline$$InitEventStore$0$anon0_correct@@13))))
(let ((PreconditionGeneratedEntry_correct@@3  (=> (= (ControlFlow 0 1876712) 1089395) anon0_correct@@13)))
PreconditionGeneratedEntry_correct@@3)))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 1876712)))
(get-value ((ControlFlow 0 1089395)))
(get-value ((ControlFlow 0 1089385)))
(get-value ((ControlFlow 0 1089773)))
(get-value ((ControlFlow 0 1089866)))
(get-value ((ControlFlow 0 1089860)))
(get-value ((ControlFlow 0 1089902)))
(get-value ((ControlFlow 0 1090172)))
(get-value ((ControlFlow 0 1090192)))
(get-value ((ControlFlow 0 1090214)))
(get-value ((ControlFlow 0 1090648)))
(get-value ((ControlFlow 0 1090498)))
(get-value ((ControlFlow 0 1090492)))
(get-value ((ControlFlow 0 1090558)))
(get-value ((ControlFlow 0 1090552)))
(get-value ((ControlFlow 0 1090588)))
(get-value ((ControlFlow 0 1090628)))
(get-value ((ControlFlow 0 1090716)))
(get-value ((ControlFlow 0 1090710)))
(get-value ((ControlFlow 0 1090760)))
(get-value ((ControlFlow 0 1090754)))
(get-value ((ControlFlow 0 1090794)))
(get-value ((ControlFlow 0 1091061)))
(get-value ((ControlFlow 0 1091055)))
(get-value ((ControlFlow 0 1091281)))
(assert (not (= (ControlFlow 0 1091281) (- 1878238))))
(check-sat)
