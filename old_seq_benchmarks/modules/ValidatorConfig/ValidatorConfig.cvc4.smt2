(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_98023 0)) ((($Memory_98023 (|domain#$Memory_98023| |T@[Int]Bool|) (|contents#$Memory_98023| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_160191 0)) ((($Memory_160191 (|domain#$Memory_160191| |T@[Int]Bool|) (|contents#$Memory_160191| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_157080 0)) ((($Memory_157080 (|domain#$Memory_157080| |T@[Int]Bool|) (|contents#$Memory_157080| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_154874 0)) ((($Memory_154874 (|domain#$Memory_154874| |T@[Int]Bool|) (|contents#$Memory_154874| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_155154 0)) ((($Memory_155154 (|domain#$Memory_155154| |T@[Int]Bool|) (|contents#$Memory_155154| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_154841 0)) ((($Memory_154841 (|domain#$Memory_154841| |T@[Int]Bool|) (|contents#$Memory_154841| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_154626 0)) ((($Memory_154626 (|domain#$Memory_154626| |T@[Int]Bool|) (|contents#$Memory_154626| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_152087 0)) ((($Memory_152087 (|domain#$Memory_152087| |T@[Int]Bool|) (|contents#$Memory_152087| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_152023 0)) ((($Memory_152023 (|domain#$Memory_152023| |T@[Int]Bool|) (|contents#$Memory_152023| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_150733 0)) ((($Memory_150733 (|domain#$Memory_150733| |T@[Int]Bool|) (|contents#$Memory_150733| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_150669 0)) ((($Memory_150669 (|domain#$Memory_150669| |T@[Int]Bool|) (|contents#$Memory_150669| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_150357 0)) ((($Memory_150357 (|domain#$Memory_150357| |T@[Int]Bool|) (|contents#$Memory_150357| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_147091 0)) ((($Memory_147091 (|domain#$Memory_147091| |T@[Int]Bool|) (|contents#$Memory_147091| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_146804 0)) ((($Memory_146804 (|domain#$Memory_146804| |T@[Int]Bool|) (|contents#$Memory_146804| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_146517 0)) ((($Memory_146517 (|domain#$Memory_146517| |T@[Int]Bool|) (|contents#$Memory_146517| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_146298 0)) ((($Memory_146298 (|domain#$Memory_146298| |T@[Int]Bool|) (|contents#$Memory_146298| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_156687 0)) ((($Memory_156687 (|domain#$Memory_156687| |T@[Int]Bool|) (|contents#$Memory_156687| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_139035 0)) ((($Memory_139035 (|domain#$Memory_139035| |T@[Int]Bool|) (|contents#$Memory_139035| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_138948 0)) ((($Memory_138948 (|domain#$Memory_138948| |T@[Int]Bool|) (|contents#$Memory_138948| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_135745 0)) ((($Memory_135745 (|domain#$Memory_135745| |T@[Int]Bool|) (|contents#$Memory_135745| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_135658 0)) ((($Memory_135658 (|domain#$Memory_135658| |T@[Int]Bool|) (|contents#$Memory_135658| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_156913 0)) ((($Memory_156913 (|domain#$Memory_156913| |T@[Int]Bool|) (|contents#$Memory_156913| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_139299 0)) ((($Memory_139299 (|domain#$Memory_139299| |T@[Int]Bool|) (|contents#$Memory_139299| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_149024 0)) ((($Memory_149024 (|domain#$Memory_149024| |T@[Int]Bool|) (|contents#$Memory_149024| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_139625 0)) ((($Memory_139625 (|domain#$Memory_139625| |T@[Int]Bool|) (|contents#$Memory_139625| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_156822 0)) ((($Memory_156822 (|domain#$Memory_156822| |T@[Int]Bool|) (|contents#$Memory_156822| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_139208 0)) ((($Memory_139208 (|domain#$Memory_139208| |T@[Int]Bool|) (|contents#$Memory_139208| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_150913 0)) ((($Memory_150913 (|domain#$Memory_150913| |T@[Int]Bool|) (|contents#$Memory_150913| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_139526 0)) ((($Memory_139526 (|domain#$Memory_139526| |T@[Int]Bool|) (|contents#$Memory_139526| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_135360 0)) ((($Memory_135360 (|domain#$Memory_135360| |T@[Int]Bool|) (|contents#$Memory_135360| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_135296 0)) ((($Memory_135296 (|domain#$Memory_135296| |T@[Int]Bool|) (|contents#$Memory_135296| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_131299 0)) ((($Memory_131299 (|domain#$Memory_131299| |T@[Int]Bool|) (|contents#$Memory_131299| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_131212 0)) ((($Memory_131212 (|domain#$Memory_131212| |T@[Int]Bool|) (|contents#$Memory_131212| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_131125 0)) ((($Memory_131125 (|domain#$Memory_131125| |T@[Int]Bool|) (|contents#$Memory_131125| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_131038 0)) ((($Memory_131038 (|domain#$Memory_131038| |T@[Int]Bool|) (|contents#$Memory_131038| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_130951 0)) ((($Memory_130951 (|domain#$Memory_130951| |T@[Int]Bool|) (|contents#$Memory_130951| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_131564 0)) ((($Memory_131564 (|domain#$Memory_131564| |T@[Int]Bool|) (|contents#$Memory_131564| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_130077 0)) ((($Memory_130077 (|domain#$Memory_130077| |T@[Int]Bool|) (|contents#$Memory_130077| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_130143 0)) ((($Memory_130143 (|domain#$Memory_130143| |T@[Int]Bool|) (|contents#$Memory_130143| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_129996 0)) ((($Memory_129996 (|domain#$Memory_129996| |T@[Int]Bool|) (|contents#$Memory_129996| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_129915 0)) ((($Memory_129915 (|domain#$Memory_129915| |T@[Int]Bool|) (|contents#$Memory_129915| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_129834 0)) ((($Memory_129834 (|domain#$Memory_129834| |T@[Int]Bool|) (|contents#$Memory_129834| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_129753 0)) ((($Memory_129753 (|domain#$Memory_129753| |T@[Int]Bool|) (|contents#$Memory_129753| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_129639 0)) ((($Memory_129639 (|domain#$Memory_129639| |T@[Int]Bool|) (|contents#$Memory_129639| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_155824 0)) ((($Memory_155824 (|domain#$Memory_155824| |T@[Int]Bool|) (|contents#$Memory_155824| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_129672 0)) ((($Memory_129672 (|domain#$Memory_129672| |T@[Int]Bool|) (|contents#$Memory_129672| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_107408 0)) ((($Memory_107408 (|domain#$Memory_107408| |T@[Int]Bool|) (|contents#$Memory_107408| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_117538 0)) ((($Memory_117538 (|domain#$Memory_117538| |T@[Int]Bool|) (|contents#$Memory_117538| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_105364 0)) ((($Memory_105364 (|domain#$Memory_105364| |T@[Int]Bool|) (|contents#$Memory_105364| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_104870 0)) ((($Memory_104870 (|domain#$Memory_104870| |T@[Int]Bool|) (|contents#$Memory_104870| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_76195 0)) (((Multiset_76195 (|v#Multiset_76195| |T@[$EventRep]Int|) (|l#Multiset_76195| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_76195| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_76195|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_157908 0)) ((($Mutation_157908 (|l#$Mutation_157908| T@$Location) (|p#$Mutation_157908| (Seq Int)) (|v#$Mutation_157908| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_157864 0)) ((($Mutation_157864 (|l#$Mutation_157864| T@$Location) (|p#$Mutation_157864| (Seq Int)) (|v#$Mutation_157864| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_45913 0)) ((($Mutation_45913 (|l#$Mutation_45913| T@$Location) (|p#$Mutation_45913| (Seq Int)) (|v#$Mutation_45913| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_145018 0)) ((($Mutation_145018 (|l#$Mutation_145018| T@$Location) (|p#$Mutation_145018| (Seq Int)) (|v#$Mutation_145018| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_134037 0)) ((($Mutation_134037 (|l#$Mutation_134037| T@$Location) (|p#$Mutation_134037| (Seq Int)) (|v#$Mutation_134037| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_125746 0)) ((($Mutation_125746 (|l#$Mutation_125746| T@$Location) (|p#$Mutation_125746| (Seq Int)) (|v#$Mutation_125746| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_124109 0)) ((($Mutation_124109 (|l#$Mutation_124109| T@$Location) (|p#$Mutation_124109| (Seq Int)) (|v#$Mutation_124109| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_124069 0)) ((($Mutation_124069 (|l#$Mutation_124069| T@$Location) (|p#$Mutation_124069| (Seq Int)) (|v#$Mutation_124069| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_98654 0)) ((($Mutation_98654 (|l#$Mutation_98654| T@$Location) (|p#$Mutation_98654| (Seq Int)) (|v#$Mutation_98654| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12338 0)) ((($Mutation_12338 (|l#$Mutation_12338| T@$Location) (|p#$Mutation_12338| (Seq Int)) (|v#$Mutation_12338| Int) ) ) ))
(declare-datatypes ((T@$Mutation_94031 0)) ((($Mutation_94031 (|l#$Mutation_94031| T@$Location) (|p#$Mutation_94031| (Seq Int)) (|v#$Mutation_94031| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_93285 0)) ((($Mutation_93285 (|l#$Mutation_93285| T@$Location) (|p#$Mutation_93285| (Seq Int)) (|v#$Mutation_93285| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_91881 0)) ((($Mutation_91881 (|l#$Mutation_91881| T@$Location) (|p#$Mutation_91881| (Seq Int)) (|v#$Mutation_91881| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_91135 0)) ((($Mutation_91135 (|l#$Mutation_91135| T@$Location) (|p#$Mutation_91135| (Seq Int)) (|v#$Mutation_91135| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_89731 0)) ((($Mutation_89731 (|l#$Mutation_89731| T@$Location) (|p#$Mutation_89731| (Seq Int)) (|v#$Mutation_89731| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_88985 0)) ((($Mutation_88985 (|l#$Mutation_88985| T@$Location) (|p#$Mutation_88985| (Seq Int)) (|v#$Mutation_88985| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_87581 0)) ((($Mutation_87581 (|l#$Mutation_87581| T@$Location) (|p#$Mutation_87581| (Seq Int)) (|v#$Mutation_87581| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_86835 0)) ((($Mutation_86835 (|l#$Mutation_86835| T@$Location) (|p#$Mutation_86835| (Seq Int)) (|v#$Mutation_86835| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_85431 0)) ((($Mutation_85431 (|l#$Mutation_85431| T@$Location) (|p#$Mutation_85431| (Seq Int)) (|v#$Mutation_85431| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_84685 0)) ((($Mutation_84685 (|l#$Mutation_84685| T@$Location) (|p#$Mutation_84685| (Seq Int)) (|v#$Mutation_84685| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_83281 0)) ((($Mutation_83281 (|l#$Mutation_83281| T@$Location) (|p#$Mutation_83281| (Seq Int)) (|v#$Mutation_83281| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_82535 0)) ((($Mutation_82535 (|l#$Mutation_82535| T@$Location) (|p#$Mutation_82535| (Seq Int)) (|v#$Mutation_82535| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_81131 0)) ((($Mutation_81131 (|l#$Mutation_81131| T@$Location) (|p#$Mutation_81131| (Seq Int)) (|v#$Mutation_81131| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_80385 0)) ((($Mutation_80385 (|l#$Mutation_80385| T@$Location) (|p#$Mutation_80385| (Seq Int)) (|v#$Mutation_80385| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_78943 0)) ((($Mutation_78943 (|l#$Mutation_78943| T@$Location) (|p#$Mutation_78943| (Seq Int)) (|v#$Mutation_78943| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_78197 0)) ((($Mutation_78197 (|l#$Mutation_78197| T@$Location) (|p#$Mutation_78197| (Seq Int)) (|v#$Mutation_78197| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_76195_| (|T@[$1_Event_EventHandle]Multiset_76195| T@$1_Event_EventHandle) T@Multiset_76195)
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
(declare-fun ReverseVec_12191 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_68889 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_67904 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_68101 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_68298 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_69086 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_68692 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_68495 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_67707 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_76195| |T@[$1_Event_EventHandle]Multiset_76195|) |T@[$1_Event_EventHandle]Multiset_76195|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorConfigcvc4bpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorConfigcvc4bpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorConfigcvc4bpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorConfigcvc4bpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorConfigcvc4bpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorConfigcvc4bpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorConfigcvc4bpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorConfigcvc4bpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |ValidatorConfigcvc4bpl.595:13|
 :skolemid |15|
))))
 :qid |ValidatorConfigcvc4bpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ValidatorConfigcvc4bpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ValidatorConfigcvc4bpl.608:17|
 :skolemid |18|
)))))
 :qid |ValidatorConfigcvc4bpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |ValidatorConfigcvc4bpl.775:13|
 :skolemid |20|
))))
 :qid |ValidatorConfigcvc4bpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |ValidatorConfigcvc4bpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |ValidatorConfigcvc4bpl.788:17|
 :skolemid |23|
)))))
 :qid |ValidatorConfigcvc4bpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |ValidatorConfigcvc4bpl.955:13|
 :skolemid |25|
))))
 :qid |ValidatorConfigcvc4bpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |ValidatorConfigcvc4bpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |ValidatorConfigcvc4bpl.968:17|
 :skolemid |28|
)))))
 :qid |ValidatorConfigcvc4bpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |ValidatorConfigcvc4bpl.1135:13|
 :skolemid |30|
))))
 :qid |ValidatorConfigcvc4bpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |ValidatorConfigcvc4bpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |ValidatorConfigcvc4bpl.1148:17|
 :skolemid |33|
)))))
 :qid |ValidatorConfigcvc4bpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |ValidatorConfigcvc4bpl.1315:13|
 :skolemid |35|
))))
 :qid |ValidatorConfigcvc4bpl.1313:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |ValidatorConfigcvc4bpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |ValidatorConfigcvc4bpl.1328:17|
 :skolemid |38|
)))))
 :qid |ValidatorConfigcvc4bpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |ValidatorConfigcvc4bpl.1495:13|
 :skolemid |40|
))))
 :qid |ValidatorConfigcvc4bpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |ValidatorConfigcvc4bpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |ValidatorConfigcvc4bpl.1508:17|
 :skolemid |43|
)))))
 :qid |ValidatorConfigcvc4bpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |ValidatorConfigcvc4bpl.1675:13|
 :skolemid |45|
))))
 :qid |ValidatorConfigcvc4bpl.1673:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |ValidatorConfigcvc4bpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |ValidatorConfigcvc4bpl.1688:17|
 :skolemid |48|
)))))
 :qid |ValidatorConfigcvc4bpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |ValidatorConfigcvc4bpl.1855:13|
 :skolemid |50|
))))
 :qid |ValidatorConfigcvc4bpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |ValidatorConfigcvc4bpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |ValidatorConfigcvc4bpl.1868:17|
 :skolemid |53|
)))))
 :qid |ValidatorConfigcvc4bpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |ValidatorConfigcvc4bpl.2035:13|
 :skolemid |55|
))))
 :qid |ValidatorConfigcvc4bpl.2033:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |ValidatorConfigcvc4bpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |ValidatorConfigcvc4bpl.2048:17|
 :skolemid |58|
)))))
 :qid |ValidatorConfigcvc4bpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |ValidatorConfigcvc4bpl.2215:13|
 :skolemid |60|
))))
 :qid |ValidatorConfigcvc4bpl.2213:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |ValidatorConfigcvc4bpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |ValidatorConfigcvc4bpl.2228:17|
 :skolemid |63|
)))))
 :qid |ValidatorConfigcvc4bpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ValidatorConfigcvc4bpl.2401:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ValidatorConfigcvc4bpl.2417:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorConfigcvc4bpl.2484:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorConfigcvc4bpl.2487:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_76195| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream) v@@24) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |ValidatorConfigcvc4bpl.2589:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |ValidatorConfigcvc4bpl.2595:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |ValidatorConfigcvc4bpl.2645:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |ValidatorConfigcvc4bpl.2651:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |ValidatorConfigcvc4bpl.2701:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |ValidatorConfigcvc4bpl.2707:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |ValidatorConfigcvc4bpl.2757:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |ValidatorConfigcvc4bpl.2763:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |ValidatorConfigcvc4bpl.2813:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |ValidatorConfigcvc4bpl.2819:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |ValidatorConfigcvc4bpl.2869:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |ValidatorConfigcvc4bpl.2875:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |ValidatorConfigcvc4bpl.2925:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |ValidatorConfigcvc4bpl.2931:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |ValidatorConfigcvc4bpl.2981:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |ValidatorConfigcvc4bpl.2987:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |ValidatorConfigcvc4bpl.3037:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |ValidatorConfigcvc4bpl.3043:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |ValidatorConfigcvc4bpl.3093:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |ValidatorConfigcvc4bpl.3099:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |ValidatorConfigcvc4bpl.3149:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |ValidatorConfigcvc4bpl.3155:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |ValidatorConfigcvc4bpl.3205:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |ValidatorConfigcvc4bpl.3211:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |ValidatorConfigcvc4bpl.3261:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |ValidatorConfigcvc4bpl.3267:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |ValidatorConfigcvc4bpl.3317:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |ValidatorConfigcvc4bpl.3323:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |ValidatorConfigcvc4bpl.3373:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |ValidatorConfigcvc4bpl.3379:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |ValidatorConfigcvc4bpl.3429:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |ValidatorConfigcvc4bpl.3435:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |ValidatorConfigcvc4bpl.3485:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |ValidatorConfigcvc4bpl.3491:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |ValidatorConfigcvc4bpl.3545:15|
 :skolemid |105|
)))
(assert (forall ((addr Int) ) (! true
 :qid |ValidatorConfigcvc4bpl.3554:15|
 :skolemid |106|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |ValidatorConfigcvc4bpl.3579:61|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |ValidatorConfigcvc4bpl.3756:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |ValidatorConfigcvc4bpl.5870:71|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |ValidatorConfigcvc4bpl.6016:46|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |ValidatorConfigcvc4bpl.6029:64|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |ValidatorConfigcvc4bpl.6042:75|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |ValidatorConfigcvc4bpl.6055:72|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |ValidatorConfigcvc4bpl.6104:55|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |ValidatorConfigcvc4bpl.6126:46|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |ValidatorConfigcvc4bpl.8832:49|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |ValidatorConfigcvc4bpl.8907:71|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |ValidatorConfigcvc4bpl.8921:91|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |ValidatorConfigcvc4bpl.8935:113|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |ValidatorConfigcvc4bpl.8949:75|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |ValidatorConfigcvc4bpl.8963:73|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |ValidatorConfigcvc4bpl.8983:48|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |ValidatorConfigcvc4bpl.8999:57|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |ValidatorConfigcvc4bpl.9013:83|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |ValidatorConfigcvc4bpl.9027:103|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |ValidatorConfigcvc4bpl.9041:125|
 :skolemid |255|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |ValidatorConfigcvc4bpl.9055:87|
 :skolemid |256|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |ValidatorConfigcvc4bpl.9069:85|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |ValidatorConfigcvc4bpl.9083:48|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |ValidatorConfigcvc4bpl.9104:45|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |ValidatorConfigcvc4bpl.9118:51|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |ValidatorConfigcvc4bpl.9141:48|
 :skolemid |261|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |ValidatorConfigcvc4bpl.9447:49|
 :skolemid |262|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |ValidatorConfigcvc4bpl.9460:65|
 :skolemid |263|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |ValidatorConfigcvc4bpl.9964:45|
 :skolemid |264|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |ValidatorConfigcvc4bpl.9977:45|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |ValidatorConfigcvc4bpl.9990:55|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |ValidatorConfigcvc4bpl.10004:55|
 :skolemid |267|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@32))))
 :qid |ValidatorConfigcvc4bpl.10024:38|
 :skolemid |268|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@33))))
 :qid |ValidatorConfigcvc4bpl.10045:44|
 :skolemid |269|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))))
 :qid |ValidatorConfigcvc4bpl.10096:53|
 :skolemid |270|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))))
 :qid |ValidatorConfigcvc4bpl.10158:53|
 :skolemid |271|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36) true)
 :qid |ValidatorConfigcvc4bpl.10184:55|
 :skolemid |272|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37) true)
 :qid |ValidatorConfigcvc4bpl.10198:55|
 :skolemid |273|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@38)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@38))))
 :qid |ValidatorConfigcvc4bpl.10215:38|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@39)))
 :qid |ValidatorConfigcvc4bpl.10229:48|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@40)))
 :qid |ValidatorConfigcvc4bpl.10243:48|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@41)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@41))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@41))))
 :qid |ValidatorConfigcvc4bpl.10263:41|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@42)))
 :qid |ValidatorConfigcvc4bpl.10278:53|
 :skolemid |278|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@43)))
 :qid |ValidatorConfigcvc4bpl.10292:53|
 :skolemid |279|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44))))
 :qid |ValidatorConfigcvc4bpl.10309:60|
 :skolemid |280|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45))))
 :qid |ValidatorConfigcvc4bpl.10326:60|
 :skolemid |281|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |ValidatorConfigcvc4bpl.10343:57|
 :skolemid |282|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |ValidatorConfigcvc4bpl.12544:68|
 :skolemid |283|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |ValidatorConfigcvc4bpl.12566:66|
 :skolemid |284|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |ValidatorConfigcvc4bpl.12592:66|
 :skolemid |285|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))))
 :qid |ValidatorConfigcvc4bpl.12621:56|
 :skolemid |286|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))))
 :qid |ValidatorConfigcvc4bpl.12651:56|
 :skolemid |287|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@52) true)
 :qid |ValidatorConfigcvc4bpl.12985:31|
 :skolemid |288|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@52))
)))
(assert (forall ((s@@53 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@53) true)
 :qid |ValidatorConfigcvc4bpl.13329:31|
 :skolemid |289|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@54)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@54)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@54))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@54))))
 :qid |ValidatorConfigcvc4bpl.13348:35|
 :skolemid |290|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@55)))
 :qid |ValidatorConfigcvc4bpl.13769:45|
 :skolemid |291|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@56))))
 :qid |ValidatorConfigcvc4bpl.13788:50|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@57)))
 :qid |ValidatorConfigcvc4bpl.13803:52|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@58) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@58)))
 :qid |ValidatorConfigcvc4bpl.13827:38|
 :skolemid |294|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@59) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@59)))
 :qid |ValidatorConfigcvc4bpl.13841:39|
 :skolemid |295|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@59))
)))
(assert (forall ((s@@60 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60))))
 :qid |ValidatorConfigcvc4bpl.13868:65|
 :skolemid |296|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@61)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@61))))
 :qid |ValidatorConfigcvc4bpl.14253:60|
 :skolemid |297|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62))))
 :qid |ValidatorConfigcvc4bpl.14270:66|
 :skolemid |298|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@63)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@63)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@63))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@63))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@63))))
 :qid |ValidatorConfigcvc4bpl.14299:50|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@64) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@64)))
 :qid |ValidatorConfigcvc4bpl.14318:45|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@65)) true))
 :qid |ValidatorConfigcvc4bpl.14637:87|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@66)))
 :qid |ValidatorConfigcvc4bpl.14849:47|
 :skolemid |302|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@67)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@67))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@67))))
 :qid |ValidatorConfigcvc4bpl.14869:58|
 :skolemid |303|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@68) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@68)))
 :qid |ValidatorConfigcvc4bpl.14884:39|
 :skolemid |304|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@69)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@69))))
 :qid |ValidatorConfigcvc4bpl.14906:58|
 :skolemid |305|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70))))
 :qid |ValidatorConfigcvc4bpl.14923:58|
 :skolemid |306|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71) true)
 :qid |ValidatorConfigcvc4bpl.14938:51|
 :skolemid |307|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72))))
 :qid |ValidatorConfigcvc4bpl.14955:60|
 :skolemid |308|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@73)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@73))))
 :qid |ValidatorConfigcvc4bpl.15253:47|
 :skolemid |309|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@74)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@74))))
 :qid |ValidatorConfigcvc4bpl.15275:63|
 :skolemid |310|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@75)))
 :qid |ValidatorConfigcvc4bpl.15290:57|
 :skolemid |311|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@76)))
 :qid |ValidatorConfigcvc4bpl.15303:55|
 :skolemid |312|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@77)))
 :qid |ValidatorConfigcvc4bpl.15317:55|
 :skolemid |313|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@78)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@78))))
 :qid |ValidatorConfigcvc4bpl.15334:54|
 :skolemid |314|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@79)))
 :qid |ValidatorConfigcvc4bpl.15348:55|
 :skolemid |315|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@80)))
 :qid |ValidatorConfigcvc4bpl.15362:57|
 :skolemid |316|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@81)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@81))))
 :qid |ValidatorConfigcvc4bpl.15384:56|
 :skolemid |317|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@82))))
 :qid |ValidatorConfigcvc4bpl.15409:52|
 :skolemid |318|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@83)))
 :qid |ValidatorConfigcvc4bpl.15425:54|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@84))))
 :qid |ValidatorConfigcvc4bpl.16297:47|
 :skolemid |320|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@85)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@85))))
 :qid |ValidatorConfigcvc4bpl.16321:47|
 :skolemid |321|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@86)))
 :qid |ValidatorConfigcvc4bpl.16562:49|
 :skolemid |322|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@87)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@87))))
 :qid |ValidatorConfigcvc4bpl.16605:49|
 :skolemid |323|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@88)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@88))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@88))))
 :qid |ValidatorConfigcvc4bpl.16634:48|
 :skolemid |324|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@89)))
 :qid |ValidatorConfigcvc4bpl.16929:47|
 :skolemid |325|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12191 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |ValidatorConfigcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |ValidatorConfigcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12191 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_68889 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |ValidatorConfigcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |ValidatorConfigcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68889 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_67904 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |ValidatorConfigcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |ValidatorConfigcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_67904 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_68101 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |ValidatorConfigcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |ValidatorConfigcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68101 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_68298 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |ValidatorConfigcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |ValidatorConfigcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68298 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_69086 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |ValidatorConfigcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |ValidatorConfigcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_69086 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_68692 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |ValidatorConfigcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |ValidatorConfigcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68692 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_68495 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |ValidatorConfigcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |ValidatorConfigcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_68495 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_67707 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |ValidatorConfigcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |ValidatorConfigcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_67707 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |ValidatorConfigcvc4bpl.250:54|
 :skolemid |401|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_76195|) (|l#1| |T@[$1_Event_EventHandle]Multiset_76195|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_76195| (|Select__T@[$1_Event_EventHandle]Multiset_76195_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_76195| (|Select__T@[$1_Event_EventHandle]Multiset_76195_| |l#1| handle@@0))))
(Multiset_76195 (|lambda#3| (|v#Multiset_76195| (|Select__T@[$1_Event_EventHandle]Multiset_76195_| |l#0@@0| handle@@0)) (|v#Multiset_76195| (|Select__T@[$1_Event_EventHandle]Multiset_76195_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorConfigcvc4bpl.2558:13|
 :skolemid |402|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |ValidatorConfigcvc4bpl.129:29|
 :skolemid |403|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_104870)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_105364)
(declare-fun $t2 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t3 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_105364)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_105364)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_105364)
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
 (=> (= (ControlFlow 0 0) 244322) (let ((L2_correct  (and (=> (= (ControlFlow 0 176240) (- 0 245068)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 176240) (- 0 245099)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct  (=> $t6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 176128) 176240))) L2_correct))))
(let ((anon12_Then_correct  (=> $t3 (=> (and (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 176270) 176240))) L2_correct))))
(let ((anon11_Then_correct  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 176296) 176240))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) 0)) (and (=> (= (ControlFlow 0 176086) (- 0 244714)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 176086) (- 0 244724)) (not (not (= (|$addr#$signer| _$t0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0) 173345816))) (and (=> (= (ControlFlow 0 176086) (- 0 244738)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 176086) (- 0 244749)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 176086) (- 0 244759)) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 176086) (- 0 244768)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) 0) (and (=> (= (ControlFlow 0 176086) (- 0 244783)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@0)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@0)) 1))))
 :qid |ValidatorConfigcvc4bpl.3982:15|
 :skolemid |111|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@1)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@1)) 1))))
 :qid |ValidatorConfigcvc4bpl.3982:15|
 :skolemid |111|
)) (and (=> (= (ControlFlow 0 176086) (- 0 244830)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@2)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |ValidatorConfigcvc4bpl.3986:15|
 :skolemid |112|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@3)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |ValidatorConfigcvc4bpl.3986:15|
 :skolemid |112|
)) (and (=> (= (ControlFlow 0 176086) (- 0 244877)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@4)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@4)) 4))))
 :qid |ValidatorConfigcvc4bpl.3990:15|
 :skolemid |113|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@5)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@5)) 4))))
 :qid |ValidatorConfigcvc4bpl.3990:15|
 :skolemid |113|
)) (and (=> (= (ControlFlow 0 176086) (- 0 244924)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@6)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@6)) 2))))
 :qid |ValidatorConfigcvc4bpl.3994:15|
 :skolemid |114|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@7)) 2))))
 :qid |ValidatorConfigcvc4bpl.3994:15|
 :skolemid |114|
)) (and (=> (= (ControlFlow 0 176086) (- 0 244971)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@8)) 5))))
 :qid |ValidatorConfigcvc4bpl.3998:15|
 :skolemid |115|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@9)) 5))))
 :qid |ValidatorConfigcvc4bpl.3998:15|
 :skolemid |115|
)) (=> (= (ControlFlow 0 176086) (- 0 245018)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2) addr@@10)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@10)) 6))))
 :qid |ValidatorConfigcvc4bpl.4002:15|
 :skolemid |116|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0) false) (|contents#$Memory_105364| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 175680) 176086))) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0) |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 176100) 176086))) anon9_correct)))
(let ((anon13_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 175666) 176100) anon14_Then_correct) (=> (= (ControlFlow 0 175666) 175680) anon14_Else_correct)))))
(let ((anon12_Else_correct  (=> (not $t3) (=> (and (|$IsValid'u64'| 0) (= $t5 (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 175660) (- 0 244564)) (=> (= 0 0) (= $t5 173345816))) (=> (=> (= 0 0) (= $t5 173345816)) (and (=> (= (ControlFlow 0 175660) (- 0 244580)) (=> (= 0 1) (= $t5 186537453))) (=> (=> (= 0 1) (= $t5 186537453)) (and (=> (= (ControlFlow 0 175660) (- 0 244596)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0)) (=> (= $t6 (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 175660) 176128) anon13_Then_correct) (=> (= (ControlFlow 0 175660) 175666) anon13_Else_correct)))))))))))))
(let ((anon11_Else_correct  (=> (and (not $t1) (= $t3  (not (= (|$addr#$signer| _$t0) 173345816)))) (and (=> (= (ControlFlow 0 175582) 176270) anon12_Then_correct) (=> (= (ControlFlow 0 175582) 175660) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |ValidatorConfigcvc4bpl.3796:20|
 :skolemid |109|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |ValidatorConfigcvc4bpl.3800:20|
 :skolemid |110|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@0))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0))) (and (= _$t0 _$t0) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 175560) 176296) anon11_Then_correct) (=> (= (ControlFlow 0 175560) 175582) anon11_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_76195| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@0) v@@35) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 175452) 175560)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 244322) 175452) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_107408)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_105364)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_105364)
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
 (=> (= (ControlFlow 0 0) 245357) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 176926) (- 0 245820)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@11)) 3))))
 :qid |ValidatorConfigcvc4bpl.4195:15|
 :skolemid |121|
))) (=> (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@12)) 3))))
 :qid |ValidatorConfigcvc4bpl.4195:15|
 :skolemid |121|
)) (and (=> (= (ControlFlow 0 176926) (- 0 245845)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@13)) 3))))
 :qid |ValidatorConfigcvc4bpl.4201:15|
 :skolemid |122|
))) (=> (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@14)) 3))))
 :qid |ValidatorConfigcvc4bpl.4201:15|
 :skolemid |122|
)) (and (=> (= (ControlFlow 0 176926) (- 0 245870)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@15)) 3))))
 :qid |ValidatorConfigcvc4bpl.4207:15|
 :skolemid |123|
))) (=> (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@16) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@16)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) addr@@16)) 3))))
 :qid |ValidatorConfigcvc4bpl.4207:15|
 :skolemid |123|
)) (and (=> (= (ControlFlow 0 176926) (- 0 245898)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 176926) (- 0 245909)) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@0)) (=> (= (ControlFlow 0 176926) (- 0 245918)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@0))) _$t1)))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 176692) (- 0 245790)) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (=> (= (ControlFlow 0 176692) (- 0 245796)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t10@0)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t10@0 $abort_code@1) (= (ControlFlow 0 176940) 176692))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 176992) 176940) anon12_Then_correct@@0) (=> (= (ControlFlow 0 176992) 176926) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 176990) 176992)) anon11_Then$1_correct)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) $t11@0))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 176803) 176940) anon12_Then_correct@@0) (=> (= (ControlFlow 0 176803) 176926) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0 ($1_Roles_RoleId _$t1))) (and (=> (= (ControlFlow 0 176781) (- 0 245601)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@0)) (=> (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@17) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@17)) 3))))
 :qid |ValidatorConfigcvc4bpl.4167:20|
 :skolemid |118|
)) (=> (and (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@18) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@18)) 3))))
 :qid |ValidatorConfigcvc4bpl.4171:20|
 :skolemid |119|
)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@19) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@19)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@19)) 3))))
 :qid |ValidatorConfigcvc4bpl.4175:20|
 :skolemid |120|
))) (and (=> (= (ControlFlow 0 176781) 176990) anon11_Then_correct@@0) (=> (= (ControlFlow 0 176781) 176803) anon11_Else_correct@@0)))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9 $t9)) (and (= $t10@0 $t9) (= (ControlFlow 0 176660) 176692))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9) (= $t9 6)) (and (= $t9 $t9) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 176644) 176781) anon10_Then_correct) (=> (= (ControlFlow 0 176644) 176660) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 176608) 176644)) anon0$2_correct)))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (=> (and (and (|$IsValid'u64'| _$t1) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |ValidatorConfigcvc4bpl.4063:20|
 :skolemid |117|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@1))
))) (and (= $t4 (|$addr#$signer| _$t0@@0)) (=> (= _$t1 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= _$t1 _$t1))) (and (and (|$IsValid'address'| $t5@@0) (= $t5@@0 (|$addr#$signer| _$t0@@0))) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t5@@0)) (= (ControlFlow 0 176614) 176608)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_76195| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@1) v@@36) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 176446) 176614)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 245357) 176446) inline$$InitEventStore$0$anon0_correct@@0)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_105364)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_105364)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_105364)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 245938) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 178127) (- 0 246911)) (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 178127) (- 0 246977)) (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (not (= (|$addr#$signer| _$t0@@1) 186537453)) (= 2 $t4@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t4@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t4@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0))))))))
(let ((anon16_Then_correct  (=> $t10 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 177915) 178127))) L2_correct@@0))))
(let ((anon15_Then_correct  (=> (and (and $t7 (or (or (or (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t4@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t6@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t4@@0)))) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 178219) 178127))) L2_correct@@0)))
(let ((anon14_Then_correct@@0  (=> $t5@@1 (=> (and (and (not (= (|$addr#$signer| _$t0@@1) 186537453)) (= 2 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 178249) 178127))) L2_correct@@0))))
(let ((anon13_Then_correct@@0  (=> $t3@@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 178275) 178127))) L2_correct@@0))))
(let ((anon11_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) 1)) (and (=> (= (ControlFlow 0 177873) (- 0 246513)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 177873) (- 0 246523)) (not (not (= (|$addr#$signer| _$t0@@1) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@1) 186537453))) (and (=> (= (ControlFlow 0 177873) (- 0 246537)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 177873) (- 0 246549)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 177873) (- 0 246567)) (not (not (= (|$addr#$signer| _$t1@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@0) 173345816))) (and (=> (= (ControlFlow 0 177873) (- 0 246581)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 177873) (- 0 246592)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 177873) (- 0 246602)) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1)) (and (=> (= (ControlFlow 0 177873) (- 0 246611)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) 1) (and (=> (= (ControlFlow 0 177873) (- 0 246626)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@20)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@20)) 0))))
 :qid |ValidatorConfigcvc4bpl.4534:15|
 :skolemid |126|
))) (=> (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@21)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@21)) 0))))
 :qid |ValidatorConfigcvc4bpl.4534:15|
 :skolemid |126|
)) (and (=> (= (ControlFlow 0 177873) (- 0 246673)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@22)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@22)) 3))))
 :qid |ValidatorConfigcvc4bpl.4538:15|
 :skolemid |127|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@23)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@23)) 3))))
 :qid |ValidatorConfigcvc4bpl.4538:15|
 :skolemid |127|
)) (and (=> (= (ControlFlow 0 177873) (- 0 246720)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@24)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@24)) 4))))
 :qid |ValidatorConfigcvc4bpl.4542:15|
 :skolemid |128|
))) (=> (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@25)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@25)) 4))))
 :qid |ValidatorConfigcvc4bpl.4542:15|
 :skolemid |128|
)) (and (=> (= (ControlFlow 0 177873) (- 0 246767)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@26)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@26)) 2))))
 :qid |ValidatorConfigcvc4bpl.4546:15|
 :skolemid |129|
))) (=> (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@27)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@27)) 2))))
 :qid |ValidatorConfigcvc4bpl.4546:15|
 :skolemid |129|
)) (and (=> (= (ControlFlow 0 177873) (- 0 246814)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@28)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@28)) 5))))
 :qid |ValidatorConfigcvc4bpl.4550:15|
 :skolemid |130|
))) (=> (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@29)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@29)) 5))))
 :qid |ValidatorConfigcvc4bpl.4550:15|
 :skolemid |130|
)) (=> (= (ControlFlow 0 177873) (- 0 246861)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@0) addr@@30)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@30)) 6))))
 :qid |ValidatorConfigcvc4bpl.4554:15|
 :skolemid |131|
))))))))))))))))))))))))))))))))))
(let ((anon17_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_Roles_RoleId_$memory@1@@1 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) false) (|contents#$Memory_105364| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@1) (= (ControlFlow 0 177423) 177873))) anon11_correct)))
(let ((anon17_Then_correct  (=> (and (and |$temp_0'bool'@0@@0| (= $1_Roles_RoleId_$memory@0@@1 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) |$temp_0'$1_Roles_RoleId'@0@@0|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@1) (= (ControlFlow 0 177887) 177873))) anon11_correct)))
(let ((anon16_Else_correct  (=> (not $t10) (and (=> (= (ControlFlow 0 177409) 177887) anon17_Then_correct) (=> (= (ControlFlow 0 177409) 177423) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (not $t7) (=> (and (|$IsValid'u64'| 1) (= $t9@@0 (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 177403) (- 0 246363)) (=> (= 1 0) (= $t9@@0 173345816))) (=> (=> (= 1 0) (= $t9@@0 173345816)) (and (=> (= (ControlFlow 0 177403) (- 0 246379)) (=> (= 1 1) (= $t9@@0 186537453))) (=> (=> (= 1 1) (= $t9@@0 186537453)) (and (=> (= (ControlFlow 0 177403) (- 0 246395)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@1)) (=> (= $t10 (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 177403) 177915) anon16_Then_correct) (=> (= (ControlFlow 0 177403) 177409) anon16_Else_correct)))))))))))))
(let ((anon14_Else_correct@@0  (=> (not $t5@@1) (=> (and (= $t6@@0 (|$addr#$signer| _$t1@@0)) (= $t7  (or (or (or (not (= (|$addr#$signer| _$t1@@0) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t6@@0)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))))) (and (=> (= (ControlFlow 0 177325) 178219) anon15_Then_correct) (=> (= (ControlFlow 0 177325) 177403) anon15_Else_correct))))))
(let ((anon13_Else_correct@@0  (=> (and (not $t3@@0) (= $t5@@1  (not (= (|$addr#$signer| _$t0@@1) 186537453)))) (and (=> (= (ControlFlow 0 177253) 178249) anon14_Then_correct@@0) (=> (= (ControlFlow 0 177253) 177325) anon14_Else_correct@@0)))))
(let ((anon0$1_correct@@1  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@1))) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@0)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@2))
 :qid |ValidatorConfigcvc4bpl.4291:20|
 :skolemid |124|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@3)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@3))
 :qid |ValidatorConfigcvc4bpl.4295:20|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@3))
)) (= $t2@@0 (|$addr#$signer| _$t1@@0)))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@1)) (= _$t0@@1 _$t0@@1)) (and (= _$t1@@0 _$t1@@0) (= $t3@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 177231) 178275) anon13_Then_correct@@0) (=> (= (ControlFlow 0 177231) 177253) anon13_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_76195| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@2) v@@37) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 177103) 177231)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 245938) 177103) inline$$InitEventStore$0$anon0_correct@@1)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_105364)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_105364)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_105364)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@2 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 247114) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 179322) (- 0 247885)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (=> (= (ControlFlow 0 179322) (- 0 247939)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $t6@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1)) (= 6 $t6@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@1)) (= 5 $t6@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@1)) 5)) (= 3 $t6@@1))))))))
(let ((anon10_Then_correct@@0  (=> $t9@@1 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1)) (= 6 $t6@@1)) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 179154) 179322))) L2_correct@@1))))
(let ((anon9_Then_correct  (=> (and (and $t5@@2 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@1)) 5)) (= 3 $t6@@1)))) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 179374) 179322))) L2_correct@@1)))
(let ((anon7_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) 6)) (and (=> (= (ControlFlow 0 179112) (- 0 247505)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 179112) (- 0 247517)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 179112) (- 0 247535)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (and (=> (= (ControlFlow 0 179112) (- 0 247546)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 179112) (- 0 247558)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (and (=> (= (ControlFlow 0 179112) (- 0 247576)) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1)) (and (=> (= (ControlFlow 0 179112) (- 0 247585)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) 6)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) 6) (and (=> (= (ControlFlow 0 179112) (- 0 247600)) (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@31)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@31)) 0))))
 :qid |ValidatorConfigcvc4bpl.4782:15|
 :skolemid |133|
))) (=> (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@32)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@32)) 0))))
 :qid |ValidatorConfigcvc4bpl.4782:15|
 :skolemid |133|
)) (and (=> (= (ControlFlow 0 179112) (- 0 247647)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@33)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@33)) 1))))
 :qid |ValidatorConfigcvc4bpl.4786:15|
 :skolemid |134|
))) (=> (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@34)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@34)) 1))))
 :qid |ValidatorConfigcvc4bpl.4786:15|
 :skolemid |134|
)) (and (=> (= (ControlFlow 0 179112) (- 0 247694)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@35)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@35)) 3))))
 :qid |ValidatorConfigcvc4bpl.4790:15|
 :skolemid |135|
))) (=> (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@36)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@36)) 3))))
 :qid |ValidatorConfigcvc4bpl.4790:15|
 :skolemid |135|
)) (and (=> (= (ControlFlow 0 179112) (- 0 247741)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@37)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@37)) 4))))
 :qid |ValidatorConfigcvc4bpl.4794:15|
 :skolemid |136|
))) (=> (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@38)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@38)) 4))))
 :qid |ValidatorConfigcvc4bpl.4794:15|
 :skolemid |136|
)) (and (=> (= (ControlFlow 0 179112) (- 0 247788)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@39)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@39)) 2))))
 :qid |ValidatorConfigcvc4bpl.4798:15|
 :skolemid |137|
))) (=> (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@40)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@40)) 2))))
 :qid |ValidatorConfigcvc4bpl.4798:15|
 :skolemid |137|
)) (=> (= (ControlFlow 0 179112) (- 0 247835)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@1) addr@@41)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@41)) 5))))
 :qid |ValidatorConfigcvc4bpl.4802:15|
 :skolemid |138|
))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_Roles_RoleId_$memory@1@@2 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1) false) (|contents#$Memory_105364| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@1@@2) (= (ControlFlow 0 178680) 179112))) anon7_correct)))
(let ((anon11_Then_correct@@1  (=> (and (and |$temp_0'bool'@0@@1| (= $1_Roles_RoleId_$memory@0@@2 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1) |$temp_0'$1_Roles_RoleId'@0@@1|)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@0@@2) (= (ControlFlow 0 179126) 179112))) anon7_correct)))
(let ((anon10_Else_correct@@0  (=> (not $t9@@1) (and (=> (= (ControlFlow 0 178666) 179126) anon11_Then_correct@@1) (=> (= (ControlFlow 0 178666) 178680) anon11_Else_correct@@1)))))
(let ((anon9_Else_correct  (=> (not $t5@@2) (=> (and (|$IsValid'u64'| 6) (= $t8 (|$addr#$signer| _$t1@@1))) (and (=> (= (ControlFlow 0 178660) (- 0 247355)) (=> (= 6 0) (= $t8 173345816))) (=> (=> (= 6 0) (= $t8 173345816)) (and (=> (= (ControlFlow 0 178660) (- 0 247371)) (=> (= 6 1) (= $t8 186537453))) (=> (=> (= 6 1) (= $t8 186537453)) (and (=> (= (ControlFlow 0 178660) (- 0 247387)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@1)) (=> (= $t9@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (and (=> (= (ControlFlow 0 178660) 179154) anon10_Then_correct@@0) (=> (= (ControlFlow 0 178660) 178666) anon10_Else_correct@@0)))))))))))))
(let ((anon0$1_correct@@2  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@2)) (|$IsValid'address'| (|$addr#$signer| _$t1@@1))) (=> (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |ValidatorConfigcvc4bpl.4613:20|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@4))
)) (= $t2@@1 (|$addr#$signer| _$t0@@2))) (and (= $t3@@1 (|$addr#$signer| _$t0@@2)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@1)))) (and (and (= _$t0@@2 _$t0@@2) (= _$t1@@1 _$t1@@1)) (and (= $t4@@1 (|$addr#$signer| _$t0@@2)) (= $t5@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@1)) 5))))))) (and (=> (= (ControlFlow 0 178582) 179374) anon9_Then_correct) (=> (= (ControlFlow 0 178582) 178660) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_76195| stream@@3) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@3) v@@38) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 178452) 178582)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 247114) 178452) inline$$InitEventStore$0$anon0_correct@@2)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_105364)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_105364)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_105364)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 248048) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 180503) (- 0 248877)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))) (=> (= (ControlFlow 0 180503) (- 0 248953)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@3) 186537453)) (= 2 $t6@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@2)) (= 5 $t6@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@3) 186537453)) (= 2 $t6@@2))))))))
(let ((anon10_Then_correct@@1  (=> $t9@@2 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@2)) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 180271) 180503))) L2_correct@@2))))
(let ((anon9_Then_correct@@0  (=> (and (and $t5@@3 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@3) 186537453)) (= 2 $t6@@2)))) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 180575) 180503))) L2_correct@@2)))
(let ((anon7_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) 2)) (and (=> (= (ControlFlow 0 180229) (- 0 248469)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@2))) (and (=> (= (ControlFlow 0 180229) (- 0 248481)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (and (=> (= (ControlFlow 0 180229) (- 0 248499)) (not (not (= (|$addr#$signer| _$t0@@3) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@3) 186537453))) (and (=> (= (ControlFlow 0 180229) (- 0 248513)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 180229) (- 0 248524)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@2))) (and (=> (= (ControlFlow 0 180229) (- 0 248536)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (and (=> (= (ControlFlow 0 180229) (- 0 248554)) (not (not (= (|$addr#$signer| _$t0@@3) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@3) 186537453))) (and (=> (= (ControlFlow 0 180229) (- 0 248568)) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2)) (and (=> (= (ControlFlow 0 180229) (- 0 248577)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) 2)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) 2) (and (=> (= (ControlFlow 0 180229) (- 0 248592)) (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@42)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@42)) 0))))
 :qid |ValidatorConfigcvc4bpl.5040:15|
 :skolemid |140|
))) (=> (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@43)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@43)) 0))))
 :qid |ValidatorConfigcvc4bpl.5040:15|
 :skolemid |140|
)) (and (=> (= (ControlFlow 0 180229) (- 0 248639)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@44)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@44)) 1))))
 :qid |ValidatorConfigcvc4bpl.5044:15|
 :skolemid |141|
))) (=> (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@45)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@45)) 1))))
 :qid |ValidatorConfigcvc4bpl.5044:15|
 :skolemid |141|
)) (and (=> (= (ControlFlow 0 180229) (- 0 248686)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@46)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@46)) 3))))
 :qid |ValidatorConfigcvc4bpl.5048:15|
 :skolemid |142|
))) (=> (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@47)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@47)) 3))))
 :qid |ValidatorConfigcvc4bpl.5048:15|
 :skolemid |142|
)) (and (=> (= (ControlFlow 0 180229) (- 0 248733)) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@48)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@48)) 4))))
 :qid |ValidatorConfigcvc4bpl.5052:15|
 :skolemid |143|
))) (=> (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@49)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@49)) 4))))
 :qid |ValidatorConfigcvc4bpl.5052:15|
 :skolemid |143|
)) (and (=> (= (ControlFlow 0 180229) (- 0 248780)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@50)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@50)) 5))))
 :qid |ValidatorConfigcvc4bpl.5056:15|
 :skolemid |144|
))) (=> (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@51)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@51)) 5))))
 :qid |ValidatorConfigcvc4bpl.5056:15|
 :skolemid |144|
)) (=> (= (ControlFlow 0 180229) (- 0 248827)) (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@2) addr@@52)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@52)) 6))))
 :qid |ValidatorConfigcvc4bpl.5060:15|
 :skolemid |145|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@0@@2|) (= $1_Roles_RoleId_$memory@1@@3 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) false) (|contents#$Memory_105364| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@1@@3) (= (ControlFlow 0 179769) 180229))) anon7_correct@@0)))
(let ((anon11_Then_correct@@2  (=> (and (and |$temp_0'bool'@0@@2| (= $1_Roles_RoleId_$memory@0@@3 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) |$temp_0'$1_Roles_RoleId'@0@@2|)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@0@@3) (= (ControlFlow 0 180243) 180229))) anon7_correct@@0)))
(let ((anon10_Else_correct@@1  (=> (not $t9@@2) (and (=> (= (ControlFlow 0 179755) 180243) anon11_Then_correct@@2) (=> (= (ControlFlow 0 179755) 179769) anon11_Else_correct@@2)))))
(let ((anon9_Else_correct@@0  (=> (not $t5@@3) (=> (and (|$IsValid'u64'| 2) (= $t8@@0 (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 179749) (- 0 248319)) (=> (= 2 0) (= $t8@@0 173345816))) (=> (=> (= 2 0) (= $t8@@0 173345816)) (and (=> (= (ControlFlow 0 179749) (- 0 248335)) (=> (= 2 1) (= $t8@@0 186537453))) (=> (=> (= 2 1) (= $t8@@0 186537453)) (and (=> (= (ControlFlow 0 179749) (- 0 248351)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@2)) (=> (= $t9@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 179749) 180271) anon10_Then_correct@@1) (=> (= (ControlFlow 0 179749) 179755) anon10_Else_correct@@1)))))))))))))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'address'| (|$addr#$signer| _$t1@@2))) (=> (and (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |ValidatorConfigcvc4bpl.4861:20|
 :skolemid |139|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@5))
)) (= $t2@@2 (|$addr#$signer| _$t0@@3))) (and (= $t3@@2 (|$addr#$signer| _$t0@@3)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@2)))) (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@2 _$t1@@2)) (and (= $t4@@2 (|$addr#$signer| _$t0@@3)) (= $t5@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))))))) (and (=> (= (ControlFlow 0 179671) 180575) anon9_Then_correct@@0) (=> (= (ControlFlow 0 179671) 179749) anon9_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_76195| stream@@4) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@4) v@@39) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 179529) 179671)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 248048) 179529) inline$$InitEventStore$0$anon0_correct@@3)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_105364)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_105364)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_105364)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 249100) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 181712) (- 0 249929)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (=> (= (ControlFlow 0 181712) (- 0 250005)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t6@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@3))))))))
(let ((anon10_Then_correct@@2  (=> $t9@@3 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@3)) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 181480) 181712))) L2_correct@@3))))
(let ((anon9_Then_correct@@1  (=> (and (and $t5@@4 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@3)))) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 181784) 181712))) L2_correct@@3)))
(let ((anon7_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) 5)) (and (=> (= (ControlFlow 0 181438) (- 0 249521)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@3))) (and (=> (= (ControlFlow 0 181438) (- 0 249533)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (and (=> (= (ControlFlow 0 181438) (- 0 249551)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 181438) (- 0 249565)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 181438) (- 0 249576)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 181438) (- 0 249588)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (and (=> (= (ControlFlow 0 181438) (- 0 249606)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 181438) (- 0 249620)) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3)) (and (=> (= (ControlFlow 0 181438) (- 0 249629)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) 5)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) 5) (and (=> (= (ControlFlow 0 181438) (- 0 249644)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@53)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@53)) 0))))
 :qid |ValidatorConfigcvc4bpl.5298:15|
 :skolemid |147|
))) (=> (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@54)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@54)) 0))))
 :qid |ValidatorConfigcvc4bpl.5298:15|
 :skolemid |147|
)) (and (=> (= (ControlFlow 0 181438) (- 0 249691)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@55)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@55)) 1))))
 :qid |ValidatorConfigcvc4bpl.5302:15|
 :skolemid |148|
))) (=> (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@56)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@56)) 1))))
 :qid |ValidatorConfigcvc4bpl.5302:15|
 :skolemid |148|
)) (and (=> (= (ControlFlow 0 181438) (- 0 249738)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@57)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@57)) 3))))
 :qid |ValidatorConfigcvc4bpl.5306:15|
 :skolemid |149|
))) (=> (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@58)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@58)) 3))))
 :qid |ValidatorConfigcvc4bpl.5306:15|
 :skolemid |149|
)) (and (=> (= (ControlFlow 0 181438) (- 0 249785)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@59)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@59)) 4))))
 :qid |ValidatorConfigcvc4bpl.5310:15|
 :skolemid |150|
))) (=> (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@60)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@60)) 4))))
 :qid |ValidatorConfigcvc4bpl.5310:15|
 :skolemid |150|
)) (and (=> (= (ControlFlow 0 181438) (- 0 249832)) (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@61)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@61)) 2))))
 :qid |ValidatorConfigcvc4bpl.5314:15|
 :skolemid |151|
))) (=> (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@62)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@62)) 2))))
 :qid |ValidatorConfigcvc4bpl.5314:15|
 :skolemid |151|
)) (=> (= (ControlFlow 0 181438) (- 0 249879)) (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@3) addr@@63)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@63)) 6))))
 :qid |ValidatorConfigcvc4bpl.5318:15|
 :skolemid |152|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@3|) (= $1_Roles_RoleId_$memory@1@@4 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) false) (|contents#$Memory_105364| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@1@@4) (= (ControlFlow 0 180978) 181438))) anon7_correct@@1)))
(let ((anon11_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@3| (= $1_Roles_RoleId_$memory@0@@4 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) |$temp_0'$1_Roles_RoleId'@0@@3|)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@0@@4) (= (ControlFlow 0 181452) 181438))) anon7_correct@@1)))
(let ((anon10_Else_correct@@2  (=> (not $t9@@3) (and (=> (= (ControlFlow 0 180964) 181452) anon11_Then_correct@@3) (=> (= (ControlFlow 0 180964) 180978) anon11_Else_correct@@3)))))
(let ((anon9_Else_correct@@1  (=> (not $t5@@4) (=> (and (|$IsValid'u64'| 5) (= $t8@@1 (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 180958) (- 0 249371)) (=> (= 5 0) (= $t8@@1 173345816))) (=> (=> (= 5 0) (= $t8@@1 173345816)) (and (=> (= (ControlFlow 0 180958) (- 0 249387)) (=> (= 5 1) (= $t8@@1 186537453))) (=> (=> (= 5 1) (= $t8@@1 186537453)) (and (=> (= (ControlFlow 0 180958) (- 0 249403)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@3)) (=> (= $t9@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 180958) 181480) anon10_Then_correct@@2) (=> (= (ControlFlow 0 180958) 180964) anon10_Else_correct@@2)))))))))))))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3))) (=> (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |ValidatorConfigcvc4bpl.5119:20|
 :skolemid |146|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@6))
)) (= $t2@@3 (|$addr#$signer| _$t0@@4))) (and (= $t3@@3 (|$addr#$signer| _$t0@@4)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@3)))) (and (and (= _$t0@@4 _$t0@@4) (= _$t1@@3 _$t1@@3)) (and (= $t4@@3 (|$addr#$signer| _$t0@@4)) (= $t5@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))))))) (and (=> (= (ControlFlow 0 180880) 181784) anon9_Then_correct@@1) (=> (= (ControlFlow 0 180880) 180958) anon9_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_76195| stream@@5) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@5) v@@40) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 180738) 180880)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 249100) 180738) inline$$InitEventStore$0$anon0_correct@@4)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_105364)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_105364)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_105364)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@2 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 250152) (let ((L2_correct@@4  (and (=> (= (ControlFlow 0 182933) (- 0 251011)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))) (=> (= (ControlFlow 0 182933) (- 0 251087)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@4)) (= 5 $t6@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4))))))))
(let ((anon10_Then_correct@@3  (=> $t9@@4 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@4)) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 182701) 182933))) L2_correct@@4))))
(let ((anon9_Then_correct@@2  (=> (and (and $t5@@5 (or (or (or (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4)))) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 183025) 182933))) L2_correct@@4)))
(let ((anon7_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) 4)) (and (=> (= (ControlFlow 0 182659) (- 0 250603)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@4))) (and (=> (= (ControlFlow 0 182659) (- 0 250615)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (and (=> (= (ControlFlow 0 182659) (- 0 250633)) (not (not (= (|$addr#$signer| _$t0@@5) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 173345816))) (and (=> (= (ControlFlow 0 182659) (- 0 250647)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 182659) (- 0 250658)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@4))) (and (=> (= (ControlFlow 0 182659) (- 0 250670)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (and (=> (= (ControlFlow 0 182659) (- 0 250688)) (not (not (= (|$addr#$signer| _$t0@@5) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 173345816))) (and (=> (= (ControlFlow 0 182659) (- 0 250702)) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4)) (and (=> (= (ControlFlow 0 182659) (- 0 250711)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) 4)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) 4) (and (=> (= (ControlFlow 0 182659) (- 0 250726)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@64)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@64)) 0))))
 :qid |ValidatorConfigcvc4bpl.5556:15|
 :skolemid |154|
))) (=> (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@65)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@65)) 0))))
 :qid |ValidatorConfigcvc4bpl.5556:15|
 :skolemid |154|
)) (and (=> (= (ControlFlow 0 182659) (- 0 250773)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@66)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@66)) 1))))
 :qid |ValidatorConfigcvc4bpl.5560:15|
 :skolemid |155|
))) (=> (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@67)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@67)) 1))))
 :qid |ValidatorConfigcvc4bpl.5560:15|
 :skolemid |155|
)) (and (=> (= (ControlFlow 0 182659) (- 0 250820)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@68)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@68)) 3))))
 :qid |ValidatorConfigcvc4bpl.5564:15|
 :skolemid |156|
))) (=> (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@69)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@69)) 3))))
 :qid |ValidatorConfigcvc4bpl.5564:15|
 :skolemid |156|
)) (and (=> (= (ControlFlow 0 182659) (- 0 250867)) (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@70)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@70)) 2))))
 :qid |ValidatorConfigcvc4bpl.5568:15|
 :skolemid |157|
))) (=> (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@71)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@71)) 2))))
 :qid |ValidatorConfigcvc4bpl.5568:15|
 :skolemid |157|
)) (and (=> (= (ControlFlow 0 182659) (- 0 250914)) (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@72)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@72)) 5))))
 :qid |ValidatorConfigcvc4bpl.5572:15|
 :skolemid |158|
))) (=> (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@73)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@73)) 5))))
 :qid |ValidatorConfigcvc4bpl.5572:15|
 :skolemid |158|
)) (=> (= (ControlFlow 0 182659) (- 0 250961)) (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@4) addr@@74)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@74)) 6))))
 :qid |ValidatorConfigcvc4bpl.5576:15|
 :skolemid |159|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@4|) (= $1_Roles_RoleId_$memory@1@@5 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) false) (|contents#$Memory_105364| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@1@@5) (= (ControlFlow 0 182199) 182659))) anon7_correct@@2)))
(let ((anon11_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@4| (= $1_Roles_RoleId_$memory@0@@5 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) |$temp_0'$1_Roles_RoleId'@0@@4|)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@0@@5) (= (ControlFlow 0 182673) 182659))) anon7_correct@@2)))
(let ((anon10_Else_correct@@3  (=> (not $t9@@4) (and (=> (= (ControlFlow 0 182185) 182673) anon11_Then_correct@@4) (=> (= (ControlFlow 0 182185) 182199) anon11_Else_correct@@4)))))
(let ((anon9_Else_correct@@2  (=> (not $t5@@5) (=> (and (|$IsValid'u64'| 4) (= $t8@@2 (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 182179) (- 0 250453)) (=> (= 4 0) (= $t8@@2 173345816))) (=> (=> (= 4 0) (= $t8@@2 173345816)) (and (=> (= (ControlFlow 0 182179) (- 0 250469)) (=> (= 4 1) (= $t8@@2 186537453))) (=> (=> (= 4 1) (= $t8@@2 186537453)) (and (=> (= (ControlFlow 0 182179) (- 0 250485)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@4)) (=> (= $t9@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 182179) 182701) anon10_Then_correct@@3) (=> (= (ControlFlow 0 182179) 182185) anon10_Else_correct@@3)))))))))))))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4))) (=> (and (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |ValidatorConfigcvc4bpl.5377:20|
 :skolemid |153|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@7))
)) (= $t2@@4 (|$addr#$signer| _$t0@@5))) (and (= $t3@@4 (|$addr#$signer| _$t0@@5)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@4)))) (and (and (= _$t0@@5 _$t0@@5) (= _$t1@@4 _$t1@@4)) (and (= $t4@@4 (|$addr#$signer| _$t0@@5)) (= $t5@@5  (or (or (or (not (= (|$addr#$signer| _$t0@@5) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))))))) (and (=> (= (ControlFlow 0 182101) 183025) anon9_Then_correct@@2) (=> (= (ControlFlow 0 182101) 182179) anon9_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_76195| stream@@6) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@6) v@@41) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 181947) 182101)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 250152) 181947) inline$$InitEventStore$0$anon0_correct@@5)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_105364)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_105364)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_105364)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 251234) (let ((L2_correct@@5  (and (=> (= (ControlFlow 0 184176) (- 0 252093)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (=> (= (ControlFlow 0 184176) (- 0 252169)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@5)) (= 5 $t6@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@5))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5))))))))
(let ((anon10_Then_correct@@4  (=> $t9@@5 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@5)) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 183944) 184176))) L2_correct@@5))))
(let ((anon9_Then_correct@@3  (=> (and (and $t5@@6 (or (or (or (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5)))) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 184268) 184176))) L2_correct@@5)))
(let ((anon7_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) 3)) (and (=> (= (ControlFlow 0 183902) (- 0 251685)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@5))) (and (=> (= (ControlFlow 0 183902) (- 0 251697)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (and (=> (= (ControlFlow 0 183902) (- 0 251715)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 183902) (- 0 251729)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 183902) (- 0 251740)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@5))) (and (=> (= (ControlFlow 0 183902) (- 0 251752)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (and (=> (= (ControlFlow 0 183902) (- 0 251770)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 183902) (- 0 251784)) (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5)) (and (=> (= (ControlFlow 0 183902) (- 0 251793)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) 3)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) 3) (and (=> (= (ControlFlow 0 183902) (- 0 251808)) (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@75)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@75)) 0))))
 :qid |ValidatorConfigcvc4bpl.5814:15|
 :skolemid |161|
))) (=> (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@76)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@76)) 0))))
 :qid |ValidatorConfigcvc4bpl.5814:15|
 :skolemid |161|
)) (and (=> (= (ControlFlow 0 183902) (- 0 251855)) (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@77)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@77)) 1))))
 :qid |ValidatorConfigcvc4bpl.5818:15|
 :skolemid |162|
))) (=> (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@78)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@78)) 1))))
 :qid |ValidatorConfigcvc4bpl.5818:15|
 :skolemid |162|
)) (and (=> (= (ControlFlow 0 183902) (- 0 251902)) (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@79)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@79)) 4))))
 :qid |ValidatorConfigcvc4bpl.5822:15|
 :skolemid |163|
))) (=> (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@80)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@80)) 4))))
 :qid |ValidatorConfigcvc4bpl.5822:15|
 :skolemid |163|
)) (and (=> (= (ControlFlow 0 183902) (- 0 251949)) (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@81)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@81)) 2))))
 :qid |ValidatorConfigcvc4bpl.5826:15|
 :skolemid |164|
))) (=> (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@82)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@82)) 2))))
 :qid |ValidatorConfigcvc4bpl.5826:15|
 :skolemid |164|
)) (and (=> (= (ControlFlow 0 183902) (- 0 251996)) (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@83)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@83)) 5))))
 :qid |ValidatorConfigcvc4bpl.5830:15|
 :skolemid |165|
))) (=> (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@84)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@84)) 5))))
 :qid |ValidatorConfigcvc4bpl.5830:15|
 :skolemid |165|
)) (=> (= (ControlFlow 0 183902) (- 0 252043)) (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory@2@@5) addr@@85)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@85)) 6))))
 :qid |ValidatorConfigcvc4bpl.5834:15|
 :skolemid |166|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_Roles_RoleId_$memory@1@@6 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) false) (|contents#$Memory_105364| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@1@@6) (= (ControlFlow 0 183442) 183902))) anon7_correct@@3)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@5| (= $1_Roles_RoleId_$memory@0@@6 ($Memory_105364 (|Store__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) |$temp_0'$1_Roles_RoleId'@0@@5|)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@0@@6) (= (ControlFlow 0 183916) 183902))) anon7_correct@@3)))
(let ((anon10_Else_correct@@4  (=> (not $t9@@5) (and (=> (= (ControlFlow 0 183428) 183916) anon11_Then_correct@@5) (=> (= (ControlFlow 0 183428) 183442) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct@@3  (=> (not $t5@@6) (=> (and (|$IsValid'u64'| 3) (= $t8@@3 (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 183422) (- 0 251535)) (=> (= 3 0) (= $t8@@3 173345816))) (=> (=> (= 3 0) (= $t8@@3 173345816)) (and (=> (= (ControlFlow 0 183422) (- 0 251551)) (=> (= 3 1) (= $t8@@3 186537453))) (=> (=> (= 3 1) (= $t8@@3 186537453)) (and (=> (= (ControlFlow 0 183422) (- 0 251567)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@5)) (=> (= $t9@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 183422) 183944) anon10_Then_correct@@4) (=> (= (ControlFlow 0 183422) 183428) anon10_Else_correct@@4)))))))))))))
(let ((anon0$1_correct@@6  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) (|$IsValid'address'| (|$addr#$signer| _$t1@@5))) (=> (and (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |ValidatorConfigcvc4bpl.5635:20|
 :skolemid |160|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@8))
)) (= $t2@@5 (|$addr#$signer| _$t0@@6))) (and (= $t3@@5 (|$addr#$signer| _$t0@@6)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@5)))) (and (and (= _$t0@@6 _$t0@@6) (= _$t1@@5 _$t1@@5)) (and (= $t4@@5 (|$addr#$signer| _$t0@@6)) (= $t5@@6  (or (or (or (not (= (|$addr#$signer| _$t0@@6) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t4@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))))))) (and (=> (= (ControlFlow 0 183344) 184268) anon9_Then_correct@@3) (=> (= (ControlFlow 0 183344) 183422) anon9_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_76195| stream@@7) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@7) v@@42) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 183190) 183344)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 251234) 183190) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t8@1 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t9@0 () (Seq Int))
(declare-fun _$t0@@7 () Int)
(declare-fun $t7@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t8@@4 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t8@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun $t6@@6 () Int)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_get_human_name$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 252316) (let ((anon12_Else_correct@@1  (=> (and (and (not $abort_flag@0@@0) (= $t8@1 $t8@1)) (and (= $t9@0 (|$human_name#$1_ValidatorConfig_ValidatorConfig| $t8@1)) (= $t9@0 $t9@0))) (and (=> (= (ControlFlow 0 184773) (- 0 252709)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7))) (and (=> (= (ControlFlow 0 184773) (- 0 252720)) (= $t9@0 (let ((t_ref (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref)))) (=> (= $t9@0 (let ((t_ref@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)))
(|$human_name#$1_ValidatorConfig_ValidatorConfig| t_ref@@0))) (=> (= (ControlFlow 0 184773) (- 0 252731)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr1) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr1)))))
 :qid |ValidatorConfigcvc4bpl.6276:15|
 :skolemid |178|
))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 184664) (- 0 252654)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)) (=> (= (ControlFlow 0 184664) (- 0 252660)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)) (= 5 $t7@0)))))))
(let ((anon12_Then_correct@@1  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t7@0 $abort_code@1@@0) (= (ControlFlow 0 184787) 184664))) L3_correct@@0)))
(let ((anon11_Then$1_correct@@0  (=> (= $t8@1 $t8@@4) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 184839) 184787) anon12_Then_correct@@1) (=> (= (ControlFlow 0 184839) 184773) anon12_Else_correct@@1))))))
(let ((anon11_Then_correct@@6  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)) (= (ControlFlow 0 184837) 184839)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@6  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7) (=> (and (and (= $t8@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)) (= $t8@1 $t8@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 184682) 184787) anon12_Then_correct@@1) (=> (= (ControlFlow 0 184682) 184773) anon12_Else_correct@@1))))))
(let ((anon10_Then_correct@@5  (=> $t4@0 (and (=> (= (ControlFlow 0 184668) 184837) anon11_Then_correct@@6) (=> (= (ControlFlow 0 184668) 184682) anon11_Else_correct@@6)))))
(let ((anon10_Else_correct@@5  (=> (and (and (not $t4@0) (= $t6@@6 $t6@@6)) (and (= $t7@0 $t6@@6) (= (ControlFlow 0 184632) 184664))) L3_correct@@0)))
(let ((anon0$1_correct@@7  (=> (and (and (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@86) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@86)) 3))))
 :qid |ValidatorConfigcvc4bpl.6164:20|
 :skolemid |174|
)) (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@87) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@87)) 3))))
 :qid |ValidatorConfigcvc4bpl.6168:20|
 :skolemid |175|
))) (and (forall ((addr@@88 Int) ) (!  (=> (|$IsValid'address'| addr@@88) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@88) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@88)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@88)) 3))))
 :qid |ValidatorConfigcvc4bpl.6172:20|
 :skolemid |176|
)) (|$IsValid'address'| _$t0@@7))) (=> (and (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@9)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@9) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@9))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@9))) 1))))
 :qid |ValidatorConfigcvc4bpl.6179:20|
 :skolemid |177|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@9))
)) (= _$t0@@7 _$t0@@7)) (and (= $t4@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@7)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t6@@6) (= $t6@@6 5)) (and (= $t6@@6 $t6@@6) (= $t4@0 $t4@0)))) (and (=> (= (ControlFlow 0 184616) 184668) anon10_Then_correct@@5) (=> (= (ControlFlow 0 184616) 184632) anon10_Else_correct@@5))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_76195| stream@@8) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@8) v@@43) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 184431) 184616)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 252316) 184431) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@1 () T@$Memory_107408)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t5@@7 () Int)
(declare-fun _$t1@@6 () T@$signer)
(declare-fun $t7@0@@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0 () T@$Memory_107408)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int T@$1_ValidatorConfig_ValidatorConfig) |T@[Int]$1_ValidatorConfig_ValidatorConfig|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun $t18@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t16 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun $t17 () |T@$1_Option_Option'address'|)
(declare-fun _$t2 () (Seq Int))
(declare-fun $t15 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t10@@0 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun $t9@@6 () Bool)
(declare-fun $t8@@5 () Int)
(declare-fun $t6@@7 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_117538)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 252776) (let ((anon21_Else_correct  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 186013) (- 0 253872)) (forall ((validator Int) ) (!  (=> (|$IsValid'address'| validator) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) validator) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) validator)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) validator) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) validator)))) 0)))))
 :qid |ValidatorConfigcvc4bpl.6623:15|
 :skolemid |186|
))) (=> (forall ((validator@@0 Int) ) (!  (=> (|$IsValid'address'| validator@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@0) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@0)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) validator@@0) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) validator@@0)))) 0)))))
 :qid |ValidatorConfigcvc4bpl.6623:15|
 :skolemid |186|
)) (and (=> (= (ControlFlow 0 186013) (- 0 253896)) (forall ((addr@@89 Int) ) (!  (=> (|$IsValid'address'| addr@@89) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@89) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@89)) 3))))
 :qid |ValidatorConfigcvc4bpl.6629:15|
 :skolemid |187|
))) (=> (forall ((addr@@90 Int) ) (!  (=> (|$IsValid'address'| addr@@90) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@90) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@90)) 3))))
 :qid |ValidatorConfigcvc4bpl.6629:15|
 :skolemid |187|
)) (and (=> (= (ControlFlow 0 186013) (- 0 253921)) (forall ((addr@@91 Int) ) (!  (=> (|$IsValid'address'| addr@@91) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@91) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@91)) 3))))
 :qid |ValidatorConfigcvc4bpl.6635:15|
 :skolemid |188|
))) (=> (forall ((addr@@92 Int) ) (!  (=> (|$IsValid'address'| addr@@92) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@92) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@92)) 3))))
 :qid |ValidatorConfigcvc4bpl.6635:15|
 :skolemid |188|
)) (and (=> (= (ControlFlow 0 186013) (- 0 253946)) (forall ((addr@@93 Int) ) (!  (=> (|$IsValid'address'| addr@@93) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@93) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@93)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@93)) 3))))
 :qid |ValidatorConfigcvc4bpl.6641:15|
 :skolemid |189|
))) (=> (forall ((addr@@94 Int) ) (!  (=> (|$IsValid'address'| addr@@94) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@94) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr@@94)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@94)) 3))))
 :qid |ValidatorConfigcvc4bpl.6641:15|
 :skolemid |189|
)) (and (=> (= (ControlFlow 0 186013) (- 0 253974)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@8)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@8))) (and (=> (= (ControlFlow 0 186013) (- 0 253985)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 186013) (- 0 253995)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t5@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t5@@7))) (and (=> (= (ControlFlow 0 186013) (- 0 254007)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t5@@7)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t5@@7)) 0))) (and (=> (= (ControlFlow 0 186013) (- 0 254025)) (not (not (= (|$addr#$signer| _$t1@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@6) 173345816))) (and (=> (= (ControlFlow 0 186013) (- 0 254039)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8)))) (and (=> (= (ControlFlow 0 186013) (- 0 254052)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 3))) (and (=> (= (ControlFlow 0 186013) (- 0 254071)) (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) (|$addr#$signer| _$t0@@8))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) (|$addr#$signer| _$t0@@8)) (=> (= (ControlFlow 0 186013) (- 0 254080)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@0) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory@1) addr1@@0)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@0)))))
 :qid |ValidatorConfigcvc4bpl.6690:15|
 :skolemid |190|
))))))))))))))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 185666) (- 0 253664)) (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@8)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t5@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t5@@7)) 0))) (not (= (|$addr#$signer| _$t1@@6) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 3)))) (=> (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@8)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t5@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t5@@7)) 0))) (not (= (|$addr#$signer| _$t1@@6) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8)))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 3))) (=> (= (ControlFlow 0 185666) (- 0 253738)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@8)) (= 6 $t7@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t7@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t5@@7)) (= 5 $t7@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t5@@7)) 0)) (= 3 $t7@0@@0))) (and (not (= (|$addr#$signer| _$t1@@6) 173345816)) (= 2 $t7@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) (= 5 $t7@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 3)) (= 3 $t7@0@@0))))))))
(let ((anon21_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t7@0@@0 $abort_code@1@@1) (= (ControlFlow 0 186027) 185666))) L3_correct@@1)))
(let ((anon20_Then$1_correct  (=> (= $1_ValidatorConfig_ValidatorConfig_$memory@1 $1_ValidatorConfig_ValidatorConfig_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 186079) 186027) anon21_Then_correct) (=> (= (ControlFlow 0 186079) 186013) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@8)) (= (ControlFlow 0 186077) 186079)) anon20_Then$1_correct)))
(let ((anon20_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@8))) (=> (and (and (= $1_ValidatorConfig_ValidatorConfig_$memory@0 ($Memory_107408 (|Store__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@8) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$signer| _$t0@@8) $t18@0))) (= $1_ValidatorConfig_ValidatorConfig_$memory@1 $1_ValidatorConfig_ValidatorConfig_$memory@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 185756) 186027) anon21_Then_correct) (=> (= (ControlFlow 0 185756) 186013) anon21_Else_correct))))))
(let ((anon19_Then_correct  (=> inline$$Not$0$dst@1@@0 (=> (and (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| $t16) (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t16)) 1)) (= $t16 (|$1_Option_Option'$1_ValidatorConfig_Config'| (as seq.empty (Seq T@$1_ValidatorConfig_Config))))) (and (and (|$IsValid'$1_Option_Option'address''| $t17) (<= (seq.len (|$vec#$1_Option_Option'address'| $t17)) 1)) (and (= $t17 (|$1_Option_Option'address'| (as seq.empty (Seq Int)))) (= $t18@0 ($1_ValidatorConfig_ValidatorConfig $t16 $t17 _$t2))))) (and (=> (= (ControlFlow 0 185734) 186077) anon20_Then_correct) (=> (= (ControlFlow 0 185734) 185756) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t15 $t15)) (and (= $t7@0@@0 $t15) (= (ControlFlow 0 185434) 185666))) L3_correct@@1)))
(let ((anon18_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t15) (= $t15 6)) (and (= $t15 $t15) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 185418) 185734) anon19_Then_correct) (=> (= (ControlFlow 0 185418) 185434) anon19_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t12@0)) (= (ControlFlow 0 185378) 185418)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (not $t10@@0) (=> (and (and (|$IsValid'address'| $t11) (= $t11 (|$addr#$signer| _$t0@@8))) (and (= $t12@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) $t11)) (= (ControlFlow 0 185384) 185378))) inline$$Not$0$anon0_correct@@0))))
(let ((anon18_Then_correct  (=> $t10@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) (= 5 $t7@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 3)) (= 3 $t7@@0))) (= $t7@@0 $t7@@0)) (and (= $t7@0@@0 $t7@@0) (= (ControlFlow 0 186135) 185666))) L3_correct@@1))))
(let ((anon17_Else_correct@@0  (=> (and (not $t9@@6) (= $t10@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 3))))) (and (=> (= (ControlFlow 0 185322) 186135) anon18_Then_correct) (=> (= (ControlFlow 0 185322) 185384) anon18_Else_correct)))))
(let ((anon17_Then_correct@@0  (=> $t9@@6 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t1@@6) 173345816)) (= 2 $t7@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t8@@5)) (= 5 $t7@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t8@@5)) 0)) (= 3 $t7@@0))) (and (not (= (|$addr#$signer| _$t1@@6) 173345816)) (= 2 $t7@@0))) (= $t7@@0 $t7@@0)) (and (= $t7@0@@0 $t7@@0) (= (ControlFlow 0 186227) 185666))) L3_correct@@1))))
(let ((anon16_Else_correct@@0  (=> (not $t6@@7) (=> (and (= $t8@@5 (|$addr#$signer| _$t1@@6)) (= $t9@@6  (or (or (or (not (= (|$addr#$signer| _$t1@@6) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) $t8@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $t8@@5)) 0))) (not (= (|$addr#$signer| _$t1@@6) 173345816))))) (and (=> (= (ControlFlow 0 185282) 186227) anon17_Then_correct@@0) (=> (= (ControlFlow 0 185282) 185322) anon17_Else_correct@@0))))))
(let ((anon16_Then_correct@@0  (=> $t6@@7 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t7@@0)) (= $t7@@0 $t7@@0)) (and (= $t7@0@@0 $t7@@0) (= (ControlFlow 0 186253) 185666))) L3_correct@@1))))
(let ((anon0$1_correct@@8  (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@95 Int) ) (!  (=> (|$IsValid'address'| addr@@95) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117538| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@95) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@95)) 4))))
 :qid |ValidatorConfigcvc4bpl.6348:20|
 :skolemid |179|
))) (and (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@96) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@96)) 3))))
 :qid |ValidatorConfigcvc4bpl.6352:20|
 :skolemid |180|
)) (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@97) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@97)) 3))))
 :qid |ValidatorConfigcvc4bpl.6356:20|
 :skolemid |181|
)))) (and (and (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@98) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@98)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@98)) 3))))
 :qid |ValidatorConfigcvc4bpl.6360:20|
 :skolemid |182|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@8))) (and (|$IsValid'address'| (|$addr#$signer| _$t1@@6)) (|$IsValid'vec'u8''| _$t2)))) (and (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@10))
 :qid |ValidatorConfigcvc4bpl.6372:20|
 :skolemid |183|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@11)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@11))
 :qid |ValidatorConfigcvc4bpl.6376:20|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) $a_0@@11))
))) (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@12)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@12) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@12))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@12))) 1))))
 :qid |ValidatorConfigcvc4bpl.6380:20|
 :skolemid |185|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@12))
)) (= $t5@@7 (|$addr#$signer| _$t1@@6)))) (and (and (= _$t0@@8 _$t0@@8) (= _$t1@@6 _$t1@@6)) (and (= _$t2 _$t2) (= $t6@@7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_104870| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 185210) 186253) anon16_Then_correct@@0) (=> (= (ControlFlow 0 185210) 185282) anon16_Else_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_76195| stream@@9) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@9) v@@44) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 184938) 185210)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 252776) 184938) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@9 () Int)
(declare-fun $t1@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_exists_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 254117) (let ((anon0$1_correct@@9  (=> (and (and (and (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@99) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@99)) 3))))
 :qid |ValidatorConfigcvc4bpl.6765:20|
 :skolemid |191|
)) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@100) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@100)) 3))))
 :qid |ValidatorConfigcvc4bpl.6769:20|
 :skolemid |192|
))) (and (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@101) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@101)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@101)) 3))))
 :qid |ValidatorConfigcvc4bpl.6773:20|
 :skolemid |193|
)) (|$IsValid'address'| _$t0@@9))) (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@13)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@13) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@13))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@13))) 1))))
 :qid |ValidatorConfigcvc4bpl.6779:20|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@13))
)) (= _$t0@@9 _$t0@@9)) (and (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@9)) (= $t1@0 $t1@0)))) (and (=> (= (ControlFlow 0 186657) (- 0 254306)) (not false)) (=> (not false) (=> (= (ControlFlow 0 186657) (- 0 254313)) (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@1) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@1)))))
 :qid |ValidatorConfigcvc4bpl.6806:15|
 :skolemid |195|
))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_76195| stream@@10) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@10) v@@45) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 186453) 186657)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 254117) 186453) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t16@@0 () Bool)
(declare-fun $t15@@0 () T@$1_ValidatorConfig_Config)
(declare-fun $t11@0@@0 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun _$t0@@10 () Int)
(declare-fun $t7@0@@1 () Int)
(declare-fun $t7@@1 () Int)
(declare-fun $t12 () Bool)
(declare-fun $t14 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t10@1 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t10@@1 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t10@0@@0 () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1 () Bool)
(declare-fun $t9@@7 () Int)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_get_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 254357) (let ((anon22_Else_correct  (=> (and (and (not $t16@@0) (|$IsValid'$1_ValidatorConfig_Config'| $t15@@0)) (and (= $t15@@0 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t11@0@@0) 0)) (= $t15@@0 $t15@@0))) (and (=> (= (ControlFlow 0 187309) (- 0 254958)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10))) (and (=> (= (ControlFlow 0 187309) (- 0 254969)) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)))) 0)) (and (=> (= (ControlFlow 0 187309) (- 0 254982)) (= $t15@@0 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10))) 0))) (=> (= $t15@@0 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10))) 0)) (=> (= (ControlFlow 0 187309) (- 0 254994)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@2) (= (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@2)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr1@@2)))))
 :qid |ValidatorConfigcvc4bpl.7066:15|
 :skolemid |200|
))))))))))))
(let ((L5_correct  (and (=> (= (ControlFlow 0 187100) (- 0 254879)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)) (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)))) 0))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)) (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)))) 0)) (=> (= (ControlFlow 0 187100) (- 0 254895)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)) (= 5 $t7@0@@1)) (and (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)))) 0) (= 7 $t7@0@@1))))))))
(let ((anon22_Then_correct  (=> $t16@@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t11@0@@0)) 0) (= 7 $t7@@1)) (= $t7@@1 $t7@@1)) (and (= $t7@0@@1 $t7@@1) (= (ControlFlow 0 187333) 187100))) L5_correct))))
(let ((anon21_Then_correct@@0  (=> (and $t12 (= $t16@@0 (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t11@0@@0)) 0))) (and (=> (= (ControlFlow 0 187206) 187333) anon22_Then_correct) (=> (= (ControlFlow 0 187206) 187309) anon22_Else_correct)))))
(let ((anon21_Else_correct@@0  (=> (and (and (not $t12) (= $t14 $t14)) (and (= $t7@0@@1 $t14) (= (ControlFlow 0 187194) 187100))) L5_correct)))
(let ((anon20_Else_correct@@0  (=> (not $abort_flag@0@@2) (=> (and (and (and (= $t11@0@@0 (|$config#$1_ValidatorConfig_ValidatorConfig| $t10@1)) (= $t11@0@@0 $t11@0@@0)) (and (= $t12  (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t11@0@@0)) 0))) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14) (= $t14 7)) (and (= $t14 $t14) (= $t12 $t12)))) (and (=> (= (ControlFlow 0 187178) 187206) anon21_Then_correct@@0) (=> (= (ControlFlow 0 187178) 187194) anon21_Else_correct@@0))))))
(let ((anon20_Then_correct@@0  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t7@0@@1 $abort_code@1@@2) (= (ControlFlow 0 187347) 187100))) L5_correct)))
(let ((anon19_Then$1_correct  (=> (= $t10@1 $t10@@1) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 187399) 187347) anon20_Then_correct@@0) (=> (= (ControlFlow 0 187399) 187178) anon20_Else_correct@@0))))))
(let ((anon19_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)) (= (ControlFlow 0 187397) 187399)) anon19_Then$1_correct)))
(let ((anon19_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10) (=> (and (and (= $t10@0@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)) (= $t10@1 $t10@0@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 187118) 187347) anon20_Then_correct@@0) (=> (= (ControlFlow 0 187118) 187178) anon20_Else_correct@@0))))))
(let ((anon18_Then_correct@@0  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1 (and (=> (= (ControlFlow 0 187104) 187397) anon19_Then_correct@@0) (=> (= (ControlFlow 0 187104) 187118) anon19_Else_correct@@0)))))
(let ((anon18_Else_correct@@0  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1) (= $t9@@7 $t9@@7)) (and (= $t7@0@@1 $t9@@7) (= (ControlFlow 0 187036) 187100))) L5_correct)))
(let ((anon17_Else_correct@@1  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t9@@7) (= $t9@@7 5)) (and (= $t9@@7 $t9@@7) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1))) (and (=> (= (ControlFlow 0 187020) 187104) anon18_Then_correct@@0) (=> (= (ControlFlow 0 187020) 187036) anon18_Else_correct@@0))))))
(let ((anon17_Then_correct@@1 true))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct  (=> (= _$t0@@10 _$t0@@10) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) _$t0@@10)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1)) (and (=> (= (ControlFlow 0 186978) 187413) anon17_Then_correct@@1) (=> (= (ControlFlow 0 186978) 187020) anon17_Else_correct@@1))))))
(let ((anon0$1_correct@@10  (=> (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@102) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@102) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@102)) 3))))
 :qid |ValidatorConfigcvc4bpl.6850:20|
 :skolemid |196|
)) (=> (and (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@103) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@103) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@103)) 3))))
 :qid |ValidatorConfigcvc4bpl.6854:20|
 :skolemid |197|
)) (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@104) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@104)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105364| $1_Roles_RoleId_$memory) addr@@104) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105364| $1_Roles_RoleId_$memory) addr@@104)) 3))))
 :qid |ValidatorConfigcvc4bpl.6858:20|
 :skolemid |198|
))) (=> (and (and (|$IsValid'address'| _$t0@@10) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@14)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@14) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@14))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@14))) 1))))
 :qid |ValidatorConfigcvc4bpl.6865:20|
 :skolemid |199|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_107408| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@14))
))) (and (= _$t0@@10 _$t0@@10) (= (ControlFlow 0 186984) 186978))) inline$$1_ValidatorConfig_exists_config$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_76195_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_76195| stream@@11) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_76195| stream@@11) v@@46) 0)
 :qid |ValidatorConfigcvc4bpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorConfigcvc4bpl.2548:13|
 :skolemid |69|
))) (= (ControlFlow 0 186730) 186984)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 254357) 186730) inline$$InitEventStore$0$anon0_correct@@10)))
anon0_correct@@10)))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
