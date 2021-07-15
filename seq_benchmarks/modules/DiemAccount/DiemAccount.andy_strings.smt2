(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_233499 0)) ((($Memory_233499 (|domain#$Memory_233499| |T@[Int]Bool|) (|contents#$Memory_233499| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_494191 0)) ((($Memory_494191 (|domain#$Memory_494191| |T@[Int]Bool|) (|contents#$Memory_494191| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_241753 0)) ((($Memory_241753 (|domain#$Memory_241753| |T@[Int]Bool|) (|contents#$Memory_241753| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_303402 0)) ((($Memory_303402 (|domain#$Memory_303402| |T@[Int]Bool|) (|contents#$Memory_303402| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_303748 0)) ((($Memory_303748 (|domain#$Memory_303748| |T@[Int]Bool|) (|contents#$Memory_303748| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_303092 0)) ((($Memory_303092 (|domain#$Memory_303092| |T@[Int]Bool|) (|contents#$Memory_303092| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_296304 0)) ((($Memory_296304 (|domain#$Memory_296304| |T@[Int]Bool|) (|contents#$Memory_296304| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_244157 0)) ((($Memory_244157 (|domain#$Memory_244157| |T@[Int]Bool|) (|contents#$Memory_244157| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_HaltAllTransactions 0)) ((($1_DiemTransactionPublishingOption_HaltAllTransactions (|$dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| 0)
(declare-datatypes ((T@$Memory_293852 0)) ((($Memory_293852 (|domain#$Memory_293852| |T@[Int]Bool|) (|contents#$Memory_293852| |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_285391 0)) ((($Memory_285391 (|domain#$Memory_285391| |T@[Int]Bool|) (|contents#$Memory_285391| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_244242 0)) ((($Memory_244242 (|domain#$Memory_244242| |T@[Int]Bool|) (|contents#$Memory_244242| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_279339 0)) ((($Memory_279339 (|domain#$Memory_279339| |T@[Int]Bool|) (|contents#$Memory_279339| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_279275 0)) ((($Memory_279275 (|domain#$Memory_279275| |T@[Int]Bool|) (|contents#$Memory_279275| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_277970 0)) ((($Memory_277970 (|domain#$Memory_277970| |T@[Int]Bool|) (|contents#$Memory_277970| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_277906 0)) ((($Memory_277906 (|domain#$Memory_277906| |T@[Int]Bool|) (|contents#$Memory_277906| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_272773 0)) ((($Memory_272773 (|domain#$Memory_272773| |T@[Int]Bool|) (|contents#$Memory_272773| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_272841 0)) ((($Memory_272841 (|domain#$Memory_272841| |T@[Int]Bool|) (|contents#$Memory_272841| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_274046 0)) ((($Memory_274046 (|domain#$Memory_274046| |T@[Int]Bool|) (|contents#$Memory_274046| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_273827 0)) ((($Memory_273827 (|domain#$Memory_273827| |T@[Int]Bool|) (|contents#$Memory_273827| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_241682 0)) ((($Memory_241682 (|domain#$Memory_241682| |T@[Int]Bool|) (|contents#$Memory_241682| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_262278 0)) ((($Memory_262278 (|domain#$Memory_262278| |T@[Int]Bool|) (|contents#$Memory_262278| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_262191 0)) ((($Memory_262191 (|domain#$Memory_262191| |T@[Int]Bool|) (|contents#$Memory_262191| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_262104 0)) ((($Memory_262104 (|domain#$Memory_262104| |T@[Int]Bool|) (|contents#$Memory_262104| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_257471 0)) ((($Memory_257471 (|domain#$Memory_257471| |T@[Int]Bool|) (|contents#$Memory_257471| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_257384 0)) ((($Memory_257384 (|domain#$Memory_257384| |T@[Int]Bool|) (|contents#$Memory_257384| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_257297 0)) ((($Memory_257297 (|domain#$Memory_257297| |T@[Int]Bool|) (|contents#$Memory_257297| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_244072 0)) ((($Memory_244072 (|domain#$Memory_244072| |T@[Int]Bool|) (|contents#$Memory_244072| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_262633 0)) ((($Memory_262633 (|domain#$Memory_262633| |T@[Int]Bool|) (|contents#$Memory_262633| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_281989 0)) ((($Memory_281989 (|domain#$Memory_281989| |T@[Int]Bool|) (|contents#$Memory_281989| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_263058 0)) ((($Memory_263058 (|domain#$Memory_263058| |T@[Int]Bool|) (|contents#$Memory_263058| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_243987 0)) ((($Memory_243987 (|domain#$Memory_243987| |T@[Int]Bool|) (|contents#$Memory_243987| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_262542 0)) ((($Memory_262542 (|domain#$Memory_262542| |T@[Int]Bool|) (|contents#$Memory_262542| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_276618 0)) ((($Memory_276618 (|domain#$Memory_276618| |T@[Int]Bool|) (|contents#$Memory_276618| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_262959 0)) ((($Memory_262959 (|domain#$Memory_262959| |T@[Int]Bool|) (|contents#$Memory_262959| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_243902 0)) ((($Memory_243902 (|domain#$Memory_243902| |T@[Int]Bool|) (|contents#$Memory_243902| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_262451 0)) ((($Memory_262451 (|domain#$Memory_262451| |T@[Int]Bool|) (|contents#$Memory_262451| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_281925 0)) ((($Memory_281925 (|domain#$Memory_281925| |T@[Int]Bool|) (|contents#$Memory_281925| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_262860 0)) ((($Memory_262860 (|domain#$Memory_262860| |T@[Int]Bool|) (|contents#$Memory_262860| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_256775 0)) ((($Memory_256775 (|domain#$Memory_256775| |T@[Int]Bool|) (|contents#$Memory_256775| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_256650 0)) ((($Memory_256650 (|domain#$Memory_256650| |T@[Int]Bool|) (|contents#$Memory_256650| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_256586 0)) ((($Memory_256586 (|domain#$Memory_256586| |T@[Int]Bool|) (|contents#$Memory_256586| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_252603 0)) ((($Memory_252603 (|domain#$Memory_252603| |T@[Int]Bool|) (|contents#$Memory_252603| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_252516 0)) ((($Memory_252516 (|domain#$Memory_252516| |T@[Int]Bool|) (|contents#$Memory_252516| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_252429 0)) ((($Memory_252429 (|domain#$Memory_252429| |T@[Int]Bool|) (|contents#$Memory_252429| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_252342 0)) ((($Memory_252342 (|domain#$Memory_252342| |T@[Int]Bool|) (|contents#$Memory_252342| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_252255 0)) ((($Memory_252255 (|domain#$Memory_252255| |T@[Int]Bool|) (|contents#$Memory_252255| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_252868 0)) ((($Memory_252868 (|domain#$Memory_252868| |T@[Int]Bool|) (|contents#$Memory_252868| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_251358 0)) ((($Memory_251358 (|domain#$Memory_251358| |T@[Int]Bool|) (|contents#$Memory_251358| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_251424 0)) ((($Memory_251424 (|domain#$Memory_251424| |T@[Int]Bool|) (|contents#$Memory_251424| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_251277 0)) ((($Memory_251277 (|domain#$Memory_251277| |T@[Int]Bool|) (|contents#$Memory_251277| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_251196 0)) ((($Memory_251196 (|domain#$Memory_251196| |T@[Int]Bool|) (|contents#$Memory_251196| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_251115 0)) ((($Memory_251115 (|domain#$Memory_251115| |T@[Int]Bool|) (|contents#$Memory_251115| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_251034 0)) ((($Memory_251034 (|domain#$Memory_251034| |T@[Int]Bool|) (|contents#$Memory_251034| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_250898 0)) ((($Memory_250898 (|domain#$Memory_250898| |T@[Int]Bool|) (|contents#$Memory_250898| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_243798 0)) ((($Memory_243798 (|domain#$Memory_243798| |T@[Int]Bool|) (|contents#$Memory_243798| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_250953 0)) ((($Memory_250953 (|domain#$Memory_250953| |T@[Int]Bool|) (|contents#$Memory_250953| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_249595 0)) ((($Memory_249595 (|domain#$Memory_249595| |T@[Int]Bool|) (|contents#$Memory_249595| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_248139 0)) ((($Memory_248139 (|domain#$Memory_248139| |T@[Int]Bool|) (|contents#$Memory_248139| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_242142 0)) ((($Memory_242142 (|domain#$Memory_242142| |T@[Int]Bool|) (|contents#$Memory_242142| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_240251 0)) ((($Memory_240251 (|domain#$Memory_240251| |T@[Int]Bool|) (|contents#$Memory_240251| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_205661 0)) (((Multiset_205661 (|v#Multiset_205661| |T@[$EventRep]Int|) (|l#Multiset_205661| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_205661| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_205661|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_487048 0)) ((($Mutation_487048 (|l#$Mutation_487048| T@$Location) (|p#$Mutation_487048| (Seq Int)) (|v#$Mutation_487048| T@$1_DiemAccount_DiemWriteSetManager) ) ) ))
(declare-datatypes ((T@$Mutation_418591 0)) ((($Mutation_418591 (|l#$Mutation_418591| T@$Location) (|p#$Mutation_418591| (Seq Int)) (|v#$Mutation_418591| T@$1_DiemAccount_AccountOperationsCapability) ) ) ))
(declare-datatypes ((T@$Mutation_415463 0)) ((($Mutation_415463 (|l#$Mutation_415463| T@$Location) (|p#$Mutation_415463| (Seq Int)) (|v#$Mutation_415463| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_412623 0)) ((($Mutation_412623 (|l#$Mutation_412623| T@$Location) (|p#$Mutation_412623| (Seq Int)) (|v#$Mutation_412623| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_405439 0)) ((($Mutation_405439 (|l#$Mutation_405439| T@$Location) (|p#$Mutation_405439| (Seq Int)) (|v#$Mutation_405439| |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_336154 0)) ((($Mutation_336154 (|l#$Mutation_336154| T@$Location) (|p#$Mutation_336154| (Seq Int)) (|v#$Mutation_336154| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_336109 0)) ((($Mutation_336109 (|l#$Mutation_336109| T@$Location) (|p#$Mutation_336109| (Seq Int)) (|v#$Mutation_336109| |T@$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_305294 0)) ((($Mutation_305294 (|l#$Mutation_305294| T@$Location) (|p#$Mutation_305294| (Seq Int)) (|v#$Mutation_305294| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_305252 0)) ((($Mutation_305252 (|l#$Mutation_305252| T@$Location) (|p#$Mutation_305252| (Seq Int)) (|v#$Mutation_305252| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_300499 0)) ((($Mutation_300499 (|l#$Mutation_300499| T@$Location) (|p#$Mutation_300499| (Seq Int)) (|v#$Mutation_300499| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_290187 0)) ((($Mutation_290187 (|l#$Mutation_290187| T@$Location) (|p#$Mutation_290187| (Seq Int)) (|v#$Mutation_290187| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_284243 0)) ((($Mutation_284243 (|l#$Mutation_284243| T@$Location) (|p#$Mutation_284243| (Seq Int)) (|v#$Mutation_284243| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_284198 0)) ((($Mutation_284198 (|l#$Mutation_284198| T@$Location) (|p#$Mutation_284198| (Seq Int)) (|v#$Mutation_284198| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_283323 0)) ((($Mutation_283323 (|l#$Mutation_283323| T@$Location) (|p#$Mutation_283323| (Seq Int)) (|v#$Mutation_283323| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_283278 0)) ((($Mutation_283278 (|l#$Mutation_283278| T@$Location) (|p#$Mutation_283278| (Seq Int)) (|v#$Mutation_283278| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_279959 0)) ((($Mutation_279959 (|l#$Mutation_279959| T@$Location) (|p#$Mutation_279959| (Seq Int)) (|v#$Mutation_279959| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_45350 0)) ((($Mutation_45350 (|l#$Mutation_45350| T@$Location) (|p#$Mutation_45350| (Seq Int)) (|v#$Mutation_45350| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_271636 0)) ((($Mutation_271636 (|l#$Mutation_271636| T@$Location) (|p#$Mutation_271636| (Seq Int)) (|v#$Mutation_271636| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_264432 0)) ((($Mutation_264432 (|l#$Mutation_264432| T@$Location) (|p#$Mutation_264432| (Seq Int)) (|v#$Mutation_264432| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_255339 0)) ((($Mutation_255339 (|l#$Mutation_255339| T@$Location) (|p#$Mutation_255339| (Seq Int)) (|v#$Mutation_255339| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_240744 0)) ((($Mutation_240744 (|l#$Mutation_240744| T@$Location) (|p#$Mutation_240744| (Seq Int)) (|v#$Mutation_240744| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_234127 0)) ((($Mutation_234127 (|l#$Mutation_234127| T@$Location) (|p#$Mutation_234127| (Seq Int)) (|v#$Mutation_234127| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_14539 0)) ((($Mutation_14539 (|l#$Mutation_14539| T@$Location) (|p#$Mutation_14539| (Seq Int)) (|v#$Mutation_14539| Int) ) ) ))
(declare-datatypes ((T@$Mutation_228212 0)) ((($Mutation_228212 (|l#$Mutation_228212| T@$Location) (|p#$Mutation_228212| (Seq Int)) (|v#$Mutation_228212| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_227466 0)) ((($Mutation_227466 (|l#$Mutation_227466| T@$Location) (|p#$Mutation_227466| (Seq Int)) (|v#$Mutation_227466| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_226026 0)) ((($Mutation_226026 (|l#$Mutation_226026| T@$Location) (|p#$Mutation_226026| (Seq Int)) (|v#$Mutation_226026| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_225280 0)) ((($Mutation_225280 (|l#$Mutation_225280| T@$Location) (|p#$Mutation_225280| (Seq Int)) (|v#$Mutation_225280| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_223840 0)) ((($Mutation_223840 (|l#$Mutation_223840| T@$Location) (|p#$Mutation_223840| (Seq Int)) (|v#$Mutation_223840| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_223094 0)) ((($Mutation_223094 (|l#$Mutation_223094| T@$Location) (|p#$Mutation_223094| (Seq Int)) (|v#$Mutation_223094| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_221654 0)) ((($Mutation_221654 (|l#$Mutation_221654| T@$Location) (|p#$Mutation_221654| (Seq Int)) (|v#$Mutation_221654| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_220908 0)) ((($Mutation_220908 (|l#$Mutation_220908| T@$Location) (|p#$Mutation_220908| (Seq Int)) (|v#$Mutation_220908| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_219468 0)) ((($Mutation_219468 (|l#$Mutation_219468| T@$Location) (|p#$Mutation_219468| (Seq Int)) (|v#$Mutation_219468| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_218722 0)) ((($Mutation_218722 (|l#$Mutation_218722| T@$Location) (|p#$Mutation_218722| (Seq Int)) (|v#$Mutation_218722| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_217282 0)) ((($Mutation_217282 (|l#$Mutation_217282| T@$Location) (|p#$Mutation_217282| (Seq Int)) (|v#$Mutation_217282| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_216536 0)) ((($Mutation_216536 (|l#$Mutation_216536| T@$Location) (|p#$Mutation_216536| (Seq Int)) (|v#$Mutation_216536| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_215096 0)) ((($Mutation_215096 (|l#$Mutation_215096| T@$Location) (|p#$Mutation_215096| (Seq Int)) (|v#$Mutation_215096| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_214350 0)) ((($Mutation_214350 (|l#$Mutation_214350| T@$Location) (|p#$Mutation_214350| (Seq Int)) (|v#$Mutation_214350| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_212910 0)) ((($Mutation_212910 (|l#$Mutation_212910| T@$Location) (|p#$Mutation_212910| (Seq Int)) (|v#$Mutation_212910| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_212164 0)) ((($Mutation_212164 (|l#$Mutation_212164| T@$Location) (|p#$Mutation_212164| (Seq Int)) (|v#$Mutation_212164| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_210724 0)) ((($Mutation_210724 (|l#$Mutation_210724| T@$Location) (|p#$Mutation_210724| (Seq Int)) (|v#$Mutation_210724| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_209978 0)) ((($Mutation_209978 (|l#$Mutation_209978| T@$Location) (|p#$Mutation_209978| (Seq Int)) (|v#$Mutation_209978| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_208500 0)) ((($Mutation_208500 (|l#$Mutation_208500| T@$Location) (|p#$Mutation_208500| (Seq Int)) (|v#$Mutation_208500| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_207754 0)) ((($Mutation_207754 (|l#$Mutation_207754| T@$Location) (|p#$Mutation_207754| (Seq Int)) (|v#$Mutation_207754| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_205661_| (|T@[$1_Event_EventHandle]Multiset_205661| T@$1_Event_EventHandle) T@Multiset_205661)
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
(declare-fun |$IsValid'$1_AccountLimits_Window'#0''| (|T@$1_AccountLimits_Window'#0'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'#0''| (|T@$1_TransactionFee_TransactionFee'#0'|) Bool)
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int (Seq Int) Int) (Seq Int))
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| (T@$1_DiemTransactionPublishingOption_HaltAllTransactions) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
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
(declare-fun ReverseVec_14392 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_187659 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_186280 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_186477 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_186674 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_187856 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_187265 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_187068 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_186871 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_187462 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_186083 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_205661| |T@[$1_Event_EventHandle]Multiset_205661|) |T@[$1_Event_EventHandle]Multiset_205661|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemAccountandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemAccountandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemAccountandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemAccountandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemAccountandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemAccountandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemAccountandybpl.590:13|
 :skolemid |15|
))))
 :qid |DiemAccountandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemAccountandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemAccountandybpl.603:17|
 :skolemid |18|
)))))
 :qid |DiemAccountandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemAccountandybpl.770:13|
 :skolemid |20|
))))
 :qid |DiemAccountandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemAccountandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemAccountandybpl.783:17|
 :skolemid |23|
)))))
 :qid |DiemAccountandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemAccountandybpl.950:13|
 :skolemid |25|
))))
 :qid |DiemAccountandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemAccountandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemAccountandybpl.963:17|
 :skolemid |28|
)))))
 :qid |DiemAccountandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemAccountandybpl.1130:13|
 :skolemid |30|
))))
 :qid |DiemAccountandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemAccountandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemAccountandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |DiemAccountandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |DiemAccountandybpl.1310:13|
 :skolemid |35|
))))
 :qid |DiemAccountandybpl.1308:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemAccountandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemAccountandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DiemAccountandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |DiemAccountandybpl.1490:13|
 :skolemid |40|
))))
 :qid |DiemAccountandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemAccountandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemAccountandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DiemAccountandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |DiemAccountandybpl.1670:13|
 :skolemid |45|
))))
 :qid |DiemAccountandybpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemAccountandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemAccountandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DiemAccountandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |DiemAccountandybpl.1850:13|
 :skolemid |50|
))))
 :qid |DiemAccountandybpl.1848:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemAccountandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemAccountandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DiemAccountandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |DiemAccountandybpl.2030:13|
 :skolemid |55|
))))
 :qid |DiemAccountandybpl.2028:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemAccountandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemAccountandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DiemAccountandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'vec'u8''| (seq.nth v@@22 i@@27)))
 :qid |DiemAccountandybpl.2210:13|
 :skolemid |60|
))))
 :qid |DiemAccountandybpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@22))
)))
(assert (forall ((v@@23 (Seq (Seq Int))) (e@@8 (Seq Int)) ) (! (let ((i@@28 (|$IndexOfVec'vec'u8''| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemAccountandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemAccountandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DiemAccountandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'address'| (seq.nth v@@24 i@@30)))
 :qid |DiemAccountandybpl.2390:13|
 :skolemid |65|
))))
 :qid |DiemAccountandybpl.2388:33|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DiemAccountandybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DiemAccountandybpl.2403:17|
 :skolemid |68|
)))))
 :qid |DiemAccountandybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'u64'| (seq.nth v@@26 i@@33)))
 :qid |DiemAccountandybpl.2570:13|
 :skolemid |70|
))))
 :qid |DiemAccountandybpl.2568:29|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'u64''| v@@26))
)))
(assert (forall ((v@@27 (Seq Int)) (e@@10 Int) ) (! (let ((i@@34 (|$IndexOfVec'u64'| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |DiemAccountandybpl.2575:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |DiemAccountandybpl.2583:17|
 :skolemid |73|
)))))
 :qid |DiemAccountandybpl.2579:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'u64'| v@@27 e@@10))
)))
(assert (forall ((v@@28 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@28)  (and (|$IsValid'u64'| (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len v@@28))) (|$IsValid'u8'| (seq.nth v@@28 i@@36)))
 :qid |DiemAccountandybpl.2750:13|
 :skolemid |75|
))))
 :qid |DiemAccountandybpl.2748:28|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'u8''| v@@28))
)))
(assert (forall ((v@@29 (Seq Int)) (e@@11 Int) ) (! (let ((i@@37 (|$IndexOfVec'u8'| v@@29 e@@11)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (and (|$IsValid'u64'| i@@38) (and (>= i@@38 0) (< i@@38 (seq.len v@@29)))) (= (seq.nth v@@29 i@@38) e@@11))
 :qid |DiemAccountandybpl.2755:13|
 :skolemid |77|
))) (= i@@37 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@37) (and (>= i@@37 0) (< i@@37 (seq.len v@@29)))) (= (seq.nth v@@29 i@@37) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@37)) (not (= (seq.nth v@@29 j@@11) e@@11)))
 :qid |DiemAccountandybpl.2763:17|
 :skolemid |78|
)))))
 :qid |DiemAccountandybpl.2759:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'u8'| v@@29 e@@11))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemAccountandybpl.2936:15|
 :skolemid |80|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemAccountandybpl.2952:15|
 :skolemid |81|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemAccountandybpl.2999:15|
 :skolemid |82|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemAccountandybpl.3002:15|
 :skolemid |83|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 Int) (v2@@1 Int) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1)))
 :qid |DiemAccountandybpl.3029:15|
 :skolemid |84|
 :pattern ( (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1))
)))
(assert (forall ((v@@30 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'address'| v@@30)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |DiemAccountandybpl.3034:15|
 :skolemid |85|
 :pattern ( (|$1_BCS_serialize'address'| v@@30))
)))
(assert (forall ((v@@31 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@31)))
(= (seq.len r@@1) $serialized_address_len))
 :qid |DiemAccountandybpl.3048:15|
 :skolemid |86|
 :pattern ( (|$1_BCS_serialize'address'| v@@31))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_205661| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream) v@@32) 0)
 :qid |DiemAccountandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountandybpl.3110:13|
 :skolemid |87|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemAccountandybpl.3151:80|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@2)))
 :qid |DiemAccountandybpl.3157:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemAccountandybpl.3207:82|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@3 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@3 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@3)))
 :qid |DiemAccountandybpl.3213:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@3))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemAccountandybpl.3263:80|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@4 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@4 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@4)))
 :qid |DiemAccountandybpl.3269:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@4))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemAccountandybpl.3319:79|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_AdminTransactionEvent) (v2@@5 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5)))
 :qid |DiemAccountandybpl.3325:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemAccountandybpl.3375:76|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_CreateAccountEvent) (v2@@6 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6)))
 :qid |DiemAccountandybpl.3381:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemAccountandybpl.3431:78|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@7 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7)))
 :qid |DiemAccountandybpl.3437:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemAccountandybpl.3487:74|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@8 T@$1_DiemAccount_SentPaymentEvent) (v2@@8 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8)))
 :qid |DiemAccountandybpl.3493:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemAccountandybpl.3543:69|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@9 T@$1_DiemBlock_NewBlockEvent) (v2@@9 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@9) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@9)))
 :qid |DiemAccountandybpl.3549:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@9) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@9))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemAccountandybpl.3599:70|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@10 T@$1_DiemConfig_NewEpochEvent) (v2@@10 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@10)))
 :qid |DiemAccountandybpl.3605:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@10))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemAccountandybpl.3655:60|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |DiemAccountandybpl.3661:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemAccountandybpl.3711:66|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |DiemAccountandybpl.3717:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemAccountandybpl.3767:60|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |DiemAccountandybpl.3773:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemAccountandybpl.3823:63|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |DiemAccountandybpl.3829:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemAccountandybpl.3879:79|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |DiemAccountandybpl.3885:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemAccountandybpl.3935:82|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |DiemAccountandybpl.3941:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemAccountandybpl.3991:88|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |DiemAccountandybpl.3997:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemAccountandybpl.4047:72|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@18 T@$1_VASPDomain_VASPDomainEvent) (v2@@18 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@18) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@18)))
 :qid |DiemAccountandybpl.4053:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@18) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@18))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemAccountandybpl.4137:61|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemAccountandybpl.4737:36|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemAccountandybpl.6690:71|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemAccountandybpl.7075:46|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemAccountandybpl.7088:64|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemAccountandybpl.7101:75|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemAccountandybpl.7114:72|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemAccountandybpl.7143:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemAccountandybpl.7165:46|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemAccountandybpl.7453:49|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemAccountandybpl.7543:71|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemAccountandybpl.7557:91|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemAccountandybpl.7571:113|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |DiemAccountandybpl.7585:75|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |DiemAccountandybpl.7599:73|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |DiemAccountandybpl.7619:48|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |DiemAccountandybpl.7635:57|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |DiemAccountandybpl.7649:83|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |DiemAccountandybpl.7663:103|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |DiemAccountandybpl.7677:125|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |DiemAccountandybpl.7691:87|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |DiemAccountandybpl.7705:85|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |DiemAccountandybpl.7719:48|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |DiemAccountandybpl.7740:45|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |DiemAccountandybpl.7754:51|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |DiemAccountandybpl.7777:48|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |DiemAccountandybpl.8088:49|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |DiemAccountandybpl.8101:65|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |DiemAccountandybpl.8655:45|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |DiemAccountandybpl.8668:45|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@29)))
 :qid |DiemAccountandybpl.8681:37|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |DiemAccountandybpl.8694:55|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |DiemAccountandybpl.8708:55|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@32) true)
 :qid |DiemAccountandybpl.8722:47|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |DiemAccountandybpl.8742:38|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |DiemAccountandybpl.8763:44|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |DiemAccountandybpl.8814:53|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |DiemAccountandybpl.8876:53|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |DiemAccountandybpl.8938:45|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |DiemAccountandybpl.8964:55|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |DiemAccountandybpl.8978:55|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@40) true)
 :qid |DiemAccountandybpl.8992:47|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@41)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@41))))
 :qid |DiemAccountandybpl.9009:38|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@42)))
 :qid |DiemAccountandybpl.9023:48|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@43)))
 :qid |DiemAccountandybpl.9037:48|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@44) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@44)))
 :qid |DiemAccountandybpl.9051:40|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@45)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@45)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@45))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@45))))
 :qid |DiemAccountandybpl.9071:41|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@46)))
 :qid |DiemAccountandybpl.9086:53|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@47)))
 :qid |DiemAccountandybpl.9100:53|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@48)))
 :qid |DiemAccountandybpl.9114:45|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49))))
 :qid |DiemAccountandybpl.9131:60|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50))))
 :qid |DiemAccountandybpl.9148:60|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@51))))
 :qid |DiemAccountandybpl.9165:52|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51))
)))
(assert (forall ((s@@52 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52))))
 :qid |DiemAccountandybpl.9182:57|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53) true)
 :qid |DiemAccountandybpl.12445:68|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))))
 :qid |DiemAccountandybpl.12467:66|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))))
 :qid |DiemAccountandybpl.12493:66|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@56))))
 :qid |DiemAccountandybpl.12519:58|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@57)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@57)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@57))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@57))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@57))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@57))))
 :qid |DiemAccountandybpl.12548:48|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@57))
)))
(assert (forall ((s@@58 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@58) true)
 :qid |DiemAccountandybpl.13033:31|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@58))
)))
(assert (forall ((s@@59 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@59) true)
 :qid |DiemAccountandybpl.13377:31|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@59))
)))
(assert (forall ((s@@60 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@60)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@60)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@60))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@60))))
 :qid |DiemAccountandybpl.13396:35|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@61) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@61)))
 :qid |DiemAccountandybpl.13822:45|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@62)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@62))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@62))))
 :qid |DiemAccountandybpl.13841:50|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@63) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@63)))
 :qid |DiemAccountandybpl.13856:52|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@64) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@64)))
 :qid |DiemAccountandybpl.13870:46|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@65) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@65)))
 :qid |DiemAccountandybpl.14282:38|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@66) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@66)))
 :qid |DiemAccountandybpl.14296:39|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@66))
)))
(assert (forall ((s@@67 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@67)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@67)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@67))))
 :qid |DiemAccountandybpl.15128:65|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@67))
)))
(assert (forall ((s@@68 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@68)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@68)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@68))))
 :qid |DiemAccountandybpl.15146:57|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@68))
)))
(assert (forall ((payer Int) (metadata (Seq Int)) (deposit_value Int) ) (! (let (($$res ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res))
 :qid |DiemAccountandybpl.16016:15|
 :skolemid |209|
)))
(assert (forall ((s@@69 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@69)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@69))))
 :qid |DiemAccountandybpl.16044:60|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70))))
 :qid |DiemAccountandybpl.16061:66|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@71)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@71))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@71))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@71))))
 :qid |DiemAccountandybpl.16090:50|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@72) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@72)))
 :qid |DiemAccountandybpl.16109:45|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@73)) true))
 :qid |DiemAccountandybpl.17972:87|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemTransactionPublishingOption_HaltAllTransactions) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@74) true)
 :qid |DiemAccountandybpl.17986:75|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@75) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@75)))
 :qid |DiemAccountandybpl.18650:47|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@76)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@76)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@76))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@76))))
 :qid |DiemAccountandybpl.18670:58|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@77)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@77)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@77))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@77))))
 :qid |DiemAccountandybpl.18691:53|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@77))
)))
(assert (forall ((s@@78 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@78) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@78)))
 :qid |DiemAccountandybpl.19856:39|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@79)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@79))))
 :qid |DiemAccountandybpl.19972:58|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@80)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@80)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@80))))
 :qid |DiemAccountandybpl.19989:58|
 :skolemid |294|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@81) true)
 :qid |DiemAccountandybpl.20004:51|
 :skolemid |295|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@82)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@82)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@82))))
 :qid |DiemAccountandybpl.20021:60|
 :skolemid |296|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@82))
)))
(assert (forall ((auth_key_prefix (Seq Int)) ) (! (let (($$res@@0 ($1_DiemAccount_spec_abstract_create_authentication_key auth_key_prefix)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |DiemAccountandybpl.21572:15|
 :skolemid |313|
)))
(assert (forall ((s@@83 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@83)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@83)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@83))))
 :qid |DiemAccountandybpl.21652:47|
 :skolemid |314|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@84)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@84))))
 :qid |DiemAccountandybpl.21674:63|
 :skolemid |315|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@85) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@85)))
 :qid |DiemAccountandybpl.21689:57|
 :skolemid |316|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@86) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@86)))
 :qid |DiemAccountandybpl.21702:55|
 :skolemid |317|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@87)))
 :qid |DiemAccountandybpl.21716:55|
 :skolemid |318|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@88) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@88)))
 :qid |DiemAccountandybpl.21730:47|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@89)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@89))))
 :qid |DiemAccountandybpl.21747:54|
 :skolemid |320|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@90)))
 :qid |DiemAccountandybpl.21761:55|
 :skolemid |321|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@91)))
 :qid |DiemAccountandybpl.21775:57|
 :skolemid |322|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@92))))
 :qid |DiemAccountandybpl.21797:56|
 :skolemid |323|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@93))))
 :qid |DiemAccountandybpl.21822:52|
 :skolemid |324|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@94)))
 :qid |DiemAccountandybpl.21838:54|
 :skolemid |325|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@95)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@95))))
 :qid |DiemAccountandybpl.52459:47|
 :skolemid |1373|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@96)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@96))))
 :qid |DiemAccountandybpl.52483:47|
 :skolemid |1374|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@97)))
 :qid |DiemAccountandybpl.52724:49|
 :skolemid |1375|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@98)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@98))))
 :qid |DiemAccountandybpl.52767:49|
 :skolemid |1376|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@99)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@99))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@99))))
 :qid |DiemAccountandybpl.52796:48|
 :skolemid |1377|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@100)))
 :qid |DiemAccountandybpl.53091:47|
 :skolemid |1378|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100))
)))
(assert (forall ((v@@33 (Seq Int)) ) (! (let ((r@@2 (ReverseVec_14392 v@@33)))
 (and (= (seq.len r@@2) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@2))) (= (seq.nth r@@2 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |DiemAccountandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@39))
))))
 :qid |DiemAccountandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14392 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@3 (ReverseVec_187659 v@@34)))
 (and (= (seq.len r@@3) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@3))) (= (seq.nth r@@3 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |DiemAccountandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@40))
))))
 :qid |DiemAccountandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_187659 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@4 (ReverseVec_186280 v@@35)))
 (and (= (seq.len r@@4) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@4))) (= (seq.nth r@@4 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |DiemAccountandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@41))
))))
 :qid |DiemAccountandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_186280 v@@35))
)))
(assert (forall ((v@@36 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@5 (ReverseVec_186477 v@@36)))
 (and (= (seq.len r@@5) (seq.len v@@36)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@5))) (= (seq.nth r@@5 i@@42) (seq.nth v@@36 (- (- (seq.len v@@36) i@@42) 1))))
 :qid |DiemAccountandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@42))
))))
 :qid |DiemAccountandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_186477 v@@36))
)))
(assert (forall ((v@@37 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@6 (ReverseVec_186674 v@@37)))
 (and (= (seq.len r@@6) (seq.len v@@37)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@6))) (= (seq.nth r@@6 i@@43) (seq.nth v@@37 (- (- (seq.len v@@37) i@@43) 1))))
 :qid |DiemAccountandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@43))
))))
 :qid |DiemAccountandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_186674 v@@37))
)))
(assert (forall ((v@@38 (Seq (Seq Int))) ) (! (let ((r@@7 (ReverseVec_187856 v@@38)))
 (and (= (seq.len r@@7) (seq.len v@@38)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@7))) (= (seq.nth r@@7 i@@44) (seq.nth v@@38 (- (- (seq.len v@@38) i@@44) 1))))
 :qid |DiemAccountandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@44))
))))
 :qid |DiemAccountandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_187856 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@8 (ReverseVec_187265 v@@39)))
 (and (= (seq.len r@@8) (seq.len v@@39)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@8))) (= (seq.nth r@@8 i@@45) (seq.nth v@@39 (- (- (seq.len v@@39) i@@45) 1))))
 :qid |DiemAccountandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@45))
))))
 :qid |DiemAccountandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_187265 v@@39))
)))
(assert (forall ((v@@40 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@9 (ReverseVec_187068 v@@40)))
 (and (= (seq.len r@@9) (seq.len v@@40)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@9))) (= (seq.nth r@@9 i@@46) (seq.nth v@@40 (- (- (seq.len v@@40) i@@46) 1))))
 :qid |DiemAccountandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@46))
))))
 :qid |DiemAccountandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_187068 v@@40))
)))
(assert (forall ((v@@41 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@10 (ReverseVec_186871 v@@41)))
 (and (= (seq.len r@@10) (seq.len v@@41)) (forall ((i@@47 Int) ) (!  (=> (and (>= i@@47 0) (< i@@47 (seq.len r@@10))) (= (seq.nth r@@10 i@@47) (seq.nth v@@41 (- (- (seq.len v@@41) i@@47) 1))))
 :qid |DiemAccountandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@47))
))))
 :qid |DiemAccountandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_186871 v@@41))
)))
(assert (forall ((v@@42 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@11 (ReverseVec_187462 v@@42)))
 (and (= (seq.len r@@11) (seq.len v@@42)) (forall ((i@@48 Int) ) (!  (=> (and (>= i@@48 0) (< i@@48 (seq.len r@@11))) (= (seq.nth r@@11 i@@48) (seq.nth v@@42 (- (- (seq.len v@@42) i@@48) 1))))
 :qid |DiemAccountandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@48))
))))
 :qid |DiemAccountandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_187462 v@@42))
)))
(assert (forall ((v@@43 (Seq |T@#0|)) ) (! (let ((r@@12 (ReverseVec_186083 v@@43)))
 (and (= (seq.len r@@12) (seq.len v@@43)) (forall ((i@@49 Int) ) (!  (=> (and (>= i@@49 0) (< i@@49 (seq.len r@@12))) (= (seq.nth r@@12 i@@49) (seq.nth v@@43 (- (- (seq.len v@@43) i@@49) 1))))
 :qid |DiemAccountandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@12 i@@49))
))))
 :qid |DiemAccountandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_186083 v@@43))
)))
(assert (forall ((|l#0| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@50) |l#0|)
 :qid |DiemAccountandybpl.245:54|
 :skolemid |1443|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@50))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_205661|) (|l#1| |T@[$1_Event_EventHandle]Multiset_205661|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| |l#1| handle@@0))))
(Multiset_205661 (|lambda#3| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| |l#0@@0| handle@@0)) (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemAccountandybpl.3120:13|
 :skolemid |1444|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@44) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@44) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@44)))
 :qid |DiemAccountandybpl.124:29|
 :skolemid |1445|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@44))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_14539)
(declare-fun $t14@1 () T@$Mutation_240744)
(declare-fun $t24@1 () T@$Mutation_14539)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_240744)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_240251)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_241682)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_241753)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_240251)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $t25 () Int)
(declare-fun _$t0 () Int)
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
(declare-fun $t14 () T@$Mutation_240744)
(declare-fun $t14@0 () T@$Mutation_240744)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_240744)
(declare-fun $t24 () T@$Mutation_14539)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 827914) (let ((L5_correct  (=> (and (= $t24@0 ($Mutation_14539 (|l#$Mutation_240744| $t14@1) (seq.++ (|p#$Mutation_240744| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_240744| $t14@1)))) (= $t24@1 ($Mutation_14539 (|l#$Mutation_14539| $t24@0) (|p#$Mutation_14539| $t24@0) _$t2))) (=> (and (and (= $t14@2 ($Mutation_240744 (|l#$Mutation_240744| $t14@1) (|p#$Mutation_240744| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_14539| $t24@1)))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_241682| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_241753| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_240251 (|Store__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_240744| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_240744| $t14@2)) (|v#$Mutation_240744| $t14@2)))))) (and (=> (= (ControlFlow 0 508762) (- 0 828550)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_241682| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_241682| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (and (=> (= (ControlFlow 0 508762) (- 0 828564)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_241753| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_241753| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 508762) (- 0 828591)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 508762) (- 0 828601)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 508762) (- 0 828615)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 508762) (- 0 828639)) (= $t25 _$t2)))))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 508820) 508762)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 508590) 508762)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 508586) (- 0 828683)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 508586) (- 0 828720)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 508816) 508586))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 508800) 508820) anon25_Then_correct) (=> (= (ControlFlow 0 508800) 508816) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 508470) 508586))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 508454) 508590) anon26_Then_correct) (=> (= (ControlFlow 0 508454) 508470) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 508418) 508454)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 508424) 508418)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_240744| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_240744| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 508372) 508800) anon24_Then_correct) (=> (= (ControlFlow 0 508372) 508424) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 508834) 508586))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 508886) 508834) anon23_Then_correct) (=> (= (ControlFlow 0 508886) 508372) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 508884) 508886)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_240744 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 508326) 508834) anon23_Then_correct) (=> (= (ControlFlow 0 508326) 508372) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 508304) (- 0 828212)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 508304) 508884) anon22_Then_correct) (=> (= (ControlFlow 0 508304) 508326) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 508916) 508586))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 508284) 508916) anon21_Then_correct) (=> (= (ControlFlow 0 508284) 508304) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 508942) 508586))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemAccountandybpl.4325:20|
 :skolemid |124|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 508262) 508942) anon20_Then_correct) (=> (= (ControlFlow 0 508262) 508284) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_205661| stream@@0) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@0) v@@45) 0)
 :qid |DiemAccountandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountandybpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 508150) 508262)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_240744| $t3)) 0) (= (seq.len (|p#$Mutation_240744| $t14)) 0)) (and (= (seq.len (|p#$Mutation_14539| $t24)) 0) (= (ControlFlow 0 508160) 508150))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 827914) 508160) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_243798)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_242142)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_243902)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_243987)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory| () T@$Memory_244072)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_244157)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_244242)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_242142)
(declare-fun _$t0@@0 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_242142)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun $t11@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun $t9@@0 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 829010) (let ((anon12_Else_correct  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 509693) (- 0 829546)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243798| $1_DiemAccount_DiemAccount_$memory) addr) (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr)))
 :qid |DiemAccountandybpl.5334:15|
 :skolemid |133|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243798| $1_DiemAccount_DiemAccount_$memory) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@0)))
 :qid |DiemAccountandybpl.5334:15|
 :skolemid |133|
)) (and (=> (= (ControlFlow 0 509693) (- 0 829571)) (and (and (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243902| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@1) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@1)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@1)) 2)))))
 :qid |DiemAccountandybpl.5340:17|
 :skolemid |134|
)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243987| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@2) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@2)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@2)) 2)))))
 :qid |DiemAccountandybpl.5340:212|
 :skolemid |135|
))) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244072| |$1_DiemAccount_Balance'#0'_$memory|) addr@@3) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@3)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@3)) 2)))))
 :qid |DiemAccountandybpl.5340:408|
 :skolemid |136|
)))) (=> (and (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243902| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@4) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@4)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@4)) 2)))))
 :qid |DiemAccountandybpl.5340:17|
 :skolemid |134|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243987| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@5) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@5)) 2)))))
 :qid |DiemAccountandybpl.5340:212|
 :skolemid |135|
))) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244072| |$1_DiemAccount_Balance'#0'_$memory|) addr@@6) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@6)) 2)))))
 :qid |DiemAccountandybpl.5340:408|
 :skolemid |136|
))) (and (=> (= (ControlFlow 0 509693) (- 0 829644)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) addr@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@7)) 2))))
 :qid |DiemAccountandybpl.5346:15|
 :skolemid |137|
))) (=> (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) addr@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@8)) 2))))
 :qid |DiemAccountandybpl.5346:15|
 :skolemid |137|
)) (and (=> (= (ControlFlow 0 509693) (- 0 829669)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr@@9) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@9)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@9)) 5)))))
 :qid |DiemAccountandybpl.5352:15|
 :skolemid |138|
))) (=> (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr@@10) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@10)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) addr@@10)) 5)))))
 :qid |DiemAccountandybpl.5352:15|
 :skolemid |138|
)) (and (=> (= (ControlFlow 0 509693) (- 0 829704)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) _$t0@@0)) (and (=> (= (ControlFlow 0 509693) (- 0 829715)) (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory@1) _$t0@@0) (=> (= (ControlFlow 0 509693) (- 0 829724)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory@1) _$t0@@0)) _$t1@@0)))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 509301) (- 0 829516)) (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) _$t0@@0) (=> (= (ControlFlow 0 509301) (- 0 829522)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) _$t0@@0) (= 6 $t10@0)))))))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0 $abort_code@1@@0) (= (ControlFlow 0 509707) 509301))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 509757) 509707) anon12_Then_correct) (=> (= (ControlFlow 0 509757) 509693) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) _$t0@@0) (= (ControlFlow 0 509755) 509757)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) _$t0@@0)) (=> (and (and (= $1_Roles_RoleId_$memory@0 ($Memory_242142 (|Store__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) _$t0@@0 true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) _$t0@@0 $t11@0@@0))) (= $1_Roles_RoleId_$memory@1 $1_Roles_RoleId_$memory@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 509487) 509707) anon12_Then_correct) (=> (= (ControlFlow 0 509487) 509693) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0@@0 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 509469) (- 0 829254)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0)) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0) (=> (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243798| $1_DiemAccount_DiemAccount_$memory) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@11)))
 :qid |DiemAccountandybpl.5302:20|
 :skolemid |127|
)) (=> (and (and (and (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243902| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@12) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@12)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@12)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@12)) 2)))))
 :qid |DiemAccountandybpl.5306:22|
 :skolemid |128|
)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243987| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@13) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@13)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@13)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@13)) 2)))))
 :qid |DiemAccountandybpl.5306:217|
 :skolemid |129|
))) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244072| |$1_DiemAccount_Balance'#0'_$memory|) addr@@14) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@14)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@14)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@14)) 2)))))
 :qid |DiemAccountandybpl.5306:413|
 :skolemid |130|
))) (and (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) addr@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@15)) 2))))
 :qid |DiemAccountandybpl.5310:20|
 :skolemid |131|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr@@16) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@16)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@16)) 5)))))
 :qid |DiemAccountandybpl.5314:20|
 :skolemid |132|
)))) (and (=> (= (ControlFlow 0 509469) 509755) anon11_Then_correct) (=> (= (ControlFlow 0 509469) 509487) anon11_Else_correct)))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@0 $t9@@0)) (and (= $t10@0 $t9@@0) (= (ControlFlow 0 509269) 509301))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 6)) (and (= $t9@@0 $t9@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 509253) 509469) anon10_Then_correct) (=> (= (ControlFlow 0 509253) 509269) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 509217) 509253)) anon0$2_correct)))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| _$t0@@0) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |DiemAccountandybpl.5198:20|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (= $t4 _$t0@@0) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5) (= $t5 _$t0@@0)) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t5)) (= (ControlFlow 0 509223) 509217)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_205661| stream@@1) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@1) v@@46) 0)
 :qid |DiemAccountandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountandybpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 509055) 509223)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 829010) 509055) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@1 () T@$Memory_244242)
(declare-fun $t5@@0 () Int)
(declare-fun $t6 () Int)
(declare-fun $t7 () Int)
(declare-fun _$t1@@1 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $t8 () Int)
(declare-fun $t9@@1 () Int)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_285391)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun |Select__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int) T@$1_DualAttestation_Credential)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_DualAttestation_Credential_$memory@0 () T@$Memory_244242)
(declare-fun |Store__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int T@$1_DualAttestation_Credential) |T@[Int]$1_DualAttestation_Credential|)
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DualAttestation_Credential|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DualAttestation_Credential)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DualAttestation_Credential_| (|Store__T@[Int]$1_DualAttestation_Credential_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DualAttestation_Credential_| ?x0 ?y1))) :weight 0)))
(declare-fun $t26@0 () T@$1_DualAttestation_Credential)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun _$t2@@0 () (Seq Int))
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
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t20@@0 () Int)
(declare-fun $t17@0@@0 () Bool)
(declare-fun $t15 () Bool)
(declare-fun $t16 () Int)
(declare-fun $t14@@0 () Int)
(declare-fun $t13 () Int)
(declare-fun $t12@@0 () Bool)
(declare-fun $t10@@0 () Int)
(declare-fun $t11@@0 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_262104)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_262191)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_262278)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_257297)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_257384)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory| () T@$Memory_257471)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_262860)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_262451)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_262959)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_262542)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_263058)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_262633)
(declare-fun |$1_AccountLimits_Window'#0'_$memory| () T@$Memory_272773)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_publish_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 829745) (let ((anon30_Else_correct  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 511460) (- 0 831255)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@1) addr@@17) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@17)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@17)) 5)))))
 :qid |DiemAccountandybpl.17045:15|
 :skolemid |228|
))) (=> (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@1) addr@@18) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@18)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@18)) 5)))))
 :qid |DiemAccountandybpl.17045:15|
 :skolemid |228|
)) (and (=> (= (ControlFlow 0 511460) (- 0 831291)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t5@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 511460) (- 0 831303)) (not (and (not (= $t6 5)) (not (= $t6 2))))) (=> (not (and (not (= $t6 5)) (not (= $t6 2)))) (and (=> (= (ControlFlow 0 511460) (- 0 831326)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 511460) (- 0 831338)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t7)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t7)) 1))) (and (=> (= (ControlFlow 0 511460) (- 0 831356)) (not (not (= _$t1@@1 186537453)))) (=> (not (not (= _$t1@@1 186537453))) (and (=> (= (ControlFlow 0 511460) (- 0 831370)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) _$t0@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) _$t0@@1)) (and (=> (= (ControlFlow 0 511460) (- 0 831381)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t8))) (and (=> (= (ControlFlow 0 511460) (- 0 831393)) (not (and (not (= $t9@@1 5)) (not (= $t9@@1 2))))) (=> (not (and (not (= $t9@@1 5)) (not (= $t9@@1 2)))) (and (=> (= (ControlFlow 0 511460) (- 0 831416)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1) (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@1) addr1)))
 :qid |DiemAccountandybpl.17094:15|
 :skolemid |229|
))) (=> (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@1) addr1@@0)))
 :qid |DiemAccountandybpl.17094:15|
 :skolemid |229|
)) (and (=> (= (ControlFlow 0 511460) (- 0 831440)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 511460) (- 0 831457)) (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@1) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@1) addr1@@1)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@1)))))
 :qid |DiemAccountandybpl.17104:15|
 :skolemid |230|
))) (=> (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@2) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@1) addr1@@2)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@2)))))
 :qid |DiemAccountandybpl.17104:15|
 :skolemid |230|
)) (=> (= (ControlFlow 0 511460) (- 0 831492)) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@3) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@1) addr1@@3)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@3)))))
 :qid |DiemAccountandybpl.17109:15|
 :skolemid |231|
))))))))))))))))))))))))))))))
(let ((anon28_Then_correct true))
(let ((anon27_Then_correct true))
(let ((anon26_Then_correct@@0 true))
(let ((anon25_Then_correct@@0 true))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 510859) (- 0 830990)) (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t5@@0)) (and (not (= $t6 5)) (not (= $t6 2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= _$t1@@1 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) _$t0@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t8))) (and (not (= $t9@@1 5)) (not (= $t9@@1 2))))) (=> (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t5@@0)) (and (not (= $t6 5)) (not (= $t6 2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t7)) 1))) (not (= _$t1@@1 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) _$t0@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t8))) (and (not (= $t9@@1 5)) (not (= $t9@@1 2)))) (=> (= (ControlFlow 0 510859) (- 0 831089)) (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t5@@0)) (= 5 $t13@0)) (and (and (not (= $t6 5)) (not (= $t6 2))) (= 3 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t7)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t7)) 1)) (= 3 $t13@0))) (and (not (= _$t1@@1 186537453)) (= 2 $t13@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) _$t0@@1) (= 6 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t8)) (= 5 $t13@0))) (and (and (not (= $t9@@1 5)) (not (= $t9@@1 2))) (= 3 $t13@0))))))))
(let ((anon30_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t13@0 $abort_code@1@@1) (= (ControlFlow 0 511474) 510859))) L3_correct@@0)))
(let ((anon29_Then$1_correct  (=> (= $1_DualAttestation_Credential_$memory@1 $1_DualAttestation_Credential_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 511524) 511474) anon30_Then_correct) (=> (= (ControlFlow 0 511524) 511460) anon30_Else_correct))))))
(let ((anon29_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) _$t0@@1) (= (ControlFlow 0 511522) 511524)) anon29_Then$1_correct)))
(let ((anon29_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) _$t0@@1)) (=> (and (and (= $1_DualAttestation_Credential_$memory@0 ($Memory_244242 (|Store__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) _$t0@@1 true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) _$t0@@1 $t26@0))) (= $1_DualAttestation_Credential_$memory@1 $1_DualAttestation_Credential_$memory@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 511176) 511474) anon30_Then_correct) (=> (= (ControlFlow 0 511176) 511460) anon30_Else_correct))))))
(let ((anon28_Else_correct  (=> (not false) (=> (and (= $t26@0 ($1_DualAttestation_Credential _$t2@@0 |inline$$1_Vector_empty'u8'$0$v@1| |inline$$1_Vector_empty'u8'$1$v@1| 18446744073709551615 |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr@@19) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@19)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@19)) 5)))))
 :qid |DiemAccountandybpl.17025:20|
 :skolemid |227|
))) (and (=> (= (ControlFlow 0 511158) 511522) anon29_Then_correct) (=> (= (ControlFlow 0 511158) 511176) anon29_Else_correct))))))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 511093) 511538) anon28_Then_correct) (=> (= (ControlFlow 0 511093) 511158) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (and (not false) (= (ControlFlow 0 511099) 511093)) |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 511011) 511552) anon27_Then_correct) (=> (= (ControlFlow 0 511011) 511099) anon27_Else_correct)))))
(let ((anon26_Else_correct@@0  (=> (not false) (=> (and (|$IsValid'u64'| 18446744073709551615) (= (ControlFlow 0 511017) 511011)) |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((|inline$$1_Vector_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 510921) 511566) anon26_Then_correct@@0) (=> (= (ControlFlow 0 510921) 511017) anon26_Else_correct@@0)))))
(let ((anon25_Else_correct@@0  (=> (and (not false) (= (ControlFlow 0 510927) 510921)) |inline$$1_Vector_empty'u8'$1$anon0_correct|)))
(let ((|inline$$1_Vector_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 510885) 511580) anon25_Then_correct@@0) (=> (= (ControlFlow 0 510885) 510927) anon25_Else_correct@@0)))))
(let ((anon24_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@0 (= (ControlFlow 0 510891) 510885)) |inline$$1_Vector_empty'u8'$0$anon0_correct|)))
(let ((anon24_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t20@@0 $t20@@0)) (and (= $t13@0 $t20@@0) (= (ControlFlow 0 510575) 510859))) L3_correct@@0)))
(let ((anon23_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t20@@0) (= $t20@@0 6)) (and (= $t20@@0 $t20@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 510559) 510891) anon24_Then_correct@@0) (=> (= (ControlFlow 0 510559) 510575) anon24_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t17@0@@0)) (= (ControlFlow 0 510519) 510559)) anon23_Else$1_correct)))
(let ((anon23_Else_correct@@0  (=> (not $t15) (=> (and (and (|$IsValid'address'| $t16) (= $t16 _$t0@@1)) (and (= $t17@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t16)) (= (ControlFlow 0 510525) 510519))) inline$$Not$0$anon0_correct@@0))))
(let ((anon23_Then_correct@@0  (=> $t15 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t14@@0)) (= 5 $t13)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t14@@0)) 1)) (= 3 $t13))) (and (not (= _$t1@@1 186537453)) (= 2 $t13))) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 511652) 510859))) L3_correct@@0))))
(let ((anon22_Else_correct@@0  (=> (not $t12@@0) (=> (and (= $t14@@0 _$t1@@1) (= $t15  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t14@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t14@@0)) 1))) (not (= _$t1@@1 186537453))))) (and (=> (= (ControlFlow 0 510463) 511652) anon23_Then_correct@@0) (=> (= (ControlFlow 0 510463) 510525) anon23_Else_correct@@0))))))
(let ((anon22_Then_correct@@0  (=> $t12@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t10@@0)) (= 5 $t13)) (and (and (not (= $t11@@0 5)) (not (= $t11@@0 2))) (= 3 $t13))) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 511708) 510859))) L3_correct@@0))))
(let ((anon0$1_correct@@1  (=> (and (and (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_262104| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |DiemAccountandybpl.16758:22|
 :skolemid |214|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_262191| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |DiemAccountandybpl.16758:269|
 :skolemid |215|
))) (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |DiemAccountandybpl.16758:517|
 :skolemid |216|
))) (and (and (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_257297| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@4)) 1))))
 :qid |DiemAccountandybpl.16762:22|
 :skolemid |217|
)) (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_257384| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@5)) 1))))
 :qid |DiemAccountandybpl.16762:232|
 :skolemid |218|
))) (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_257471| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@6)) 1))))
 :qid |DiemAccountandybpl.16762:443|
 :skolemid |219|
)))) (and (and (and (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@7)) 2))))
 :qid |DiemAccountandybpl.16766:22|
 :skolemid |220|
)) (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_262959| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_262542| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@8)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@8)) 2))))
 :qid |DiemAccountandybpl.16766:293|
 :skolemid |221|
))) (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) addr1@@9)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@9)) 2))))
 :qid |DiemAccountandybpl.16766:565|
 :skolemid |222|
))) (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_272773| |$1_AccountLimits_Window'#0'_$memory|) addr@@20) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@20) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@20)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@20)) 6)))))
 :qid |DiemAccountandybpl.16770:20|
 :skolemid |223|
)) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@10) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@10)) 2)))))
 :qid |DiemAccountandybpl.16774:20|
 :skolemid |224|
))))) (and (and (and (and (|$IsValid'address'| _$t0@@1) (|$IsValid'address'| _$t1@@1)) (and (|$IsValid'vec'u8''| _$t2@@0) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |DiemAccountandybpl.16786:20|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $a_0@@1))
)))) (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) $a_0@@2)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@2))
 :qid |DiemAccountandybpl.16790:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) $a_0@@2))
)) (= $t5@@0 _$t0@@1)) (and (= $t6 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t5@@0))) (= $t7 _$t1@@1)))) (and (and (and (= $t8 _$t0@@1) (= $t9@@1 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t8)))) (and (= _$t0@@1 _$t0@@1) (= _$t1@@1 _$t1@@1))) (and (and (= _$t2@@0 _$t2@@0) (= $t10@@0 _$t0@@1)) (and (= $t11@@0 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t10@@0))) (= $t12@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t10@@0)) (and (not (= $t11@@0 5)) (not (= $t11@@0 2)))))))))) (and (=> (= (ControlFlow 0 510403) 511708) anon22_Then_correct@@0) (=> (= (ControlFlow 0 510403) 510463) anon22_Else_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_205661| stream@@2) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@2) v@@47) 0)
 :qid |DiemAccountandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountandybpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 509864) 510403)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 829745) 509864) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@0@@0 () T@$Memory_244242)
(declare-fun $t16@2 () T@$Mutation_290187)
(declare-fun $t6@@0 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun _$t1@@2 () (Seq Int))
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t9@@2 () T@$1_Event_EventHandle)
(declare-fun $t10@@1 () T@$1_DualAttestation_BaseUrlRotationEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_205661_| (|T@[$1_Event_EventHandle]Multiset_205661| T@$1_Event_EventHandle T@Multiset_205661) |T@[$1_Event_EventHandle]Multiset_205661|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_205661|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_205661)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|Store__T@[$1_Event_EventHandle]Multiset_205661_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_205661|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_205661)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|Store__T@[$1_Event_EventHandle]Multiset_205661_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_205661_| ?x0 ?y1))) :weight 0)))
(declare-fun $t15@0@@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t18@0@@0 () T@$Mutation_234127)
(declare-fun $t21@0 () T@$1_DualAttestation_BaseUrlRotationEvent)
(declare-fun $t20@@1 () Bool)
(declare-fun $t19 () Int)
(declare-fun $t15@@0 () Int)
(declare-fun |$temp_0'$1_DualAttestation_Credential'@0| () T@$1_DualAttestation_Credential)
(declare-fun $t16@1 () T@$Mutation_290187)
(declare-fun $t17@0@@1 () T@$Mutation_228212)
(declare-fun $t17@1 () T@$Mutation_228212)
(declare-fun $t16@@0 () T@$Mutation_290187)
(declare-fun $t11@@1 () Int)
(declare-fun $t16@0 () T@$Mutation_290187)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t14@@1 () Int)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_251424)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_251034)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_276618)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_256650)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_274046)
(declare-fun _$t0@@2 () Int)
(declare-fun $t8@@0 () Int)
(declare-fun $t3@@0 () T@$Mutation_290187)
(declare-fun $t17 () T@$Mutation_228212)
(declare-fun $t18 () T@$Mutation_234127)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_rotate_base_url$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 831537) (let ((anon19_Else_correct  (=> (not $abort_flag@0@@2) (=> (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr@@21) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@21)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@21)) 5)))))
 :qid |DiemAccountandybpl.17409:20|
 :skolemid |235|
)) (= $1_DualAttestation_Credential_$memory@0@@0 ($Memory_244242 (|Store__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_290187| $t16@2)) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_290187| $t16@2)) (|v#$Mutation_290187| $t16@2))))) (and (=> (= (ControlFlow 0 512861) (- 0 832384)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) addr@@22) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@22)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@22)) 5)))))
 :qid |DiemAccountandybpl.17420:15|
 :skolemid |236|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) addr@@23) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@23)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@23)) 5)))))
 :qid |DiemAccountandybpl.17420:15|
 :skolemid |236|
)) (and (=> (= (ControlFlow 0 512861) (- 0 832420)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 512861) (- 0 832432)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 512861) (- 0 832442)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) $t7@@0)) _$t1@@2)) (=> (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) $t7@@0)) _$t1@@2) (and (=> (= (ControlFlow 0 512861) (- 0 832455)) (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (not (= addr1@@11 $t7@@0)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) addr1@@11)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@11)))))
 :qid |DiemAccountandybpl.17444:15|
 :skolemid |237|
))) (=> (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (not (= addr1@@12 $t7@@0)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) addr1@@12)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@12)))))
 :qid |DiemAccountandybpl.17444:15|
 :skolemid |237|
)) (and (=> (= (ControlFlow 0 512861) (- 0 832493)) (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) addr1@@13)))
 :qid |DiemAccountandybpl.17449:15|
 :skolemid |238|
))) (=> (forall ((addr1@@14 Int) ) (!  (=> (|$IsValid'address'| addr1@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) addr1@@14)))
 :qid |DiemAccountandybpl.17449:15|
 :skolemid |238|
)) (and (=> (= (ControlFlow 0 512861) (- 0 832517)) (forall ((addr1@@15 Int) ) (!  (=> (|$IsValid'address'| addr1@@15) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@15)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) addr1@@15))))
 :qid |DiemAccountandybpl.17454:15|
 :skolemid |239|
))) (=> (forall ((addr1@@16 Int) ) (!  (=> (|$IsValid'address'| addr1@@16) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@16)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) addr1@@16))))
 :qid |DiemAccountandybpl.17454:15|
 :skolemid |239|
)) (and (=> (= (ControlFlow 0 512861) (- 0 832545)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 512861) (- 0 832562)) (forall ((addr1@@17 Int) ) (!  (=> (|$IsValid'address'| addr1@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@17) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) addr1@@17)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@17)))))
 :qid |DiemAccountandybpl.17464:15|
 :skolemid |240|
))) (=> (forall ((addr1@@18 Int) ) (!  (=> (|$IsValid'address'| addr1@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@18) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@0) addr1@@18)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@18)))))
 :qid |DiemAccountandybpl.17464:15|
 :skolemid |240|
)) (and (=> (= (ControlFlow 0 512861) (- 0 832597)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t9@@2)))
(let ((stream_new (let ((len (|l#Multiset_205661| stream@@3)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@3) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@3) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t9@@2 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected) handle@@4)) (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual) handle@@4))) (forall ((v@@48 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected) handle@@4)) v@@48) (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual) handle@@4)) v@@48))
 :qid |DiemAccountandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountandybpl.3126:13|
 :skolemid |88|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t9@@2)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_205661| stream@@4)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@4) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@4) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t9@@2 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@5 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@0) handle@@5)) (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@0) handle@@5))) (forall ((v@@49 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@0) handle@@5)) v@@49) (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@0) handle@@5)) v@@49))
 :qid |DiemAccountandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountandybpl.3126:13|
 :skolemid |88|
))))) (=> (= (ControlFlow 0 512861) (- 0 832622)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t9@@2)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_205661| stream@@5)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@5) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@1) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t9@@2 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@6 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@1) handle@@6)) (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@1) handle@@6))) (forall ((v@@50 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@1) handle@@6)) v@@50) (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@1) handle@@6)) v@@50))
 :qid |DiemAccountandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountandybpl.3126:13|
 :skolemid |88|
))))))))))))))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 512322) (- 0 832278)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t6@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t6@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (=> (= (ControlFlow 0 512322) (- 0 832292)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t6@@0)) (= 5 $t15@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@0@@0))))))))
(let ((anon19_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t15@0@@0 $abort_code@1@@2) (= (ControlFlow 0 512875) 512322))) L3_correct@@1)))
(let ((|inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| (|v#$Mutation_234127| $t18@0@@0)) (= $es@0 (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_205661| stream@@6)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@6) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t21@0))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@6) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t21@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 512525) 512875) anon19_Then_correct) (=> (= (ControlFlow 0 512525) 512861) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not $t20@@1) (=> (and (and (|$IsValid'u64'| $t19) (= $t19 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t21@0 ($1_DualAttestation_BaseUrlRotationEvent _$t1@@2 $t19)) (= (ControlFlow 0 512531) 512525))) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|))))
(let ((anon18_Then_correct  (=> $t20@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@0)) (= $t15@@0 $t15@@0)) (and (= $t15@0@@0 $t15@@0) (= (ControlFlow 0 512901) 512322))) L3_correct@@1))))
(let ((anon17_Else_correct  (=> (and (and (and (not $abort_flag@0@@2) (= |$temp_0'$1_DualAttestation_Credential'@0| (|v#$Mutation_290187| $t16@1))) (and (= |$temp_0'$1_DualAttestation_Credential'@0| |$temp_0'$1_DualAttestation_Credential'@0|) (= $t17@0@@1 ($Mutation_228212 (|l#$Mutation_290187| $t16@1) (seq.++ (|p#$Mutation_290187| $t16@1) (seq.unit 1)) (|$base_url#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t16@1)))))) (and (and (= $t17@1 ($Mutation_228212 (|l#$Mutation_228212| $t17@0@@1) (|p#$Mutation_228212| $t17@0@@1) _$t1@@2)) (= $t16@2 ($Mutation_290187 (|l#$Mutation_290187| $t16@1) (|p#$Mutation_290187| $t16@1) ($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t16@1)) (|v#$Mutation_228212| $t17@1) (|$compliance_public_key#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t16@1)) (|$expiration_date#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t16@1)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t16@1)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t16@1)))))) (and (= $t18@0@@0 ($Mutation_234127 (|l#$Mutation_290187| $t16@2) (seq.++ (|p#$Mutation_290187| $t16@2) (seq.unit 5)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t16@2)))) (= $t20@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 512426) 512901) anon18_Then_correct) (=> (= (ControlFlow 0 512426) 512531) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t15@0@@0 $abort_code@1@@2) (= (ControlFlow 0 512915) 512322))) L3_correct@@1)))
(let ((anon16_Then$1_correct  (=> (= $t16@1 $t16@@0) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 512967) 512915) anon17_Then_correct) (=> (= (ControlFlow 0 512967) 512426) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t11@@1)) (= (ControlFlow 0 512965) 512967)) anon16_Then$1_correct)))
(let ((anon16_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t11@@1) (=> (and (and (= $t16@0 ($Mutation_290187 ($Global $t11@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) $t11@@1))) (= $t16@1 $t16@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 512348) 512915) anon17_Then_correct) (=> (= (ControlFlow 0 512348) 512426) anon17_Else_correct))))))
(let ((anon15_Then_correct  (=> $t12@0 (and (=> (= (ControlFlow 0 512326) 512965) anon16_Then_correct) (=> (= (ControlFlow 0 512326) 512348) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (and (not $t12@0) (= $t14@@1 $t14@@1)) (and (= $t15@0@@0 $t14@@1) (= (ControlFlow 0 512266) 512322))) L3_correct@@1)))
(let ((anon0$1_correct@@2  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_251424| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_251034| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_276618| $1_XDX_Reserve_$memory) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_256650| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_274046| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@19 Int) ) (!  (=> (|$IsValid'address'| addr1@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@19) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@19)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@19)) 2)))))
 :qid |DiemAccountandybpl.17210:20|
 :skolemid |232|
)))) (and (and (|$IsValid'address'| _$t0@@2) (|$IsValid'vec'u8''| _$t1@@2)) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@3))
 :qid |DiemAccountandybpl.17219:20|
 :skolemid |233|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) $a_0@@4)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@4))
 :qid |DiemAccountandybpl.17223:20|
 :skolemid |234|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) $a_0@@4))
))))) (=> (and (and (and (and (= $t6@@0 _$t0@@2) (= $t7@@0 _$t0@@2)) (and (= $t8@@0 _$t0@@2) (= $t9@@2 (|$base_url_rotation_events#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) $t8@@0))))) (and (and (= $t10@@1 ($1_DualAttestation_BaseUrlRotationEvent _$t1@@2 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@2 _$t1@@2) (|$IsValid'address'| $t11@@1)))) (and (and (and (= $t11@@1 _$t0@@2) (= $t11@@1 $t11@@1)) (and (= $t12@0 (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t11@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@1) (= $t14@@1 5)) (and (= $t14@@1 $t14@@1) (= $t12@0 $t12@0))))) (and (=> (= (ControlFlow 0 512250) 512326) anon15_Then_correct) (=> (= (ControlFlow 0 512250) 512266) anon15_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_205661| stream@@7) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@7) v@@51) 0)
 :qid |DiemAccountandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountandybpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 511945) 512250)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (seq.len (|p#$Mutation_290187| $t3@@0)) 0) (=> (and (and (= (seq.len (|p#$Mutation_290187| $t16@@0)) 0) (= (seq.len (|p#$Mutation_228212| $t17)) 0)) (and (= (seq.len (|p#$Mutation_234127| $t18)) 0) (= (ControlFlow 0 511955) 511945))) inline$$InitEventStore$0$anon0_correct@@2))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 831537) 511955) anon0_correct@@2)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@0@@1 () T@$Memory_244242)
(declare-fun $t21@2 () T@$Mutation_290187)
(declare-fun _$t1@@3 () (Seq Int))
(declare-fun $t8@@1 () Int)
(declare-fun $t9@@3 () Int)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t11@@2 () T@$1_Event_EventHandle)
(declare-fun $t12@@1 () T@$1_DualAttestation_ComplianceKeyRotationEvent)
(declare-fun $t17@0@@2 () Int)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t23@0 () T@$Mutation_234127)
(declare-fun $t26@0@@0 () T@$1_DualAttestation_ComplianceKeyRotationEvent)
(declare-fun $t25@@0 () Bool)
(declare-fun $t24@@0 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun |$temp_0'$1_DualAttestation_Credential'@0@@0| () T@$1_DualAttestation_Credential)
(declare-fun $t21@1 () T@$Mutation_290187)
(declare-fun $t22@0 () T@$Mutation_228212)
(declare-fun $t22@1 () T@$Mutation_228212)
(declare-fun $t21 () T@$Mutation_290187)
(declare-fun $t13@@0 () Int)
(declare-fun $t21@0@@0 () T@$Mutation_290187)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun $t20@@2 () Int)
(declare-fun $t14@0@@0 () Bool)
(declare-fun $t16@@1 () Int)
(declare-fun _$t0@@3 () Int)
(declare-fun $t10@@2 () Int)
(declare-fun $t3@@1 () T@$Mutation_290187)
(declare-fun $t22 () T@$Mutation_228212)
(declare-fun $t23@@0 () T@$Mutation_234127)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_rotate_compliance_public_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 832653) (let ((anon26_Else_correct@@1  (=> (not $abort_flag@0@@3) (=> (and (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr@@24) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@24)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@24)) 5)))))
 :qid |DiemAccountandybpl.17842:20|
 :skolemid |244|
)) (= $1_DualAttestation_Credential_$memory@0@@1 ($Memory_244242 (|Store__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_290187| $t21@2)) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_290187| $t21@2)) (|v#$Mutation_290187| $t21@2))))) (and (=> (= (ControlFlow 0 514247) (- 0 833614)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) addr@@25) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@25)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@25)) 5)))))
 :qid |DiemAccountandybpl.17853:15|
 :skolemid |245|
))) (=> (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) addr@@26) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@26)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@26)) 5)))))
 :qid |DiemAccountandybpl.17853:15|
 :skolemid |245|
)) (and (=> (= (ControlFlow 0 514247) (- 0 833650)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@3)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@3))) (and (=> (= (ControlFlow 0 514247) (- 0 833660)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t8@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t8@@1))) (and (=> (= (ControlFlow 0 514247) (- 0 833672)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 514247) (- 0 833682)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) $t9@@3)) _$t1@@3)) (=> (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) $t9@@3)) _$t1@@3) (and (=> (= (ControlFlow 0 514247) (- 0 833695)) (forall ((addr1@@20 Int) ) (!  (=> (|$IsValid'address'| addr1@@20) (=> (not (= addr1@@20 $t9@@3)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) addr1@@20)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@20)))))
 :qid |DiemAccountandybpl.17882:15|
 :skolemid |246|
))) (=> (forall ((addr1@@21 Int) ) (!  (=> (|$IsValid'address'| addr1@@21) (=> (not (= addr1@@21 $t9@@3)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) addr1@@21)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@21)))))
 :qid |DiemAccountandybpl.17882:15|
 :skolemid |246|
)) (and (=> (= (ControlFlow 0 514247) (- 0 833733)) (forall ((addr1@@22 Int) ) (!  (=> (|$IsValid'address'| addr1@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) addr1@@22)))
 :qid |DiemAccountandybpl.17887:15|
 :skolemid |247|
))) (=> (forall ((addr1@@23 Int) ) (!  (=> (|$IsValid'address'| addr1@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) addr1@@23)))
 :qid |DiemAccountandybpl.17887:15|
 :skolemid |247|
)) (and (=> (= (ControlFlow 0 514247) (- 0 833757)) (forall ((addr1@@24 Int) ) (!  (=> (|$IsValid'address'| addr1@@24) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@24)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) addr1@@24))))
 :qid |DiemAccountandybpl.17892:15|
 :skolemid |248|
))) (=> (forall ((addr1@@25 Int) ) (!  (=> (|$IsValid'address'| addr1@@25) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@25)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) addr1@@25))))
 :qid |DiemAccountandybpl.17892:15|
 :skolemid |248|
)) (and (=> (= (ControlFlow 0 514247) (- 0 833785)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 514247) (- 0 833802)) (forall ((addr1@@26 Int) ) (!  (=> (|$IsValid'address'| addr1@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@26) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) addr1@@26)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@26)))))
 :qid |DiemAccountandybpl.17902:15|
 :skolemid |249|
))) (=> (forall ((addr1@@27 Int) ) (!  (=> (|$IsValid'address'| addr1@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@27) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory@0@@1) addr1@@27)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@27)))))
 :qid |DiemAccountandybpl.17902:15|
 :skolemid |249|
)) (and (=> (= (ControlFlow 0 514247) (- 0 833837)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t11@@2)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_205661| stream@@8)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@8) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@8) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t11@@2 stream_new@@3))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@8 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@2) handle@@8)) (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@2) handle@@8))) (forall ((v@@52 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@2) handle@@8)) v@@52) (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@2) handle@@8)) v@@52))
 :qid |DiemAccountandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountandybpl.3126:13|
 :skolemid |88|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t11@@2)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_205661| stream@@9)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@9) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@9) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t11@@2 stream_new@@4))))))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@9 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@3) handle@@9)) (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@3) handle@@9))) (forall ((v@@53 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@3) handle@@9)) v@@53) (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@3) handle@@9)) v@@53))
 :qid |DiemAccountandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountandybpl.3126:13|
 :skolemid |88|
))))) (=> (= (ControlFlow 0 514247) (- 0 833862)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t11@@2)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_205661| stream@@10)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@10) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@10) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@1) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t11@@2 stream_new@@5))))))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@10 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@4) handle@@10)) (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@4) handle@@10))) (forall ((v@@54 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@4) handle@@10)) v@@54) (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@4) handle@@10)) v@@54))
 :qid |DiemAccountandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountandybpl.3126:13|
 :skolemid |88|
))))))))))))))))))))))))))))))))
(let ((anon21_Then_correct@@0 true))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 513606) (- 0 833487)) (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t8@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t8@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (=> (= (ControlFlow 0 513606) (- 0 833508)) (or (or (and (not ($1_Signature_$ed25519_validate_pubkey _$t1@@3)) (= 7 $t17@0@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t8@@1)) (= 5 $t17@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t17@0@@2))))))))
(let ((anon26_Then_correct@@1  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t17@0@@2 $abort_code@1@@3) (= (ControlFlow 0 514261) 513606))) L5_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| (|v#$Mutation_234127| $t23@0)) (= $es@0@@0 (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1|)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_205661| stream@@11)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@11) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t26@0@@0))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@11) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t26@0@@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| stream_new@@6)))))) (and (=> (= (ControlFlow 0 513901) 514261) anon26_Then_correct@@1) (=> (= (ControlFlow 0 513901) 514247) anon26_Else_correct@@1)))))
(let ((anon25_Else_correct@@1  (=> (not $t25@@0) (=> (and (and (|$IsValid'u64'| $t24@@0) (= $t24@@0 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t26@0@@0 ($1_DualAttestation_ComplianceKeyRotationEvent _$t1@@3 $t24@@0)) (= (ControlFlow 0 513907) 513901))) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((anon25_Then_correct@@1  (=> $t25@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t17@@0)) (= $t17@@0 $t17@@0)) (and (= $t17@0@@2 $t17@@0) (= (ControlFlow 0 514287) 513606))) L5_correct@@0))))
(let ((anon24_Else_correct@@1  (=> (and (and (and (not $abort_flag@0@@3) (= |$temp_0'$1_DualAttestation_Credential'@0@@0| (|v#$Mutation_290187| $t21@1))) (and (= |$temp_0'$1_DualAttestation_Credential'@0@@0| |$temp_0'$1_DualAttestation_Credential'@0@@0|) (= $t22@0 ($Mutation_228212 (|l#$Mutation_290187| $t21@1) (seq.++ (|p#$Mutation_290187| $t21@1) (seq.unit 2)) (|$compliance_public_key#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t21@1)))))) (and (and (= $t22@1 ($Mutation_228212 (|l#$Mutation_228212| $t22@0) (|p#$Mutation_228212| $t22@0) _$t1@@3)) (= $t21@2 ($Mutation_290187 (|l#$Mutation_290187| $t21@1) (|p#$Mutation_290187| $t21@1) ($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t21@1)) (|$base_url#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t21@1)) (|v#$Mutation_228212| $t22@1) (|$expiration_date#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t21@1)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t21@1)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t21@1)))))) (and (= $t23@0 ($Mutation_234127 (|l#$Mutation_290187| $t21@2) (seq.++ (|p#$Mutation_290187| $t21@2) (seq.unit 4)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_290187| $t21@2)))) (= $t25@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 513802) 514287) anon25_Then_correct@@1) (=> (= (ControlFlow 0 513802) 513907) anon25_Else_correct@@1)))))
(let ((anon24_Then_correct@@1  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t17@0@@2 $abort_code@1@@3) (= (ControlFlow 0 514301) 513606))) L5_correct@@0)))
(let ((anon23_Then$1_correct  (=> (= $t21@1 $t21) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 514353) 514301) anon24_Then_correct@@1) (=> (= (ControlFlow 0 514353) 513802) anon24_Else_correct@@1))))))
(let ((anon23_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t13@@0)) (= (ControlFlow 0 514351) 514353)) anon23_Then$1_correct)))
(let ((anon23_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t13@@0) (=> (and (and (= $t21@0@@0 ($Mutation_290187 ($Global $t13@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) $t13@@0))) (= $t21@1 $t21@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 513724) 514301) anon24_Then_correct@@1) (=> (= (ControlFlow 0 513724) 513802) anon24_Else_correct@@1))))))
(let ((anon22_Then_correct@@1  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (and (=> (= (ControlFlow 0 513702) 514351) anon23_Then_correct@@1) (=> (= (ControlFlow 0 513702) 513724) anon23_Else_correct@@1)))))
(let ((anon22_Else_correct@@1  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= $t20@@2 $t20@@2)) (and (= $t17@0@@2 $t20@@2) (= (ControlFlow 0 513698) 513606))) L5_correct@@0)))
(let ((anon21_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20@@2) (= $t20@@2 7)) (and (= $t20@@2 $t20@@2) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 513682) 513702) anon22_Then_correct@@1) (=> (= (ControlFlow 0 513682) 513698) anon22_Else_correct@@1))))))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t1@@3)) (and (=> (= (ControlFlow 0 513640) 514367) anon21_Then_correct@@0) (=> (= (ControlFlow 0 513640) 513682) anon21_Else_correct@@0)))))
(let ((anon20_Then_correct@@0  (=> (and $t14@0@@0 (= (ControlFlow 0 513646) 513640)) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct)))
(let ((anon20_Else_correct@@0  (=> (and (and (not $t14@0@@0) (= $t16@@1 $t16@@1)) (and (= $t17@0@@2 $t16@@1) (= (ControlFlow 0 513526) 513606))) L5_correct@@0)))
(let ((anon0$1_correct@@3  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_251424| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_251034| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_276618| $1_XDX_Reserve_$memory) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_256650| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_274046| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_285391| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@28 Int) ) (!  (=> (|$IsValid'address'| addr1@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) addr1@@28) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@28)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@28)) 2)))))
 :qid |DiemAccountandybpl.17591:20|
 :skolemid |241|
)))) (and (and (|$IsValid'address'| _$t0@@3) (|$IsValid'vec'u8''| _$t1@@3)) (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@5)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@5))
 :qid |DiemAccountandybpl.17600:20|
 :skolemid |242|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) $a_0@@6)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@6))
 :qid |DiemAccountandybpl.17604:20|
 :skolemid |243|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) $a_0@@6))
))))) (=> (and (and (and (and (= $t8@@1 _$t0@@3) (= $t9@@3 _$t0@@3)) (and (= $t10@@2 _$t0@@3) (= $t11@@2 (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_244242| $1_DualAttestation_Credential_$memory) $t10@@2))))) (and (and (= $t12@@1 ($1_DualAttestation_ComplianceKeyRotationEvent _$t1@@3 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (= _$t0@@3 _$t0@@3)) (and (= _$t1@@3 _$t1@@3) (|$IsValid'address'| $t13@@0)))) (and (and (and (= $t13@@0 _$t0@@3) (= $t13@@0 $t13@@0)) (and (= $t14@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_244242| $1_DualAttestation_Credential_$memory) $t13@@0)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t16@@1) (= $t16@@1 5)) (and (= $t16@@1 $t16@@1) (= $t14@0@@0 $t14@0@@0))))) (and (=> (= (ControlFlow 0 513510) 513646) anon20_Then_correct@@0) (=> (= (ControlFlow 0 513510) 513526) anon20_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_205661| stream@@12) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@12) v@@55) 0)
 :qid |DiemAccountandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountandybpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 513205) 513510)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (seq.len (|p#$Mutation_290187| $t3@@1)) 0) (=> (and (and (= (seq.len (|p#$Mutation_290187| $t21)) 0) (= (seq.len (|p#$Mutation_228212| $t22)) 0)) (and (= (seq.len (|p#$Mutation_234127| $t23@@0)) 0) (= (ControlFlow 0 513215) 513205))) inline$$InitEventStore$0$anon0_correct@@3))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 832653) 513215) anon0_correct@@3)))
PreconditionGeneratedEntry_correct@@1)))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t6@@1 () Int)
(declare-fun _$t1@@4 () Int)
(declare-fun $t7@@1 () Int)
(declare-fun $t5@@1 () Int)
(declare-fun _$t2@@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_256586)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_256775)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1 () T@$Memory_244157)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| () T@$Memory_262860)
(declare-fun $t20@@3 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| () T@$Memory_262860)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t23@@1 () Bool)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1| () T@$Memory_263058)
(declare-fun $t24@@1 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_263058)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t27 () Bool)
(declare-fun $t10@0@@0 () Int)
(declare-fun $t21@@0 () Int)
(declare-fun $t10@@3 () Int)
(declare-fun $t22@@0 () Int)
(declare-fun _$t0@@4 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t25@@1 () Int)
(declare-fun $t26 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0 () T@$Memory_244157)
(declare-fun |Store__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int T@$1_DesignatedDealer_Dealer) |T@[Int]$1_DesignatedDealer_Dealer|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int) T@$1_DesignatedDealer_Dealer)
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?y1))) :weight 0)))
(declare-fun $t19@0 () T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DesignatedDealer_Dealer_$modifies () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandles@0@@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t17@@1 () Int)
(declare-fun $t14@0@@1 () Bool)
(declare-fun $t12@@2 () Bool)
(declare-fun $t13@@1 () Int)
(declare-fun $t11@@3 () Int)
(declare-fun $t9@@4 () Bool)
(declare-fun $t8@@2 () Int)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| Int) |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'#0'_| (|T@[Int]$1_Diem_Preburn'#0'| Int) |T@$1_Diem_Preburn'#0'|)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_publish_designated_dealer_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 833895) (let ((L5_correct@@1  (and (=> (= (ControlFlow 0 516580) (- 0 836456)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t6@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t6@@1))) (and (=> (= (ControlFlow 0 516580) (- 0 836468)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t6@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (and (=> (= (ControlFlow 0 516580) (- 0 836486)) (not (not (= _$t1@@4 186537453)))) (=> (not (not (= _$t1@@4 186537453))) (and (=> (= (ControlFlow 0 516580) (- 0 836500)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t7@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t7@@1))) (and (=> (= (ControlFlow 0 516580) (- 0 836512)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t7@@1)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (and (=> (= (ControlFlow 0 516580) (- 0 836530)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) $t5@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) $t5@@1)) (and (=> (= (ControlFlow 0 516580) (- 0 836540)) (not (and _$t2@@1 (let ((addr@@27 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@27) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@27))))))) (=> (not (and _$t2@@1 (let ((addr@@28 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@28) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@28)))))) (and (=> (= (ControlFlow 0 516580) (- 0 836551)) (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@1)))) (=> (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@1))) (and (=> (= (ControlFlow 0 516580) (- 0 836564)) (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@1)))) (=> (not (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@1))) (and (=> (= (ControlFlow 0 516580) (- 0 836577)) (not (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 516580) (- 0 836590)) (not (and (not _$t2@@1) (let ((addr@@29 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@29) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@29))))))) (=> (not (and (not _$t2@@1) (let ((addr@@30 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@30) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@30)))))) (and (=> (= (ControlFlow 0 516580) (- 0 836603)) (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@1)))) (=> (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@1))) (and (=> (= (ControlFlow 0 516580) (- 0 836618)) (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) $t5@@1)))) (=> (not (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) $t5@@1))) (and (=> (= (ControlFlow 0 516580) (- 0 836633)) (not (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 516580) (- 0 836648)) (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory@1) $t5@@1))))))))))))))))))))))))))))))))
(let ((anon38_Else_correct  (=> (not |$temp_0'bool'@1|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| ($Memory_262860 (|Store__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 false) (|contents#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 516952) 516580)) L5_correct@@1))))
(let ((anon38_Then_correct  (=> |$temp_0'bool'@1| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| ($Memory_262860 (|Store__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0|))) (= (ControlFlow 0 516966) 516580)) L5_correct@@1))))
(let ((anon37_Else_correct  (=> (not $t23@@1) (and (=> (= (ControlFlow 0 516940) 516966) anon38_Then_correct) (=> (= (ControlFlow 0 516940) 516952) anon38_Else_correct)))))
(let ((anon28_correct  (=> (= (ControlFlow 0 516368) 516580) L5_correct@@1)))
(let ((anon40_Else_correct  (=> (not |$temp_0'bool'@0|) (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@1| ($Memory_263058 (|Store__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $t24@@1 false) (|contents#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|))) (= (ControlFlow 0 516364) 516368)) anon28_correct))))
(let ((anon40_Then_correct  (=> |$temp_0'bool'@0| (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@0| ($Memory_263058 (|Store__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $t24@@1 true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $t24@@1 |$temp_0'$1_Diem_PreburnQueue'#0''@0|))) (= (ControlFlow 0 516592) 516368)) anon28_correct))))
(let ((anon39_Else_correct  (=> (not $t27) (and (=> (= (ControlFlow 0 516352) 516592) anon40_Then_correct) (=> (= (ControlFlow 0 516352) 516364) anon40_Else_correct)))))
(let ((anon33_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 516022) (- 0 836012)) (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t6@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (not (= _$t1@@4 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t7@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) $t5@@1)) (and _$t2@@1 (let ((addr@@31 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@31) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@31)))))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@1))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@1))) (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@1) (let ((addr@@32 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@32)))))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@1))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) $t5@@1))) (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t6@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t6@@1)) 1))) (not (= _$t1@@4 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t7@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t7@@1)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) $t5@@1)) (and _$t2@@1 (let ((addr@@33 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@33) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@33)))))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@1))) (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@1))) (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2@@1) (let ((addr@@34 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@34) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@34)))))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@1))) (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) $t5@@1))) (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 516022) (- 0 836160)) (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t6@@1)) (= 5 $t10@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t6@@1)) 1)) (= 3 $t10@0@@0))) (and (not (= _$t1@@4 186537453)) (= 2 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t7@@1)) (= 5 $t10@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t7@@1)) 2)) (= 3 $t10@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) $t5@@1) (= 6 $t10@0@@0))) (and (and _$t2@@1 (let ((addr@@35 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@35) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@35))))) (= 7 $t10@0@@0))) (and (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@1)) (= 6 $t10@0@@0))) (and (and _$t2@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@1)) (= 1 $t10@0@@0))) (and (and _$t2@@1 (not (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@0))) (and (and (not _$t2@@1) (let ((addr@@36 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@36) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@36))))) (= 7 $t10@0@@0))) (and (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@1)) (= 6 $t10@0@@0))) (and (and (not _$t2@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) $t5@@1)) (= 1 $t10@0@@0))) (and (and (not _$t2@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t10@0@@0))))))))
(let ((anon37_Then_correct  (=> $t23@@1 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t21@@0)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t21@@0)) 1)) (= 3 $t10@@3))) (and (not (= _$t1@@4 186537453)) (= 2 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t22@@0)) (= 5 $t10@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t22@@0)) 2)) (= 3 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory@1) $t20@@3)) (= 5 $t10@@3))) (and (let ((addr@@37 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@37) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@37)))) (= 7 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3) (= 6 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@3) (= 1 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@0 $t10@@3) (= (ControlFlow 0 517160) 516022))) L7_correct))))
(let ((anon36_Then_correct  (=> (and (and _$t2@@1 (= $t20@@3 _$t0@@4)) (and (= $t21@@0 _$t1@@4) (= $t22@@0 _$t0@@4))) (and (=> (= (ControlFlow 0 516934) (- 0 835299)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t20@@3)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t20@@3) (=> (= $t23@@1  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t21@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t21@@0)) 1))) (not (= _$t1@@4 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t22@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t22@@0)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory@1) $t20@@3))) (let ((addr@@38 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@38) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@38))))) (|Select__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@3)) (|Select__T@[Int]Bool_| (|domain#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 516934) 517160) anon37_Then_correct) (=> (= (ControlFlow 0 516934) 516940) anon37_Else_correct))))))))
(let ((anon39_Then_correct  (=> $t27 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t25@@1)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t25@@1)) 1)) (= 3 $t10@@3))) (and (not (= _$t1@@4 186537453)) (= 2 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t26)) (= 5 $t10@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t26)) 2)) (= 3 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory@1) $t24@@1)) (= 5 $t10@@3))) (and (let ((addr@@39 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@39) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@39)))) (= 7 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $t24@@1) (= 6 $t10@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) $t24@@1) (= 1 $t10@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@0 $t10@@3) (= (ControlFlow 0 516786) 516022))) L7_correct))))
(let ((anon36_Else_correct  (=> (and (and (not _$t2@@1) (= $t24@@1 _$t0@@4)) (and (= $t25@@1 _$t1@@4) (= $t26 _$t0@@4))) (and (=> (= (ControlFlow 0 516346) (- 0 835445)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t24@@1)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t24@@1) (=> (= $t27  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t25@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t25@@1)) 1))) (not (= _$t1@@4 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t26))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t26)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory@1) $t24@@1))) (let ((addr@@40 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@40) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@40))))) (|Select__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $t24@@1)) (|Select__T@[Int]Bool_| (|domain#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) $t24@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 516346) 516786) anon39_Then_correct) (=> (= (ControlFlow 0 516346) 516352) anon39_Else_correct))))))))
(let ((anon35_Else_correct  (=> (not $abort_flag@0@@4) (and (=> (= (ControlFlow 0 516196) (- 0 835240)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory@1) addr@@41) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@41)) 2))))
 :qid |DiemAccountandybpl.19060:15|
 :skolemid |276|
))) (=> (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory@1) addr@@42) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@42)) 2))))
 :qid |DiemAccountandybpl.19060:15|
 :skolemid |276|
)) (and (=> (= (ControlFlow 0 516196) 516934) anon36_Then_correct) (=> (= (ControlFlow 0 516196) 516346) anon36_Else_correct)))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t10@0@@0 $abort_code@1@@4) (= (ControlFlow 0 517174) 516022))) L7_correct)))
(let ((anon34_Then$1_correct  (=> (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 517224) 517174) anon35_Then_correct) (=> (= (ControlFlow 0 517224) 516196) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t0@@4) (= (ControlFlow 0 517222) 517224)) anon34_Then$1_correct)))
(let ((anon34_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t0@@4)) (=> (and (and (= $1_DesignatedDealer_Dealer_$memory@0 ($Memory_244157 (|Store__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t0@@4 true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t0@@4 $t19@0))) (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory@0)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 516161) 517174) anon35_Then_correct) (=> (= (ControlFlow 0 516161) 516196) anon35_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not false) (= $t19@0 ($1_DesignatedDealer_Dealer |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 516143) (- 0 835127)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies _$t0@@4)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies _$t0@@4) (=> (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) addr@@43) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@43)) 2))))
 :qid |DiemAccountandybpl.19040:20|
 :skolemid |275|
)) (and (=> (= (ControlFlow 0 516143) 517222) anon34_Then_correct) (=> (= (ControlFlow 0 516143) 516161) anon34_Else_correct))))))))
(let ((|inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|) false) (= $1_Event_EventHandles@0@@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 516092) 517238) anon33_Then_correct) (=> (= (ControlFlow 0 516092) 516143) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (and inline$$Not$0$dst@1@@1 (= (ControlFlow 0 516098) 516092)) |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|)))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t17@@1 $t17@@1)) (and (= $t10@0@@0 $t17@@1) (= (ControlFlow 0 515562) 516022))) L7_correct)))
(let ((anon31_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t17@@1) (= $t17@@1 6)) (and (= $t17@@1 $t17@@1) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 515546) 516098) anon32_Then_correct) (=> (= (ControlFlow 0 515546) 515562) anon32_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t14@0@@1)) (= (ControlFlow 0 515510) 515546)) anon31_Else$1_correct)))
(let ((anon31_Else_correct  (=> (not $t12@@2) (=> (and (and (|$IsValid'address'| $t13@@1) (= $t13@@1 _$t0@@4)) (and (= $t14@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) $t13@@1)) (= (ControlFlow 0 515516) 515510))) inline$$Not$0$anon0_correct@@1))))
(let ((anon31_Then_correct  (=> $t12@@2 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t11@@3)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t11@@3)) 2)) (= 3 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@0 $t10@@3) (= (ControlFlow 0 517290) 516022))) L7_correct))))
(let ((anon30_Else_correct@@0  (=> (not $t9@@4) (=> (and (= $t11@@3 _$t0@@4) (= $t12@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t11@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t11@@3)) 2))))) (and (=> (= (ControlFlow 0 515454) 517290) anon31_Then_correct) (=> (= (ControlFlow 0 515454) 515516) anon31_Else_correct))))))
(let ((anon30_Then_correct@@0  (=> $t9@@4 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t8@@2)) (= 5 $t10@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t8@@2)) 1)) (= 3 $t10@@3))) (and (not (= _$t1@@4 186537453)) (= 2 $t10@@3))) (= $t10@@3 $t10@@3)) (and (= $t10@0@@0 $t10@@3) (= (ControlFlow 0 517362) 516022))) L7_correct))))
(let ((anon0$1_correct@@4  (=> (and (and (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_262104| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |DiemAccountandybpl.18761:22|
 :skolemid |255|
)) (forall ((mint_cap_owner@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_262191| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@3)) 1))))
 :qid |DiemAccountandybpl.18761:269|
 :skolemid |256|
))) (forall ((mint_cap_owner@@4 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@4)) 1))))
 :qid |DiemAccountandybpl.18761:517|
 :skolemid |257|
))) (=> (and (and (and (and (and (forall ((addr1@@29 Int) ) (!  (=> (|$IsValid'address'| addr1@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_257297| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@29) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@29)) 1))))
 :qid |DiemAccountandybpl.18765:22|
 :skolemid |258|
)) (forall ((addr1@@30 Int) ) (!  (=> (|$IsValid'address'| addr1@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_257384| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@30) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@30)) 1))))
 :qid |DiemAccountandybpl.18765:232|
 :skolemid |259|
))) (forall ((addr1@@31 Int) ) (!  (=> (|$IsValid'address'| addr1@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_257471| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@31) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@31)) 1))))
 :qid |DiemAccountandybpl.18765:443|
 :skolemid |260|
))) (and (and (forall ((addr1@@32 Int) ) (!  (=> (|$IsValid'address'| addr1@@32) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@32)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@32)) 2))))
 :qid |DiemAccountandybpl.18769:22|
 :skolemid |261|
)) (forall ((addr1@@33 Int) ) (!  (=> (|$IsValid'address'| addr1@@33) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_262959| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_262542| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@33)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@33)) 2))))
 :qid |DiemAccountandybpl.18769:293|
 :skolemid |262|
))) (forall ((addr1@@34 Int) ) (!  (=> (|$IsValid'address'| addr1@@34) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@34) (|Select__T@[Int]Bool_| (|domain#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) addr1@@34)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@34)) 2))))
 :qid |DiemAccountandybpl.18769:565|
 :skolemid |263|
)))) (and (and (and (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_272773| |$1_AccountLimits_Window'#0'_$memory|) addr@@44) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@44) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@44)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@44)) 6)))))
 :qid |DiemAccountandybpl.18773:20|
 :skolemid |264|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (|$IsValid'address'| _$t0@@4) (|$IsValid'address'| _$t1@@4))) (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |DiemAccountandybpl.18789:20|
 :skolemid |265|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@8)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@8) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@8)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@8) 10000000000))))
 :qid |DiemAccountandybpl.18793:20|
 :skolemid |266|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_256586| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@8))
))) (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@9)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@9))
 :qid |DiemAccountandybpl.18797:20|
 :skolemid |267|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@10)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@10) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@10)) 256) (let (($range_1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@10)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@51 $i_2))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@10) i@@51)))) 0)))
 :qid |DiemAccountandybpl.18802:223|
 :skolemid |268|
))))))
 :qid |DiemAccountandybpl.18801:20|
 :skolemid |269|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@10))
)))))) (and (and (and (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@11)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@11) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@11)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@11) 10000000000))))
 :qid |DiemAccountandybpl.18806:20|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@11))
)) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) $a_0@@12)))
(|$IsValid'$1_Diem_Preburn'#0''| $rsc@@12))
 :qid |DiemAccountandybpl.18810:20|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) $a_0@@12))
))) (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@13)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@13) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@13)) 256) (let (($range_1@@0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@13)))))
(forall (($i_2@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_2@@0) (let ((i@@52 $i_2@@0))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@13) i@@52)))) 0)))
 :qid |DiemAccountandybpl.18815:199|
 :skolemid |272|
))))))
 :qid |DiemAccountandybpl.18814:20|
 :skolemid |273|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) $a_0@@14)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@14))
 :qid |DiemAccountandybpl.18819:20|
 :skolemid |274|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) $a_0@@14))
)))) (and (and (= $t5@@1 _$t0@@4) (= $t6@@1 _$t1@@4)) (and (= $t7@@1 _$t0@@4) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies $t5@@1)))) (and (and (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t5@@1) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t5@@1)) (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t5@@1) (= _$t0@@4 _$t0@@4))) (and (and (= _$t1@@4 _$t1@@4) (= _$t2@@1 _$t2@@1)) (and (= $t8@@2 _$t1@@4) (= $t9@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t8@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t8@@2)) 1))) (not (= _$t1@@4 186537453))))))))) (and (=> (= (ControlFlow 0 515406) 517362) anon30_Then_correct@@0) (=> (= (ControlFlow 0 515406) 515454) anon30_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_205661| stream@@13) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@13) v@@56) 0)
 :qid |DiemAccountandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountandybpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 514590) 515406)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 833895) 514590) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@4 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t32 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@3| () T@$Memory_256775)
(declare-fun _$t1@@5 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun $t9@@5 () Int)
(declare-fun _$t2@@2 () Int)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@2| () T@$Memory_296304)
(declare-fun $t8@@3 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t12@0@@0 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t16@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2| () T@$Memory_256775)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1| () T@$Memory_256775)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_256775)
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
(declare-fun $t26@0@@1 () T@$Mutation_234127)
(declare-fun $t29@0 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t28 () Bool)
(declare-fun $t27@@0 () (Seq Int))
(declare-fun $t12@@3 () Int)
(declare-fun $t25@@2 () T@$Mutation_300499)
(declare-fun $t25@0 () T@$Mutation_300499)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t22@0@@0 () Int)
(declare-fun $t21@@1 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun $t23@0@@0 () Int)
(declare-fun $t24@0@@0 () (Seq Int))
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@1| () T@$Memory_296304)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory| () T@$Memory_296304)
(declare-fun $t21@0@@1 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|T@[Int]$1_DesignatedDealer_TierInfo'#0'| Int) |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@0| () T@$Memory_296304)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t20@0 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t17@@2 () Bool)
(declare-fun $t19@@0 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t16@@2 () Int)
(declare-fun $t11@@4 () Bool)
(declare-fun $t10@@4 () Int)
(declare-fun _$t3 () Int)
(declare-fun $t26@@0 () T@$Mutation_234127)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 836666) (let ((anon40_Else_correct@@0  (=> (not $abort_flag@4) (=> (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@1|) (= $t32 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 520278) (- 0 838952)) (not (= _$t1@@5 0))) (=> (not (= _$t1@@5 0)) (and (=> (= (ControlFlow 0 520278) (- 0 838962)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@5))) (and (=> (= (ControlFlow 0 520278) (- 0 838975)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@5))) (and (=> (= (ControlFlow 0 520278) (- 0 838987)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@5)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (and (=> (= (ControlFlow 0 520278) (- 0 839005)) (not (not (= _$t0@@5 186537453)))) (=> (not (not (= _$t0@@5 186537453))) (and (=> (= (ControlFlow 0 520278) (- 0 839019)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (and (=> (= (ControlFlow 0 520278) (- 0 839030)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 520278) (- 0 839042)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (and (=> (= (ControlFlow 0 520278) (- 0 839059)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 520278) (- 0 839069)) (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 520278) (- 0 839077)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_296304| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_296304| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@2)) (and (=> (= (ControlFlow 0 520278) (- 0 839086)) (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@5)) (=> (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@5) (=> (= (ControlFlow 0 520278) (- 0 839095)) (= $t32 (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@3) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@3) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@3))))))))))))))))))))))))))))))))
(let ((L8_correct@@0  (and (=> (= (ControlFlow 0 518648) (- 0 838682)) (or (or (or (or (or (or (or (or (= _$t1@@5 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (not (= _$t0@@5 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1@@5 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@5)) 1))) (not (= _$t0@@5 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t2@@2))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 518648) (- 0 838770)) (or (or (or (or (or (or (or (or (and (= _$t1@@5 0) (= 7 $t12@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@5)) (= 4 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@5)) (= 5 $t12@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@5)) 1)) (= 3 $t12@0@@0))) (and (not (= _$t0@@5 186537453)) (= 2 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (= 5 $t12@0@@0))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 $t12@0@@0))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128) (= 8 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t12@0@@0))))))))
(let ((anon35_Then_correct@@0  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t12@0@@0 $abort_code@1@@5) (= (ControlFlow 0 520464) 518648))) L8_correct@@0)))
(let ((anon40_Then_correct@@0  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t12@0@@0 $abort_code@5) (= (ControlFlow 0 520292) 518648))) L8_correct@@0)))
(let ((|inline$$1_Diem_mint'#0'$0$anon13_correct|  (=> (|$IsValid'$1_Diem_Diem'#0''| |inline$$1_Diem_mint'#0'$0$$t16@0|) (=> (and (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816) (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@5) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|)))) (and (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$t16@0|) _$t1@@5) (= |inline$$1_Diem_mint'#0'$0$$t19@0| |inline$$1_Diem_mint'#0'$0$$t15@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t20@0| |inline$$1_Diem_mint'#0'$0$$t14@0|) (= |inline$$1_Diem_mint'#0'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|)))) (and (= $es@1 (ite |inline$$1_Diem_mint'#0'$0$$t21@0| (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es@0@@1) |inline$$1_Diem_mint'#0'$0$$t20@0|)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_205661| stream@@14)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@14) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@14) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $es@0@@1) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es@0@@1) |inline$$1_Diem_mint'#0'$0$$t20@0| stream_new@@7)))) $es@0@@1)) (= |inline$$1_Diem_mint'#0'$0$$t16@0| |inline$$1_Diem_mint'#0'$0$$t16@0|))) (and (and (= $abort_flag@4 $abort_flag@3) (= $abort_code@5 $abort_code@4)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory@2|)))) (and (=> (= (ControlFlow 0 519930) 520292) anon40_Then_correct@@0) (=> (= (ControlFlow 0 519930) 520278) anon40_Else_correct@@0))))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'#0'_$memory@1| ($Memory_256775 (|Store__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 false) (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@1|) (= (ControlFlow 0 519828) 519930))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'#0'_$memory@0| ($Memory_256775 (|Store__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@0|) (= (ControlFlow 0 519942) 519930))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'#0'$0$$t17@0|) (and (=> (= (ControlFlow 0 519816) 519942) |inline$$1_Diem_mint'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 519816) 519828) |inline$$1_Diem_mint'#0'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$L3_correct|  (=> (and (and (= $abort_flag@4 true) (= $abort_code@5 |inline$$1_Diem_mint'#0'$0$$t10@1|)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory|))) (and (=> (= (ControlFlow 0 519694) 520292) anon40_Then_correct@@0) (=> (= (ControlFlow 0 519694) 520278) anon40_Else_correct@@0)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128) (= 8 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (= |inline$$1_Diem_mint'#0'$0$$t10@0| |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t10@0|) (= (ControlFlow 0 520010) 519694))) |inline$$1_Diem_mint'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_Diem_mint'#0'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_mint'#0'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'#0'$0$$t15@0| ($1_Diem_MintEvent _$t1@@5 (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (= |inline$$1_Diem_mint'#0'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@5) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 519810) 520010) |inline$$1_Diem_mint'#0'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 519810) 519816) |inline$$1_Diem_mint'#0'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| $abort_code@4) (= (ControlFlow 0 520024) 519694))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|  (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 520076) 520024) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 520076) 519810) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (= (ControlFlow 0 520074) 520076)) |inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|) (= |inline$$1_Diem_mint'#0'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|))) (and (= $abort_code@4 $abort_code@3) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 519714) 520024) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 519714) 519810) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t7@1| (and (=> (= (ControlFlow 0 519700) 520074) |inline$$1_Diem_mint'#0'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 519700) 519714) |inline$$1_Diem_mint'#0'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$t7@1|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= (ControlFlow 0 519688) 519694))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= _$t0@@5 _$t0@@5)) (and (= _$t1@@5 _$t1@@5) (|$IsValid'address'| |inline$$1_Diem_mint'#0'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t6@0| _$t0@@5) (= |inline$$1_Diem_mint'#0'$0$$t6@0| |inline$$1_Diem_mint'#0'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t7@1| |inline$$1_Diem_mint'#0'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 519672) 519700) |inline$$1_Diem_mint'#0'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 519672) 519688) |inline$$1_Diem_mint'#0'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct@@0  (=> (and (not $abort_flag@2) (= $t30 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 520082) (- 0 838050)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (=> (= (ControlFlow 0 520082) 519672) |inline$$1_Diem_mint'#0'$0$anon0_correct|))))))
(let ((anon39_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t12@0@@0 $abort_code@3) (= (ControlFlow 0 520306) 518648))) L8_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| (|v#$Mutation_234127| $t26@0@@1)) (= $es@0@@1 (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1|)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_205661| stream@@15)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t29@0))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t29@0) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| stream_new@@8)))))) (and (=> (= (ControlFlow 0 518887) 520306) anon39_Then_correct@@0) (=> (= (ControlFlow 0 518887) 520082) anon39_Else_correct@@0)))))
(let ((anon38_Else_correct@@0  (=> (not $t28) (=> (and (and (|$IsValid'vec'u8''| $t27@@0) (= $t27@@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= $t29@0 ($1_DesignatedDealer_ReceivedMintEvent $t27@@0 _$t2@@2 _$t1@@5)) (= (ControlFlow 0 518893) 518887))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|))))
(let ((anon38_Then_correct@@0  (=> $t28 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t12@@3)) (= $t12@@3 $t12@@3)) (and (= $t12@0@@0 $t12@@3) (= (ControlFlow 0 520332) 518648))) L8_correct@@0))))
(let ((anon37_Else_correct@@0  (=> (not $abort_flag@2) (=> (and (= $t26@0@@1 ($Mutation_234127 (|l#$Mutation_300499| $t25@@2) (seq.++ (|p#$Mutation_300499| $t25@@2) (seq.unit 0)) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_300499| $t25@@2)))) (= $t28  (not (|Select__T@[Int]Bool_| (|domain#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 518788) 520332) anon38_Then_correct@@0) (=> (= (ControlFlow 0 518788) 518893) anon38_Else_correct@@0))))))
(let ((anon37_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t12@0@@0 $abort_code@3) (= (ControlFlow 0 520346) 518648))) L8_correct@@0)))
(let ((anon36_Then$1_correct  (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 520398) 520346) anon37_Then_correct@@0) (=> (= (ControlFlow 0 520398) 518788) anon37_Else_correct@@0)))))
(let ((anon36_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (= (ControlFlow 0 520396) 520398)) anon36_Then$1_correct)))
(let ((anon36_Else_correct@@0  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t2@@2) (= $t25@0 ($Mutation_300499 ($Global _$t2@@2) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)))) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 518756) 520346) anon37_Then_correct@@0) (=> (= (ControlFlow 0 518756) 518788) anon37_Else_correct@@0)))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 518734) (- 0 837814)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@2)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@2) (and (=> (= (ControlFlow 0 518734) 520396) anon36_Then_correct@@0) (=> (= (ControlFlow 0 518734) 518756) anon36_Else_correct@@0))))))
(let ((anon35_Else_correct@@0  (=> (and (and (and (not $abort_flag@0@@5) (= $t22@0@@0 (|$window_start#$1_DesignatedDealer_TierInfo'#0'| $t21@@1))) (and (= $t23@0@@0 (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| $t21@@1)) (= $t24@0@@0 (|$tiers#$1_DesignatedDealer_TierInfo'#0'| $t21@@1)))) (and (and (= $abort_flag@1 $abort_flag@0@@5) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory@1|)) (and (= $abort_code@2 $abort_code@1@@5) (= (ControlFlow 0 520450) 518734)))) L6_correct)))
(let ((anon34_Then$1_correct@@0  (=> (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory|) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 520516) 520464) anon35_Then_correct@@0) (=> (= (ControlFlow 0 520516) 520450) anon35_Else_correct@@0))))))
(let ((anon34_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_296304| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2)) (= (ControlFlow 0 520514) 520516)) anon34_Then$1_correct@@0)))
(let ((anon34_Else_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_296304| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2) (= $t21@0@@1 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_296304| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'#0'_$memory@0| ($Memory_296304 (|Store__T@[Int]Bool_| (|domain#$Memory_296304| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2 false) (|contents#$Memory_296304| |$1_DesignatedDealer_TierInfo'#0'_$memory|))) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory@0|)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 520428) 520464) anon35_Then_correct@@0) (=> (= (ControlFlow 0 520428) 520450) anon35_Else_correct@@0))))))
(let ((anon33_Then_correct@@0  (=> $t20@0 (and (=> (= (ControlFlow 0 520408) (- 0 837659)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2) (and (=> (= (ControlFlow 0 520408) 520514) anon34_Then_correct@@0) (=> (= (ControlFlow 0 520408) 520428) anon34_Else_correct@@0)))))))
(let ((anon33_Else_correct@@0  (=> (not $t20@0) (=> (and (and (= $abort_flag@1 false) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory|)) (and (= $abort_code@2 $abort_code@0@@5) (= (ControlFlow 0 518726) 518734))) L6_correct))))
(let ((anon32_Then_correct@@0  (=> (and $t17@@2 (= $t20@0 (|Select__T@[Int]Bool_| (|domain#$Memory_296304| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@2))) (and (=> (= (ControlFlow 0 518720) 520408) anon33_Then_correct@@0) (=> (= (ControlFlow 0 518720) 518726) anon33_Else_correct@@0)))))
(let ((anon32_Else_correct@@0  (=> (and (and (not $t17@@2) (= $t19@@0 $t19@@0)) (and (= $t12@0@@0 $t19@@0) (= (ControlFlow 0 518710) 518648))) L8_correct@@0)))
(let ((anon31_Then_correct@@0  (=> inline$$Gt$0$dst@1 (=> (and (= $t17@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) _$t2@@2)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t19@@0) (= $t19@@0 5)) (and (= $t19@@0 $t19@@0) (= $t17@@2 $t17@@2))) (and (=> (= (ControlFlow 0 518694) 518720) anon32_Then_correct@@0) (=> (= (ControlFlow 0 518694) 518710) anon32_Else_correct@@0)))))))
(let ((anon31_Else_correct@@0  (=> (and (and (not inline$$Gt$0$dst@1) (= $t16@@2 $t16@@2)) (and (= $t12@0@@0 $t16@@2) (= (ControlFlow 0 518368) 518648))) L8_correct@@0)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t16@@2) (= $t16@@2 7)) (and (= $t16@@2 $t16@@2) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 518352) 518694) anon31_Then_correct@@0) (=> (= (ControlFlow 0 518352) 518368) anon31_Else_correct@@0))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t1@@5 0)) (= (ControlFlow 0 518316) 518352)) anon30_Else$1_correct)))
(let ((anon30_Else_correct@@1  (=> (not $t11@@4) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 518322) 518316)) inline$$Gt$0$anon0_correct))))
(let ((anon30_Then_correct@@1  (=> $t11@@4 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t10@@4)) (= 5 $t12@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t10@@4)) 1)) (= 3 $t12@@3))) (and (not (= _$t0@@5 186537453)) (= 2 $t12@@3))) (= $t12@@3 $t12@@3)) (and (= $t12@0@@0 $t12@@3) (= (ControlFlow 0 520588) 518648))) L8_correct@@0))))
(let ((anon0$1_correct@@5  (=> (and (and (and (forall ((mint_cap_owner@@5 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_262104| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@5)) 1))))
 :qid |DiemAccountandybpl.19361:22|
 :skolemid |277|
)) (forall ((mint_cap_owner@@6 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_262191| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@6)) 1))))
 :qid |DiemAccountandybpl.19361:269|
 :skolemid |278|
))) (forall ((mint_cap_owner@@7 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) mint_cap_owner@@7)) 1))))
 :qid |DiemAccountandybpl.19361:517|
 :skolemid |279|
))) (and (and (forall ((addr1@@35 Int) ) (!  (=> (|$IsValid'address'| addr1@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_257297| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@35) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@35)) 1))))
 :qid |DiemAccountandybpl.19365:22|
 :skolemid |280|
)) (forall ((addr1@@36 Int) ) (!  (=> (|$IsValid'address'| addr1@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_257384| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@36) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@36)) 1))))
 :qid |DiemAccountandybpl.19365:232|
 :skolemid |281|
))) (forall ((addr1@@37 Int) ) (!  (=> (|$IsValid'address'| addr1@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_257471| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@37) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@37)) 1))))
 :qid |DiemAccountandybpl.19365:443|
 :skolemid |282|
)))) (=> (and (and (and (and (and (forall ((addr1@@38 Int) ) (!  (=> (|$IsValid'address'| addr1@@38) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_262860| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@38) (|Select__T@[Int]Bool_| (|domain#$Memory_262451| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@38)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@38)) 2))))
 :qid |DiemAccountandybpl.19369:22|
 :skolemid |283|
)) (forall ((addr1@@39 Int) ) (!  (=> (|$IsValid'address'| addr1@@39) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_262959| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@39) (|Select__T@[Int]Bool_| (|domain#$Memory_262542| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@39)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@39)) 2))))
 :qid |DiemAccountandybpl.19369:293|
 :skolemid |284|
))) (forall ((addr1@@40 Int) ) (!  (=> (|$IsValid'address'| addr1@@40) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_263058| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@40) (|Select__T@[Int]Bool_| (|domain#$Memory_262633| |$1_Diem_Preburn'#0'_$memory|) addr1@@40)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr1@@40)) 2))))
 :qid |DiemAccountandybpl.19369:565|
 :skolemid |285|
))) (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_272773| |$1_AccountLimits_Window'#0'_$memory|) addr@@45) (and (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) addr@@45) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@45)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) addr@@45)) 6)))))
 :qid |DiemAccountandybpl.19373:20|
 :skolemid |286|
))) (and (and (|$IsValid'address'| _$t0@@5) (|$IsValid'u64'| _$t1@@5)) (and (|$IsValid'address'| _$t2@@2) (|$IsValid'u64'| _$t3)))) (and (and (and (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $a_0@@15)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@15))
 :qid |DiemAccountandybpl.19389:20|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $a_0@@15))
)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@16)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@16) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@16)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@16) 10000000000))))
 :qid |DiemAccountandybpl.19393:20|
 :skolemid |288|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@16))
))) (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@17)))
(|$IsValid'$1_Diem_MintCapability'#0''| $rsc@@17))
 :qid |DiemAccountandybpl.19397:20|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_262278| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@17))
)) (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) $a_0@@18)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@18))
 :qid |DiemAccountandybpl.19401:20|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_244157| $1_DesignatedDealer_Dealer_$memory) $a_0@@18))
)))) (and (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_296304| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@19)))
(|$IsValid'$1_DesignatedDealer_TierInfo'#0''| $rsc@@19))
 :qid |DiemAccountandybpl.19405:20|
 :skolemid |291|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_296304| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@19))
)) (= $t8@@3 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_256775| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (= $t9@@5 _$t0@@5) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@2)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@2)) (and (= _$t0@@5 _$t0@@5) (= _$t1@@5 _$t1@@5))) (and (and (= _$t2@@2 _$t2@@2) (= _$t3 _$t3)) (and (= $t10@@4 _$t0@@5) (= $t11@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t10@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t10@@4)) 1))) (not (= _$t0@@5 186537453))))))))) (and (=> (= (ControlFlow 0 518262) 520588) anon30_Then_correct@@1) (=> (= (ControlFlow 0 518262) 518322) anon30_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_205661| stream@@16) 0) (forall ((v@@57 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@16) v@@57) 0)
 :qid |DiemAccountandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountandybpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 517672) 518262)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (seq.len (|p#$Mutation_300499| $t25@@2)) 0) (=> (and (= (seq.len (|p#$Mutation_234127| $t26@@0)) 0) (= (ControlFlow 0 517682) 517672)) inline$$InitEventStore$0$anon0_correct@@5))))
(let ((PreconditionGeneratedEntry_correct@@2  (=> (= (ControlFlow 0 836666) 517682) anon0_correct@@5)))
PreconditionGeneratedEntry_correct@@2))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_303402)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_303402)
(declare-fun $t4@@0 () Int)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $t10@0@@1 () Int)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun _$t0@@6 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_303402)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun $t12@0@@1 () T@$1_AccountFreezing_FreezingBit)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$modifies () |T@[Int]Bool|)
(declare-fun $t9@@6 () Int)
(declare-fun $t6@0@@0 () Bool)
(declare-fun $t5@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountFreezing_create$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 839120) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0@@6) (and (=> (= (ControlFlow 0 521281) (- 0 839523)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243798| $1_DiemAccount_DiemAccount_$memory) addr@@46) (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@1) addr@@46)))
 :qid |DiemAccountandybpl.20543:15|
 :skolemid |299|
))) (=> (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243798| $1_DiemAccount_DiemAccount_$memory) addr@@47) (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@1) addr@@47)))
 :qid |DiemAccountandybpl.20543:15|
 :skolemid |299|
)) (and (=> (= (ControlFlow 0 521281) (- 0 839551)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) $t4@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) $t4@@0)) (and (=> (= (ControlFlow 0 521281) (- 0 839561)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0))))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@1) $t4@@0)))) (=> (= (ControlFlow 0 521281) (- 0 839569)) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) addr@@48) (= (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@1) addr@@48)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) addr@@48)))))
 :qid |DiemAccountandybpl.20562:15|
 :skolemid |300|
))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 521126) (- 0 839495)) (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) $t4@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) $t4@@0) (=> (= (ControlFlow 0 521126) (- 0 839500)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) $t4@@0) (= 6 $t10@0@@1)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t10@0@@1 $abort_code@1@@6) (= (ControlFlow 0 521295) 521126))) L3_correct@@2)))
(let ((anon11_Then$1_correct@@0  (=> (= $1_AccountFreezing_FreezingBit_$memory@1 $1_AccountFreezing_FreezingBit_$memory) (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 521345) 521295) anon12_Then_correct@@0) (=> (= (ControlFlow 0 521345) 521281) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t0@@6) (= (ControlFlow 0 521343) 521345)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t0@@6)) (=> (and (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_303402 (|Store__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t0@@6 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t0@@6 $t12@0@@1))) (= $1_AccountFreezing_FreezingBit_$memory@1 $1_AccountFreezing_FreezingBit_$memory@0)) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 521191) 521295) anon12_Then_correct@@0) (=> (= (ControlFlow 0 521191) 521281) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@2 (= $t12@0@@1 ($1_AccountFreezing_FreezingBit false))) (and (=> (= (ControlFlow 0 521173) (- 0 839360)) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies _$t0@@6)) (=> (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies _$t0@@6) (=> (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243798| $1_DiemAccount_DiemAccount_$memory) addr@@49) (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) addr@@49)))
 :qid |DiemAccountandybpl.20523:20|
 :skolemid |298|
)) (and (=> (= (ControlFlow 0 521173) 521343) anon11_Then_correct@@0) (=> (= (ControlFlow 0 521173) 521191) anon11_Else_correct@@0))))))))
(let ((anon10_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@2) (= $t9@@6 $t9@@6)) (and (= $t10@0@@1 $t9@@6) (= (ControlFlow 0 521098) 521126))) L3_correct@@2)))
(let ((anon0$2_correct@@0  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t9@@6) (= $t9@@6 6)) (and (= $t9@@6 $t9@@6) (= inline$$Not$0$dst@1@@2 inline$$Not$0$dst@1@@2))) (and (=> (= (ControlFlow 0 521082) 521173) anon10_Then_correct@@0) (=> (= (ControlFlow 0 521082) 521098) anon10_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (and (= inline$$Not$0$dst@1@@2  (not $t6@0@@0)) (= (ControlFlow 0 521046) 521082)) anon0$2_correct@@0)))
(let ((anon0$1_correct@@6  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))) (and (|$IsValid'address'| _$t0@@6) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) $a_0@@20)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@20))
 :qid |DiemAccountandybpl.20422:20|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) $a_0@@20))
)))) (=> (and (and (and (= $t4@@0 _$t0@@6) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies $t4@@0)) (and (= _$t0@@6 _$t0@@6) (|$IsValid'address'| $t5@@2))) (and (and (= $t5@@2 _$t0@@6) (= $t5@@2 $t5@@2)) (and (= $t6@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) $t5@@2)) (= (ControlFlow 0 521052) 521046)))) inline$$Not$0$anon0_correct@@2))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_205661| stream@@17) 0) (forall ((v@@58 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@17) v@@58) 0)
 :qid |DiemAccountandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountandybpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 520896) 521052)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 839120) 520896) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $t9@@7 () Int)
(declare-fun _$t0@@7 () Int)
(declare-fun _$t1@@6 () Int)
(declare-fun $t12@@4 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0@@0 () T@$Memory_303402)
(declare-fun $es@0@@2 () T@$EventStore)
(declare-fun $t10@@5 () T@$1_Event_EventHandle)
(declare-fun $t11@@5 () T@$1_AccountFreezing_FreezeAccountEvent)
(declare-fun $t14@0@@2 () Int)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_234127)
(declare-fun $t35@0 () T@$1_AccountFreezing_FreezeAccountEvent)
(declare-fun $t33@1 () T@$Mutation_305294)
(declare-fun $t31 () Int)
(declare-fun $t33 () T@$Mutation_305294)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_303748)
(declare-fun $t33@0 () T@$Mutation_305294)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|T@[Int]$1_AccountFreezing_FreezeEventsHolder| Int) T@$1_AccountFreezing_FreezeEventsHolder)
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t30@0 () T@$Mutation_45350)
(declare-fun $t29@1 () T@$Mutation_305252)
(declare-fun $t30@1 () T@$Mutation_45350)
(declare-fun $t29@2 () T@$Mutation_305252)
(declare-fun $t29 () T@$Mutation_305252)
(declare-fun $t29@0@@0 () T@$Mutation_305252)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun $t25@0@@0 () Bool)
(declare-fun $t27@@1 () Int)
(declare-fun $t22@0@@1 () Bool)
(declare-fun $t24@@2 () Int)
(declare-fun $t18@0@@1 () Bool)
(declare-fun $t20@@4 () Int)
(declare-fun $t16@@3 () Bool)
(declare-fun $t15@@1 () Int)
(declare-fun $t14@@2 () Int)
(declare-fun $t13@@2 () Bool)
(declare-fun $t30@@0 () T@$Mutation_45350)
(declare-fun $t34 () T@$Mutation_234127)
(push 1)
(set-info :boogie-vc-id $1_AccountFreezing_freeze_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 839610) (let ((anon36_Else_correct@@1  (=> (not $abort_flag@1@@0) (and (=> (= (ControlFlow 0 522737) (- 0 841033)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 522737) (- 0 841043)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@7))) (and (=> (= (ControlFlow 0 522737) (- 0 841055)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@7)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (and (=> (= (ControlFlow 0 522737) (- 0 841073)) (not (not (= _$t0@@7 186537453)))) (=> (not (not (= _$t0@@7 186537453))) (and (=> (= (ControlFlow 0 522737) (- 0 841087)) (not (= _$t1@@6 173345816))) (=> (not (= _$t1@@6 173345816)) (and (=> (= (ControlFlow 0 522737) (- 0 841097)) (not (= _$t1@@6 186537453))) (=> (not (= _$t1@@6 186537453)) (and (=> (= (ControlFlow 0 522737) (- 0 841107)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6))) (and (=> (= (ControlFlow 0 522737) (- 0 841118)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t12@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t12@@4))) (and (=> (= (ControlFlow 0 522737) (- 0 841130)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t12@@4)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t12@@4)) 1))) (and (=> (= (ControlFlow 0 522737) (- 0 841148)) (not (not (= _$t0@@7 186537453)))) (=> (not (not (= _$t0@@7 186537453))) (and (=> (= (ControlFlow 0 522737) (- 0 841162)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@6) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@6)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@6) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@0@@0) _$t1@@6))) (and (=> (= (ControlFlow 0 522737) (- 0 841169)) (let ((actual@@5 ($EventStore (- (|counter#$EventStore| $es@0@@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@2) (|streams#$EventStore| $es)))))
(let ((expected@@5 (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@9 (let ((len@@9 (|l#Multiset_205661| stream@@18)))
(let ((cnt@@9 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@18) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@18) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5) (+ cnt@@9 1)) (+ len@@9 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@9))))))
 (and (<= (|counter#$EventStore| expected@@5) (|counter#$EventStore| actual@@5)) (forall ((handle@@15 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@5) handle@@15)) (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@5) handle@@15))) (forall ((v@@59 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@5) handle@@15)) v@@59) (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@5) handle@@15)) v@@59))
 :qid |DiemAccountandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountandybpl.3126:13|
 :skolemid |88|
)))))) (=> (let ((actual@@6 ($EventStore (- (|counter#$EventStore| $es@0@@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@2) (|streams#$EventStore| $es)))))
(let ((expected@@6 (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@10 (let ((len@@10 (|l#Multiset_205661| stream@@19)))
(let ((cnt@@10 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@19) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@19) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5) (+ cnt@@10 1)) (+ len@@10 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@10))))))
 (and (<= (|counter#$EventStore| expected@@6) (|counter#$EventStore| actual@@6)) (forall ((handle@@16 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@6) handle@@16)) (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@6) handle@@16))) (forall ((v@@60 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@6) handle@@16)) v@@60) (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@6) handle@@16)) v@@60))
 :qid |DiemAccountandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountandybpl.3126:13|
 :skolemid |88|
))))) (=> (= (ControlFlow 0 522737) (- 0 841194)) (let ((actual@@7 ($EventStore (- (|counter#$EventStore| $es@0@@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@2) (|streams#$EventStore| $es)))))
(let ((expected@@7 (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t10@@5)))
(let ((stream_new@@11 (let ((len@@11 (|l#Multiset_205661| stream@@20)))
(let ((cnt@@11 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@20) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@20) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t11@@5) (+ cnt@@11 1)) (+ len@@11 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $EmptyEventStore) $t10@@5 stream_new@@11))))))
 (and (<= (|counter#$EventStore| actual@@7) (|counter#$EventStore| expected@@7)) (forall ((handle@@17 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@7) handle@@17)) (|l#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@7) handle@@17))) (forall ((v@@61 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| actual@@7) handle@@17)) v@@61) (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| expected@@7) handle@@17)) v@@61))
 :qid |DiemAccountandybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemAccountandybpl.3126:13|
 :skolemid |88|
)))))))))))))))))))))))))))))))))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 522126) (- 0 840755)) (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (not (= _$t0@@7 186537453))) (= _$t1@@6 173345816)) (= _$t1@@6 186537453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t12@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t12@@4)) 1))) (not (= _$t0@@7 186537453)))) (=> (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@7)) 1))) (not (= _$t0@@7 186537453))) (= _$t1@@6 173345816)) (= _$t1@@6 186537453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t12@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t12@@4)) 1))) (not (= _$t0@@7 186537453))) (=> (= (ControlFlow 0 522126) (- 0 840852)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t14@0@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@7)) (= 5 $t14@0@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t9@@7)) 1)) (= 3 $t14@0@@2))) (and (not (= _$t0@@7 186537453)) (= 2 $t14@0@@2))) (and (= _$t1@@6 173345816) (= 7 $t14@0@@2))) (and (= _$t1@@6 186537453) (= 7 $t14@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6)) (= 5 $t14@0@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t12@@4)) (= 5 $t14@0@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t12@@4)) 1)) (= 3 $t14@0@@2))) (and (not (= _$t0@@7 186537453)) (= 2 $t14@0@@2))))))))
(let ((anon36_Then_correct@@1  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= $t14@0@@2 $abort_code@2@@0) (= (ControlFlow 0 522751) 522126))) L7_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1| (|v#$Mutation_234127| $t34@0)) (= $es@0@@2 (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1|)))
(let ((stream_new@@12 (let ((len@@12 (|l#Multiset_205661| stream@@21)))
(let ((cnt@@12 (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@21) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t35@0))))
(Multiset_205661 (|Store__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@21) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| $t35@0) (+ cnt@@12 1)) (+ len@@12 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$handle@1| stream_new@@12)))))) (and (=> (= (ControlFlow 0 522527) 522751) anon36_Then_correct@@1) (=> (= (ControlFlow 0 522527) 522737) anon36_Else_correct@@1)))))
(let ((anon35_Else_correct@@1  (=> (and (and (not $abort_flag@1@@0) (= $t34@0 ($Mutation_234127 (|l#$Mutation_305294| $t33@1) (seq.++ (|p#$Mutation_305294| $t33@1) (seq.unit 0)) (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| (|v#$Mutation_305294| $t33@1))))) (and (= $t35@0 ($1_AccountFreezing_FreezeAccountEvent $t31 _$t1@@6)) (= (ControlFlow 0 522533) 522527))) |inline$$1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'$0$anon0_correct|)))
(let ((anon35_Then_correct@@1  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= $t14@0@@2 $abort_code@2@@0) (= (ControlFlow 0 522765) 522126))) L7_correct@@0)))
(let ((anon34_Then$1_correct@@1  (=> (= $t33@1 $t33) (=> (and (= $abort_flag@1@@0 true) (= $abort_code@2@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 522817) 522765) anon35_Then_correct@@1) (=> (= (ControlFlow 0 522817) 522533) anon35_Else_correct@@1))))))
(let ((anon34_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_303748| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (= (ControlFlow 0 522815) 522817)) anon34_Then$1_correct@@1)))
(let ((anon34_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_303748| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816) (=> (and (and (= $t33@0 ($Mutation_305294 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_303748| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (= $t33@1 $t33@0)) (and (= $abort_flag@1@@0 $abort_flag@0@@7) (= $abort_code@2@@0 $abort_code@1@@7))) (and (=> (= (ControlFlow 0 522428) 522765) anon35_Then_correct@@1) (=> (= (ControlFlow 0 522428) 522533) anon35_Else_correct@@1))))))
(let ((anon33_Else_correct@@1  (=> (and (not $abort_flag@0@@7) (= $t30@0 ($Mutation_45350 (|l#$Mutation_305252| $t29@1) (seq.++ (|p#$Mutation_305252| $t29@1) (seq.unit 0)) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|v#$Mutation_305252| $t29@1))))) (=> (and (and (= $t30@1 ($Mutation_45350 (|l#$Mutation_45350| $t30@0) (|p#$Mutation_45350| $t30@0) true)) (= $t29@2 ($Mutation_305252 (|l#$Mutation_305252| $t29@1) (|p#$Mutation_305252| $t29@1) ($1_AccountFreezing_FreezingBit (|v#$Mutation_45350| $t30@1))))) (and (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243798| $1_DiemAccount_DiemAccount_$memory) addr@@50) (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) addr@@50)))
 :qid |DiemAccountandybpl.20962:20|
 :skolemid |305|
)) (= $1_AccountFreezing_FreezingBit_$memory@0@@0 ($Memory_303402 (|Store__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) (|a#$Global| (|l#$Mutation_305252| $t29@2)) true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) (|a#$Global| (|l#$Mutation_305252| $t29@2)) (|v#$Mutation_305252| $t29@2)))))) (and (=> (= (ControlFlow 0 522406) (- 0 840507)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243798| $1_DiemAccount_DiemAccount_$memory) addr@@51) (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@0@@0) addr@@51)))
 :qid |DiemAccountandybpl.20973:15|
 :skolemid |306|
))) (=> (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243798| $1_DiemAccount_DiemAccount_$memory) addr@@52) (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory@0@@0) addr@@52)))
 :qid |DiemAccountandybpl.20973:15|
 :skolemid |306|
)) (=> (and (and (|$IsValid'address'| $t31) (= $t31 _$t0@@7)) (and (= $t31 $t31) (|$IsValid'address'| 173345816))) (and (=> (= (ControlFlow 0 522406) 522815) anon34_Then_correct@@1) (=> (= (ControlFlow 0 522406) 522428) anon34_Else_correct@@1)))))))))
(let ((anon33_Then_correct@@1  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t14@0@@2 $abort_code@1@@7) (= (ControlFlow 0 522831) 522126))) L7_correct@@0)))
(let ((anon32_Then$1_correct  (=> (= $t29@1 $t29) (=> (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 522883) 522831) anon33_Then_correct@@1) (=> (= (ControlFlow 0 522883) 522406) anon33_Else_correct@@1))))))
(let ((anon32_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6)) (= (ControlFlow 0 522881) 522883)) anon32_Then$1_correct)))
(let ((anon32_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6) (=> (and (and (= $t29@0@@0 ($Mutation_305252 ($Global _$t1@@6) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6))) (= $t29@1 $t29@0@@0)) (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7))) (and (=> (= (ControlFlow 0 522274) 522831) anon33_Then_correct@@1) (=> (= (ControlFlow 0 522274) 522406) anon33_Else_correct@@1))))))
(let ((anon31_Then_correct@@1  (=> $t25@0@@0 (and (=> (= (ControlFlow 0 522252) 522881) anon32_Then_correct@@1) (=> (= (ControlFlow 0 522252) 522274) anon32_Else_correct@@1)))))
(let ((anon31_Else_correct@@1  (=> (and (and (not $t25@0@@0) (= $t27@@1 $t27@@1)) (and (= $t14@0@@2 $t27@@1) (= (ControlFlow 0 522242) 522126))) L7_correct@@0)))
(let ((anon30_Then_correct@@2  (=> $t22@0@@1 (=> (and (= $t25@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) _$t1@@6)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t27@@1) (= $t27@@1 5)) (and (= $t27@@1 $t27@@1) (= $t25@0@@0 $t25@0@@0))) (and (=> (= (ControlFlow 0 522226) 522252) anon31_Then_correct@@1) (=> (= (ControlFlow 0 522226) 522242) anon31_Else_correct@@1)))))))
(let ((anon30_Else_correct@@2  (=> (and (and (not $t22@0@@1) (= $t24@@2 $t24@@2)) (and (= $t14@0@@2 $t24@@2) (= (ControlFlow 0 522188) 522126))) L7_correct@@0)))
(let ((anon29_Then_correct@@0  (=> (and (and (and $t18@0@@1 (|$IsValid'address'| 186537453)) (and (= $t22@0@@1  (not (= _$t1@@6 186537453))) (|$IsValid'u64'| 4))) (and (and (|$IsValid'u64'| $t24@@2) (= $t24@@2 7)) (and (= $t24@@2 $t24@@2) (= $t22@0@@1 $t22@0@@1)))) (and (=> (= (ControlFlow 0 522172) 522226) anon30_Then_correct@@2) (=> (= (ControlFlow 0 522172) 522188) anon30_Else_correct@@2)))))
(let ((anon29_Else_correct@@0  (=> (and (and (not $t18@0@@1) (= $t20@@4 $t20@@4)) (and (= $t14@0@@2 $t20@@4) (= (ControlFlow 0 521822) 522126))) L7_correct@@0)))
(let ((anon28_Else_correct@@0  (=> (and (and (and (not $t16@@3) (|$IsValid'address'| 173345816)) (and (= $t18@0@@1  (not (= _$t1@@6 173345816))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t20@@4) (= $t20@@4 7)) (and (= $t20@@4 $t20@@4) (= $t18@0@@1 $t18@0@@1)))) (and (=> (= (ControlFlow 0 521806) 522172) anon29_Then_correct@@0) (=> (= (ControlFlow 0 521806) 521822) anon29_Else_correct@@0)))))
(let ((anon28_Then_correct@@0  (=> $t16@@3 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t15@@1)) (= 5 $t14@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t15@@1)) 1)) (= 3 $t14@@2))) (and (not (= _$t0@@7 186537453)) (= 2 $t14@@2))) (= $t14@@2 $t14@@2)) (and (= $t14@0@@2 $t14@@2) (= (ControlFlow 0 522955) 522126))) L7_correct@@0))))
(let ((anon27_Else_correct@@0  (=> (not $t13@@2) (=> (and (= $t15@@1 _$t0@@7) (= $t16@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_242142| $1_Roles_RoleId_$memory) $t15@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $t15@@1)) 1))) (not (= _$t0@@7 186537453))))) (and (=> (= (ControlFlow 0 521756) 522955) anon28_Then_correct@@0) (=> (= (ControlFlow 0 521756) 521806) anon28_Else_correct@@0))))))
(let ((anon27_Then_correct@@0  (=> $t13@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t14@@2)) (= $t14@@2 $t14@@2)) (and (= $t14@0@@2 $t14@@2) (= (ControlFlow 0 522981) 522126))) L7_correct@@0))))
(let ((anon0$1_correct@@7  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_303748| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (|$IsValid'address'| _$t0@@7))) (and (and (|$IsValid'address'| _$t1@@6) (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@21)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@21))
 :qid |DiemAccountandybpl.20668:20|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@21))
))) (and (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $a_0@@22)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@22))
 :qid |DiemAccountandybpl.20672:20|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_242142| $1_Roles_RoleId_$memory) $a_0@@22))
)) (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_303748| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@23)))
(|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| $rsc@@23))
 :qid |DiemAccountandybpl.20676:20|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_303748| $1_AccountFreezing_FreezeEventsHolder_$memory) $a_0@@23))
))))) (and (and (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) $a_0@@24)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@24))
 :qid |DiemAccountandybpl.20680:20|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_303402| $1_AccountFreezing_FreezingBit_$memory) $a_0@@24))
)) (= $t9@@7 _$t0@@7)) (and (= $t10@@5 (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| (|Select__T@[Int]$1_AccountFreezing_FreezeEventsHolder_| (|contents#$Memory_303748| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (= $t11@@5 ($1_AccountFreezing_FreezeAccountEvent _$t0@@7 _$t1@@6)))) (and (and (= $t12@@4 _$t0@@7) (= _$t0@@7 _$t0@@7)) (and (= _$t1@@6 _$t1@@6) (= $t13@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_240251| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 521696) 522981) anon27_Then_correct@@0) (=> (= (ControlFlow 0 521696) 521756) anon27_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_205661_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_205661| stream@@22) 0) (forall ((v@@62 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_205661| stream@@22) v@@62) 0)
 :qid |DiemAccountandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemAccountandybpl.3110:13|
 :skolemid |87|
))) (= (ControlFlow 0 521458) 521696)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (seq.len (|p#$Mutation_305252| $t29)) 0) (=> (and (and (= (seq.len (|p#$Mutation_45350| $t30@@0)) 0) (= (seq.len (|p#$Mutation_305294| $t33)) 0)) (and (= (seq.len (|p#$Mutation_234127| $t34)) 0) (= (ControlFlow 0 521468) 521458))) inline$$InitEventStore$0$anon0_correct@@7))))
(let ((PreconditionGeneratedEntry_correct@@3  (=> (= (ControlFlow 0 839610) 521468) anon0_correct@@7)))
PreconditionGeneratedEntry_correct@@3)))))))))))))))))))))))))))))
))
(check-sat)
