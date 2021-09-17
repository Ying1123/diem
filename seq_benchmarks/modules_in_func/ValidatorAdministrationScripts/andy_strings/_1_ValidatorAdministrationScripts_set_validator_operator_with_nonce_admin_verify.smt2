(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-option :ee-mode central)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_75204 0)) ((($Memory_75204 (|domain#$Memory_75204| |T@[Int]Bool|) (|contents#$Memory_75204| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_103005 0)) ((($Memory_103005 (|domain#$Memory_103005| |T@[Int]Bool|) (|contents#$Memory_103005| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_100506 0)) ((($Memory_100506 (|domain#$Memory_100506| |T@[Int]Bool|) (|contents#$Memory_100506| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_99003 0)) ((($Memory_99003 (|domain#$Memory_99003| |T@[Int]Bool|) (|contents#$Memory_99003| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_99316 0)) ((($Memory_99316 (|domain#$Memory_99316| |T@[Int]Bool|) (|contents#$Memory_99316| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_98970 0)) ((($Memory_98970 (|domain#$Memory_98970| |T@[Int]Bool|) (|contents#$Memory_98970| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_98755 0)) ((($Memory_98755 (|domain#$Memory_98755| |T@[Int]Bool|) (|contents#$Memory_98755| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_97900 0)) ((($Memory_97900 (|domain#$Memory_97900| |T@[Int]Bool|) (|contents#$Memory_97900| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_97836 0)) ((($Memory_97836 (|domain#$Memory_97836| |T@[Int]Bool|) (|contents#$Memory_97836| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_97477 0)) ((($Memory_97477 (|domain#$Memory_97477| |T@[Int]Bool|) (|contents#$Memory_97477| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_97413 0)) ((($Memory_97413 (|domain#$Memory_97413| |T@[Int]Bool|) (|contents#$Memory_97413| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_97281 0)) ((($Memory_97281 (|domain#$Memory_97281| |T@[Int]Bool|) (|contents#$Memory_97281| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_97380 0)) ((($Memory_97380 (|domain#$Memory_97380| |T@[Int]Bool|) (|contents#$Memory_97380| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_96685 0)) ((($Memory_96685 (|domain#$Memory_96685| |T@[Int]Bool|) (|contents#$Memory_96685| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_96466 0)) ((($Memory_96466 (|domain#$Memory_96466| |T@[Int]Bool|) (|contents#$Memory_96466| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_100113 0)) ((($Memory_100113 (|domain#$Memory_100113| |T@[Int]Bool|) (|contents#$Memory_100113| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_95719 0)) ((($Memory_95719 (|domain#$Memory_95719| |T@[Int]Bool|) (|contents#$Memory_95719| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_92516 0)) ((($Memory_92516 (|domain#$Memory_92516| |T@[Int]Bool|) (|contents#$Memory_92516| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100339 0)) ((($Memory_100339 (|domain#$Memory_100339| |T@[Int]Bool|) (|contents#$Memory_100339| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_95983 0)) ((($Memory_95983 (|domain#$Memory_95983| |T@[Int]Bool|) (|contents#$Memory_95983| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_96772 0)) ((($Memory_96772 (|domain#$Memory_96772| |T@[Int]Bool|) (|contents#$Memory_96772| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100248 0)) ((($Memory_100248 (|domain#$Memory_100248| |T@[Int]Bool|) (|contents#$Memory_100248| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_95892 0)) ((($Memory_95892 (|domain#$Memory_95892| |T@[Int]Bool|) (|contents#$Memory_95892| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_97657 0)) ((($Memory_97657 (|domain#$Memory_97657| |T@[Int]Bool|) (|contents#$Memory_97657| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_92290 0)) ((($Memory_92290 (|domain#$Memory_92290| |T@[Int]Bool|) (|contents#$Memory_92290| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_92226 0)) ((($Memory_92226 (|domain#$Memory_92226| |T@[Int]Bool|) (|contents#$Memory_92226| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_86804 0)) ((($Memory_86804 (|domain#$Memory_86804| |T@[Int]Bool|) (|contents#$Memory_86804| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_87199 0)) ((($Memory_87199 (|domain#$Memory_87199| |T@[Int]Bool|) (|contents#$Memory_87199| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_85768 0)) ((($Memory_85768 (|domain#$Memory_85768| |T@[Int]Bool|) (|contents#$Memory_85768| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_85880 0)) ((($Memory_85880 (|domain#$Memory_85880| |T@[Int]Bool|) (|contents#$Memory_85880| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_86171 0)) ((($Memory_86171 (|domain#$Memory_86171| |T@[Int]Bool|) (|contents#$Memory_86171| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_86107 0)) ((($Memory_86107 (|domain#$Memory_86107| |T@[Int]Bool|) (|contents#$Memory_86107| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_86043 0)) ((($Memory_86043 (|domain#$Memory_86043| |T@[Int]Bool|) (|contents#$Memory_86043| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_85979 0)) ((($Memory_85979 (|domain#$Memory_85979| |T@[Int]Bool|) (|contents#$Memory_85979| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_85237 0)) ((($Memory_85237 (|domain#$Memory_85237| |T@[Int]Bool|) (|contents#$Memory_85237| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_99483 0)) ((($Memory_99483 (|domain#$Memory_99483| |T@[Int]Bool|) (|contents#$Memory_99483| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_85687 0)) ((($Memory_85687 (|domain#$Memory_85687| |T@[Int]Bool|) (|contents#$Memory_85687| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_83469 0)) ((($Memory_83469 (|domain#$Memory_83469| |T@[Int]Bool|) (|contents#$Memory_83469| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_82585 0)) ((($Memory_82585 (|domain#$Memory_82585| |T@[Int]Bool|) (|contents#$Memory_82585| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_82190 0)) ((($Memory_82190 (|domain#$Memory_82190| |T@[Int]Bool|) (|contents#$Memory_82190| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_82009 0)) ((($Memory_82009 (|domain#$Memory_82009| |T@[Int]Bool|) (|contents#$Memory_82009| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_54442 0)) (((Multiset_54442 (|v#Multiset_54442| |T@[$EventRep]Int|) (|l#Multiset_54442| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_54442| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_54442|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_87439 0)) ((($Mutation_87439 (|l#$Mutation_87439| T@$Location) (|p#$Mutation_87439| (Seq Int)) (|v#$Mutation_87439| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_84138 0)) ((($Mutation_84138 (|l#$Mutation_84138| T@$Location) (|p#$Mutation_84138| (Seq Int)) (|v#$Mutation_84138| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_84098 0)) ((($Mutation_84098 (|l#$Mutation_84098| T@$Location) (|p#$Mutation_84098| (Seq Int)) (|v#$Mutation_84098| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_75835 0)) ((($Mutation_75835 (|l#$Mutation_75835| T@$Location) (|p#$Mutation_75835| (Seq Int)) (|v#$Mutation_75835| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11233 0)) ((($Mutation_11233 (|l#$Mutation_11233| T@$Location) (|p#$Mutation_11233| (Seq Int)) (|v#$Mutation_11233| Int) ) ) ))
(declare-datatypes ((T@$Mutation_70076 0)) ((($Mutation_70076 (|l#$Mutation_70076| T@$Location) (|p#$Mutation_70076| (Seq Int)) (|v#$Mutation_70076| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_69330 0)) ((($Mutation_69330 (|l#$Mutation_69330| T@$Location) (|p#$Mutation_69330| (Seq Int)) (|v#$Mutation_69330| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_67926 0)) ((($Mutation_67926 (|l#$Mutation_67926| T@$Location) (|p#$Mutation_67926| (Seq Int)) (|v#$Mutation_67926| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_67180 0)) ((($Mutation_67180 (|l#$Mutation_67180| T@$Location) (|p#$Mutation_67180| (Seq Int)) (|v#$Mutation_67180| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_65776 0)) ((($Mutation_65776 (|l#$Mutation_65776| T@$Location) (|p#$Mutation_65776| (Seq Int)) (|v#$Mutation_65776| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_65030 0)) ((($Mutation_65030 (|l#$Mutation_65030| T@$Location) (|p#$Mutation_65030| (Seq Int)) (|v#$Mutation_65030| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_63626 0)) ((($Mutation_63626 (|l#$Mutation_63626| T@$Location) (|p#$Mutation_63626| (Seq Int)) (|v#$Mutation_63626| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_62880 0)) ((($Mutation_62880 (|l#$Mutation_62880| T@$Location) (|p#$Mutation_62880| (Seq Int)) (|v#$Mutation_62880| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_61476 0)) ((($Mutation_61476 (|l#$Mutation_61476| T@$Location) (|p#$Mutation_61476| (Seq Int)) (|v#$Mutation_61476| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_60730 0)) ((($Mutation_60730 (|l#$Mutation_60730| T@$Location) (|p#$Mutation_60730| (Seq Int)) (|v#$Mutation_60730| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_59326 0)) ((($Mutation_59326 (|l#$Mutation_59326| T@$Location) (|p#$Mutation_59326| (Seq Int)) (|v#$Mutation_59326| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_58580 0)) ((($Mutation_58580 (|l#$Mutation_58580| T@$Location) (|p#$Mutation_58580| (Seq Int)) (|v#$Mutation_58580| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_57138 0)) ((($Mutation_57138 (|l#$Mutation_57138| T@$Location) (|p#$Mutation_57138| (Seq Int)) (|v#$Mutation_57138| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_56392 0)) ((($Mutation_56392 (|l#$Mutation_56392| T@$Location) (|p#$Mutation_56392| (Seq Int)) (|v#$Mutation_56392| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_54442_| (|T@[$1_Event_EventHandle]Multiset_54442| T@$1_Event_EventHandle) T@Multiset_54442)
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
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
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
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun $choice_0 ((Seq T@$1_DiemSystem_ValidatorInfo) Int) Int)
(declare-fun ReverseVec_11086 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_48946 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_48158 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_48355 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_48552 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_49143 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_48749 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_47961 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_54442| |T@[$1_Event_EventHandle]Multiset_54442|) |T@[$1_Event_EventHandle]Multiset_54442|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorAdministrationScriptsbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorAdministrationScriptsbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorAdministrationScriptsbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorAdministrationScriptsbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorAdministrationScriptsbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorAdministrationScriptsbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorAdministrationScriptsbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorAdministrationScriptsbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |ValidatorAdministrationScriptsbpl.595:13|
 :skolemid |15|
))))
 :qid |ValidatorAdministrationScriptsbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ValidatorAdministrationScriptsbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ValidatorAdministrationScriptsbpl.608:17|
 :skolemid |18|
)))))
 :qid |ValidatorAdministrationScriptsbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |ValidatorAdministrationScriptsbpl.775:13|
 :skolemid |20|
))))
 :qid |ValidatorAdministrationScriptsbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |ValidatorAdministrationScriptsbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |ValidatorAdministrationScriptsbpl.788:17|
 :skolemid |23|
)))))
 :qid |ValidatorAdministrationScriptsbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |ValidatorAdministrationScriptsbpl.955:13|
 :skolemid |25|
))))
 :qid |ValidatorAdministrationScriptsbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |ValidatorAdministrationScriptsbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |ValidatorAdministrationScriptsbpl.968:17|
 :skolemid |28|
)))))
 :qid |ValidatorAdministrationScriptsbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |ValidatorAdministrationScriptsbpl.1135:13|
 :skolemid |30|
))))
 :qid |ValidatorAdministrationScriptsbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |ValidatorAdministrationScriptsbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |ValidatorAdministrationScriptsbpl.1148:17|
 :skolemid |33|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |ValidatorAdministrationScriptsbpl.1315:13|
 :skolemid |35|
))))
 :qid |ValidatorAdministrationScriptsbpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |ValidatorAdministrationScriptsbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |ValidatorAdministrationScriptsbpl.1328:17|
 :skolemid |38|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |ValidatorAdministrationScriptsbpl.1495:13|
 :skolemid |40|
))))
 :qid |ValidatorAdministrationScriptsbpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |ValidatorAdministrationScriptsbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |ValidatorAdministrationScriptsbpl.1508:17|
 :skolemid |43|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'vec'u8''| (seq.nth v@@16 i@@18)))
 :qid |ValidatorAdministrationScriptsbpl.1675:13|
 :skolemid |45|
))))
 :qid |ValidatorAdministrationScriptsbpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 (Seq (Seq Int))) (e@@5 (Seq Int)) ) (! (let ((i@@19 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |ValidatorAdministrationScriptsbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |ValidatorAdministrationScriptsbpl.1688:17|
 :skolemid |48|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'address'| (seq.nth v@@18 i@@21)))
 :qid |ValidatorAdministrationScriptsbpl.1855:13|
 :skolemid |50|
))))
 :qid |ValidatorAdministrationScriptsbpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |ValidatorAdministrationScriptsbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |ValidatorAdministrationScriptsbpl.1868:17|
 :skolemid |53|
)))))
 :qid |ValidatorAdministrationScriptsbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'u64'| (seq.nth v@@20 i@@24)))
 :qid |ValidatorAdministrationScriptsbpl.2035:13|
 :skolemid |55|
))))
 :qid |ValidatorAdministrationScriptsbpl.2033:29|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'u64''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'u64'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |ValidatorAdministrationScriptsbpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |ValidatorAdministrationScriptsbpl.2048:17|
 :skolemid |58|
)))))
 :qid |ValidatorAdministrationScriptsbpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'u64'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |ValidatorAdministrationScriptsbpl.2215:13|
 :skolemid |60|
))))
 :qid |ValidatorAdministrationScriptsbpl.2213:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |ValidatorAdministrationScriptsbpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |ValidatorAdministrationScriptsbpl.2228:17|
 :skolemid |63|
)))))
 :qid |ValidatorAdministrationScriptsbpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ValidatorAdministrationScriptsbpl.2401:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ValidatorAdministrationScriptsbpl.2417:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorAdministrationScriptsbpl.2488:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorAdministrationScriptsbpl.2491:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_54442_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_54442| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_54442| stream) v@@24) 0)
 :qid |ValidatorAdministrationScriptsbpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsbpl.2552:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |ValidatorAdministrationScriptsbpl.2593:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |ValidatorAdministrationScriptsbpl.2599:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |ValidatorAdministrationScriptsbpl.2649:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |ValidatorAdministrationScriptsbpl.2655:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |ValidatorAdministrationScriptsbpl.2705:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |ValidatorAdministrationScriptsbpl.2711:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |ValidatorAdministrationScriptsbpl.2761:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |ValidatorAdministrationScriptsbpl.2767:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |ValidatorAdministrationScriptsbpl.2817:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |ValidatorAdministrationScriptsbpl.2823:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |ValidatorAdministrationScriptsbpl.2873:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |ValidatorAdministrationScriptsbpl.2879:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |ValidatorAdministrationScriptsbpl.2929:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |ValidatorAdministrationScriptsbpl.2935:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |ValidatorAdministrationScriptsbpl.2985:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |ValidatorAdministrationScriptsbpl.2991:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |ValidatorAdministrationScriptsbpl.3041:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |ValidatorAdministrationScriptsbpl.3047:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |ValidatorAdministrationScriptsbpl.3097:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |ValidatorAdministrationScriptsbpl.3103:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |ValidatorAdministrationScriptsbpl.3153:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |ValidatorAdministrationScriptsbpl.3159:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |ValidatorAdministrationScriptsbpl.3209:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |ValidatorAdministrationScriptsbpl.3215:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |ValidatorAdministrationScriptsbpl.3265:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |ValidatorAdministrationScriptsbpl.3271:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |ValidatorAdministrationScriptsbpl.3321:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |ValidatorAdministrationScriptsbpl.3327:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |ValidatorAdministrationScriptsbpl.3377:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |ValidatorAdministrationScriptsbpl.3383:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |ValidatorAdministrationScriptsbpl.3433:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |ValidatorAdministrationScriptsbpl.3439:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |ValidatorAdministrationScriptsbpl.3489:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |ValidatorAdministrationScriptsbpl.3495:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |ValidatorAdministrationScriptsbpl.3574:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |ValidatorAdministrationScriptsbpl.3643:36|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |ValidatorAdministrationScriptsbpl.3667:71|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@2) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@2)))
 :qid |ValidatorAdministrationScriptsbpl.3783:42|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |ValidatorAdministrationScriptsbpl.3796:46|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |ValidatorAdministrationScriptsbpl.3809:64|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |ValidatorAdministrationScriptsbpl.3822:75|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |ValidatorAdministrationScriptsbpl.3835:72|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |ValidatorAdministrationScriptsbpl.3889:55|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |ValidatorAdministrationScriptsbpl.3911:46|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |ValidatorAdministrationScriptsbpl.4218:15|
 :skolemid |115|
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |ValidatorAdministrationScriptsbpl.4231:49|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |ValidatorAdministrationScriptsbpl.4429:71|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |ValidatorAdministrationScriptsbpl.4443:91|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |ValidatorAdministrationScriptsbpl.4457:113|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |ValidatorAdministrationScriptsbpl.4471:75|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |ValidatorAdministrationScriptsbpl.4485:73|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |ValidatorAdministrationScriptsbpl.4505:48|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |ValidatorAdministrationScriptsbpl.4521:57|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |ValidatorAdministrationScriptsbpl.4535:83|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@18) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@18)))
 :qid |ValidatorAdministrationScriptsbpl.4549:48|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@19)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@19)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@19))))
 :qid |ValidatorAdministrationScriptsbpl.4591:45|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@19))
)))
(assert (forall ((s@@20 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@20) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@20)))
 :qid |ValidatorAdministrationScriptsbpl.4605:51|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@21)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@21)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@21))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@21))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@21))))
 :qid |ValidatorAdministrationScriptsbpl.4628:48|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@21))
)))
(assert (forall ((s@@22 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@22) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@22)))
 :qid |ValidatorAdministrationScriptsbpl.5770:49|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@22))
)))
(assert (forall ((s@@23 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@23) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@23)))
 :qid |ValidatorAdministrationScriptsbpl.5783:65|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@24) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@24)))
 :qid |ValidatorAdministrationScriptsbpl.5806:45|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@25) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@25)))
 :qid |ValidatorAdministrationScriptsbpl.5819:45|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@26) true)
 :qid |ValidatorAdministrationScriptsbpl.5832:55|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@27)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@27))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@27))))
 :qid |ValidatorAdministrationScriptsbpl.5852:38|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@27))
)))
(assert (forall ((s@@28 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@28)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@28))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@28))))
 :qid |ValidatorAdministrationScriptsbpl.5873:44|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@29)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@29))))
 :qid |ValidatorAdministrationScriptsbpl.5924:53|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@30)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@30))))
 :qid |ValidatorAdministrationScriptsbpl.5986:53|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@31) true)
 :qid |ValidatorAdministrationScriptsbpl.6012:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@32)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@32))))
 :qid |ValidatorAdministrationScriptsbpl.6029:38|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@33) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@33)))
 :qid |ValidatorAdministrationScriptsbpl.6043:48|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@34) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@34)))
 :qid |ValidatorAdministrationScriptsbpl.6057:48|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@35))))
 :qid |ValidatorAdministrationScriptsbpl.6077:41|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@36))))
 :qid |ValidatorAdministrationScriptsbpl.6095:57|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37) true)
 :qid |ValidatorAdministrationScriptsbpl.6109:68|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@38))))
 :qid |ValidatorAdministrationScriptsbpl.6131:66|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@39))))
 :qid |ValidatorAdministrationScriptsbpl.6157:66|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@40) true)
 :qid |ValidatorAdministrationScriptsbpl.6174:31|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@40))
)))
(assert (forall ((s@@41 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@41) true)
 :qid |ValidatorAdministrationScriptsbpl.6192:31|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@41))
)))
(assert (forall ((s@@42 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@42)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@42)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@42))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@42))))
 :qid |ValidatorAdministrationScriptsbpl.6211:35|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@42))
)))
(assert (forall ((s@@43 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@43) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@43)))
 :qid |ValidatorAdministrationScriptsbpl.6227:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@43))
)))
(assert (forall ((s@@44 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@44)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@44))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@44))))
 :qid |ValidatorAdministrationScriptsbpl.6246:50|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@44))
)))
(assert (forall ((s@@45 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@45) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@45)))
 :qid |ValidatorAdministrationScriptsbpl.6261:52|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@46) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@46)))
 :qid |ValidatorAdministrationScriptsbpl.6275:46|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@46))
)))
(assert (forall ((s@@47 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@47) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@47)))
 :qid |ValidatorAdministrationScriptsbpl.6299:38|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@47))
)))
(assert (forall ((s@@48 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@48) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@48)))
 :qid |ValidatorAdministrationScriptsbpl.6313:39|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@49))))
 :qid |ValidatorAdministrationScriptsbpl.6340:65|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@50)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@50))))
 :qid |ValidatorAdministrationScriptsbpl.6368:60|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@50))
)))
(assert (forall ((s@@51 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@51))))
 :qid |ValidatorAdministrationScriptsbpl.6385:66|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@52)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@52))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@52))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@52))))
 :qid |ValidatorAdministrationScriptsbpl.6414:50|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@53) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@53)))
 :qid |ValidatorAdministrationScriptsbpl.6433:45|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@54)) true))
 :qid |ValidatorAdministrationScriptsbpl.6450:87|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@55) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@55)))
 :qid |ValidatorAdministrationScriptsbpl.6464:47|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@56)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@56)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@56))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@56))))
 :qid |ValidatorAdministrationScriptsbpl.6484:58|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@57) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@57)))
 :qid |ValidatorAdministrationScriptsbpl.6499:39|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@57))
)))
(assert (forall ((s@@58 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@58)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@58)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@58))))
 :qid |ValidatorAdministrationScriptsbpl.6526:58|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@59)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@59)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@59))))
 :qid |ValidatorAdministrationScriptsbpl.6543:58|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@59))
)))
(assert (forall ((s@@60 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@60) true)
 :qid |ValidatorAdministrationScriptsbpl.6558:51|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@61))))
 :qid |ValidatorAdministrationScriptsbpl.6575:60|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@62)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@62)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@62))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@62))))
 :qid |ValidatorAdministrationScriptsbpl.6614:47|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@63)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@63)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@63))))
 :qid |ValidatorAdministrationScriptsbpl.6636:63|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@64) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@64)))
 :qid |ValidatorAdministrationScriptsbpl.6651:57|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@64))
)))
(assert (forall ((s@@65 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@65) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@65)))
 :qid |ValidatorAdministrationScriptsbpl.6664:55|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@65))
)))
(assert (forall ((s@@66 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@66) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@66)))
 :qid |ValidatorAdministrationScriptsbpl.6678:55|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@67)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@67))))
 :qid |ValidatorAdministrationScriptsbpl.6695:54|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@68) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@68)))
 :qid |ValidatorAdministrationScriptsbpl.6709:55|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@69) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@69)))
 :qid |ValidatorAdministrationScriptsbpl.6723:57|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@70)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@70)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@70))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@70))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@70))))
 :qid |ValidatorAdministrationScriptsbpl.6745:56|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@71)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@71)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@71))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@71))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@71))))
 :qid |ValidatorAdministrationScriptsbpl.6770:52|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@72) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@72)))
 :qid |ValidatorAdministrationScriptsbpl.6786:54|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@73)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@73)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@73))))
 :qid |ValidatorAdministrationScriptsbpl.9868:47|
 :skolemid |376|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@74)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@74))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@74))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@74))))
 :qid |ValidatorAdministrationScriptsbpl.9892:47|
 :skolemid |377|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@75) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@75)))
 :qid |ValidatorAdministrationScriptsbpl.9908:49|
 :skolemid |378|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@76)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@76)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@76))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@76))))
 :qid |ValidatorAdministrationScriptsbpl.9951:49|
 :skolemid |379|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@77)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@77)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@77))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@77))))
 :qid |ValidatorAdministrationScriptsbpl.9980:48|
 :skolemid |380|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@78) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@78)))
 :qid |ValidatorAdministrationScriptsbpl.9995:47|
 :skolemid |381|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@78))
)))
(assert (forall ((validators (Seq T@$1_DiemSystem_ValidatorInfo)) (addr Int) ) (!  (=> (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| validators) (|$IsValid'address'| addr)) (=> (exists ((i@@30 Int) ) (!  (and (and (|$IsValid'num'| i@@30) ($InRange ($Range 0 (seq.len validators)) i@@30)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@30)) addr))
 :qid |ValidatorAdministrationScriptsbpl.10009:13|
 :skolemid |382|
)) (let ((i@@31 ($choice_0 validators addr)))
 (and (and (and (|$IsValid'num'| i@@31) ($InRange ($Range 0 (seq.len validators)) i@@31)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@31)) addr)) (let (($$c i@@31))
(forall ((i@@32 Int) ) (!  (=> (< i@@32 $$c) (not (and (and (|$IsValid'num'| i@@32) ($InRange ($Range 0 (seq.len validators)) i@@32)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@32)) addr))))
 :qid |ValidatorAdministrationScriptsbpl.10011:32|
 :skolemid |383|
)))))))
 :qid |ValidatorAdministrationScriptsbpl.10008:15|
 :skolemid |384|
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_11086 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@25 (- (- (seq.len v@@25) i@@33) 1))))
 :qid |ValidatorAdministrationScriptsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |ValidatorAdministrationScriptsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_11086 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_48946 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@26 (- (- (seq.len v@@26) i@@34) 1))))
 :qid |ValidatorAdministrationScriptsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |ValidatorAdministrationScriptsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_48946 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_48158 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@27 (- (- (seq.len v@@27) i@@35) 1))))
 :qid |ValidatorAdministrationScriptsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |ValidatorAdministrationScriptsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_48158 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_48355 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@28 (- (- (seq.len v@@28) i@@36) 1))))
 :qid |ValidatorAdministrationScriptsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |ValidatorAdministrationScriptsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_48355 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_48552 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@29 (- (- (seq.len v@@29) i@@37) 1))))
 :qid |ValidatorAdministrationScriptsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |ValidatorAdministrationScriptsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_48552 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_49143 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@30 (- (- (seq.len v@@30) i@@38) 1))))
 :qid |ValidatorAdministrationScriptsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |ValidatorAdministrationScriptsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_49143 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@6 (ReverseVec_48749 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@31 (- (- (seq.len v@@31) i@@39) 1))))
 :qid |ValidatorAdministrationScriptsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |ValidatorAdministrationScriptsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_48749 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@#0|)) ) (! (let ((r@@7 (ReverseVec_47961 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@32 (- (- (seq.len v@@32) i@@40) 1))))
 :qid |ValidatorAdministrationScriptsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |ValidatorAdministrationScriptsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_47961 v@@32))
)))
(assert (forall ((|l#0| Bool) (i@@41 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@41) |l#0|)
 :qid |ValidatorAdministrationScriptsbpl.250:54|
 :skolemid |385|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@41))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_54442|) (|l#1| |T@[$1_Event_EventHandle]Multiset_54442|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_54442_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_54442| (|Select__T@[$1_Event_EventHandle]Multiset_54442_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_54442| (|Select__T@[$1_Event_EventHandle]Multiset_54442_| |l#1| handle@@0))))
(Multiset_54442 (|lambda#3| (|v#Multiset_54442| (|Select__T@[$1_Event_EventHandle]Multiset_54442_| |l#0@@0| handle@@0)) (|v#Multiset_54442| (|Select__T@[$1_Event_EventHandle]Multiset_54442_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorAdministrationScriptsbpl.2562:13|
 :skolemid |386|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_54442_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@33) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@33) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@33)))
 :qid |ValidatorAdministrationScriptsbpl.129:29|
 :skolemid |387|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@33))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t25 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| () T@$Memory_85687)
(declare-fun $t26 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@3 () T@$Memory_85880)
(declare-fun $t27 () Int)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_82009)
(declare-fun $t28 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_85237)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_83469)
(declare-fun _$t3 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun _$t2 () (Seq Int))
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_85687)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_82190)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_85768)
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
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_54442_| (|T@[$1_Event_EventHandle]Multiset_54442| T@$1_Event_EventHandle T@Multiset_54442) |T@[$1_Event_EventHandle]Multiset_54442|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_54442|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_54442)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_54442_| (|Store__T@[$1_Event_EventHandle]Multiset_54442_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_54442|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_54442)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_54442_| (|Store__T@[$1_Event_EventHandle]Multiset_54442_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_54442_| ?x0 ?y1))) :weight 0)))
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t56@0 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_85880)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t57@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t58@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| () T@$Memory_85687)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t14@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_85880)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t59@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t60@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t54@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t61@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t53@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@2| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_85880)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_85880)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_Configuration'@1| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_85687)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_85687)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemSystem_add_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t55@0 () Bool)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t23@1 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t23@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t51@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t52@0 () Int)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@2 () T@$Mutation_87439)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@1 () T@$Mutation_87439)
(declare-fun |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_62880)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_87199)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t45@1 () T@$Mutation_62880)
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
(declare-fun inline$$1_DiemSystem_add_validator$0$$t4@0 () T@$Mutation_62880)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t44@0 () T@$Mutation_87439)
(declare-fun inline$$1_DiemSystem_add_validator$0$$t45@0 () T@$Mutation_62880)
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
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2 () T@$Memory_85237)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_85237)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_85237)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_82585)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_85979)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_92226)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_96466)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_96772)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_92290)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_96685)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_97657)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_97900)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_97836)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_86043)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_98970)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_99316)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_99003)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_100113)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_100506)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_99483)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_97281)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_97380)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_100248)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_100339)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_98755)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_97477)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_97413)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_103005)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_86107)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_86171)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|T@[Int]$1_DiemSystem_CapabilityHolder| Int) T@$1_DiemSystem_CapabilityHolder)
; Valid
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@2 () T@$Memory_83469)
(declare-fun _$t1@@0 () Int)
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun _$t3@@0 () (Seq Int))
(declare-fun _$t4 () (Seq Int))
(declare-fun _$t0@@0 () T@$signer)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1 () T@$Memory_83469)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0 () T@$Memory_83469)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int T@$1_ValidatorConfig_ValidatorConfig) |T@[Int]$1_ValidatorConfig_ValidatorConfig|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t5 () Bool)
(declare-fun $t6@@0 () Int)
; Valid
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t25@@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3@@0| () T@$Memory_85687)
(declare-fun $t26@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@3@@0 () T@$Memory_85880)
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
(declare-fun $1_DiemConfig_Configuration_$memory@2@@0 () T@$Memory_85880)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t38@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t39@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| () T@$Memory_85687)
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
(declare-fun $1_DiemConfig_Configuration_$memory@1@@0 () T@$Memory_85880)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@0 () T@$Memory_85880)
(declare-fun |inline$$1_DiemSystem_remove_validator$0$$temp_0'$1_DiemConfig_Configuration'@1| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_DiemSystem_remove_validator$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| () T@$Memory_85687)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| () T@$Memory_85687)
(declare-fun |inline$$1_DiemSystem_remove_validator$0$$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t36@0 () Bool)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t15@1 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t15@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t32@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t33@0 () Int)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t28@2 () T@$Mutation_87439)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t28@1 () T@$Mutation_87439)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| () T@$Mutation_62880)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@0| () T@$Mutation_62880)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t26@0 () Int)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$e@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_62880)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t29@1 () T@$Mutation_62880)
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
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t28@0 () T@$Mutation_87439)
(declare-fun inline$$1_DiemSystem_remove_validator$0$$t29@0 () T@$Mutation_62880)
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
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2@@0 () T@$Memory_85237)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@0 () T@$Memory_85237)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@0 () T@$Memory_85237)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@0| () T@$1_SlidingNonce_SlidingNonce)
; Invalid
(declare-fun _$t0@@2 () T@$signer)
(declare-fun _$t1@@2 () Int)
(declare-fun _$t2@@2 () (Seq Int))
(declare-fun $t9@@1 () Int)
(declare-fun $t10@@1 () Int)
(declare-fun $t5@@0 () Bool)
(declare-fun $t11@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t12@@1 () Int)
(declare-fun $t7@@1 () Int)
(declare-fun $t16 () Int)
(declare-fun $t29 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@2@@0 () T@$Memory_83469)
(declare-fun $t20@@1 () Int)
(declare-fun $t21@@1 () Int)
(declare-fun $t17 () Bool)
(declare-fun $t23@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t24@@1 () Int)
(declare-fun $t19@@1 () Int)
(declare-fun $t15@@1 () Bool)
(declare-fun $t30 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| () T@$Memory_85687)
(declare-fun $t31 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@1 () T@$Memory_85880)
(declare-fun $t32 () Int)
(declare-fun $t33 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t22@@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t34 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t35 () T@$1_Event_EventHandle)
(declare-fun $t27@@1 () T@$1_Event_EventHandle)
(declare-fun $t36 () Bool)
(declare-fun $t25@@1 () Bool)
(declare-fun $t26@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun $t37 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t38 () T@$1_DiemConfig_Configuration)
(declare-fun $t39 () Int)
(declare-fun $t40 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t8@@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun _$t3@@2 () (Seq Int))
(declare-fun _$t4@@0 () (Seq Int))
(declare-fun $t13@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t14@@1 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1| () T@$Memory_85687)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1| () T@$Memory_85687)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@1 () T@$Memory_85880)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@1 () T@$Memory_85880)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t18@@1 () Int)
(declare-fun $t28@@1 () Int)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1@@0 () T@$Memory_83469)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@0 () T@$Memory_83469)
(declare-fun |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0@@0| () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t6@@2 () Int)
; Valid
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun $t5@@1 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| Int) T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun _$t2@@3 () Int)
(declare-fun _$t1@@3 () (Seq Int))
(declare-fun $t7@@2 () Int)
(declare-fun $t6@@3 () Int)
(declare-fun $t9@@2 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1@@1 () T@$Memory_83469)
(declare-fun $t8@@2 () Int)
(declare-fun $t12@0 () Int)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t23@1 () T@$Mutation_84138)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t22@2 () T@$Mutation_84098)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t23@2 () T@$Mutation_84138)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t21@0 () |T@$1_Option_Option'address'|)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t22@3 () T@$Mutation_84098)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@1 () T@$Memory_83469)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t13@1 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t22@0 () T@$Mutation_84098)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t17@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t22@1 () T@$Mutation_84098)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t20@0 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 () Bool)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t16@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t12@0 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t11@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t13@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t23@0 () T@$Mutation_84138)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t7@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t8@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t9@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t10@0 () Int)
(declare-fun $t13@0@@1 () Bool)
(declare-fun $t15@@2 () Int)
(declare-fun $t16@@0 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun $t18@@2 () Int)
(declare-fun $t11@@2 () Bool)
(declare-fun $t10@@2 () (Seq Int))
(declare-fun $t12@@2 () Int)
; Valid
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun _$t2@@4 () Int)
(declare-fun $t7@@3 () Int)
(declare-fun _$t4@@1 () Int)
(declare-fun _$t3@@3 () (Seq Int))
(declare-fun $t9@@3 () Int)
(declare-fun $t8@@3 () Int)
(declare-fun $t11@@3 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1@@2 () T@$Memory_83469)
(declare-fun $t10@@3 () Int)
(declare-fun $t12@0@@0 () Int)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $abort_flag@1@@2 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t23@1@@0 () T@$Mutation_84138)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t22@2@@0 () T@$Mutation_84098)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t23@2@@0 () T@$Mutation_84138)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t21@0@@0 () |T@$1_Option_Option'address'|)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t22@3@@0 () T@$Mutation_84098)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@2 () T@$Memory_83469)
(declare-fun $abort_code@2@@2 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t13@1@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t22@0@@0 () T@$Mutation_84098)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t22@1@@0 () T@$Mutation_84098)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t20@0@@0 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 () Bool)
(declare-fun _$t1@@4 () T@$signer)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t16@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t12@0@@0 () Bool)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t13@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t23@0@@0 () T@$Mutation_84138)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t7@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t8@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t9@0@@0 () Int)
(declare-fun inline$$1_ValidatorConfig_set_operator$0$$t10@0@@0 () Int)
(declare-fun $t15@0 () Bool)
(declare-fun $t17@@1 () Int)
(declare-fun $t18@@3 () Int)
(declare-fun $t19@@2 () Int)
(declare-fun $t20@@2 () Int)
(declare-fun $t14@@2 () Bool)
(declare-fun $t13@@2 () (Seq Int))
(declare-fun $t12@@3 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@1 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@1 () Int)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2@@1 () T@$Memory_85237)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@1| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@1 () T@$Memory_85237)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@1 () T@$Memory_85237)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@1| () T@$1_SlidingNonce_SlidingNonce)
(push 1)
(set-info :boogie-vc-id $1_ValidatorAdministrationScripts_set_validator_operator_with_nonce_admin$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 169517) (let ((anon14_Else_correct@@1  (=> (not $abort_flag@2@@0) (and (=> (= (ControlFlow 0 152540) (- 0 172097)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4)))) (and (=> (= (ControlFlow 0 152540) (- 0 172110)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4) 0))) (and (=> (= (ControlFlow 0 152540) (- 0 172125)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3))) (and (=> (= (ControlFlow 0 152540) (- 0 172137)) (not (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) _$t3@@3)))) (=> (not (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) _$t3@@3))) (and (=> (= (ControlFlow 0 152540) (- 0 172151)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (and (=> (= (ControlFlow 0 152540) (- 0 172162)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (and (=> (= (ControlFlow 0 152540) (- 0 172173)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) $t9@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) $t9@@3))) (and (=> (= (ControlFlow 0 152540) (- 0 172185)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $t9@@3)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $t9@@3)) 3))) (and (=> (= (ControlFlow 0 152540) (- 0 172203)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@3))) (and (=> (= (ControlFlow 0 152540) (- 0 172215)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) $t11@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) $t11@@3))) (and (=> (= (ControlFlow 0 152540) (- 0 172227)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $t11@@3)) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $t11@@3)) 3))) (and (=> (= (ControlFlow 0 152540) (- 0 172245)) (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory@1@@2) $t10@@3)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory@1@@2) $t10@@3)))) 0)) (and (=> (= (ControlFlow 0 152540) (- 0 172253)) (= (let ((t_ref@@44 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory@1@@2) $t10@@3)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@44)) 0)) _$t4@@1)) (=> (= (let ((t_ref@@45 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory@1@@2) $t10@@3)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@45)) 0)) _$t4@@1) (=> (= (ControlFlow 0 152540) (- 0 172264)) (forall ((addr@@173 Int) ) (!  (=> (|$IsValid'address'| addr@@173) (=> (not (= addr@@173 $t10@@3)) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory@1@@2) addr@@173)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@173)))))
 :qid |ValidatorAdministrationScriptsbpl.9829:15|
 :skolemid |375|
))))))))))))))))))))))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 150882) (- 0 171752)) (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3))) (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) _$t3@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) $t9@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $t9@@3)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) $t11@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $t11@@3)) 3)))) (=> (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3))) (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) _$t3@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) $t9@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $t9@@3)) 3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) $t11@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $t11@@3)) 3))) (=> (= (ControlFlow 0 150882) (- 0 171865)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))) (= 5 $t12@0@@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4) 0)) (= 7 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $t7@@3)) (= 5 $t12@0@@0))) (and (not (= (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) _$t3@@3)) (= 0 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) (= 7 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) (= 5 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) $t9@@3)) (= 5 $t12@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $t9@@3)) 3)) (= 3 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $t8@@3)) (= 5 $t12@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) $t11@@3)) (= 5 $t12@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $t11@@3)) 3)) (= 3 $t12@0@@0))) (= 0 $t12@0@@0)) (= 7 $t12@0@@0)) (= 5 $t12@0@@0)) (= 3 $t12@0@@0)))))))
(let ((anon14_Then_correct@@1  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t12@0@@0 $abort_code@3@@0) (= (ControlFlow 0 152554) 150882))) L3_correct@@2)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon24_Else_correct@@0  (=> (and (and (and (not $abort_flag@1@@2) (= inline$$1_ValidatorConfig_set_operator$0$$t23@1@@0 ($Mutation_84138 (|l#$Mutation_84098| inline$$1_ValidatorConfig_set_operator$0$$t22@2@@0) (seq.++ (|p#$Mutation_84098| inline$$1_ValidatorConfig_set_operator$0$$t22@2@@0) (seq.unit 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_84098| inline$$1_ValidatorConfig_set_operator$0$$t22@2@@0))))) (and (= inline$$1_ValidatorConfig_set_operator$0$$t23@2@@0 ($Mutation_84138 (|l#$Mutation_84138| inline$$1_ValidatorConfig_set_operator$0$$t23@1@@0) (|p#$Mutation_84138| inline$$1_ValidatorConfig_set_operator$0$$t23@1@@0) inline$$1_ValidatorConfig_set_operator$0$$t21@0@@0)) (= inline$$1_ValidatorConfig_set_operator$0$$t22@3@@0 ($Mutation_84098 (|l#$Mutation_84098| inline$$1_ValidatorConfig_set_operator$0$$t22@2@@0) (|p#$Mutation_84098| inline$$1_ValidatorConfig_set_operator$0$$t22@2@@0) ($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_84098| inline$$1_ValidatorConfig_set_operator$0$$t22@2@@0)) (|v#$Mutation_84138| inline$$1_ValidatorConfig_set_operator$0$$t23@2@@0) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_84098| inline$$1_ValidatorConfig_set_operator$0$$t22@2@@0))))))) (and (and (= $1_ValidatorConfig_ValidatorConfig_$memory@0@@2 ($Memory_83469 (|Store__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_84098| inline$$1_ValidatorConfig_set_operator$0$$t22@3@@0)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_84098| inline$$1_ValidatorConfig_set_operator$0$$t22@3@@0)) (|v#$Mutation_84098| inline$$1_ValidatorConfig_set_operator$0$$t22@3@@0)))) (= $abort_flag@2@@0 $abort_flag@1@@2)) (and (= $abort_code@3@@0 $abort_code@2@@2) (= $1_ValidatorConfig_ValidatorConfig_$memory@1@@2 $1_ValidatorConfig_ValidatorConfig_$memory@0@@2)))) (and (=> (= (ControlFlow 0 152167) 152554) anon14_Then_correct@@1) (=> (= (ControlFlow 0 152167) 152540) anon14_Else_correct@@1)))))
(let ((inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0  (=> (= $abort_flag@2@@0 true) (=> (and (= $abort_code@3@@0 inline$$1_ValidatorConfig_set_operator$0$$t13@1@@0) (= $1_ValidatorConfig_ValidatorConfig_$memory@1@@2 $1_ValidatorConfig_ValidatorConfig_$memory)) (and (=> (= (ControlFlow 0 151884) 152554) anon14_Then_correct@@1) (=> (= (ControlFlow 0 151884) 152540) anon14_Else_correct@@1))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon24_Then_correct@@0  (=> (and (and $abort_flag@1@@2 (= $abort_code@2@@2 $abort_code@2@@2)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t13@1@@0 $abort_code@2@@2) (= (ControlFlow 0 152181) 151884))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon23_Then$1_correct@@0  (=> (= $abort_code@2@@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1@@2 true) (= inline$$1_ValidatorConfig_set_operator$0$$t22@2@@0 inline$$1_ValidatorConfig_set_operator$0$$t22@0@@0)) (and (=> (= (ControlFlow 0 152233) 152181) inline$$1_ValidatorConfig_set_operator$0$anon24_Then_correct@@0) (=> (= (ControlFlow 0 152233) 152167) inline$$1_ValidatorConfig_set_operator$0$anon24_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon23_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0)) (= (ControlFlow 0 152231) 152233)) inline$$1_ValidatorConfig_set_operator$0$anon23_Then$1_correct@@0)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon23_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0) (=> (and (and (= inline$$1_ValidatorConfig_set_operator$0$$t22@1@@0 ($Mutation_84098 ($Global inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0))) (= $abort_code@2@@2 $abort_code@1@@2)) (and (= $abort_flag@1@@2 $abort_flag@0@@2) (= inline$$1_ValidatorConfig_set_operator$0$$t22@2@@0 inline$$1_ValidatorConfig_set_operator$0$$t22@1@@0))) (and (=> (= (ControlFlow 0 152113) 152181) inline$$1_ValidatorConfig_set_operator$0$anon24_Then_correct@@0) (=> (= (ControlFlow 0 152113) 152167) inline$$1_ValidatorConfig_set_operator$0$anon24_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon22_Then_correct@@0  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 (=> (and (and (|$IsValid'$1_Option_Option'address''| inline$$1_ValidatorConfig_set_operator$0$$t21@0@@0) (<= (seq.len (|$vec#$1_Option_Option'address'| inline$$1_ValidatorConfig_set_operator$0$$t21@0@@0)) 1)) (= inline$$1_ValidatorConfig_set_operator$0$$t21@0@@0 (|$1_Option_Option'address'| (seq.unit _$t4@@1)))) (and (=> (= (ControlFlow 0 152091) 152231) inline$$1_ValidatorConfig_set_operator$0$anon23_Then_correct@@0) (=> (= (ControlFlow 0 152091) 152113) inline$$1_ValidatorConfig_set_operator$0$anon23_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon22_Else_correct@@0  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0) (= inline$$1_ValidatorConfig_set_operator$0$$t20@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t20@0@@0)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t13@1@@0 inline$$1_ValidatorConfig_set_operator$0$$t20@0@@0) (= (ControlFlow 0 152063) 151884))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon21_Else_correct@@0  (=> (and (not $abort_flag@0@@2) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_ValidatorConfig_set_operator$0$$t20@0@@0) (= inline$$1_ValidatorConfig_set_operator$0$$t20@0@@0 5)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t20@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t20@0@@0) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 152047) 152091) inline$$1_ValidatorConfig_set_operator$0$anon22_Then_correct@@0) (=> (= (ControlFlow 0 152047) 152063) inline$$1_ValidatorConfig_set_operator$0$anon22_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon21_Then_correct@@0  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t13@1@@0 $abort_code@1@@2) (= (ControlFlow 0 152247) 151884))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0)))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@0  (=> (= inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 152005) 152247) inline$$1_ValidatorConfig_set_operator$0$anon21_Then_correct@@0) (=> (= (ControlFlow 0 152005) 152047) inline$$1_ValidatorConfig_set_operator$0$anon21_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon20_Then_correct@@0  (=> inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 (=> (and (and (|$IsValid'address'| inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0) (= inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0 (|$addr#$signer| _$t1@@4))) (and (= inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t17@0@@0) (= (ControlFlow 0 152011) 152005))) inline$$1_ValidatorConfig_exists_config$0$anon0_correct@@0))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon20_Else_correct@@0  (=> (and (and (not inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0) (= inline$$1_ValidatorConfig_set_operator$0$$t16@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t16@0@@0)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t13@1@@0 inline$$1_ValidatorConfig_set_operator$0$$t16@0@@0) (= (ControlFlow 0 151878) 151884))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon19_Else_correct@@0  (=> (and (not $abort_flag@0@@2) (|$IsValid'u64'| 3)) (=> (and (and (|$IsValid'u64'| inline$$1_ValidatorConfig_set_operator$0$$t16@0@@0) (= inline$$1_ValidatorConfig_set_operator$0$$t16@0@@0 7)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t16@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t16@0@@0) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 151862) 152011) inline$$1_ValidatorConfig_set_operator$0$anon20_Then_correct@@0) (=> (= (ControlFlow 0 151862) 151878) inline$$1_ValidatorConfig_set_operator$0$anon20_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon19_Then_correct@@0  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t13@1@@0 $abort_code@1@@2) (= (ControlFlow 0 152261) 151884))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0)))
(let ((inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct@@0  (=> (= _$t4@@1 _$t4@@1) (=> (and (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 151816) 152261) inline$$1_ValidatorConfig_set_operator$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 151816) 151862) inline$$1_ValidatorConfig_set_operator$0$anon19_Else_correct@@0))))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon18_Else_correct@@0  (=> (and (not inline$$1_ValidatorConfig_set_operator$0$$t12@0@@0) (= (ControlFlow 0 151822) 151816)) inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct@@0)))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon18_Then_correct@@0  (=> inline$$1_ValidatorConfig_set_operator$0$$t12@0@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0)) (= 5 inline$$1_ValidatorConfig_set_operator$0$$t13@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0)) 3)) (= 3 inline$$1_ValidatorConfig_set_operator$0$$t13@0@@0))) (= inline$$1_ValidatorConfig_set_operator$0$$t13@0@@0 inline$$1_ValidatorConfig_set_operator$0$$t13@0@@0)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t13@1@@0 inline$$1_ValidatorConfig_set_operator$0$$t13@0@@0) (= (ControlFlow 0 152313) 151884))) inline$$1_ValidatorConfig_set_operator$0$L5_correct@@0))))
(let ((inline$$1_ValidatorConfig_set_operator$0$anon0_correct@@0  (=> (and (= (seq.len (|p#$Mutation_84098| inline$$1_ValidatorConfig_set_operator$0$$t22@0@@0)) 0) (= (seq.len (|p#$Mutation_84138| inline$$1_ValidatorConfig_set_operator$0$$t23@0@@0)) 0)) (=> (and (and (and (= inline$$1_ValidatorConfig_set_operator$0$$t7@0@@0 (|$addr#$signer| _$t1@@4)) (= inline$$1_ValidatorConfig_set_operator$0$$t8@0@@0 (|$addr#$signer| _$t1@@4))) (and (= inline$$1_ValidatorConfig_set_operator$0$$t9@0@@0 (|$addr#$signer| _$t1@@4)) (= inline$$1_ValidatorConfig_set_operator$0$$t10@0@@0 (|$addr#$signer| _$t1@@4)))) (and (and (= _$t1@@4 _$t1@@4) (= _$t4@@1 _$t4@@1)) (and (= inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0 (|$addr#$signer| _$t1@@4)) (= inline$$1_ValidatorConfig_set_operator$0$$t12@0@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) inline$$1_ValidatorConfig_set_operator$0$$t11@0@@0)) 3))))))) (and (=> (= (ControlFlow 0 151711) 152313) inline$$1_ValidatorConfig_set_operator$0$anon18_Then_correct@@0) (=> (= (ControlFlow 0 151711) 151822) inline$$1_ValidatorConfig_set_operator$0$anon18_Else_correct@@0))))))
(let ((anon13_Then_correct@@1  (=> (and $t15@0 (= $t17@@1 (|$addr#$signer| _$t1@@4))) (=> (and (and (= $t18@@3 (|$addr#$signer| _$t1@@4)) (= $t19@@2 (|$addr#$signer| _$t1@@4))) (and (= $t20@@2 (|$addr#$signer| _$t1@@4)) (= (ControlFlow 0 152317) 151711))) inline$$1_ValidatorConfig_set_operator$0$anon0_correct@@0))))
(let ((anon13_Else_correct@@1  (=> (not $t15@0) (=> (and (and (|$IsValid'u64'| 0) (= 0 0)) (and (= $t12@0@@0 0) (= (ControlFlow 0 150494) 150882))) L3_correct@@2))))
(let ((anon12_Else_correct@@1  (=> (not $t14@@2) (=> (and (and (|$IsValid'vec'u8''| $t13@@2) (= $t13@@2 (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)))) (and (= $t15@0 (= $t13@@2 _$t3@@3)) (= $t15@0 $t15@0))) (and (=> (= (ControlFlow 0 150472) 152317) anon13_Then_correct@@1) (=> (= (ControlFlow 0 150472) 150494) anon13_Else_correct@@1))))))
(let ((anon12_Then_correct@@1  (=> $t14@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)) (= 5 $t12@@3)) (= $t12@@3 $t12@@3)) (and (= $t12@0@@0 $t12@@3) (= (ControlFlow 0 152582) 150882))) L3_correct@@2))))
(let ((anon11_Else_correct@@2  (=> (and (not $abort_flag@0@@2) (= $t14@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) _$t4@@1)))) (and (=> (= (ControlFlow 0 150440) 152582) anon12_Then_correct@@1) (=> (= (ControlFlow 0 150440) 150472) anon12_Else_correct@@1)))))
(let ((anon11_Then_correct@@2  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t12@0@@0 $abort_code@1@@2) (= (ControlFlow 0 152596) 150882))) L3_correct@@2)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@1  (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@1)) (and (=> (= (ControlFlow 0 150364) 152596) anon11_Then_correct@@2) (=> (= (ControlFlow 0 150364) 150440) anon11_Else_correct@@2)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@1  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1) (= (ControlFlow 0 150358) 150364))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@1)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@1  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@1)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@1)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@1) (= (ControlFlow 0 150414) 150364))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@1))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@1  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1 (=> (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2)) (and (=> (= (ControlFlow 0 150370) 152596) anon11_Then_correct@@2) (=> (= (ControlFlow 0 150370) 150440) anon11_Else_correct@@2))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@1  (=> (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1 ($1_SlidingNonce_spec_try_record_nonce _$t0@@4 _$t2@@4))) (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory@2@@1) (|$addr#$signer| _$t0@@4)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@1 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@1)))) (and (=> (= (ControlFlow 0 150342) 150370) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@1) (=> (= (ControlFlow 0 150342) 150358) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@1))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@1  (=> (and (and (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@1|) (= $1_SlidingNonce_SlidingNonce_$memory@1@@1 ($Memory_85237 (|Store__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4) false) (|contents#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2@@1 $1_SlidingNonce_SlidingNonce_$memory@1@@1) (= (ControlFlow 0 150276) 150342))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@1)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@1  (=> (and (and |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@1| (= $1_SlidingNonce_SlidingNonce_$memory@0@@1 ($Memory_85237 (|Store__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4) |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@1|)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2@@1 $1_SlidingNonce_SlidingNonce_$memory@0@@1) (= (ControlFlow 0 150384) 150342))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@1)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@1  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@1) (and (=> (= (ControlFlow 0 150262) 150384) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@1) (=> (= (ControlFlow 0 150262) 150276) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@1)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@1  (=> (= _$t0@@4 _$t0@@4) (=> (and (= _$t2@@4 _$t2@@4) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@4))))) (and (=> (= (ControlFlow 0 150256) 150414) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@1) (=> (= (ControlFlow 0 150256) 150262) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@1))))))
(let ((anon0$1_correct@@4  (=> (and (forall ((addr@@174 Int) ) (!  (=> (|$IsValid'address'| addr@@174) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@174) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@174)) 0)) (= addr@@174 173345816)))
 :qid |ValidatorAdministrationScriptsbpl.9452:20|
 :skolemid |345|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_82009| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) 173345816)) 0)))) (=> (and (and (and (forall ((addr@@175 Int) ) (!  (=> (|$IsValid'address'| addr@@175) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@175)) 1)) (= addr@@175 186537453)))
 :qid |ValidatorAdministrationScriptsbpl.9460:20|
 :skolemid |346|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_82009| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) 186537453)) 1)))) (and (forall ((addr@@176 Int) ) (!  (=> (|$IsValid'address'| addr@@176) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@176)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@176)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@176)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@176)) 2))))))
 :qid |ValidatorAdministrationScriptsbpl.9468:20|
 :skolemid |347|
)) (forall ((addr@@177 Int) ) (!  (=> (|$IsValid'address'| addr@@177) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@177)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@177)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@177)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@177)) 2))))))
 :qid |ValidatorAdministrationScriptsbpl.9472:20|
 :skolemid |348|
)))) (and (and (forall ((addr@@178 Int) ) (!  (=> (|$IsValid'address'| addr@@178) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@178)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@178)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@178)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@178)) 2))))))
 :qid |ValidatorAdministrationScriptsbpl.9476:20|
 :skolemid |349|
)) (forall ((addr@@179 Int) ) (!  (=> (|$IsValid'address'| addr@@179) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@179)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@179)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@179)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@179)) 2))))))
 :qid |ValidatorAdministrationScriptsbpl.9480:20|
 :skolemid |350|
))) (and (forall ((addr@@180 Int) ) (!  (=> (|$IsValid'address'| addr@@180) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@180)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@180)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@180)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@180)) 2)))))
 :qid |ValidatorAdministrationScriptsbpl.9484:20|
 :skolemid |351|
)) (forall ((addr@@181 Int) ) (!  (=> (|$IsValid'address'| addr@@181) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@181)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@181)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@181)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@181)) 2)))))
 :qid |ValidatorAdministrationScriptsbpl.9488:20|
 :skolemid |352|
))))) (=> (and (and (and (and (forall ((addr@@182 Int) ) (!  (=> (|$IsValid'address'| addr@@182) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@182)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@182)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@182)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@182)) 2)))))
 :qid |ValidatorAdministrationScriptsbpl.9492:20|
 :skolemid |353|
)) (forall ((addr@@183 Int) ) (!  (=> (|$IsValid'address'| addr@@183) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@183) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@183) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@183)) 4))))
 :qid |ValidatorAdministrationScriptsbpl.9496:20|
 :skolemid |354|
))) (and (forall ((addr@@184 Int) ) (!  (=> (|$IsValid'address'| addr@@184) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@184) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@184) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@184)) 3))))
 :qid |ValidatorAdministrationScriptsbpl.9500:20|
 :skolemid |355|
)) (forall ((addr@@185 Int) ) (!  (=> (|$IsValid'address'| addr@@185) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@185) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@185) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@185)) 3))))
 :qid |ValidatorAdministrationScriptsbpl.9504:20|
 :skolemid |356|
)))) (and (and (forall ((addr@@186 Int) ) (!  (=> (|$IsValid'address'| addr@@186) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@186) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@186)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@186) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@186)) 3))))
 :qid |ValidatorAdministrationScriptsbpl.9508:20|
 :skolemid |357|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_82009| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_82009| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (let (($range_0@@41 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@187 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_85687| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@187))))))))
(forall (($i_1@@41 Int) ) (!  (=> ($InRange $range_0@@41 $i_1@@41) (let ((i1@@6 $i_1@@41))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@188 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_85687| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@188)))) i1@@6))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@188 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_85687| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@188)))) i1@@6)))) 3))))
 :qid |ValidatorAdministrationScriptsbpl.9520:151|
 :skolemid |358|
)))))) (and (and (and (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_97836| $1_DualAttestation_Credential_$memory) addr1@@3) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr1@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr1@@3)) 2)))))
 :qid |ValidatorAdministrationScriptsbpl.9525:20|
 :skolemid |359|
)) (forall ((addr@@189 Int) ) (!  (=> (|$IsValid'address'| addr@@189) (= (|Select__T@[Int]Bool_| (|domain#$Memory_99483| $1_DiemAccount_DiemAccount_$memory) addr@@189) (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@189)))
 :qid |ValidatorAdministrationScriptsbpl.9529:20|
 :skolemid |360|
))) (and (forall ((addr@@190 Int) ) (!  (=> (|$IsValid'address'| addr@@190) (= (|Select__T@[Int]Bool_| (|domain#$Memory_97281| $1_VASPDomain_VASPDomainManager_$memory) addr@@190)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@190) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@190)) 1))))
 :qid |ValidatorAdministrationScriptsbpl.9533:20|
 :skolemid |361|
)) (forall ((addr@@191 Int) ) (!  (=> (|$IsValid'address'| addr@@191) (= (|Select__T@[Int]Bool_| (|domain#$Memory_97380| $1_VASPDomain_VASPDomains_$memory) addr@@191)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@191) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@191)) 5))))
 :qid |ValidatorAdministrationScriptsbpl.9537:20|
 :skolemid |362|
)))) (and (and (forall ((addr@@192 Int) ) (!  (=> (|$IsValid'address'| addr@@192) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_100248| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@192) (|Select__T@[Int]Bool_| (|domain#$Memory_100339| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@192)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@192) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@192)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@192) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@192)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@192) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@192)) 2)))))
 :qid |ValidatorAdministrationScriptsbpl.9541:20|
 :skolemid |363|
)) (forall ((addr@@193 Int) ) (!  (=> (|$IsValid'address'| addr@@193) (= (|Select__T@[Int]Bool_| (|domain#$Memory_98755| $1_DesignatedDealer_Dealer_$memory) addr@@193)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@193) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@193)) 2))))
 :qid |ValidatorAdministrationScriptsbpl.9545:20|
 :skolemid |364|
))) (and (forall ((addr@@194 Int) ) (!  (=> (|$IsValid'address'| addr@@194) (= (|Select__T@[Int]Bool_| (|domain#$Memory_97836| $1_DualAttestation_Credential_$memory) addr@@194)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@194) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@194)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@194) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@194)) 5)))))
 :qid |ValidatorAdministrationScriptsbpl.9549:20|
 :skolemid |365|
)) (forall ((addr@@195 Int) ) (!  (=> (|$IsValid'address'| addr@@195) (= (|Select__T@[Int]Bool_| (|domain#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) addr@@195)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@195) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@195)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@195) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@195)) 1)))))
 :qid |ValidatorAdministrationScriptsbpl.9553:20|
 :skolemid |366|
)))))) (=> (and (and (and (and (and (forall ((addr@@196 Int) ) (!  (=> (|$IsValid'address'| addr@@196) (= (|Select__T@[Int]Bool_| (|domain#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@196)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@196) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@196)) 3))))
 :qid |ValidatorAdministrationScriptsbpl.9557:20|
 :skolemid |367|
)) (forall ((addr@@197 Int) ) (!  (=> (|$IsValid'address'| addr@@197) (= (|Select__T@[Int]Bool_| (|domain#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@197)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@197) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@197)) 4))))
 :qid |ValidatorAdministrationScriptsbpl.9561:20|
 :skolemid |368|
))) (and (forall ((addr@@198 Int) ) (!  (=> (|$IsValid'address'| addr@@198) (= (|Select__T@[Int]Bool_| (|domain#$Memory_97477| $1_VASP_ParentVASP_$memory) addr@@198)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@198) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@198)) 5))))
 :qid |ValidatorAdministrationScriptsbpl.9565:20|
 :skolemid |369|
)) (forall ((addr@@199 Int) ) (!  (=> (|$IsValid'address'| addr@@199) (= (|Select__T@[Int]Bool_| (|domain#$Memory_97413| $1_VASP_ChildVASP_$memory) addr@@199)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@199) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@199)) 6))))
 :qid |ValidatorAdministrationScriptsbpl.9569:20|
 :skolemid |370|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) ($1_Signer_is_txn_signer _$t0@@4)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@4)))) (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@4)) ($1_Signer_is_txn_signer _$t1@@4)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t1@@4))) (and (and (|$IsValid'u64'| _$t2@@4) (|$IsValid'vec'u8''| _$t3@@3)) (and (|$IsValid'address'| _$t4@@1) (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $a_0@@26)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@26))
 :qid |ValidatorAdministrationScriptsbpl.9587:20|
 :skolemid |371|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) $a_0@@26))
)))))) (and (and (and (and (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@27)))
(|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| $rsc@@27))
 :qid |ValidatorAdministrationScriptsbpl.9591:20|
 :skolemid |372|
 :pattern ( (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_82585| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@27))
)) (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@28)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@28) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@28))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@28))) 1))))
 :qid |ValidatorAdministrationScriptsbpl.9595:20|
 :skolemid |373|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_83469| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@28))
))) (and (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@29)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@29))
 :qid |ValidatorAdministrationScriptsbpl.9599:20|
 :skolemid |374|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_85237| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@29))
)) (= $t7@@3 (|$addr#$signer| _$t1@@4)))) (and (and (= $t8@@3 (|$addr#$signer| _$t1@@4)) (= $t9@@3 (|$addr#$signer| _$t1@@4))) (and (= $t10@@3 (|$addr#$signer| _$t1@@4)) (= $t11@@3 (|$addr#$signer| _$t1@@4))))) (and (and (and (let ((addr@@200 (|$addr#$signer| _$t1@@4)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_82009| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99483| $1_DiemAccount_DiemAccount_$memory) addr@@200)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_99003| $1_AccountFreezing_FreezingBit_$memory) addr@@200) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_99003| $1_AccountFreezing_FreezingBit_$memory) addr@@200)))))) (let ((addr@@201 (|$addr#$signer| _$t0@@4)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_82190| $1_Roles_RoleId_$memory) addr@@201) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_82190| $1_Roles_RoleId_$memory) addr@@201)) 0)))) (and (= _$t0@@4 _$t0@@4) (= _$t1@@4 _$t1@@4))) (and (and (= _$t2@@4 _$t2@@4) (= _$t3@@3 _$t3@@3)) (and (= _$t4@@1 _$t4@@1) (= (ControlFlow 0 150418) 150256)))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@15 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_54442_| (|streams#$EventStore| $es) handle@@15)))
 (and (= (|l#Multiset_54442| stream@@17) 0) (forall ((v@@69 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_54442| stream@@17) v@@69) 0)
 :qid |ValidatorAdministrationScriptsbpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorAdministrationScriptsbpl.2552:13|
 :skolemid |69|
))) (= (ControlFlow 0 148914) 150418)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 169517) 148914) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
